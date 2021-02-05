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
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
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
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/accountSummaries';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.int pageSize,
    core.String pageToken,
    core.bool showDeleted,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (showDeleted != null) {
      _queryParams['showDeleted'] = ['${showDeleted}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/accounts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
  /// [updateMask] - Required. The list of fields to be updated. Omitted fields
  /// will not be updated. To replace the entire entity, use one path with the
  /// string "*" to match all fields.
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
    core.String updateMask,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/accounts:provisionAccountTicket';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
    );
    return GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/userLinks:audit';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/userLinks:batchCreate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/userLinks:batchDelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.List<core.String> names,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (names != null) {
      _queryParams['names'] = names;
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/userLinks:batchGet';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/userLinks:batchUpdate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.bool notifyNewUser,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (notifyNewUser != null) {
      _queryParams['notifyNewUser'] = ['${notifyNewUser}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/userLinks';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/userLinks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
  /// [name] - Example format: properties/1234/userLinks/5678
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
    );
    return GoogleAnalyticsAdminV1alphaUserLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesResource {
  final commons.ApiRequester _requester;

  PropertiesAndroidAppDataStreamsResource get androidAppDataStreams =>
      PropertiesAndroidAppDataStreamsResource(_requester);
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/properties';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
    );
    return GoogleProtobufEmpty.fromJson(
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
    );
    return GoogleAnalyticsAdminV1alphaProperty.fromJson(
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
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.bool showDeleted,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (showDeleted != null) {
      _queryParams['showDeleted'] = ['${showDeleted}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/properties';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
  /// [updateMask] - Required. The list of fields to be updated. Omitted fields
  /// will not be updated. To replace the entire entity, use one path with the
  /// string "*" to match all fields.
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
    core.String updateMask,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
    );
    return GoogleAnalyticsAdminV1alphaProperty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesAndroidAppDataStreamsResource {
  final commons.ApiRequester _requester;

  PropertiesAndroidAppDataStreamsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an Android app stream with the specified location and attributes.
  ///
  /// Note that an Android app stream must be linked to a Firebase app to
  /// receive traffic. To create a working app stream, make sure your property
  /// is linked to a Firebase project. Then, use the Firebase API to create a
  /// Firebase app, which will also create an appropriate data stream in
  /// Analytics (may take up to 24 hours).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this android app data
  /// stream will be created. Format: properties/123
  /// Value must have pattern `^properties/\[^/\]+$`.
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
  async.Future<GoogleAnalyticsAdminV1alphaAndroidAppDataStream> create(
    GoogleAnalyticsAdminV1alphaAndroidAppDataStream request,
    core.String parent, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/androidAppDataStreams';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
    );
    return GoogleAnalyticsAdminV1alphaAndroidAppDataStream.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/androidAppDataStreams';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
  /// [updateMask] - Required. The list of fields to be updated. Omitted fields
  /// will not be updated. To replace the entire entity, use one path with the
  /// string "*" to match all fields.
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
    core.String updateMask,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
    );
    return GoogleAnalyticsAdminV1alphaAndroidAppDataStream.fromJson(
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/firebaseLinks';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/firebaseLinks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
  /// [updateMask] - Required. The list of fields to be updated. Omitted fields
  /// will not be updated. To replace the entire entity, use one path with the
  /// string "*" to match all fields.
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
    core.String updateMask,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/googleAdsLinks';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/googleAdsLinks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
  /// [updateMask] - Required. The list of fields to be updated. Omitted fields
  /// will not be updated. To replace the entire entity, use one path with the
  /// string "*" to match all fields.
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
    core.String updateMask,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
    );
    return GoogleAnalyticsAdminV1alphaGoogleAdsLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesIosAppDataStreamsResource {
  final commons.ApiRequester _requester;

  PropertiesIosAppDataStreamsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an iOS app stream with the specified location and attributes.
  ///
  /// Note that an iOS app stream must be linked to a Firebase app to receive
  /// traffic. To create a working app stream, make sure your property is linked
  /// to a Firebase project. Then, use the Firebase API to create a Firebase
  /// app, which will also create an appropriate data stream in Analytics (may
  /// take up to 24 hours).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this ios app data stream
  /// will be created. Format: properties/123
  /// Value must have pattern `^properties/\[^/\]+$`.
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
  async.Future<GoogleAnalyticsAdminV1alphaIosAppDataStream> create(
    GoogleAnalyticsAdminV1alphaIosAppDataStream request,
    core.String parent, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/iosAppDataStreams';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
    );
    return GoogleAnalyticsAdminV1alphaIosAppDataStream.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/iosAppDataStreams';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
  /// [updateMask] - Required. The list of fields to be updated. Omitted fields
  /// will not be updated. To replace the entire entity, use one path with the
  /// string "*" to match all fields.
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
    core.String updateMask,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/userLinks:audit';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/userLinks:batchCreate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/userLinks:batchDelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.List<core.String> names,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (names != null) {
      _queryParams['names'] = names;
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/userLinks:batchGet';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/userLinks:batchUpdate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.bool notifyNewUser,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (notifyNewUser != null) {
      _queryParams['notifyNewUser'] = ['${notifyNewUser}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/userLinks';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/userLinks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
  /// [name] - Example format: properties/1234/userLinks/5678
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/webDataStreams';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/webDataStreams';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
  /// [updateMask] - Required. The list of fields to be updated. Omitted fields
  /// will not be updated. To replace the entire entity, use one path with the
  /// string "*" to match all fields.
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
    core.String updateMask,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
  /// [updateMask] - Required. The list of fields to be updated. Omitted fields
  /// will not be updated. To replace the entire entity, use one path with the
  /// string "*" to match all fields.
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
    core.String updateMask,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
    );
    return GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// A resource message representing a Google Analytics account.
class GoogleAnalyticsAdminV1alphaAccount {
  /// Time when this account was originally created.
  ///
  /// Output only.
  core.String createTime;

  /// Indicates whether this Account is soft-deleted or not.
  ///
  /// Deleted accounts are excluded from List results unless specifically
  /// requested.
  ///
  /// Output only.
  core.bool deleted;

  /// Human-readable display name for this account.
  ///
  /// Required.
  core.String displayName;

  /// Resource name of this account.
  ///
  /// Format: accounts/{account} Example: "accounts/100"
  ///
  /// Output only.
  core.String name;

  /// Country of business.
  ///
  /// Must be a Unicode CLDR region code.
  core.String regionCode;

  /// Time when account payload fields were last updated.
  ///
  /// Output only.
  core.String updateTime;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (deleted != null) {
      _json['deleted'] = deleted;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (regionCode != null) {
      _json['regionCode'] = regionCode;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// A virtual resource representing an overview of an account and all its child
/// GA4 properties.
class GoogleAnalyticsAdminV1alphaAccountSummary {
  /// Resource name of account referred to by this account summary Format:
  /// accounts/{account_id} Example: "accounts/1000"
  core.String account;

  /// Display name for the account referred to in this account summary.
  core.String displayName;

  /// Resource name for this account summary.
  ///
  /// Format: accountSummaries/{account_id} Example: "accountSummaries/1000"
  core.String name;

  /// List of summaries for child accounts of this account.
  core.List<GoogleAnalyticsAdminV1alphaPropertySummary> propertySummaries;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (account != null) {
      _json['account'] = account;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (propertySummaries != null) {
      _json['propertySummaries'] =
          propertySummaries.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A resource message representing a Google Analytics Android app stream.
class GoogleAnalyticsAdminV1alphaAndroidAppDataStream {
  /// Time when this stream was originally created.
  ///
  /// Output only.
  core.String createTime;

  /// Human-readable display name for the Data Stream.
  ///
  /// The max allowed display name length is 255 UTF-16 code units.
  core.String displayName;

  /// ID of the corresponding Android app in Firebase, if any.
  ///
  /// This ID can change if the Android app is deleted and recreated.
  ///
  /// Output only.
  core.String firebaseAppId;

  /// Resource name of this Data Stream.
  ///
  /// Format: properties/{property_id}/androidAppDataStreams/{stream_id}
  /// Example: "properties/1000/androidAppDataStreams/2000"
  ///
  /// Output only.
  core.String name;

  /// The package name for the app being measured.
  ///
  /// Example: "com.example.myandroidapp"
  ///
  /// Immutable.
  core.String packageName;

  /// Time when stream payload fields were last updated.
  ///
  /// Output only.
  core.String updateTime;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (firebaseAppId != null) {
      _json['firebaseAppId'] = firebaseAppId;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (packageName != null) {
      _json['packageName'] = packageName;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Read-only resource used to summarize a principal's effective roles.
class GoogleAnalyticsAdminV1alphaAuditUserLink {
  /// Roles directly assigned to this user for this entity.
  ///
  /// Format: predefinedRoles/read Excludes roles that are inherited from an
  /// account (if this is for a property), group, or organization admin role.
  core.List<core.String> directRoles;

  /// Union of all permissions a user has at this account or property (includes
  /// direct permissions, group-inherited permissions, etc.).
  ///
  /// Format: predefinedRoles/read
  core.List<core.String> effectiveRoles;

  /// Email address of the linked user
  core.String emailAddress;

  /// Example format: properties/1234/userLinks/5678
  core.String name;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (directRoles != null) {
      _json['directRoles'] = directRoles;
    }
    if (effectiveRoles != null) {
      _json['effectiveRoles'] = effectiveRoles;
    }
    if (emailAddress != null) {
      _json['emailAddress'] = emailAddress;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Request message for AuditUserLinks RPC.
class GoogleAnalyticsAdminV1alphaAuditUserLinksRequest {
  /// The maximum number of user links to return.
  ///
  /// The service may return fewer than this value. If unspecified, at most 1000
  /// user links will be returned. The maximum value is 5000; values above 5000
  /// will be coerced to 5000.
  core.int pageSize;

  /// A page token, received from a previous `AuditUserLinks` call.
  ///
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `AuditUserLinks` must match the call that provided
  /// the page token.
  core.String pageToken;

  GoogleAnalyticsAdminV1alphaAuditUserLinksRequest();

  GoogleAnalyticsAdminV1alphaAuditUserLinksRequest.fromJson(core.Map _json) {
    if (_json.containsKey('pageSize')) {
      pageSize = _json['pageSize'] as core.int;
    }
    if (_json.containsKey('pageToken')) {
      pageToken = _json['pageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (pageSize != null) {
      _json['pageSize'] = pageSize;
    }
    if (pageToken != null) {
      _json['pageToken'] = pageToken;
    }
    return _json;
  }
}

/// Response message for AuditUserLinks RPC.
class GoogleAnalyticsAdminV1alphaAuditUserLinksResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String nextPageToken;

  /// List of AuditUserLinks.
  ///
  /// These will be ordered stably, but in an arbitrary order.
  core.List<GoogleAnalyticsAdminV1alphaAuditUserLink> userLinks;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (userLinks != null) {
      _json['userLinks'] = userLinks.map((value) => value.toJson()).toList();
    }
    return _json;
  }
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
  core.bool notifyNewUsers;

  /// The requests specifying the user links to create.
  ///
  /// A maximum of 1000 user links can be created in a batch.
  ///
  /// Required.
  core.List<GoogleAnalyticsAdminV1alphaCreateUserLinkRequest> requests;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (notifyNewUsers != null) {
      _json['notifyNewUsers'] = notifyNewUsers;
    }
    if (requests != null) {
      _json['requests'] = requests.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response message for BatchCreateUserLinks RPC.
class GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse {
  /// The user links created.
  core.List<GoogleAnalyticsAdminV1alphaUserLink> userLinks;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (userLinks != null) {
      _json['userLinks'] = userLinks.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Request message for BatchDeleteUserLinks RPC.
class GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest {
  /// The requests specifying the user links to update.
  ///
  /// A maximum of 1000 user links can be updated in a batch.
  ///
  /// Required.
  core.List<GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest> requests;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (requests != null) {
      _json['requests'] = requests.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response message for BatchGetUserLinks RPC.
class GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse {
  /// The requested user links.
  core.List<GoogleAnalyticsAdminV1alphaUserLink> userLinks;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (userLinks != null) {
      _json['userLinks'] = userLinks.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Request message for BatchUpdateUserLinks RPC.
class GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest {
  /// The requests specifying the user links to update.
  ///
  /// A maximum of 1000 user links can be updated in a batch.
  ///
  /// Required.
  core.List<GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest> requests;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (requests != null) {
      _json['requests'] = requests.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response message for BatchUpdateUserLinks RPC.
class GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse {
  /// The user links updated.
  core.List<GoogleAnalyticsAdminV1alphaUserLink> userLinks;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (userLinks != null) {
      _json['userLinks'] = userLinks.map((value) => value.toJson()).toList();
    }
    return _json;
  }
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
  core.bool notifyNewUser;

  /// Example format: accounts/1234
  ///
  /// Required.
  core.String parent;

  /// The user link to create.
  ///
  /// Required.
  GoogleAnalyticsAdminV1alphaUserLink userLink;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (notifyNewUser != null) {
      _json['notifyNewUser'] = notifyNewUser;
    }
    if (parent != null) {
      _json['parent'] = parent;
    }
    if (userLink != null) {
      _json['userLink'] = userLink.toJson();
    }
    return _json;
  }
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
  core.String name;

  /// Allows any of Google sales to access the data in order to suggest
  /// configuration changes to improve results.
  core.bool sharingWithGoogleAnySalesEnabled;

  /// Allows Google sales teams that are assigned to the customer to access the
  /// data in order to suggest configuration changes to improve results.
  ///
  /// Sales team restrictions still apply when enabled.
  core.bool sharingWithGoogleAssignedSalesEnabled;

  /// Allows Google to use the data to improve other Google products or
  /// services.
  core.bool sharingWithGoogleProductsEnabled;

  /// Allows Google support to access the data in order to help troubleshoot
  /// issues.
  core.bool sharingWithGoogleSupportEnabled;

  /// Allows Google to share the data anonymously in aggregate form with others.
  core.bool sharingWithOthersEnabled;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (sharingWithGoogleAnySalesEnabled != null) {
      _json['sharingWithGoogleAnySalesEnabled'] =
          sharingWithGoogleAnySalesEnabled;
    }
    if (sharingWithGoogleAssignedSalesEnabled != null) {
      _json['sharingWithGoogleAssignedSalesEnabled'] =
          sharingWithGoogleAssignedSalesEnabled;
    }
    if (sharingWithGoogleProductsEnabled != null) {
      _json['sharingWithGoogleProductsEnabled'] =
          sharingWithGoogleProductsEnabled;
    }
    if (sharingWithGoogleSupportEnabled != null) {
      _json['sharingWithGoogleSupportEnabled'] =
          sharingWithGoogleSupportEnabled;
    }
    if (sharingWithOthersEnabled != null) {
      _json['sharingWithOthersEnabled'] = sharingWithOthersEnabled;
    }
    return _json;
  }
}

/// Request message for DeleteUserLink RPC.
class GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest {
  /// Example format: accounts/1234/userLinks/5678
  ///
  /// Required.
  core.String name;

  GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest();

  GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Singleton resource under a WebDataStream, configuring measurement of
/// additional site interactions and content.
class GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings {
  /// If enabled, capture a file download event each time a link is clicked with
  /// a common document, compressed file, application, video, or audio
  /// extension.
  core.bool fileDownloadsEnabled;

  /// Resource name of this Data Stream.
  ///
  /// Format:
  /// properties/{property_id}/webDataStreams/{stream_id}/enhancedMeasurementSettings
  /// Example: "properties/1000/webDataStreams/2000/enhancedMeasurementSettings"
  ///
  /// Output only.
  core.String name;

  /// If enabled, capture an outbound click event each time a visitor clicks a
  /// link that leads them away from your domain.
  core.bool outboundClicksEnabled;

  /// If enabled, capture a page view event each time the website changes the
  /// browser history state.
  core.bool pageChangesEnabled;

  /// If enabled, capture a page view event each time a page loads.
  ///
  /// Output only.
  core.bool pageLoadsEnabled;

  /// If enabled, capture a page view event each time a page loads or the
  /// website changes the browser history state.
  ///
  /// Output only.
  core.bool pageViewsEnabled;

  /// If enabled, capture scroll events each time a visitor gets to the bottom
  /// of a page.
  core.bool scrollsEnabled;

  /// URL query parameters to interpret as site search parameters.
  ///
  /// Max length is 1024 characters. Must not be empty.
  ///
  /// Required.
  core.String searchQueryParameter;

  /// If enabled, capture a view search results event each time a visitor
  /// performs a search on your site (based on a query parameter).
  core.bool siteSearchEnabled;

  /// Indicates whether Enhanced Measurement Settings will be used to
  /// automatically measure interactions and content on this web stream.
  ///
  /// Changing this value does not affect the settings themselves, but
  /// determines whether they are respected.
  core.bool streamEnabled;

  /// Additional URL query parameters.
  ///
  /// Max length is 1024 characters.
  core.String uriQueryParameter;

  /// If enabled, capture video play, progress, and complete events as visitors
  /// view embedded videos on your site.
  core.bool videoEngagementEnabled;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (fileDownloadsEnabled != null) {
      _json['fileDownloadsEnabled'] = fileDownloadsEnabled;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (outboundClicksEnabled != null) {
      _json['outboundClicksEnabled'] = outboundClicksEnabled;
    }
    if (pageChangesEnabled != null) {
      _json['pageChangesEnabled'] = pageChangesEnabled;
    }
    if (pageLoadsEnabled != null) {
      _json['pageLoadsEnabled'] = pageLoadsEnabled;
    }
    if (pageViewsEnabled != null) {
      _json['pageViewsEnabled'] = pageViewsEnabled;
    }
    if (scrollsEnabled != null) {
      _json['scrollsEnabled'] = scrollsEnabled;
    }
    if (searchQueryParameter != null) {
      _json['searchQueryParameter'] = searchQueryParameter;
    }
    if (siteSearchEnabled != null) {
      _json['siteSearchEnabled'] = siteSearchEnabled;
    }
    if (streamEnabled != null) {
      _json['streamEnabled'] = streamEnabled;
    }
    if (uriQueryParameter != null) {
      _json['uriQueryParameter'] = uriQueryParameter;
    }
    if (videoEngagementEnabled != null) {
      _json['videoEngagementEnabled'] = videoEngagementEnabled;
    }
    return _json;
  }
}

/// A link between an GA4 property and a Firebase project.
class GoogleAnalyticsAdminV1alphaFirebaseLink {
  /// Time when this FirebaseLink was originally created.
  ///
  /// Output only.
  core.String createTime;

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
  core.String maximumUserAccess;

  /// Example format: properties/1234/firebaseLinks/5678
  ///
  /// Output only.
  core.String name;

  /// Firebase project resource name.
  ///
  /// When creating a FirebaseLink, you may provide this resource name using
  /// either a project number or project ID. Once this resource has been
  /// created, returned FirebaseLinks will always have a project_name that
  /// contains a project number. Format: 'projects/{project number}' Example:
  /// 'projects/1234'
  ///
  /// Immutable.
  core.String project;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (maximumUserAccess != null) {
      _json['maximumUserAccess'] = maximumUserAccess;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (project != null) {
      _json['project'] = project;
    }
    return _json;
  }
}

/// Read-only resource with the tag for sending data from a website to a
/// WebDataStream.
class GoogleAnalyticsAdminV1alphaGlobalSiteTag {
  /// Resource name for this GlobalSiteTag resource.
  ///
  /// Format: properties/{propertyId}/globalSiteTag
  ///
  /// Output only.
  core.String name;

  /// JavaScript code snippet to be pasted as the first item into the head tag
  /// of every webpage to measure.
  ///
  /// Immutable.
  core.String snippet;

  GoogleAnalyticsAdminV1alphaGlobalSiteTag();

  GoogleAnalyticsAdminV1alphaGlobalSiteTag.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = _json['snippet'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (snippet != null) {
      _json['snippet'] = snippet;
    }
    return _json;
  }
}

/// A link between an GA4 property and a Google Ads account.
class GoogleAnalyticsAdminV1alphaGoogleAdsLink {
  /// Enable personalized advertising features with this integration.
  ///
  /// Automatically publish my Google Analytics audience lists and Google
  /// Analytics remarketing events/parameters to the linked Google Ads account.
  /// If this field is not set on create/update it will be defaulted to true.
  core.bool adsPersonalizationEnabled;

  /// If true, this link is for a Google Ads manager account.
  ///
  /// Output only.
  core.bool canManageClients;

  /// Time when this link was originally created.
  ///
  /// Output only.
  core.String createTime;

  /// Google Ads customer ID.
  ///
  /// Immutable.
  core.String customerId;

  /// Email address of the user that created the link.
  ///
  /// An empty string will be returned if the email address can't be retrieved.
  ///
  /// Output only.
  core.String emailAddress;

  /// Format: properties/{propertyId}/googleAdsLinks/{googleAdsLinkId} Note:
  /// googleAdsLinkId is not the Google Ads customer ID.
  ///
  /// Output only.
  core.String name;

  /// Time when this link was last updated.
  ///
  /// Output only.
  core.String updateTime;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (adsPersonalizationEnabled != null) {
      _json['adsPersonalizationEnabled'] = adsPersonalizationEnabled;
    }
    if (canManageClients != null) {
      _json['canManageClients'] = canManageClients;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (customerId != null) {
      _json['customerId'] = customerId;
    }
    if (emailAddress != null) {
      _json['emailAddress'] = emailAddress;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// A resource message representing a Google Analytics IOS app stream.
class GoogleAnalyticsAdminV1alphaIosAppDataStream {
  /// The Apple App Store Bundle ID for the app Example: "com.example.myiosapp"
  ///
  /// Required. Immutable.
  core.String bundleId;

  /// Time when this stream was originally created.
  ///
  /// Output only.
  core.String createTime;

  /// Human-readable display name for the Data Stream.
  ///
  /// The max allowed display name length is 255 UTF-16 code units.
  core.String displayName;

  /// ID of the corresponding iOS app in Firebase, if any.
  ///
  /// This ID can change if the iOS app is deleted and recreated.
  ///
  /// Output only.
  core.String firebaseAppId;

  /// Resource name of this Data Stream.
  ///
  /// Format: properties/{property_id}/iosAppDataStreams/{stream_id} Example:
  /// "properties/1000/iosAppDataStreams/2000"
  ///
  /// Output only.
  core.String name;

  /// Time when stream payload fields were last updated.
  ///
  /// Output only.
  core.String updateTime;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (bundleId != null) {
      _json['bundleId'] = bundleId;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (firebaseAppId != null) {
      _json['firebaseAppId'] = firebaseAppId;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Response message for ListAccountSummaries RPC.
class GoogleAnalyticsAdminV1alphaListAccountSummariesResponse {
  /// Account summaries of all accounts the caller has access to.
  core.List<GoogleAnalyticsAdminV1alphaAccountSummary> accountSummaries;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String nextPageToken;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (accountSummaries != null) {
      _json['accountSummaries'] =
          accountSummaries.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Request message for ListAccounts RPC.
class GoogleAnalyticsAdminV1alphaListAccountsResponse {
  /// Results that were accessible to the caller.
  core.List<GoogleAnalyticsAdminV1alphaAccount> accounts;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String nextPageToken;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (accounts != null) {
      _json['accounts'] = accounts.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Request message for ListAndroidDataStreams RPC.
class GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse {
  /// Results that matched the filter criteria and were accessible to the
  /// caller.
  core.List<GoogleAnalyticsAdminV1alphaAndroidAppDataStream>
      androidAppDataStreams;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String nextPageToken;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (androidAppDataStreams != null) {
      _json['androidAppDataStreams'] =
          androidAppDataStreams.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for ListFirebaseLinks RPC
class GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse {
  /// List of FirebaseLinks.
  ///
  /// This will have at most one value.
  core.List<GoogleAnalyticsAdminV1alphaFirebaseLink> firebaseLinks;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages. Currently, Google
  /// Analytics supports only one FirebaseLink per property, so this will never
  /// be populated.
  core.String nextPageToken;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (firebaseLinks != null) {
      _json['firebaseLinks'] =
          firebaseLinks.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for ListGoogleAdsLinks RPC.
class GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse {
  /// List of GoogleAdsLinks.
  core.List<GoogleAnalyticsAdminV1alphaGoogleAdsLink> googleAdsLinks;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String nextPageToken;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (googleAdsLinks != null) {
      _json['googleAdsLinks'] =
          googleAdsLinks.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Request message for ListIosAppDataStreams RPC.
class GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse {
  /// Results that matched the filter criteria and were accessible to the
  /// caller.
  core.List<GoogleAnalyticsAdminV1alphaIosAppDataStream> iosAppDataStreams;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String nextPageToken;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (iosAppDataStreams != null) {
      _json['iosAppDataStreams'] =
          iosAppDataStreams.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for ListProperties RPC.
class GoogleAnalyticsAdminV1alphaListPropertiesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String nextPageToken;

  /// Results that matched the filter criteria and were accessible to the
  /// caller.
  core.List<GoogleAnalyticsAdminV1alphaProperty> properties;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (properties != null) {
      _json['properties'] = properties.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response message for ListUserLinks RPC.
class GoogleAnalyticsAdminV1alphaListUserLinksResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String nextPageToken;

  /// List of UserLinks.
  ///
  /// These will be ordered stably, but in an arbitrary order.
  core.List<GoogleAnalyticsAdminV1alphaUserLink> userLinks;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (userLinks != null) {
      _json['userLinks'] = userLinks.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Request message for ListWebDataStreams RPC.
class GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String nextPageToken;

  /// Results that matched the filter criteria and were accessible to the
  /// caller.
  core.List<GoogleAnalyticsAdminV1alphaWebDataStream> webDataStreams;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (webDataStreams != null) {
      _json['webDataStreams'] =
          webDataStreams.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A resource message representing a Google Analytics GA4 property.
class GoogleAnalyticsAdminV1alphaProperty {
  /// Time when the entity was originally created.
  ///
  /// Output only.
  core.String createTime;

  /// The currency type used in reports involving monetary values.
  ///
  /// Format: https://en.wikipedia.org/wiki/ISO_4217 Examples: "USD", "EUR",
  /// "JPY"
  core.String currencyCode;

  /// Indicates whether this Property is soft-deleted or not.
  ///
  /// Deleted properties are excluded from List results unless specifically
  /// requested.
  ///
  /// Output only.
  core.bool deleted;

  /// Human-readable display name for this property.
  ///
  /// The max allowed display name length is 100 UTF-16 code units.
  ///
  /// Required.
  core.String displayName;

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
  core.String industryCategory;

  /// Resource name of this property.
  ///
  /// Format: properties/{property_id} Example: "properties/1000"
  ///
  /// Output only.
  core.String name;

  /// Resource name of this property's logical parent.
  ///
  /// Note: The Property-Moving UI can be used to change the parent. Format:
  /// accounts/{account} Example: "accounts/100"
  ///
  /// Immutable.
  core.String parent;

  /// Reporting Time Zone, used as the day boundary for reports, regardless of
  /// where the data originates.
  ///
  /// If the time zone honors DST, Analytics will automatically adjust for the
  /// changes. NOTE: Changing the time zone only affects data going forward, and
  /// is not applied retroactively. Format: https://www.iana.org/time-zones
  /// Example: "America/Los_Angeles"
  core.String timeZone;

  /// Time when entity payload fields were last updated.
  ///
  /// Output only.
  core.String updateTime;

  GoogleAnalyticsAdminV1alphaProperty();

  GoogleAnalyticsAdminV1alphaProperty.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('currencyCode')) {
      currencyCode = _json['currencyCode'] as core.String;
    }
    if (_json.containsKey('deleted')) {
      deleted = _json['deleted'] as core.bool;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (currencyCode != null) {
      _json['currencyCode'] = currencyCode;
    }
    if (deleted != null) {
      _json['deleted'] = deleted;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (industryCategory != null) {
      _json['industryCategory'] = industryCategory;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (parent != null) {
      _json['parent'] = parent;
    }
    if (timeZone != null) {
      _json['timeZone'] = timeZone;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// A virtual resource representing metadata for an GA4 property.
class GoogleAnalyticsAdminV1alphaPropertySummary {
  /// Display name for the property referred to in this account summary.
  core.String displayName;

  /// Resource name of property referred to by this property summary Format:
  /// properties/{property_id} Example: "properties/1000"
  core.String property;

  GoogleAnalyticsAdminV1alphaPropertySummary();

  GoogleAnalyticsAdminV1alphaPropertySummary.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('property')) {
      property = _json['property'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (property != null) {
      _json['property'] = property;
    }
    return _json;
  }
}

/// Request message for ProvisionAccountTicket RPC.
class GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest {
  /// The account to create.
  GoogleAnalyticsAdminV1alphaAccount account;

  /// Redirect URI where the user will be sent after accepting Terms of Service.
  ///
  /// Must be configured in Developers Console as a Redirect URI
  core.String redirectUri;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (account != null) {
      _json['account'] = account.toJson();
    }
    if (redirectUri != null) {
      _json['redirectUri'] = redirectUri;
    }
    return _json;
  }
}

/// Response message for ProvisionAccountTicket RPC.
class GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse {
  /// The param to be passed in the ToS link.
  core.String accountTicketId;

  GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse();

  GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('accountTicketId')) {
      accountTicketId = _json['accountTicketId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (accountTicketId != null) {
      _json['accountTicketId'] = accountTicketId;
    }
    return _json;
  }
}

/// Request message for UpdateUserLink RPC.
class GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest {
  /// The user link to update.
  ///
  /// Required.
  GoogleAnalyticsAdminV1alphaUserLink userLink;

  GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest();

  GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest.fromJson(core.Map _json) {
    if (_json.containsKey('userLink')) {
      userLink = GoogleAnalyticsAdminV1alphaUserLink.fromJson(
          _json['userLink'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (userLink != null) {
      _json['userLink'] = userLink.toJson();
    }
    return _json;
  }
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
  core.List<core.String> directRoles;

  /// Email address of the user to link
  core.String emailAddress;

  /// Example format: properties/1234/userLinks/5678
  core.String name;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (directRoles != null) {
      _json['directRoles'] = directRoles;
    }
    if (emailAddress != null) {
      _json['emailAddress'] = emailAddress;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// A resource message representing a Google Analytics web stream.
class GoogleAnalyticsAdminV1alphaWebDataStream {
  /// Time when this stream was originally created.
  ///
  /// Output only.
  core.String createTime;

  /// Domain name of the web app being measured, or empty.
  ///
  /// Example: "http://www.google.com", "https://www.google.com"
  ///
  /// Immutable.
  core.String defaultUri;

  /// Human-readable display name for the Data Stream.
  ///
  /// The max allowed display name length is 100 UTF-16 code units.
  ///
  /// Required.
  core.String displayName;

  /// ID of the corresponding web app in Firebase, if any.
  ///
  /// This ID can change if the web app is deleted and recreated.
  ///
  /// Output only.
  core.String firebaseAppId;

  /// Analytics "Measurement ID", without the "G-" prefix.
  ///
  /// Example: "G-1A2BCD345E" would just be "1A2BCD345E"
  ///
  /// Output only.
  core.String measurementId;

  /// Resource name of this Data Stream.
  ///
  /// Format: properties/{property_id}/webDataStreams/{stream_id} Example:
  /// "properties/1000/webDataStreams/2000"
  ///
  /// Output only.
  core.String name;

  /// Time when stream payload fields were last updated.
  ///
  /// Output only.
  core.String updateTime;

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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (defaultUri != null) {
      _json['defaultUri'] = defaultUri;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (firebaseAppId != null) {
      _json['firebaseAppId'] = firebaseAppId;
    }
    if (measurementId != null) {
      _json['measurementId'] = measurementId;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}
