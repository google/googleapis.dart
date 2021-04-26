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
/// <http://code.google.com/apis/analytics/docs/mgmt/home.html>
///
/// Create an instance of [GoogleAnalyticsAdminApi] to access these resources:
///
/// - [AccountSummariesResource]
/// - [AccountsResource]
///   - [AccountsUserLinksResource]
/// - [PropertiesResource]
///   - [PropertiesAndroidAppDataStreamsResource]
///     - [PropertiesAndroidAppDataStreamsMeasurementProtocolSecretsResource]
///   - [PropertiesConversionEventsResource]
///   - [PropertiesCustomDimensionsResource]
///   - [PropertiesCustomMetricsResource]
///   - [PropertiesFirebaseLinksResource]
///   - [PropertiesGoogleAdsLinksResource]
///   - [PropertiesIosAppDataStreamsResource]
///     - [PropertiesIosAppDataStreamsMeasurementProtocolSecretsResource]
///   - [PropertiesUserLinksResource]
///   - [PropertiesWebDataStreamsResource]
///     - [PropertiesWebDataStreamsMeasurementProtocolSecretsResource]
library analyticsadmin.v1alpha;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
  /// the parent account) or `firebase_project:`(The id or number of the linked
  /// firebase project). Some examples of filters: ``` | Filter | Description |
  /// |-----------------------------|-------------------------------------------|
  /// | parent:accounts/123 | The account with account id: 123. | |
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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

  PropertiesAndroidAppDataStreamsMeasurementProtocolSecretsResource
      get measurementProtocolSecrets =>
          PropertiesAndroidAppDataStreamsMeasurementProtocolSecretsResource(
              _requester);

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
    final _body = convert.json.encode(request.toJson());
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

class PropertiesAndroidAppDataStreamsMeasurementProtocolSecretsResource {
  final commons.ApiRequester _requester;

  PropertiesAndroidAppDataStreamsMeasurementProtocolSecretsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a measurement protocol secret.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this secret will be
  /// created. Any type of stream (WebDataStream, IosAppDataStream,
  /// AndroidAppDataStream) may be a parent. Format:
  /// properties/{property}/webDataStreams/{webDataStream}
  /// Value must have pattern
  /// `^properties/\[^/\]+/androidAppDataStreams/\[^/\]+$`.
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
    final _body = convert.json.encode(request.toJson());
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
  /// properties/{property}/webDataStreams/{webDataStream}/measurementProtocolSecrets/{measurementProtocolSecret}
  /// Note: Any type of stream (WebDataStream, IosAppDataStream,
  /// AndroidAppDataStream) may be a parent.
  /// Value must have pattern
  /// `^properties/\[^/\]+/androidAppDataStreams/\[^/\]+/measurementProtocolSecrets/\[^/\]+$`.
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
  /// properties/{property}/webDataStreams/{webDataStream}/measurementProtocolSecrets/{measurementProtocolSecret}
  /// Note: Any type of stream (WebDataStream, IosAppDataStream,
  /// AndroidAppDataStream) may be a parent.
  /// Value must have pattern
  /// `^properties/\[^/\]+/androidAppDataStreams/\[^/\]+/measurementProtocolSecrets/\[^/\]+$`.
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
  /// [parent] - Required. The resource name of the parent stream. Any type of
  /// stream (WebDataStream, IosAppDataStream, AndroidAppDataStream) may be a
  /// parent. Format:
  /// properties/{property}/webDataStreams/{webDataStream}/measurementProtocolSecrets
  /// Value must have pattern
  /// `^properties/\[^/\]+/androidAppDataStreams/\[^/\]+$`.
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
  /// `^properties/\[^/\]+/androidAppDataStreams/\[^/\]+/measurementProtocolSecrets/\[^/\]+$`.
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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

  /// Updates a FirebaseLink on a property
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Example format: properties/1234/firebaseLinks/5678
  /// Value must have pattern `^properties/\[^/\]+/firebaseLinks/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
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
  async.Future<GoogleAnalyticsAdminV1alphaFirebaseLink> patch(
    GoogleAnalyticsAdminV1alphaFirebaseLink request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
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
    return GoogleAnalyticsAdminV1alphaFirebaseLink.fromJson(
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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

  PropertiesIosAppDataStreamsMeasurementProtocolSecretsResource
      get measurementProtocolSecrets =>
          PropertiesIosAppDataStreamsMeasurementProtocolSecretsResource(
              _requester);

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
    final _body = convert.json.encode(request.toJson());
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

class PropertiesIosAppDataStreamsMeasurementProtocolSecretsResource {
  final commons.ApiRequester _requester;

  PropertiesIosAppDataStreamsMeasurementProtocolSecretsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a measurement protocol secret.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this secret will be
  /// created. Any type of stream (WebDataStream, IosAppDataStream,
  /// AndroidAppDataStream) may be a parent. Format:
  /// properties/{property}/webDataStreams/{webDataStream}
  /// Value must have pattern `^properties/\[^/\]+/iosAppDataStreams/\[^/\]+$`.
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
    final _body = convert.json.encode(request.toJson());
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
  /// properties/{property}/webDataStreams/{webDataStream}/measurementProtocolSecrets/{measurementProtocolSecret}
  /// Note: Any type of stream (WebDataStream, IosAppDataStream,
  /// AndroidAppDataStream) may be a parent.
  /// Value must have pattern
  /// `^properties/\[^/\]+/iosAppDataStreams/\[^/\]+/measurementProtocolSecrets/\[^/\]+$`.
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
  /// properties/{property}/webDataStreams/{webDataStream}/measurementProtocolSecrets/{measurementProtocolSecret}
  /// Note: Any type of stream (WebDataStream, IosAppDataStream,
  /// AndroidAppDataStream) may be a parent.
  /// Value must have pattern
  /// `^properties/\[^/\]+/iosAppDataStreams/\[^/\]+/measurementProtocolSecrets/\[^/\]+$`.
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
  /// [parent] - Required. The resource name of the parent stream. Any type of
  /// stream (WebDataStream, IosAppDataStream, AndroidAppDataStream) may be a
  /// parent. Format:
  /// properties/{property}/webDataStreams/{webDataStream}/measurementProtocolSecrets
  /// Value must have pattern `^properties/\[^/\]+/iosAppDataStreams/\[^/\]+$`.
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
  /// `^properties/\[^/\]+/iosAppDataStreams/\[^/\]+/measurementProtocolSecrets/\[^/\]+$`.
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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
    final _body = convert.json.encode(request.toJson());
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

  PropertiesWebDataStreamsMeasurementProtocolSecretsResource
      get measurementProtocolSecrets =>
          PropertiesWebDataStreamsMeasurementProtocolSecretsResource(
              _requester);

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
    final _body = convert.json.encode(request.toJson());
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

  /// Returns the singleton enhanced measurement settings for this web stream.
  ///
  /// Note that the stream must enable enhanced measurement for these settings
  /// to take effect.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the settings to lookup. Format:
  /// properties/{property_id}/webDataStreams/{stream_id}/enhancedMeasurementSettings
  /// Example: "properties/1000/webDataStreams/2000/enhancedMeasurementSettings"
  /// Value must have pattern
  /// `^properties/\[^/\]+/webDataStreams/\[^/\]+/enhancedMeasurementSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings>
      getEnhancedMeasurementSettings(
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
    return GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings.fromJson(
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
  /// properties/{property_id}/webDataStreams/{stream_id}/globalSiteTag Example:
  /// "properties/123/webDataStreams/456/globalSiteTag"
  /// Value must have pattern
  /// `^properties/\[^/\]+/webDataStreams/\[^/\]+/globalSiteTag$`.
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
    final _body = convert.json.encode(request.toJson());
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

  /// Updates the singleton enhanced measurement settings for this web stream.
  ///
  /// Note that the stream must enable enhanced measurement for these settings
  /// to take effect.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this Data Stream. Format:
  /// properties/{property_id}/webDataStreams/{stream_id}/enhancedMeasurementSettings
  /// Example: "properties/1000/webDataStreams/2000/enhancedMeasurementSettings"
  /// Value must have pattern
  /// `^properties/\[^/\]+/webDataStreams/\[^/\]+/enhancedMeasurementSettings$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings>
      updateEnhancedMeasurementSettings(
    GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
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
    return GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesWebDataStreamsMeasurementProtocolSecretsResource {
  final commons.ApiRequester _requester;

  PropertiesWebDataStreamsMeasurementProtocolSecretsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a measurement protocol secret.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this secret will be
  /// created. Any type of stream (WebDataStream, IosAppDataStream,
  /// AndroidAppDataStream) may be a parent. Format:
  /// properties/{property}/webDataStreams/{webDataStream}
  /// Value must have pattern `^properties/\[^/\]+/webDataStreams/\[^/\]+$`.
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
    final _body = convert.json.encode(request.toJson());
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
  /// properties/{property}/webDataStreams/{webDataStream}/measurementProtocolSecrets/{measurementProtocolSecret}
  /// Note: Any type of stream (WebDataStream, IosAppDataStream,
  /// AndroidAppDataStream) may be a parent.
  /// Value must have pattern
  /// `^properties/\[^/\]+/webDataStreams/\[^/\]+/measurementProtocolSecrets/\[^/\]+$`.
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
  /// properties/{property}/webDataStreams/{webDataStream}/measurementProtocolSecrets/{measurementProtocolSecret}
  /// Note: Any type of stream (WebDataStream, IosAppDataStream,
  /// AndroidAppDataStream) may be a parent.
  /// Value must have pattern
  /// `^properties/\[^/\]+/webDataStreams/\[^/\]+/measurementProtocolSecrets/\[^/\]+$`.
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
  /// [parent] - Required. The resource name of the parent stream. Any type of
  /// stream (WebDataStream, IosAppDataStream, AndroidAppDataStream) may be a
  /// parent. Format:
  /// properties/{property}/webDataStreams/{webDataStream}/measurementProtocolSecrets
  /// Value must have pattern `^properties/\[^/\]+/webDataStreams/\[^/\]+$`.
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
  /// `^properties/\[^/\]+/webDataStreams/\[^/\]+/measurementProtocolSecrets/\[^/\]+$`.
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
    final _body = convert.json.encode(request.toJson());
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

  GoogleAnalyticsAdminV1alphaAccount();

  GoogleAnalyticsAdminV1alphaAccount.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('deleted')) {
      deleted = _json['deleted'] as core.bool;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('regionCode')) {
      regionCode = _json['regionCode'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

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

  GoogleAnalyticsAdminV1alphaAccountSummary();

  GoogleAnalyticsAdminV1alphaAccountSummary.fromJson(core.Map _json) {
    if (_json.containsKey('account')) {
      account = _json['account'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('propertySummaries')) {
      propertySummaries = (_json['propertySummaries'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaPropertySummary>((value) =>
              GoogleAnalyticsAdminV1alphaPropertySummary.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (propertySummaries != null)
          'propertySummaries':
              propertySummaries!.map((value) => value.toJson()).toList(),
      };
}

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

  GoogleAnalyticsAdminV1alphaAndroidAppDataStream();

  GoogleAnalyticsAdminV1alphaAndroidAppDataStream.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('firebaseAppId')) {
      firebaseAppId = _json['firebaseAppId'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('packageName')) {
      packageName = _json['packageName'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (firebaseAppId != null) 'firebaseAppId': firebaseAppId!,
        if (name != null) 'name': name!,
        if (packageName != null) 'packageName': packageName!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Request message for ArchiveCustomDimension RPC.
class GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest {
  GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest();

  GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Request message for ArchiveCustomMetric RPC.
class GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest {
  GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest();

  GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Read-only resource used to summarize a principal's effective roles.
class GoogleAnalyticsAdminV1alphaAuditUserLink {
  /// Roles directly assigned to this user for this entity.
  ///
  /// Format: predefinedRoles/read Excludes roles that are inherited from an
  /// account (if this is for a property), group, or organization admin role.
  core.List<core.String>? directRoles;

  /// Union of all permissions a user has at this account or property (includes
  /// direct permissions, group-inherited permissions, etc.).
  ///
  /// Format: predefinedRoles/read
  core.List<core.String>? effectiveRoles;

  /// Email address of the linked user
  core.String? emailAddress;

  /// Example format: properties/1234/userLinks/5678
  core.String? name;

  GoogleAnalyticsAdminV1alphaAuditUserLink();

  GoogleAnalyticsAdminV1alphaAuditUserLink.fromJson(core.Map _json) {
    if (_json.containsKey('directRoles')) {
      directRoles = (_json['directRoles'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('effectiveRoles')) {
      effectiveRoles = (_json['effectiveRoles'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('emailAddress')) {
      emailAddress = _json['emailAddress'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

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

  GoogleAnalyticsAdminV1alphaAuditUserLinksRequest();

  GoogleAnalyticsAdminV1alphaAuditUserLinksRequest.fromJson(core.Map _json) {
    if (_json.containsKey('pageSize')) {
      pageSize = _json['pageSize'] as core.int;
    }
    if (_json.containsKey('pageToken')) {
      pageToken = _json['pageToken'] as core.String;
    }
  }

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

  GoogleAnalyticsAdminV1alphaAuditUserLinksResponse();

  GoogleAnalyticsAdminV1alphaAuditUserLinksResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('userLinks')) {
      userLinks = (_json['userLinks'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaAuditUserLink>((value) =>
              GoogleAnalyticsAdminV1alphaAuditUserLink.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (userLinks != null)
          'userLinks': userLinks!.map((value) => value.toJson()).toList(),
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

  GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest();

  GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('notifyNewUsers')) {
      notifyNewUsers = _json['notifyNewUsers'] as core.bool;
    }
    if (_json.containsKey('requests')) {
      requests = (_json['requests'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaCreateUserLinkRequest>((value) =>
              GoogleAnalyticsAdminV1alphaCreateUserLinkRequest.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (notifyNewUsers != null) 'notifyNewUsers': notifyNewUsers!,
        if (requests != null)
          'requests': requests!.map((value) => value.toJson()).toList(),
      };
}

/// Response message for BatchCreateUserLinks RPC.
class GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse {
  /// The user links created.
  core.List<GoogleAnalyticsAdminV1alphaUserLink>? userLinks;

  GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse();

  GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('userLinks')) {
      userLinks = (_json['userLinks'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaUserLink>((value) =>
              GoogleAnalyticsAdminV1alphaUserLink.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (userLinks != null)
          'userLinks': userLinks!.map((value) => value.toJson()).toList(),
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

  GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest();

  GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('requests')) {
      requests = (_json['requests'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest>((value) =>
              GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null)
          'requests': requests!.map((value) => value.toJson()).toList(),
      };
}

/// Response message for BatchGetUserLinks RPC.
class GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse {
  /// The requested user links.
  core.List<GoogleAnalyticsAdminV1alphaUserLink>? userLinks;

  GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse();

  GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('userLinks')) {
      userLinks = (_json['userLinks'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaUserLink>((value) =>
              GoogleAnalyticsAdminV1alphaUserLink.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (userLinks != null)
          'userLinks': userLinks!.map((value) => value.toJson()).toList(),
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

  GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest();

  GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('requests')) {
      requests = (_json['requests'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest>((value) =>
              GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null)
          'requests': requests!.map((value) => value.toJson()).toList(),
      };
}

/// Response message for BatchUpdateUserLinks RPC.
class GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse {
  /// The user links updated.
  core.List<GoogleAnalyticsAdminV1alphaUserLink>? userLinks;

  GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse();

  GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('userLinks')) {
      userLinks = (_json['userLinks'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaUserLink>((value) =>
              GoogleAnalyticsAdminV1alphaUserLink.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (userLinks != null)
          'userLinks': userLinks!.map((value) => value.toJson()).toList(),
      };
}

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

  GoogleAnalyticsAdminV1alphaChangeHistoryChange();

  GoogleAnalyticsAdminV1alphaChangeHistoryChange.fromJson(core.Map _json) {
    if (_json.containsKey('action')) {
      action = _json['action'] as core.String;
    }
    if (_json.containsKey('resource')) {
      resource = _json['resource'] as core.String;
    }
    if (_json.containsKey('resourceAfterChange')) {
      resourceAfterChange =
          GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource
              .fromJson(_json['resourceAfterChange']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('resourceBeforeChange')) {
      resourceBeforeChange =
          GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource
              .fromJson(_json['resourceBeforeChange']
                  as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (resource != null) 'resource': resource!,
        if (resourceAfterChange != null)
          'resourceAfterChange': resourceAfterChange!.toJson(),
        if (resourceBeforeChange != null)
          'resourceBeforeChange': resourceBeforeChange!.toJson(),
      };
}

/// A snapshot of a resource as before or after the result of a change in change
/// history.
class GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource {
  /// A snapshot of an Account resource in change history.
  GoogleAnalyticsAdminV1alphaAccount? account;

  /// A snapshot of an AndroidAppDataStream resource in change history.
  GoogleAnalyticsAdminV1alphaAndroidAppDataStream? androidAppDataStream;

  /// A snapshot of a ConversionEvent resource in change history.
  GoogleAnalyticsAdminV1alphaConversionEvent? conversionEvent;

  /// A snapshot of a CustomDimension resource in change history.
  GoogleAnalyticsAdminV1alphaCustomDimension? customDimension;

  /// A snapshot of a CustomMetric resource in change history.
  GoogleAnalyticsAdminV1alphaCustomMetric? customMetric;

  /// A snapshot of a FirebaseLink resource in change history.
  GoogleAnalyticsAdminV1alphaFirebaseLink? firebaseLink;

  /// A snapshot of a GoogleAdsLink resource in change history.
  GoogleAnalyticsAdminV1alphaGoogleAdsLink? googleAdsLink;

  /// A snapshot of a GoogleSignalsSettings resource in change history.
  GoogleAnalyticsAdminV1alphaGoogleSignalsSettings? googleSignalsSettings;

  /// A snapshot of an IosAppDataStream resource in change history.
  GoogleAnalyticsAdminV1alphaIosAppDataStream? iosAppDataStream;

  /// A snapshot of a MeasurementProtocolSecret resource in change history.
  GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret?
      measurementProtocolSecret;

  /// A snapshot of a Property resource in change history.
  GoogleAnalyticsAdminV1alphaProperty? property;

  /// A snapshot of a WebDataStream resource in change history.
  GoogleAnalyticsAdminV1alphaWebDataStream? webDataStream;

  GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource();

  GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource.fromJson(
      core.Map _json) {
    if (_json.containsKey('account')) {
      account = GoogleAnalyticsAdminV1alphaAccount.fromJson(
          _json['account'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('androidAppDataStream')) {
      androidAppDataStream =
          GoogleAnalyticsAdminV1alphaAndroidAppDataStream.fromJson(
              _json['androidAppDataStream']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('conversionEvent')) {
      conversionEvent = GoogleAnalyticsAdminV1alphaConversionEvent.fromJson(
          _json['conversionEvent'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('customDimension')) {
      customDimension = GoogleAnalyticsAdminV1alphaCustomDimension.fromJson(
          _json['customDimension'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('customMetric')) {
      customMetric = GoogleAnalyticsAdminV1alphaCustomMetric.fromJson(
          _json['customMetric'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('firebaseLink')) {
      firebaseLink = GoogleAnalyticsAdminV1alphaFirebaseLink.fromJson(
          _json['firebaseLink'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('googleAdsLink')) {
      googleAdsLink = GoogleAnalyticsAdminV1alphaGoogleAdsLink.fromJson(
          _json['googleAdsLink'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('googleSignalsSettings')) {
      googleSignalsSettings =
          GoogleAnalyticsAdminV1alphaGoogleSignalsSettings.fromJson(
              _json['googleSignalsSettings']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('iosAppDataStream')) {
      iosAppDataStream = GoogleAnalyticsAdminV1alphaIosAppDataStream.fromJson(
          _json['iosAppDataStream'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('measurementProtocolSecret')) {
      measurementProtocolSecret =
          GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret.fromJson(
              _json['measurementProtocolSecret']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('property')) {
      property = GoogleAnalyticsAdminV1alphaProperty.fromJson(
          _json['property'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('webDataStream')) {
      webDataStream = GoogleAnalyticsAdminV1alphaWebDataStream.fromJson(
          _json['webDataStream'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!.toJson(),
        if (androidAppDataStream != null)
          'androidAppDataStream': androidAppDataStream!.toJson(),
        if (conversionEvent != null)
          'conversionEvent': conversionEvent!.toJson(),
        if (customDimension != null)
          'customDimension': customDimension!.toJson(),
        if (customMetric != null) 'customMetric': customMetric!.toJson(),
        if (firebaseLink != null) 'firebaseLink': firebaseLink!.toJson(),
        if (googleAdsLink != null) 'googleAdsLink': googleAdsLink!.toJson(),
        if (googleSignalsSettings != null)
          'googleSignalsSettings': googleSignalsSettings!.toJson(),
        if (iosAppDataStream != null)
          'iosAppDataStream': iosAppDataStream!.toJson(),
        if (measurementProtocolSecret != null)
          'measurementProtocolSecret': measurementProtocolSecret!.toJson(),
        if (property != null) 'property': property!.toJson(),
        if (webDataStream != null) 'webDataStream': webDataStream!.toJson(),
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

  GoogleAnalyticsAdminV1alphaChangeHistoryEvent();

  GoogleAnalyticsAdminV1alphaChangeHistoryEvent.fromJson(core.Map _json) {
    if (_json.containsKey('actorType')) {
      actorType = _json['actorType'] as core.String;
    }
    if (_json.containsKey('changeTime')) {
      changeTime = _json['changeTime'] as core.String;
    }
    if (_json.containsKey('changes')) {
      changes = (_json['changes'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaChangeHistoryChange>((value) =>
              GoogleAnalyticsAdminV1alphaChangeHistoryChange.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('changesFiltered')) {
      changesFiltered = _json['changesFiltered'] as core.bool;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('userActorEmail')) {
      userActorEmail = _json['userActorEmail'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (actorType != null) 'actorType': actorType!,
        if (changeTime != null) 'changeTime': changeTime!,
        if (changes != null)
          'changes': changes!.map((value) => value.toJson()).toList(),
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

  /// The event name for this conversion event.
  ///
  /// Examples: 'click', 'purchase'
  ///
  /// Immutable.
  core.String? eventName;

  /// If set, this event can currently be deleted via DeleteConversionEvent.
  ///
  /// Output only.
  core.bool? isDeletable;

  /// Resource name of this conversion event.
  ///
  /// Format: properties/{property}/conversionEvents/{conversion_event}
  ///
  /// Output only.
  core.String? name;

  GoogleAnalyticsAdminV1alphaConversionEvent();

  GoogleAnalyticsAdminV1alphaConversionEvent.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('eventName')) {
      eventName = _json['eventName'] as core.String;
    }
    if (_json.containsKey('isDeletable')) {
      isDeletable = _json['isDeletable'] as core.bool;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (eventName != null) 'eventName': eventName!,
        if (isDeletable != null) 'isDeletable': isDeletable!,
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

  GoogleAnalyticsAdminV1alphaCreateUserLinkRequest();

  GoogleAnalyticsAdminV1alphaCreateUserLinkRequest.fromJson(core.Map _json) {
    if (_json.containsKey('notifyNewUser')) {
      notifyNewUser = _json['notifyNewUser'] as core.bool;
    }
    if (_json.containsKey('parent')) {
      parent = _json['parent'] as core.String;
    }
    if (_json.containsKey('userLink')) {
      userLink = GoogleAnalyticsAdminV1alphaUserLink.fromJson(
          _json['userLink'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (notifyNewUser != null) 'notifyNewUser': notifyNewUser!,
        if (parent != null) 'parent': parent!,
        if (userLink != null) 'userLink': userLink!.toJson(),
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

  GoogleAnalyticsAdminV1alphaCustomDimension();

  GoogleAnalyticsAdminV1alphaCustomDimension.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('disallowAdsPersonalization')) {
      disallowAdsPersonalization =
          _json['disallowAdsPersonalization'] as core.bool;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('parameterName')) {
      parameterName = _json['parameterName'] as core.String;
    }
    if (_json.containsKey('scope')) {
      scope = _json['scope'] as core.String;
    }
  }

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
  /// Required. Immutable.
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

  /// The scope of this custom metric.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "METRIC_SCOPE_UNSPECIFIED" : Scope unknown or not specified.
  /// - "EVENT" : Metric scoped to an event.
  core.String? scope;

  GoogleAnalyticsAdminV1alphaCustomMetric();

  GoogleAnalyticsAdminV1alphaCustomMetric.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('measurementUnit')) {
      measurementUnit = _json['measurementUnit'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('parameterName')) {
      parameterName = _json['parameterName'] as core.String;
    }
    if (_json.containsKey('scope')) {
      scope = _json['scope'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (measurementUnit != null) 'measurementUnit': measurementUnit!,
        if (name != null) 'name': name!,
        if (parameterName != null) 'parameterName': parameterName!,
        if (scope != null) 'scope': scope!,
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

  GoogleAnalyticsAdminV1alphaDataSharingSettings();

  GoogleAnalyticsAdminV1alphaDataSharingSettings.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('sharingWithGoogleAnySalesEnabled')) {
      sharingWithGoogleAnySalesEnabled =
          _json['sharingWithGoogleAnySalesEnabled'] as core.bool;
    }
    if (_json.containsKey('sharingWithGoogleAssignedSalesEnabled')) {
      sharingWithGoogleAssignedSalesEnabled =
          _json['sharingWithGoogleAssignedSalesEnabled'] as core.bool;
    }
    if (_json.containsKey('sharingWithGoogleProductsEnabled')) {
      sharingWithGoogleProductsEnabled =
          _json['sharingWithGoogleProductsEnabled'] as core.bool;
    }
    if (_json.containsKey('sharingWithGoogleSupportEnabled')) {
      sharingWithGoogleSupportEnabled =
          _json['sharingWithGoogleSupportEnabled'] as core.bool;
    }
    if (_json.containsKey('sharingWithOthersEnabled')) {
      sharingWithOthersEnabled = _json['sharingWithOthersEnabled'] as core.bool;
    }
  }

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

/// Request message for DeleteUserLink RPC.
class GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest {
  /// Example format: accounts/1234/userLinks/5678
  ///
  /// Required.
  core.String? name;

  GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest();

  GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// Singleton resource under a WebDataStream, configuring measurement of
/// additional site interactions and content.
class GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings {
  /// If enabled, capture a file download event each time a link is clicked with
  /// a common document, compressed file, application, video, or audio
  /// extension.
  core.bool? fileDownloadsEnabled;

  /// Resource name of this Data Stream.
  ///
  /// Format:
  /// properties/{property_id}/webDataStreams/{stream_id}/enhancedMeasurementSettings
  /// Example: "properties/1000/webDataStreams/2000/enhancedMeasurementSettings"
  ///
  /// Output only.
  core.String? name;

  /// If enabled, capture an outbound click event each time a visitor clicks a
  /// link that leads them away from your domain.
  core.bool? outboundClicksEnabled;

  /// If enabled, capture a page view event each time the website changes the
  /// browser history state.
  core.bool? pageChangesEnabled;

  /// If enabled, capture a page view event each time a page loads.
  ///
  /// Output only.
  core.bool? pageLoadsEnabled;

  /// If enabled, capture a page view event each time a page loads or the
  /// website changes the browser history state.
  ///
  /// Output only.
  core.bool? pageViewsEnabled;

  /// If enabled, capture scroll events each time a visitor gets to the bottom
  /// of a page.
  core.bool? scrollsEnabled;

  /// URL query parameters to interpret as site search parameters.
  ///
  /// Max length is 1024 characters. Must not be empty.
  ///
  /// Required.
  core.String? searchQueryParameter;

  /// If enabled, capture a view search results event each time a visitor
  /// performs a search on your site (based on a query parameter).
  core.bool? siteSearchEnabled;

  /// Indicates whether Enhanced Measurement Settings will be used to
  /// automatically measure interactions and content on this web stream.
  ///
  /// Changing this value does not affect the settings themselves, but
  /// determines whether they are respected.
  core.bool? streamEnabled;

  /// Additional URL query parameters.
  ///
  /// Max length is 1024 characters.
  core.String? uriQueryParameter;

  /// If enabled, capture video play, progress, and complete events as visitors
  /// view embedded videos on your site.
  core.bool? videoEngagementEnabled;

  GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings();

  GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings.fromJson(
      core.Map _json) {
    if (_json.containsKey('fileDownloadsEnabled')) {
      fileDownloadsEnabled = _json['fileDownloadsEnabled'] as core.bool;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('outboundClicksEnabled')) {
      outboundClicksEnabled = _json['outboundClicksEnabled'] as core.bool;
    }
    if (_json.containsKey('pageChangesEnabled')) {
      pageChangesEnabled = _json['pageChangesEnabled'] as core.bool;
    }
    if (_json.containsKey('pageLoadsEnabled')) {
      pageLoadsEnabled = _json['pageLoadsEnabled'] as core.bool;
    }
    if (_json.containsKey('pageViewsEnabled')) {
      pageViewsEnabled = _json['pageViewsEnabled'] as core.bool;
    }
    if (_json.containsKey('scrollsEnabled')) {
      scrollsEnabled = _json['scrollsEnabled'] as core.bool;
    }
    if (_json.containsKey('searchQueryParameter')) {
      searchQueryParameter = _json['searchQueryParameter'] as core.String;
    }
    if (_json.containsKey('siteSearchEnabled')) {
      siteSearchEnabled = _json['siteSearchEnabled'] as core.bool;
    }
    if (_json.containsKey('streamEnabled')) {
      streamEnabled = _json['streamEnabled'] as core.bool;
    }
    if (_json.containsKey('uriQueryParameter')) {
      uriQueryParameter = _json['uriQueryParameter'] as core.String;
    }
    if (_json.containsKey('videoEngagementEnabled')) {
      videoEngagementEnabled = _json['videoEngagementEnabled'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileDownloadsEnabled != null)
          'fileDownloadsEnabled': fileDownloadsEnabled!,
        if (name != null) 'name': name!,
        if (outboundClicksEnabled != null)
          'outboundClicksEnabled': outboundClicksEnabled!,
        if (pageChangesEnabled != null)
          'pageChangesEnabled': pageChangesEnabled!,
        if (pageLoadsEnabled != null) 'pageLoadsEnabled': pageLoadsEnabled!,
        if (pageViewsEnabled != null) 'pageViewsEnabled': pageViewsEnabled!,
        if (scrollsEnabled != null) 'scrollsEnabled': scrollsEnabled!,
        if (searchQueryParameter != null)
          'searchQueryParameter': searchQueryParameter!,
        if (siteSearchEnabled != null) 'siteSearchEnabled': siteSearchEnabled!,
        if (streamEnabled != null) 'streamEnabled': streamEnabled!,
        if (uriQueryParameter != null) 'uriQueryParameter': uriQueryParameter!,
        if (videoEngagementEnabled != null)
          'videoEngagementEnabled': videoEngagementEnabled!,
      };
}

/// A link between an GA4 property and a Firebase project.
class GoogleAnalyticsAdminV1alphaFirebaseLink {
  /// Time when this FirebaseLink was originally created.
  ///
  /// Output only.
  core.String? createTime;

  /// Maximum user access to the GA4 property allowed to admins of the linked
  /// Firebase project.
  /// Possible string values are:
  /// - "MAXIMUM_USER_ACCESS_UNSPECIFIED" : Unspecified maximum user access.
  /// - "NO_ACCESS" : Firebase users have no access to the Analytics property.
  /// - "READ_AND_ANALYZE" : Firebase users have Read & Analyze access to the
  /// Analytics property.
  /// - "EDITOR_WITHOUT_LINK_MANAGEMENT" : Firebase users have edit access to
  /// the Analytics property, but may not manage the Firebase link.
  /// - "EDITOR_INCLUDING_LINK_MANAGEMENT" : Firebase users have edit access to
  /// the Analytics property and may manage the Firebase link.
  core.String? maximumUserAccess;

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

  GoogleAnalyticsAdminV1alphaFirebaseLink();

  GoogleAnalyticsAdminV1alphaFirebaseLink.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('maximumUserAccess')) {
      maximumUserAccess = _json['maximumUserAccess'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('project')) {
      project = _json['project'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (maximumUserAccess != null) 'maximumUserAccess': maximumUserAccess!,
        if (name != null) 'name': name!,
        if (project != null) 'project': project!,
      };
}

/// Read-only resource with the tag for sending data from a website to a
/// WebDataStream.
class GoogleAnalyticsAdminV1alphaGlobalSiteTag {
  /// Resource name for this GlobalSiteTag resource.
  ///
  /// Format: properties/{propertyId}/globalSiteTag
  ///
  /// Output only.
  core.String? name;

  /// JavaScript code snippet to be pasted as the first item into the head tag
  /// of every webpage to measure.
  ///
  /// Immutable.
  core.String? snippet;

  GoogleAnalyticsAdminV1alphaGlobalSiteTag();

  GoogleAnalyticsAdminV1alphaGlobalSiteTag.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = _json['snippet'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (snippet != null) 'snippet': snippet!,
      };
}

/// A link between an GA4 property and a Google Ads account.
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

  /// Google Ads customer ID.
  ///
  /// Immutable.
  core.String? customerId;

  /// Email address of the user that created the link.
  ///
  /// An empty string will be returned if the email address can't be retrieved.
  ///
  /// Output only.
  core.String? emailAddress;

  /// Format: properties/{propertyId}/googleAdsLinks/{googleAdsLinkId} Note:
  /// googleAdsLinkId is not the Google Ads customer ID.
  ///
  /// Output only.
  core.String? name;

  /// Time when this link was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleAnalyticsAdminV1alphaGoogleAdsLink();

  GoogleAnalyticsAdminV1alphaGoogleAdsLink.fromJson(core.Map _json) {
    if (_json.containsKey('adsPersonalizationEnabled')) {
      adsPersonalizationEnabled =
          _json['adsPersonalizationEnabled'] as core.bool;
    }
    if (_json.containsKey('canManageClients')) {
      canManageClients = _json['canManageClients'] as core.bool;
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('customerId')) {
      customerId = _json['customerId'] as core.String;
    }
    if (_json.containsKey('emailAddress')) {
      emailAddress = _json['emailAddress'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (adsPersonalizationEnabled != null)
          'adsPersonalizationEnabled': adsPersonalizationEnabled!,
        if (canManageClients != null) 'canManageClients': canManageClients!,
        if (createTime != null) 'createTime': createTime!,
        if (customerId != null) 'customerId': customerId!,
        if (emailAddress != null) 'emailAddress': emailAddress!,
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

  GoogleAnalyticsAdminV1alphaGoogleSignalsSettings();

  GoogleAnalyticsAdminV1alphaGoogleSignalsSettings.fromJson(core.Map _json) {
    if (_json.containsKey('consent')) {
      consent = _json['consent'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
  }

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

  GoogleAnalyticsAdminV1alphaIosAppDataStream();

  GoogleAnalyticsAdminV1alphaIosAppDataStream.fromJson(core.Map _json) {
    if (_json.containsKey('bundleId')) {
      bundleId = _json['bundleId'] as core.String;
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('firebaseAppId')) {
      firebaseAppId = _json['firebaseAppId'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundleId != null) 'bundleId': bundleId!,
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (firebaseAppId != null) 'firebaseAppId': firebaseAppId!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
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

  GoogleAnalyticsAdminV1alphaListAccountSummariesResponse();

  GoogleAnalyticsAdminV1alphaListAccountSummariesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('accountSummaries')) {
      accountSummaries = (_json['accountSummaries'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaAccountSummary>((value) =>
              GoogleAnalyticsAdminV1alphaAccountSummary.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountSummaries != null)
          'accountSummaries':
              accountSummaries!.map((value) => value.toJson()).toList(),
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

  GoogleAnalyticsAdminV1alphaListAccountsResponse();

  GoogleAnalyticsAdminV1alphaListAccountsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('accounts')) {
      accounts = (_json['accounts'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaAccount>((value) =>
              GoogleAnalyticsAdminV1alphaAccount.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (accounts != null)
          'accounts': accounts!.map((value) => value.toJson()).toList(),
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

  GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse();

  GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('androidAppDataStreams')) {
      androidAppDataStreams = (_json['androidAppDataStreams'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaAndroidAppDataStream>((value) =>
              GoogleAnalyticsAdminV1alphaAndroidAppDataStream.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidAppDataStreams != null)
          'androidAppDataStreams':
              androidAppDataStreams!.map((value) => value.toJson()).toList(),
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

  GoogleAnalyticsAdminV1alphaListConversionEventsResponse();

  GoogleAnalyticsAdminV1alphaListConversionEventsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('conversionEvents')) {
      conversionEvents = (_json['conversionEvents'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaConversionEvent>((value) =>
              GoogleAnalyticsAdminV1alphaConversionEvent.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversionEvents != null)
          'conversionEvents':
              conversionEvents!.map((value) => value.toJson()).toList(),
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

  GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse();

  GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('customDimensions')) {
      customDimensions = (_json['customDimensions'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaCustomDimension>((value) =>
              GoogleAnalyticsAdminV1alphaCustomDimension.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (customDimensions != null)
          'customDimensions':
              customDimensions!.map((value) => value.toJson()).toList(),
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

  GoogleAnalyticsAdminV1alphaListCustomMetricsResponse();

  GoogleAnalyticsAdminV1alphaListCustomMetricsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('customMetrics')) {
      customMetrics = (_json['customMetrics'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaCustomMetric>((value) =>
              GoogleAnalyticsAdminV1alphaCustomMetric.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (customMetrics != null)
          'customMetrics':
              customMetrics!.map((value) => value.toJson()).toList(),
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

  GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse();

  GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('firebaseLinks')) {
      firebaseLinks = (_json['firebaseLinks'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaFirebaseLink>((value) =>
              GoogleAnalyticsAdminV1alphaFirebaseLink.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (firebaseLinks != null)
          'firebaseLinks':
              firebaseLinks!.map((value) => value.toJson()).toList(),
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

  GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse();

  GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('googleAdsLinks')) {
      googleAdsLinks = (_json['googleAdsLinks'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaGoogleAdsLink>((value) =>
              GoogleAnalyticsAdminV1alphaGoogleAdsLink.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (googleAdsLinks != null)
          'googleAdsLinks':
              googleAdsLinks!.map((value) => value.toJson()).toList(),
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

  GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse();

  GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('iosAppDataStreams')) {
      iosAppDataStreams = (_json['iosAppDataStreams'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaIosAppDataStream>((value) =>
              GoogleAnalyticsAdminV1alphaIosAppDataStream.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (iosAppDataStreams != null)
          'iosAppDataStreams':
              iosAppDataStreams!.map((value) => value.toJson()).toList(),
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

  GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse();

  GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('measurementProtocolSecrets')) {
      measurementProtocolSecrets = (_json['measurementProtocolSecrets']
              as core.List)
          .map<GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret>((value) =>
              GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (measurementProtocolSecrets != null)
          'measurementProtocolSecrets': measurementProtocolSecrets!
              .map((value) => value.toJson())
              .toList(),
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

  GoogleAnalyticsAdminV1alphaListPropertiesResponse();

  GoogleAnalyticsAdminV1alphaListPropertiesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('properties')) {
      properties = (_json['properties'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaProperty>((value) =>
              GoogleAnalyticsAdminV1alphaProperty.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (properties != null)
          'properties': properties!.map((value) => value.toJson()).toList(),
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

  GoogleAnalyticsAdminV1alphaListUserLinksResponse();

  GoogleAnalyticsAdminV1alphaListUserLinksResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('userLinks')) {
      userLinks = (_json['userLinks'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaUserLink>((value) =>
              GoogleAnalyticsAdminV1alphaUserLink.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (userLinks != null)
          'userLinks': userLinks!.map((value) => value.toJson()).toList(),
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

  GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse();

  GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('webDataStreams')) {
      webDataStreams = (_json['webDataStreams'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaWebDataStream>((value) =>
              GoogleAnalyticsAdminV1alphaWebDataStream.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (webDataStreams != null)
          'webDataStreams':
              webDataStreams!.map((value) => value.toJson()).toList(),
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

  GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret();

  GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret.fromJson(
      core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('secretValue')) {
      secretValue = _json['secretValue'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (secretValue != null) 'secretValue': secretValue!,
      };
}

/// A resource message representing a Google Analytics GA4 property.
class GoogleAnalyticsAdminV1alphaProperty {
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

  GoogleAnalyticsAdminV1alphaProperty();

  GoogleAnalyticsAdminV1alphaProperty.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('currencyCode')) {
      currencyCode = _json['currencyCode'] as core.String;
    }
    if (_json.containsKey('deleteTime')) {
      deleteTime = _json['deleteTime'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('expireTime')) {
      expireTime = _json['expireTime'] as core.String;
    }
    if (_json.containsKey('industryCategory')) {
      industryCategory = _json['industryCategory'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('parent')) {
      parent = _json['parent'] as core.String;
    }
    if (_json.containsKey('timeZone')) {
      timeZone = _json['timeZone'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (industryCategory != null) 'industryCategory': industryCategory!,
        if (name != null) 'name': name!,
        if (parent != null) 'parent': parent!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A virtual resource representing metadata for an GA4 property.
class GoogleAnalyticsAdminV1alphaPropertySummary {
  /// Display name for the property referred to in this account summary.
  core.String? displayName;

  /// Resource name of property referred to by this property summary Format:
  /// properties/{property_id} Example: "properties/1000"
  core.String? property;

  GoogleAnalyticsAdminV1alphaPropertySummary();

  GoogleAnalyticsAdminV1alphaPropertySummary.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('property')) {
      property = _json['property'] as core.String;
    }
  }

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

  GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest();

  GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('account')) {
      account = GoogleAnalyticsAdminV1alphaAccount.fromJson(
          _json['account'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('redirectUri')) {
      redirectUri = _json['redirectUri'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!.toJson(),
        if (redirectUri != null) 'redirectUri': redirectUri!,
      };
}

/// Response message for ProvisionAccountTicket RPC.
class GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse {
  /// The param to be passed in the ToS link.
  core.String? accountTicketId;

  GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse();

  GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('accountTicketId')) {
      accountTicketId = _json['accountTicketId'] as core.String;
    }
  }

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

  GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest();

  GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('action')) {
      action = (_json['action'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('actorEmail')) {
      actorEmail = (_json['actorEmail'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('earliestChangeTime')) {
      earliestChangeTime = _json['earliestChangeTime'] as core.String;
    }
    if (_json.containsKey('latestChangeTime')) {
      latestChangeTime = _json['latestChangeTime'] as core.String;
    }
    if (_json.containsKey('pageSize')) {
      pageSize = _json['pageSize'] as core.int;
    }
    if (_json.containsKey('pageToken')) {
      pageToken = _json['pageToken'] as core.String;
    }
    if (_json.containsKey('property')) {
      property = _json['property'] as core.String;
    }
    if (_json.containsKey('resourceType')) {
      resourceType = (_json['resourceType'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

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

  GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse();

  GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('changeHistoryEvents')) {
      changeHistoryEvents = (_json['changeHistoryEvents'] as core.List)
          .map<GoogleAnalyticsAdminV1alphaChangeHistoryEvent>((value) =>
              GoogleAnalyticsAdminV1alphaChangeHistoryEvent.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (changeHistoryEvents != null)
          'changeHistoryEvents':
              changeHistoryEvents!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Request message for UpdateUserLink RPC.
class GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest {
  /// The user link to update.
  ///
  /// Required.
  GoogleAnalyticsAdminV1alphaUserLink? userLink;

  GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest();

  GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest.fromJson(core.Map _json) {
    if (_json.containsKey('userLink')) {
      userLink = GoogleAnalyticsAdminV1alphaUserLink.fromJson(
          _json['userLink'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (userLink != null) 'userLink': userLink!.toJson(),
      };
}

/// A resource message representing a user's permissions on an Account or
/// Property resource.
class GoogleAnalyticsAdminV1alphaUserLink {
  /// Roles directly assigned to this user for this account or property.
  ///
  /// Valid values: predefinedRoles/read predefinedRoles/collaborate
  /// predefinedRoles/edit predefinedRoles/manage-users Excludes roles that are
  /// inherited from a higher-level entity, group, or organization admin role. A
  /// UserLink that is updated to have an empty list of direct_roles will be
  /// deleted.
  core.List<core.String>? directRoles;

  /// Email address of the user to link
  ///
  /// Immutable.
  core.String? emailAddress;

  /// Example format: properties/1234/userLinks/5678
  ///
  /// Output only.
  core.String? name;

  GoogleAnalyticsAdminV1alphaUserLink();

  GoogleAnalyticsAdminV1alphaUserLink.fromJson(core.Map _json) {
    if (_json.containsKey('directRoles')) {
      directRoles = (_json['directRoles'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('emailAddress')) {
      emailAddress = _json['emailAddress'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

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
  /// The max allowed display name length is 100 UTF-16 code units.
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

  GoogleAnalyticsAdminV1alphaWebDataStream();

  GoogleAnalyticsAdminV1alphaWebDataStream.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('defaultUri')) {
      defaultUri = _json['defaultUri'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('firebaseAppId')) {
      firebaseAppId = _json['firebaseAppId'] as core.String;
    }
    if (_json.containsKey('measurementId')) {
      measurementId = _json['measurementId'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

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
class GoogleProtobufEmpty {
  GoogleProtobufEmpty();

  GoogleProtobufEmpty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}
