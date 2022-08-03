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

/// Tag Manager API - v1
///
/// This API allows clients to access and modify container and tag
/// configuration.
///
/// For more information, see <https://developers.google.com/tag-manager>
///
/// Create an instance of [TagManagerApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsContainersResource]
///     - [AccountsContainersEnvironmentsResource]
///     - [AccountsContainersFoldersResource]
///       - [AccountsContainersFoldersEntitiesResource]
///     - [AccountsContainersMoveFoldersResource]
///     - [AccountsContainersReauthorizeEnvironmentsResource]
///     - [AccountsContainersTagsResource]
///     - [AccountsContainersTriggersResource]
///     - [AccountsContainersVariablesResource]
///     - [AccountsContainersVersionsResource]
///   - [AccountsPermissionsResource]
library tagmanager.v1;

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

/// This API allows clients to access and modify container and tag
/// configuration.
class TagManagerApi {
  /// Delete your Google Tag Manager containers
  static const tagmanagerDeleteContainersScope =
      'https://www.googleapis.com/auth/tagmanager.delete.containers';

  /// Manage your Google Tag Manager container and its subcomponents, excluding
  /// versioning and publishing
  static const tagmanagerEditContainersScope =
      'https://www.googleapis.com/auth/tagmanager.edit.containers';

  /// Manage your Google Tag Manager container versions
  static const tagmanagerEditContainerversionsScope =
      'https://www.googleapis.com/auth/tagmanager.edit.containerversions';

  /// View and manage your Google Tag Manager accounts
  static const tagmanagerManageAccountsScope =
      'https://www.googleapis.com/auth/tagmanager.manage.accounts';

  /// Manage user permissions of your Google Tag Manager account and container
  static const tagmanagerManageUsersScope =
      'https://www.googleapis.com/auth/tagmanager.manage.users';

  /// Publish your Google Tag Manager container versions
  static const tagmanagerPublishScope =
      'https://www.googleapis.com/auth/tagmanager.publish';

  /// View your Google Tag Manager container and its subcomponents
  static const tagmanagerReadonlyScope =
      'https://www.googleapis.com/auth/tagmanager.readonly';

  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);

  TagManagerApi(http.Client client,
      {core.String rootUrl = 'https://tagmanager.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsContainersResource get containers =>
      AccountsContainersResource(_requester);
  AccountsPermissionsResource get permissions =>
      AccountsPermissionsResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;

  /// Gets a GTM Account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
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

    final url_ =
        'tagmanager/v1/accounts/' + commons.escapeVariable('$accountId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Account.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all GTM Accounts that a user has access to.
  ///
  /// Request parameters:
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'tagmanager/v1/accounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAccountsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a GTM Account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the account in storage.
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
  async.Future<Account> update(
    Account request,
    core.String accountId, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'tagmanager/v1/accounts/' + commons.escapeVariable('$accountId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Account.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersResource {
  final commons.ApiRequester _requester;

  AccountsContainersEnvironmentsResource get environments =>
      AccountsContainersEnvironmentsResource(_requester);
  AccountsContainersFoldersResource get folders =>
      AccountsContainersFoldersResource(_requester);
  AccountsContainersMoveFoldersResource get moveFolders =>
      AccountsContainersMoveFoldersResource(_requester);
  AccountsContainersReauthorizeEnvironmentsResource
      get reauthorizeEnvironments =>
          AccountsContainersReauthorizeEnvironmentsResource(_requester);
  AccountsContainersTagsResource get tags =>
      AccountsContainersTagsResource(_requester);
  AccountsContainersTriggersResource get triggers =>
      AccountsContainersTriggersResource(_requester);
  AccountsContainersVariablesResource get variables =>
      AccountsContainersVariablesResource(_requester);
  AccountsContainersVersionsResource get versions =>
      AccountsContainersVersionsResource(_requester);

  AccountsContainersResource(commons.ApiRequester client) : _requester = client;

  /// Creates a Container.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Container].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Container> create(
    Container request,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Container.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Container.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
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
    core.String containerId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets a Container.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Container].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Container> get(
    core.String accountId,
    core.String containerId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Container.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all Containers that belongs to a GTM Account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListContainersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListContainersResponse> list(
    core.String accountId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListContainersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Container.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the container in storage.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Container].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Container> update(
    Container request,
    core.String accountId,
    core.String containerId, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Container.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersEnvironmentsResource {
  final commons.ApiRequester _requester;

  AccountsContainersEnvironmentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a GTM Environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Environment> create(
    Environment request,
    core.String accountId,
    core.String containerId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/environments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Environment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a GTM Environment.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [environmentId] - The GTM Environment ID.
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
    core.String containerId,
    core.String environmentId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/environments/' +
        commons.escapeVariable('$environmentId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets a GTM Environment.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [environmentId] - The GTM Environment ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Environment> get(
    core.String accountId,
    core.String containerId,
    core.String environmentId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/environments/' +
        commons.escapeVariable('$environmentId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Environment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all GTM Environments of a GTM Container.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEnvironmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEnvironmentsResponse> list(
    core.String accountId,
    core.String containerId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/environments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEnvironmentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a GTM Environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [environmentId] - The GTM Environment ID.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the environment in storage.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Environment> update(
    Environment request,
    core.String accountId,
    core.String containerId,
    core.String environmentId, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/environments/' +
        commons.escapeVariable('$environmentId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Environment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersFoldersResource {
  final commons.ApiRequester _requester;

  AccountsContainersFoldersEntitiesResource get entities =>
      AccountsContainersFoldersEntitiesResource(_requester);

  AccountsContainersFoldersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a GTM Folder.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Folder].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Folder> create(
    Folder request,
    core.String accountId,
    core.String containerId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/folders';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Folder.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a GTM Folder.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [folderId] - The GTM Folder ID.
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
    core.String containerId,
    core.String folderId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/folders/' +
        commons.escapeVariable('$folderId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets a GTM Folder.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [folderId] - The GTM Folder ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Folder].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Folder> get(
    core.String accountId,
    core.String containerId,
    core.String folderId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/folders/' +
        commons.escapeVariable('$folderId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Folder.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all GTM Folders of a Container.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFoldersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFoldersResponse> list(
    core.String accountId,
    core.String containerId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/folders';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFoldersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a GTM Folder.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [folderId] - The GTM Folder ID.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the folder in storage.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Folder].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Folder> update(
    Folder request,
    core.String accountId,
    core.String containerId,
    core.String folderId, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/folders/' +
        commons.escapeVariable('$folderId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Folder.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersFoldersEntitiesResource {
  final commons.ApiRequester _requester;

  AccountsContainersFoldersEntitiesResource(commons.ApiRequester client)
      : _requester = client;

  /// List all entities in a GTM Folder.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [folderId] - The GTM Folder ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FolderEntities].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FolderEntities> list(
    core.String accountId,
    core.String containerId,
    core.String folderId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/folders/' +
        commons.escapeVariable('$folderId') +
        '/entities';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FolderEntities.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersMoveFoldersResource {
  final commons.ApiRequester _requester;

  AccountsContainersMoveFoldersResource(commons.ApiRequester client)
      : _requester = client;

  /// Moves entities to a GTM Folder.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [folderId] - The GTM Folder ID.
  ///
  /// [tagId] - The tags to be moved to the folder.
  ///
  /// [triggerId] - The triggers to be moved to the folder.
  ///
  /// [variableId] - The variables to be moved to the folder.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> update(
    Folder request,
    core.String accountId,
    core.String containerId,
    core.String folderId, {
    core.List<core.String>? tagId,
    core.List<core.String>? triggerId,
    core.List<core.String>? variableId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (tagId != null) 'tagId': tagId,
      if (triggerId != null) 'triggerId': triggerId,
      if (variableId != null) 'variableId': variableId,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/move_folders/' +
        commons.escapeVariable('$folderId');

    await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }
}

class AccountsContainersReauthorizeEnvironmentsResource {
  final commons.ApiRequester _requester;

  AccountsContainersReauthorizeEnvironmentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Re-generates the authorization code for a GTM Environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [environmentId] - The GTM Environment ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Environment> update(
    Environment request,
    core.String accountId,
    core.String containerId,
    core.String environmentId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/reauthorize_environments/' +
        commons.escapeVariable('$environmentId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Environment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersTagsResource {
  final commons.ApiRequester _requester;

  AccountsContainersTagsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a GTM Tag.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Tag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tag> create(
    Tag request,
    core.String accountId,
    core.String containerId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/tags';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Tag.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a GTM Tag.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [tagId] - The GTM Tag ID.
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
    core.String containerId,
    core.String tagId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/tags/' +
        commons.escapeVariable('$tagId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets a GTM Tag.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [tagId] - The GTM Tag ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Tag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tag> get(
    core.String accountId,
    core.String containerId,
    core.String tagId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/tags/' +
        commons.escapeVariable('$tagId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Tag.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all GTM Tags of a Container.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTagsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTagsResponse> list(
    core.String accountId,
    core.String containerId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/tags';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTagsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a GTM Tag.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [tagId] - The GTM Tag ID.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the tag in storage.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Tag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tag> update(
    Tag request,
    core.String accountId,
    core.String containerId,
    core.String tagId, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/tags/' +
        commons.escapeVariable('$tagId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Tag.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersTriggersResource {
  final commons.ApiRequester _requester;

  AccountsContainersTriggersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a GTM Trigger.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Trigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Trigger> create(
    Trigger request,
    core.String accountId,
    core.String containerId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/triggers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Trigger.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a GTM Trigger.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [triggerId] - The GTM Trigger ID.
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
    core.String containerId,
    core.String triggerId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/triggers/' +
        commons.escapeVariable('$triggerId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets a GTM Trigger.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [triggerId] - The GTM Trigger ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Trigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Trigger> get(
    core.String accountId,
    core.String containerId,
    core.String triggerId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/triggers/' +
        commons.escapeVariable('$triggerId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Trigger.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all GTM Triggers of a Container.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTriggersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTriggersResponse> list(
    core.String accountId,
    core.String containerId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/triggers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTriggersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a GTM Trigger.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [triggerId] - The GTM Trigger ID.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the trigger in storage.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Trigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Trigger> update(
    Trigger request,
    core.String accountId,
    core.String containerId,
    core.String triggerId, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/triggers/' +
        commons.escapeVariable('$triggerId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Trigger.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersVariablesResource {
  final commons.ApiRequester _requester;

  AccountsContainersVariablesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a GTM Variable.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Variable].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Variable> create(
    Variable request,
    core.String accountId,
    core.String containerId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/variables';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Variable.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a GTM Variable.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [variableId] - The GTM Variable ID.
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
    core.String containerId,
    core.String variableId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/variables/' +
        commons.escapeVariable('$variableId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets a GTM Variable.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [variableId] - The GTM Variable ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Variable].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Variable> get(
    core.String accountId,
    core.String containerId,
    core.String variableId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/variables/' +
        commons.escapeVariable('$variableId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Variable.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all GTM Variables of a Container.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVariablesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVariablesResponse> list(
    core.String accountId,
    core.String containerId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/variables';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVariablesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a GTM Variable.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [variableId] - The GTM Variable ID.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the variable in storage.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Variable].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Variable> update(
    Variable request,
    core.String accountId,
    core.String containerId,
    core.String variableId, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/variables/' +
        commons.escapeVariable('$variableId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Variable.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersVersionsResource {
  final commons.ApiRequester _requester;

  AccountsContainersVersionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Container Version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreateContainerVersionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreateContainerVersionResponse> create(
    CreateContainerVersionRequestVersionOptions request,
    core.String accountId,
    core.String containerId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CreateContainerVersionResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Container Version.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [containerVersionId] - The GTM Container Version ID.
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
    core.String containerId,
    core.String containerVersionId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/versions/' +
        commons.escapeVariable('$containerVersionId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets a Container Version.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [containerVersionId] - The GTM Container Version ID. Specify published to
  /// retrieve the currently published version.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContainerVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerVersion> get(
    core.String accountId,
    core.String containerId,
    core.String containerVersionId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/versions/' +
        commons.escapeVariable('$containerVersionId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ContainerVersion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all Container Versions of a GTM Container.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [headers] - Retrieve headers only when true.
  ///
  /// [includeDeleted] - Also retrieve deleted (archived) versions when true.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListContainerVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListContainerVersionsResponse> list(
    core.String accountId,
    core.String containerId, {
    core.bool? headers,
    core.bool? includeDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (headers != null) 'headers': ['${headers}'],
      if (includeDeleted != null) 'includeDeleted': ['${includeDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListContainerVersionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Publishes a Container Version.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [containerVersionId] - The GTM Container Version ID.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the container version in storage.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PublishContainerVersionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PublishContainerVersionResponse> publish(
    core.String accountId,
    core.String containerId,
    core.String containerVersionId, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/versions/' +
        commons.escapeVariable('$containerVersionId') +
        '/publish';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return PublishContainerVersionResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restores a Container Version.
  ///
  /// This will overwrite the container's current configuration (including its
  /// variables, triggers and tags). The operation will not have any effect on
  /// the version that is being served (i.e. the published version).
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [containerVersionId] - The GTM Container Version ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContainerVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerVersion> restore(
    core.String accountId,
    core.String containerId,
    core.String containerVersionId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/versions/' +
        commons.escapeVariable('$containerVersionId') +
        '/restore';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return ContainerVersion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Undeletes a Container Version.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [containerVersionId] - The GTM Container Version ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContainerVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerVersion> undelete(
    core.String accountId,
    core.String containerId,
    core.String containerVersionId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/versions/' +
        commons.escapeVariable('$containerVersionId') +
        '/undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return ContainerVersion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Container Version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [containerId] - The GTM Container ID.
  ///
  /// [containerVersionId] - The GTM Container Version ID.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the container version in storage.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContainerVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerVersion> update(
    ContainerVersion request,
    core.String accountId,
    core.String containerId,
    core.String containerVersionId, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/containers/' +
        commons.escapeVariable('$containerId') +
        '/versions/' +
        commons.escapeVariable('$containerVersionId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return ContainerVersion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsPermissionsResource {
  final commons.ApiRequester _requester;

  AccountsPermissionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a user's Account & Container Permissions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserAccess].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserAccess> create(
    UserAccess request,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/permissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UserAccess.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Removes a user from the account, revoking access to it and all of its
  /// containers.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [permissionId] - The GTM User ID.
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
    core.String permissionId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/permissions/' +
        commons.escapeVariable('$permissionId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets a user's Account & Container Permissions.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [permissionId] - The GTM User ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserAccess].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserAccess> get(
    core.String accountId,
    core.String permissionId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/permissions/' +
        commons.escapeVariable('$permissionId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UserAccess.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all users that have access to the account along with Account and
  /// Container Permissions granted to each of them.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAccountUsersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAccountUsersResponse> list(
    core.String accountId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/permissions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAccountUsersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a user's Account & Container Permissions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The GTM Account ID.
  ///
  /// [permissionId] - The GTM User ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserAccess].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserAccess> update(
    UserAccess request,
    core.String accountId,
    core.String permissionId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tagmanager/v1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/permissions/' +
        commons.escapeVariable('$permissionId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return UserAccess.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Represents a Google Tag Manager Account.
class Account {
  /// The Account ID uniquely identifies the GTM Account.
  core.String? accountId;

  /// The fingerprint of the GTM Account as computed at storage time.
  ///
  /// This value is recomputed whenever the account is modified.
  core.String? fingerprint;

  /// Account display name.
  ///
  /// @mutable tagmanager.accounts.create @mutable tagmanager.accounts.update
  core.String? name;

  /// Whether the account shares data anonymously with Google and others.
  ///
  /// @mutable tagmanager.accounts.create @mutable tagmanager.accounts.update
  core.bool? shareData;

  Account({
    this.accountId,
    this.fingerprint,
    this.name,
    this.shareData,
  });

  Account.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          fingerprint: json_.containsKey('fingerprint')
              ? json_['fingerprint'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          shareData: json_.containsKey('shareData')
              ? json_['shareData'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (name != null) 'name': name!,
        if (shareData != null) 'shareData': shareData!,
      };
}

/// Defines the Google Tag Manager Account access permissions.
class AccountAccess {
  /// List of Account permissions.
  ///
  /// Valid account permissions are read and manage. @mutable
  /// tagmanager.accounts.permissions.create @mutable
  /// tagmanager.accounts.permissions.update
  core.List<core.String>? permission;

  AccountAccess({
    this.permission,
  });

  AccountAccess.fromJson(core.Map json_)
      : this(
          permission: json_.containsKey('permission')
              ? (json_['permission'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permission != null) 'permission': permission!,
      };
}

/// Represents a predicate.
class Condition {
  /// A list of named parameters (key/value), depending on the condition's type.
  ///
  /// Notes: - For binary operators, include parameters named arg0 and arg1 for
  /// specifying the left and right operands, respectively. - At this time, the
  /// left operand (arg0) must be a reference to a variable. - For
  /// case-insensitive Regex matching, include a boolean parameter named
  /// ignore_case that is set to true. If not specified or set to any other
  /// value, the matching will be case sensitive. - To negate an operator,
  /// include a boolean parameter named negate boolean parameter that is set to
  /// true. @mutable tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  core.List<Parameter>? parameter;

  /// The type of operator for this condition.
  ///
  /// @mutable tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  /// Possible string values are:
  /// - "equals"
  /// - "contains"
  /// - "startsWith"
  /// - "endsWith"
  /// - "matchRegex"
  /// - "greater"
  /// - "greaterOrEquals"
  /// - "less"
  /// - "lessOrEquals"
  /// - "cssSelector"
  /// - "urlMatches"
  core.String? type;

  Condition({
    this.parameter,
    this.type,
  });

  Condition.fromJson(core.Map json_)
      : this(
          parameter: json_.containsKey('parameter')
              ? (json_['parameter'] as core.List)
                  .map((value) => Parameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parameter != null) 'parameter': parameter!,
        if (type != null) 'type': type!,
      };
}

/// Represents a Google Tag Manager Container.
class Container {
  /// GTM Account ID.
  core.String? accountId;

  /// The Container ID uniquely identifies the GTM Container.
  core.String? containerId;

  /// Optional list of domain names associated with the Container.
  ///
  /// @mutable tagmanager.accounts.containers.create @mutable
  /// tagmanager.accounts.containers.update
  core.List<core.String>? domainName;

  /// List of enabled built-in variables.
  ///
  /// Valid values include: pageUrl, pageHostname, pagePath, referrer, event,
  /// clickElement, clickClasses, clickId, clickTarget, clickUrl, clickText,
  /// formElement, formClasses, formId, formTarget, formUrl, formText,
  /// errorMessage, errorUrl, errorLine, newHistoryFragment, oldHistoryFragment,
  /// newHistoryState, oldHistoryState, historySource, containerVersion,
  /// debugMode, randomNumber, containerId. @mutable
  /// tagmanager.accounts.containers.create @mutable
  /// tagmanager.accounts.containers.update
  core.List<core.String>? enabledBuiltInVariable;

  /// The fingerprint of the GTM Container as computed at storage time.
  ///
  /// This value is recomputed whenever the account is modified.
  core.String? fingerprint;

  /// Container display name.
  ///
  /// @mutable tagmanager.accounts.containers.create @mutable
  /// tagmanager.accounts.containers.update
  core.String? name;

  /// Container Notes.
  ///
  /// @mutable tagmanager.accounts.containers.create @mutable
  /// tagmanager.accounts.containers.update
  core.String? notes;

  /// Container Public ID.
  core.String? publicId;

  /// Container Country ID.
  ///
  /// @mutable tagmanager.accounts.containers.create @mutable
  /// tagmanager.accounts.containers.update
  core.String? timeZoneCountryId;

  /// Container Time Zone ID.
  ///
  /// @mutable tagmanager.accounts.containers.create @mutable
  /// tagmanager.accounts.containers.update
  core.String? timeZoneId;

  /// List of Usage Contexts for the Container.
  ///
  /// Valid values include: web, android, ios. @mutable
  /// tagmanager.accounts.containers.create @mutable
  /// tagmanager.accounts.containers.update
  core.List<core.String>? usageContext;

  Container({
    this.accountId,
    this.containerId,
    this.domainName,
    this.enabledBuiltInVariable,
    this.fingerprint,
    this.name,
    this.notes,
    this.publicId,
    this.timeZoneCountryId,
    this.timeZoneId,
    this.usageContext,
  });

  Container.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          containerId: json_.containsKey('containerId')
              ? json_['containerId'] as core.String
              : null,
          domainName: json_.containsKey('domainName')
              ? (json_['domainName'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          enabledBuiltInVariable: json_.containsKey('enabledBuiltInVariable')
              ? (json_['enabledBuiltInVariable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fingerprint: json_.containsKey('fingerprint')
              ? json_['fingerprint'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          notes:
              json_.containsKey('notes') ? json_['notes'] as core.String : null,
          publicId: json_.containsKey('publicId')
              ? json_['publicId'] as core.String
              : null,
          timeZoneCountryId: json_.containsKey('timeZoneCountryId')
              ? json_['timeZoneCountryId'] as core.String
              : null,
          timeZoneId: json_.containsKey('timeZoneId')
              ? json_['timeZoneId'] as core.String
              : null,
          usageContext: json_.containsKey('usageContext')
              ? (json_['usageContext'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (containerId != null) 'containerId': containerId!,
        if (domainName != null) 'domainName': domainName!,
        if (enabledBuiltInVariable != null)
          'enabledBuiltInVariable': enabledBuiltInVariable!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (name != null) 'name': name!,
        if (notes != null) 'notes': notes!,
        if (publicId != null) 'publicId': publicId!,
        if (timeZoneCountryId != null) 'timeZoneCountryId': timeZoneCountryId!,
        if (timeZoneId != null) 'timeZoneId': timeZoneId!,
        if (usageContext != null) 'usageContext': usageContext!,
      };
}

/// Defines the Google Tag Manager Container access permissions.
class ContainerAccess {
  /// GTM Container ID.
  ///
  /// @mutable tagmanager.accounts.permissions.create @mutable
  /// tagmanager.accounts.permissions.update
  core.String? containerId;

  /// List of Container permissions.
  ///
  /// Valid container permissions are: read, edit, delete, publish. @mutable
  /// tagmanager.accounts.permissions.create @mutable
  /// tagmanager.accounts.permissions.update
  core.List<core.String>? permission;

  ContainerAccess({
    this.containerId,
    this.permission,
  });

  ContainerAccess.fromJson(core.Map json_)
      : this(
          containerId: json_.containsKey('containerId')
              ? json_['containerId'] as core.String
              : null,
          permission: json_.containsKey('permission')
              ? (json_['permission'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerId != null) 'containerId': containerId!,
        if (permission != null) 'permission': permission!,
      };
}

/// Represents a Google Tag Manager Container Version.
class ContainerVersion {
  /// GTM Account ID.
  core.String? accountId;

  /// The container that this version was taken from.
  Container? container;

  /// GTM Container ID.
  core.String? containerId;

  /// The Container Version ID uniquely identifies the GTM Container Version.
  core.String? containerVersionId;

  /// A value of true indicates this container version has been deleted.
  core.bool? deleted;

  /// The fingerprint of the GTM Container Version as computed at storage time.
  ///
  /// This value is recomputed whenever the container version is modified.
  core.String? fingerprint;

  /// The folders in the container that this version was taken from.
  core.List<Folder>? folder;

  /// The macros in the container that this version was taken from.
  core.List<Macro>? macro;

  /// Container version display name.
  ///
  /// @mutable tagmanager.accounts.containers.versions.update
  core.String? name;

  /// User notes on how to apply this container version in the container.
  ///
  /// @mutable tagmanager.accounts.containers.versions.update
  core.String? notes;

  /// The rules in the container that this version was taken from.
  core.List<Rule>? rule;

  /// The tags in the container that this version was taken from.
  core.List<Tag>? tag;

  /// The triggers in the container that this version was taken from.
  core.List<Trigger>? trigger;

  /// The variables in the container that this version was taken from.
  core.List<Variable>? variable;

  ContainerVersion({
    this.accountId,
    this.container,
    this.containerId,
    this.containerVersionId,
    this.deleted,
    this.fingerprint,
    this.folder,
    this.macro,
    this.name,
    this.notes,
    this.rule,
    this.tag,
    this.trigger,
    this.variable,
  });

  ContainerVersion.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          container: json_.containsKey('container')
              ? Container.fromJson(
                  json_['container'] as core.Map<core.String, core.dynamic>)
              : null,
          containerId: json_.containsKey('containerId')
              ? json_['containerId'] as core.String
              : null,
          containerVersionId: json_.containsKey('containerVersionId')
              ? json_['containerVersionId'] as core.String
              : null,
          deleted: json_.containsKey('deleted')
              ? json_['deleted'] as core.bool
              : null,
          fingerprint: json_.containsKey('fingerprint')
              ? json_['fingerprint'] as core.String
              : null,
          folder: json_.containsKey('folder')
              ? (json_['folder'] as core.List)
                  .map((value) => Folder.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          macro: json_.containsKey('macro')
              ? (json_['macro'] as core.List)
                  .map((value) => Macro.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          notes:
              json_.containsKey('notes') ? json_['notes'] as core.String : null,
          rule: json_.containsKey('rule')
              ? (json_['rule'] as core.List)
                  .map((value) => Rule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tag: json_.containsKey('tag')
              ? (json_['tag'] as core.List)
                  .map((value) => Tag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          trigger: json_.containsKey('trigger')
              ? (json_['trigger'] as core.List)
                  .map((value) => Trigger.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          variable: json_.containsKey('variable')
              ? (json_['variable'] as core.List)
                  .map((value) => Variable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (container != null) 'container': container!,
        if (containerId != null) 'containerId': containerId!,
        if (containerVersionId != null)
          'containerVersionId': containerVersionId!,
        if (deleted != null) 'deleted': deleted!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (folder != null) 'folder': folder!,
        if (macro != null) 'macro': macro!,
        if (name != null) 'name': name!,
        if (notes != null) 'notes': notes!,
        if (rule != null) 'rule': rule!,
        if (tag != null) 'tag': tag!,
        if (trigger != null) 'trigger': trigger!,
        if (variable != null) 'variable': variable!,
      };
}

/// Represents a Google Tag Manager Container Version Header.
class ContainerVersionHeader {
  /// GTM Account ID.
  core.String? accountId;

  /// GTM Container ID.
  core.String? containerId;

  /// The Container Version ID uniquely identifies the GTM Container Version.
  core.String? containerVersionId;

  /// A value of true indicates this container version has been deleted.
  core.bool? deleted;

  /// Container version display name.
  core.String? name;

  /// Number of macros in the container version.
  core.String? numMacros;

  /// Number of rules in the container version.
  core.String? numRules;

  /// Number of tags in the container version.
  core.String? numTags;

  /// Number of triggers in the container version.
  core.String? numTriggers;

  /// Number of variables in the container version.
  core.String? numVariables;

  ContainerVersionHeader({
    this.accountId,
    this.containerId,
    this.containerVersionId,
    this.deleted,
    this.name,
    this.numMacros,
    this.numRules,
    this.numTags,
    this.numTriggers,
    this.numVariables,
  });

  ContainerVersionHeader.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          containerId: json_.containsKey('containerId')
              ? json_['containerId'] as core.String
              : null,
          containerVersionId: json_.containsKey('containerVersionId')
              ? json_['containerVersionId'] as core.String
              : null,
          deleted: json_.containsKey('deleted')
              ? json_['deleted'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          numMacros: json_.containsKey('numMacros')
              ? json_['numMacros'] as core.String
              : null,
          numRules: json_.containsKey('numRules')
              ? json_['numRules'] as core.String
              : null,
          numTags: json_.containsKey('numTags')
              ? json_['numTags'] as core.String
              : null,
          numTriggers: json_.containsKey('numTriggers')
              ? json_['numTriggers'] as core.String
              : null,
          numVariables: json_.containsKey('numVariables')
              ? json_['numVariables'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (containerId != null) 'containerId': containerId!,
        if (containerVersionId != null)
          'containerVersionId': containerVersionId!,
        if (deleted != null) 'deleted': deleted!,
        if (name != null) 'name': name!,
        if (numMacros != null) 'numMacros': numMacros!,
        if (numRules != null) 'numRules': numRules!,
        if (numTags != null) 'numTags': numTags!,
        if (numTriggers != null) 'numTriggers': numTriggers!,
        if (numVariables != null) 'numVariables': numVariables!,
      };
}

/// Options for new container versions.
class CreateContainerVersionRequestVersionOptions {
  /// The name of the container version to be created.
  core.String? name;

  /// The notes of the container version to be created.
  core.String? notes;

  /// The creation of this version may be for quick preview and shouldn't be
  /// saved.
  core.bool? quickPreview;

  CreateContainerVersionRequestVersionOptions({
    this.name,
    this.notes,
    this.quickPreview,
  });

  CreateContainerVersionRequestVersionOptions.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          notes:
              json_.containsKey('notes') ? json_['notes'] as core.String : null,
          quickPreview: json_.containsKey('quickPreview')
              ? json_['quickPreview'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (notes != null) 'notes': notes!,
        if (quickPreview != null) 'quickPreview': quickPreview!,
      };
}

/// Create container versions response.
class CreateContainerVersionResponse {
  /// Compiler errors or not.
  core.bool? compilerError;

  /// The container version created.
  ContainerVersion? containerVersion;

  CreateContainerVersionResponse({
    this.compilerError,
    this.containerVersion,
  });

  CreateContainerVersionResponse.fromJson(core.Map json_)
      : this(
          compilerError: json_.containsKey('compilerError')
              ? json_['compilerError'] as core.bool
              : null,
          containerVersion: json_.containsKey('containerVersion')
              ? ContainerVersion.fromJson(json_['containerVersion']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compilerError != null) 'compilerError': compilerError!,
        if (containerVersion != null) 'containerVersion': containerVersion!,
      };
}

/// Represents a Google Tag Manager Environment.
///
/// Note that a user can create, delete and update environments of type USER,
/// but can only update the enable_debug and url fields of environments of other
/// types.
class Environment {
  /// GTM Account ID.
  core.String? accountId;

  /// The environment authorization code.
  core.String? authorizationCode;

  /// The last update time-stamp for the authorization code.
  core.String? authorizationTimestampMs;

  /// GTM Container ID.
  core.String? containerId;
  core.String? containerVersionId;

  /// The environment description.
  ///
  /// Can be set or changed only on USER type environments. @mutable
  /// tagmanager.accounts.containers.environments.create @mutable
  /// tagmanager.accounts.containers.environments.update
  core.String? description;

  /// Whether or not to enable debug by default on for the environment.
  ///
  /// @mutable tagmanager.accounts.containers.environments.create @mutable
  /// tagmanager.accounts.containers.environments.update
  core.bool? enableDebug;

  /// GTM Environment ID uniquely identifies the GTM Environment.
  core.String? environmentId;

  /// The fingerprint of the GTM environment as computed at storage time.
  ///
  /// This value is recomputed whenever the environment is modified.
  core.String? fingerprint;

  /// The environment display name.
  ///
  /// Can be set or changed only on USER type environments. @mutable
  /// tagmanager.accounts.containers.environments.create @mutable
  /// tagmanager.accounts.containers.environments.update
  core.String? name;

  /// The type of this environment.
  /// Possible string values are:
  /// - "user" : Used for user defined environments.
  /// - "live" : Used for Live environment, which points to the live published
  /// container version.
  /// - "latest" : Used for Latest environment, which points to the latest
  /// created container version.
  /// - "draft" : Used for Draft environment, which points to the single draft
  /// in the container.
  core.String? type;

  /// Default preview page url for the environment.
  ///
  /// @mutable tagmanager.accounts.containers.environments.create @mutable
  /// tagmanager.accounts.containers.environments.update
  core.String? url;

  Environment({
    this.accountId,
    this.authorizationCode,
    this.authorizationTimestampMs,
    this.containerId,
    this.containerVersionId,
    this.description,
    this.enableDebug,
    this.environmentId,
    this.fingerprint,
    this.name,
    this.type,
    this.url,
  });

  Environment.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          authorizationCode: json_.containsKey('authorizationCode')
              ? json_['authorizationCode'] as core.String
              : null,
          authorizationTimestampMs:
              json_.containsKey('authorizationTimestampMs')
                  ? json_['authorizationTimestampMs'] as core.String
                  : null,
          containerId: json_.containsKey('containerId')
              ? json_['containerId'] as core.String
              : null,
          containerVersionId: json_.containsKey('containerVersionId')
              ? json_['containerVersionId'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          enableDebug: json_.containsKey('enableDebug')
              ? json_['enableDebug'] as core.bool
              : null,
          environmentId: json_.containsKey('environmentId')
              ? json_['environmentId'] as core.String
              : null,
          fingerprint: json_.containsKey('fingerprint')
              ? json_['fingerprint'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (authorizationCode != null) 'authorizationCode': authorizationCode!,
        if (authorizationTimestampMs != null)
          'authorizationTimestampMs': authorizationTimestampMs!,
        if (containerId != null) 'containerId': containerId!,
        if (containerVersionId != null)
          'containerVersionId': containerVersionId!,
        if (description != null) 'description': description!,
        if (enableDebug != null) 'enableDebug': enableDebug!,
        if (environmentId != null) 'environmentId': environmentId!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
        if (url != null) 'url': url!,
      };
}

/// Represents a Google Tag Manager Folder.
class Folder {
  /// GTM Account ID.
  core.String? accountId;

  /// GTM Container ID.
  core.String? containerId;

  /// The fingerprint of the GTM Folder as computed at storage time.
  ///
  /// This value is recomputed whenever the folder is modified.
  core.String? fingerprint;

  /// The Folder ID uniquely identifies the GTM Folder.
  core.String? folderId;

  /// Folder display name.
  ///
  /// @mutable tagmanager.accounts.containers.folders.create @mutable
  /// tagmanager.accounts.containers.folders.update
  core.String? name;

  Folder({
    this.accountId,
    this.containerId,
    this.fingerprint,
    this.folderId,
    this.name,
  });

  Folder.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          containerId: json_.containsKey('containerId')
              ? json_['containerId'] as core.String
              : null,
          fingerprint: json_.containsKey('fingerprint')
              ? json_['fingerprint'] as core.String
              : null,
          folderId: json_.containsKey('folderId')
              ? json_['folderId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (containerId != null) 'containerId': containerId!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (folderId != null) 'folderId': folderId!,
        if (name != null) 'name': name!,
      };
}

/// Represents a Google Tag Manager Folder's contents.
class FolderEntities {
  /// The list of tags inside the folder.
  core.List<Tag>? tag;

  /// The list of triggers inside the folder.
  core.List<Trigger>? trigger;

  /// The list of variables inside the folder.
  core.List<Variable>? variable;

  FolderEntities({
    this.tag,
    this.trigger,
    this.variable,
  });

  FolderEntities.fromJson(core.Map json_)
      : this(
          tag: json_.containsKey('tag')
              ? (json_['tag'] as core.List)
                  .map((value) => Tag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          trigger: json_.containsKey('trigger')
              ? (json_['trigger'] as core.List)
                  .map((value) => Trigger.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          variable: json_.containsKey('variable')
              ? (json_['variable'] as core.List)
                  .map((value) => Variable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tag != null) 'tag': tag!,
        if (trigger != null) 'trigger': trigger!,
        if (variable != null) 'variable': variable!,
      };
}

/// List AccountUsers Response.
class ListAccountUsersResponse {
  /// All GTM AccountUsers of a GTM Account.
  core.List<UserAccess>? userAccess;

  ListAccountUsersResponse({
    this.userAccess,
  });

  ListAccountUsersResponse.fromJson(core.Map json_)
      : this(
          userAccess: json_.containsKey('userAccess')
              ? (json_['userAccess'] as core.List)
                  .map((value) => UserAccess.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (userAccess != null) 'userAccess': userAccess!,
      };
}

/// List Accounts Response.
class ListAccountsResponse {
  /// List of GTM Accounts that a user has access to.
  core.List<Account>? accounts;

  ListAccountsResponse({
    this.accounts,
  });

  ListAccountsResponse.fromJson(core.Map json_)
      : this(
          accounts: json_.containsKey('accounts')
              ? (json_['accounts'] as core.List)
                  .map((value) => Account.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accounts != null) 'accounts': accounts!,
      };
}

/// List container versions response.
class ListContainerVersionsResponse {
  /// All versions of a GTM Container.
  core.List<ContainerVersion>? containerVersion;

  /// All container version headers of a GTM Container.
  core.List<ContainerVersionHeader>? containerVersionHeader;

  ListContainerVersionsResponse({
    this.containerVersion,
    this.containerVersionHeader,
  });

  ListContainerVersionsResponse.fromJson(core.Map json_)
      : this(
          containerVersion: json_.containsKey('containerVersion')
              ? (json_['containerVersion'] as core.List)
                  .map((value) => ContainerVersion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          containerVersionHeader: json_.containsKey('containerVersionHeader')
              ? (json_['containerVersionHeader'] as core.List)
                  .map((value) => ContainerVersionHeader.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerVersion != null) 'containerVersion': containerVersion!,
        if (containerVersionHeader != null)
          'containerVersionHeader': containerVersionHeader!,
      };
}

/// List Containers Response.
class ListContainersResponse {
  /// All Containers of a GTM Account.
  core.List<Container>? containers;

  ListContainersResponse({
    this.containers,
  });

  ListContainersResponse.fromJson(core.Map json_)
      : this(
          containers: json_.containsKey('containers')
              ? (json_['containers'] as core.List)
                  .map((value) => Container.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containers != null) 'containers': containers!,
      };
}

/// List Environments Response.
class ListEnvironmentsResponse {
  /// All Environments of a GTM Container.
  core.List<Environment>? environments;

  ListEnvironmentsResponse({
    this.environments,
  });

  ListEnvironmentsResponse.fromJson(core.Map json_)
      : this(
          environments: json_.containsKey('environments')
              ? (json_['environments'] as core.List)
                  .map((value) => Environment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (environments != null) 'environments': environments!,
      };
}

/// List Folders Response.
class ListFoldersResponse {
  /// All GTM Folders of a GTM Container.
  core.List<Folder>? folders;

  ListFoldersResponse({
    this.folders,
  });

  ListFoldersResponse.fromJson(core.Map json_)
      : this(
          folders: json_.containsKey('folders')
              ? (json_['folders'] as core.List)
                  .map((value) => Folder.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (folders != null) 'folders': folders!,
      };
}

/// List Tags Response.
class ListTagsResponse {
  /// All GTM Tags of a GTM Container.
  core.List<Tag>? tags;

  ListTagsResponse({
    this.tags,
  });

  ListTagsResponse.fromJson(core.Map json_)
      : this(
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.List)
                  .map((value) => Tag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tags != null) 'tags': tags!,
      };
}

/// List triggers response.
class ListTriggersResponse {
  /// All GTM Triggers of a GTM Container.
  core.List<Trigger>? triggers;

  ListTriggersResponse({
    this.triggers,
  });

  ListTriggersResponse.fromJson(core.Map json_)
      : this(
          triggers: json_.containsKey('triggers')
              ? (json_['triggers'] as core.List)
                  .map((value) => Trigger.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (triggers != null) 'triggers': triggers!,
      };
}

/// List Variables Response.
class ListVariablesResponse {
  /// All GTM Variables of a GTM Container.
  core.List<Variable>? variables;

  ListVariablesResponse({
    this.variables,
  });

  ListVariablesResponse.fromJson(core.Map json_)
      : this(
          variables: json_.containsKey('variables')
              ? (json_['variables'] as core.List)
                  .map((value) => Variable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (variables != null) 'variables': variables!,
      };
}

/// Represents a Google Tag Manager Macro.
class Macro {
  /// GTM Account ID.
  core.String? accountId;

  /// GTM Container ID.
  core.String? containerId;

  /// For mobile containers only: A list of rule IDs for disabling conditional
  /// macros; the macro is enabled if one of the enabling rules is true while
  /// all the disabling rules are false.
  ///
  /// Treated as an unordered set. @mutable
  /// tagmanager.accounts.containers.macros.create @mutable
  /// tagmanager.accounts.containers.macros.update
  core.List<core.String>? disablingRuleId;

  /// For mobile containers only: A list of rule IDs for enabling conditional
  /// macros; the macro is enabled if one of the enabling rules is true while
  /// all the disabling rules are false.
  ///
  /// Treated as an unordered set. @mutable
  /// tagmanager.accounts.containers.macros.create @mutable
  /// tagmanager.accounts.containers.macros.update
  core.List<core.String>? enablingRuleId;

  /// The fingerprint of the GTM Macro as computed at storage time.
  ///
  /// This value is recomputed whenever the macro is modified.
  core.String? fingerprint;

  /// The Macro ID uniquely identifies the GTM Macro.
  core.String? macroId;

  /// Macro display name.
  ///
  /// @mutable tagmanager.accounts.containers.macros.create @mutable
  /// tagmanager.accounts.containers.macros.update
  core.String? name;

  /// User notes on how to apply this macro in the container.
  ///
  /// @mutable tagmanager.accounts.containers.macros.create @mutable
  /// tagmanager.accounts.containers.macros.update
  core.String? notes;

  /// The macro's parameters.
  ///
  /// @mutable tagmanager.accounts.containers.macros.create @mutable
  /// tagmanager.accounts.containers.macros.update
  core.List<Parameter>? parameter;

  /// Parent folder id.
  core.String? parentFolderId;

  /// The end timestamp in milliseconds to schedule a macro.
  ///
  /// @mutable tagmanager.accounts.containers.macros.create @mutable
  /// tagmanager.accounts.containers.macros.update
  core.String? scheduleEndMs;

  /// The start timestamp in milliseconds to schedule a macro.
  ///
  /// @mutable tagmanager.accounts.containers.macros.create @mutable
  /// tagmanager.accounts.containers.macros.update
  core.String? scheduleStartMs;

  /// GTM Macro Type.
  ///
  /// @mutable tagmanager.accounts.containers.macros.create @mutable
  /// tagmanager.accounts.containers.macros.update
  core.String? type;

  Macro({
    this.accountId,
    this.containerId,
    this.disablingRuleId,
    this.enablingRuleId,
    this.fingerprint,
    this.macroId,
    this.name,
    this.notes,
    this.parameter,
    this.parentFolderId,
    this.scheduleEndMs,
    this.scheduleStartMs,
    this.type,
  });

  Macro.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          containerId: json_.containsKey('containerId')
              ? json_['containerId'] as core.String
              : null,
          disablingRuleId: json_.containsKey('disablingRuleId')
              ? (json_['disablingRuleId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          enablingRuleId: json_.containsKey('enablingRuleId')
              ? (json_['enablingRuleId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fingerprint: json_.containsKey('fingerprint')
              ? json_['fingerprint'] as core.String
              : null,
          macroId: json_.containsKey('macroId')
              ? json_['macroId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          notes:
              json_.containsKey('notes') ? json_['notes'] as core.String : null,
          parameter: json_.containsKey('parameter')
              ? (json_['parameter'] as core.List)
                  .map((value) => Parameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          parentFolderId: json_.containsKey('parentFolderId')
              ? json_['parentFolderId'] as core.String
              : null,
          scheduleEndMs: json_.containsKey('scheduleEndMs')
              ? json_['scheduleEndMs'] as core.String
              : null,
          scheduleStartMs: json_.containsKey('scheduleStartMs')
              ? json_['scheduleStartMs'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (containerId != null) 'containerId': containerId!,
        if (disablingRuleId != null) 'disablingRuleId': disablingRuleId!,
        if (enablingRuleId != null) 'enablingRuleId': enablingRuleId!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (macroId != null) 'macroId': macroId!,
        if (name != null) 'name': name!,
        if (notes != null) 'notes': notes!,
        if (parameter != null) 'parameter': parameter!,
        if (parentFolderId != null) 'parentFolderId': parentFolderId!,
        if (scheduleEndMs != null) 'scheduleEndMs': scheduleEndMs!,
        if (scheduleStartMs != null) 'scheduleStartMs': scheduleStartMs!,
        if (type != null) 'type': type!,
      };
}

/// Represents a Google Tag Manager Parameter.
class Parameter {
  /// The named key that uniquely identifies a parameter.
  ///
  /// Required for top-level parameters, as well as map values. Ignored for list
  /// values. @mutable tagmanager.accounts.containers.variables.create @mutable
  /// tagmanager.accounts.containers.variables.update @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update @mutable
  /// tagmanager.accounts.containers.tags.create @mutable
  /// tagmanager.accounts.containers.tags.update
  core.String? key;

  /// This list parameter's parameters (keys will be ignored).
  ///
  /// @mutable tagmanager.accounts.containers.variables.create @mutable
  /// tagmanager.accounts.containers.variables.update @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update @mutable
  /// tagmanager.accounts.containers.tags.create @mutable
  /// tagmanager.accounts.containers.tags.update
  core.List<Parameter>? list;

  /// This map parameter's parameters (must have keys; keys must be unique).
  ///
  /// @mutable tagmanager.accounts.containers.variables.create @mutable
  /// tagmanager.accounts.containers.variables.update @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update @mutable
  /// tagmanager.accounts.containers.tags.create @mutable
  /// tagmanager.accounts.containers.tags.update
  core.List<Parameter>? map;

  /// The parameter type.
  ///
  /// Valid values are: - boolean: The value represents a boolean, represented
  /// as 'true' or 'false' - integer: The value represents a 64-bit signed
  /// integer value, in base 10 - list: A list of parameters should be specified
  /// - map: A map of parameters should be specified - template: The value
  /// represents any text; this can include variable references (even variable
  /// references that might return non-string types) - trigger_reference: The
  /// value represents a trigger, represented as the trigger id - tag_reference:
  /// The value represents a tag, represented as the tag name @mutable
  /// tagmanager.accounts.containers.variables.create @mutable
  /// tagmanager.accounts.containers.variables.update @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update @mutable
  /// tagmanager.accounts.containers.tags.create @mutable
  /// tagmanager.accounts.containers.tags.update
  /// Possible string values are:
  /// - "template" : May include variable references (such as "{{myVariable}}").
  /// - "integer"
  /// - "boolean"
  /// - "list"
  /// - "map"
  /// - "triggerReference"
  /// - "tagReference"
  core.String? type;

  /// A parameter's value (may contain variable references such as
  /// "{{myVariable}}") as appropriate to the specified type.
  ///
  /// @mutable tagmanager.accounts.containers.variables.create @mutable
  /// tagmanager.accounts.containers.variables.update @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update @mutable
  /// tagmanager.accounts.containers.tags.create @mutable
  /// tagmanager.accounts.containers.tags.update
  core.String? value;

  Parameter({
    this.key,
    this.list,
    this.map,
    this.type,
    this.value,
  });

  Parameter.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          list: json_.containsKey('list')
              ? (json_['list'] as core.List)
                  .map((value) => Parameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          map: json_.containsKey('map')
              ? (json_['map'] as core.List)
                  .map((value) => Parameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (list != null) 'list': list!,
        if (map != null) 'map': map!,
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

/// Publish container version response.
class PublishContainerVersionResponse {
  /// Compiler errors or not.
  core.bool? compilerError;

  /// The container version created.
  ContainerVersion? containerVersion;

  PublishContainerVersionResponse({
    this.compilerError,
    this.containerVersion,
  });

  PublishContainerVersionResponse.fromJson(core.Map json_)
      : this(
          compilerError: json_.containsKey('compilerError')
              ? json_['compilerError'] as core.bool
              : null,
          containerVersion: json_.containsKey('containerVersion')
              ? ContainerVersion.fromJson(json_['containerVersion']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compilerError != null) 'compilerError': compilerError!,
        if (containerVersion != null) 'containerVersion': containerVersion!,
      };
}

/// Represents a Google Tag Manager Rule.
class Rule {
  /// GTM Account ID.
  core.String? accountId;

  /// The list of conditions that make up this rule (implicit AND between them).
  ///
  /// @mutable tagmanager.accounts.containers.rules.create @mutable
  /// tagmanager.accounts.containers.rules.update
  core.List<Condition>? condition;

  /// GTM Container ID.
  core.String? containerId;

  /// The fingerprint of the GTM Rule as computed at storage time.
  ///
  /// This value is recomputed whenever the rule is modified.
  core.String? fingerprint;

  /// Rule display name.
  ///
  /// @mutable tagmanager.accounts.containers.rules.create @mutable
  /// tagmanager.accounts.containers.rules.update
  core.String? name;

  /// User notes on how to apply this rule in the container.
  ///
  /// @mutable tagmanager.accounts.containers.rules.create @mutable
  /// tagmanager.accounts.containers.rules.update
  core.String? notes;

  /// The Rule ID uniquely identifies the GTM Rule.
  core.String? ruleId;

  Rule({
    this.accountId,
    this.condition,
    this.containerId,
    this.fingerprint,
    this.name,
    this.notes,
    this.ruleId,
  });

  Rule.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          condition: json_.containsKey('condition')
              ? (json_['condition'] as core.List)
                  .map((value) => Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          containerId: json_.containsKey('containerId')
              ? json_['containerId'] as core.String
              : null,
          fingerprint: json_.containsKey('fingerprint')
              ? json_['fingerprint'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          notes:
              json_.containsKey('notes') ? json_['notes'] as core.String : null,
          ruleId: json_.containsKey('ruleId')
              ? json_['ruleId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (condition != null) 'condition': condition!,
        if (containerId != null) 'containerId': containerId!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (name != null) 'name': name!,
        if (notes != null) 'notes': notes!,
        if (ruleId != null) 'ruleId': ruleId!,
      };
}

typedef SetupTag = $SetupTag;

/// Represents a Google Tag Manager Tag.
class Tag {
  /// GTM Account ID.
  core.String? accountId;

  /// Blocking rule IDs.
  ///
  /// If any of the listed rules evaluate to true, the tag will not fire.
  /// @mutable tagmanager.accounts.containers.tags.create @mutable
  /// tagmanager.accounts.containers.tags.update
  core.List<core.String>? blockingRuleId;

  /// Blocking trigger IDs.
  ///
  /// If any of the listed triggers evaluate to true, the tag will not fire.
  /// @mutable tagmanager.accounts.containers.tags.create @mutable
  /// tagmanager.accounts.containers.tags.update
  core.List<core.String>? blockingTriggerId;

  /// GTM Container ID.
  core.String? containerId;

  /// The fingerprint of the GTM Tag as computed at storage time.
  ///
  /// This value is recomputed whenever the tag is modified.
  core.String? fingerprint;

  /// Firing rule IDs.
  ///
  /// A tag will fire when any of the listed rules are true and all of its
  /// blockingRuleIds (if any specified) are false. @mutable
  /// tagmanager.accounts.containers.tags.create @mutable
  /// tagmanager.accounts.containers.tags.update
  core.List<core.String>? firingRuleId;

  /// Firing trigger IDs.
  ///
  /// A tag will fire when any of the listed triggers are true and all of its
  /// blockingTriggerIds (if any specified) are false. @mutable
  /// tagmanager.accounts.containers.tags.create @mutable
  /// tagmanager.accounts.containers.tags.update
  core.List<core.String>? firingTriggerId;

  /// If set to true, this tag will only fire in the live environment (e.g. not
  /// in preview or debug mode).
  ///
  /// @mutable tagmanager.accounts.containers.tags.create @mutable
  /// tagmanager.accounts.containers.tags.update
  core.bool? liveOnly;

  /// Tag display name.
  ///
  /// @mutable tagmanager.accounts.containers.tags.create @mutable
  /// tagmanager.accounts.containers.tags.update
  core.String? name;

  /// User notes on how to apply this tag in the container.
  ///
  /// @mutable tagmanager.accounts.containers.tags.create @mutable
  /// tagmanager.accounts.containers.tags.update
  core.String? notes;

  /// The tag's parameters.
  ///
  /// @mutable tagmanager.accounts.containers.tags.create @mutable
  /// tagmanager.accounts.containers.tags.update
  core.List<Parameter>? parameter;

  /// Parent folder id.
  core.String? parentFolderId;

  /// True if the tag is paused.
  ///
  /// @mutable tagmanager.accounts.containers.tags.create @mutable
  /// tagmanager.accounts.containers.tags.update
  core.bool? paused;

  /// User defined numeric priority of the tag.
  ///
  /// Tags are fired asynchronously in order of priority. Tags with higher
  /// numeric value fire first. A tag's priority can be a positive or negative
  /// value. The default value is 0. @mutable
  /// tagmanager.accounts.containers.tags.create @mutable
  /// tagmanager.accounts.containers.tags.update
  Parameter? priority;

  /// The end timestamp in milliseconds to schedule a tag.
  ///
  /// @mutable tagmanager.accounts.containers.tags.create @mutable
  /// tagmanager.accounts.containers.tags.update
  core.String? scheduleEndMs;

  /// The start timestamp in milliseconds to schedule a tag.
  ///
  /// @mutable tagmanager.accounts.containers.tags.create @mutable
  /// tagmanager.accounts.containers.tags.update
  core.String? scheduleStartMs;

  /// The list of setup tags.
  ///
  /// Currently we only allow one.
  core.List<SetupTag>? setupTag;

  /// Option to fire this tag.
  /// Possible string values are:
  /// - "unlimited" : Tag can be fired multiple times per event.
  /// - "oncePerEvent" : Tag can only be fired per event but can be fired
  /// multiple times per load (e.g., app load or page load).
  /// - "oncePerLoad" : Tag can only be fired per load (e.g., app load or page
  /// load).
  core.String? tagFiringOption;

  /// The Tag ID uniquely identifies the GTM Tag.
  core.String? tagId;

  /// The list of teardown tags.
  ///
  /// Currently we only allow one.
  core.List<TeardownTag>? teardownTag;

  /// GTM Tag Type.
  ///
  /// @mutable tagmanager.accounts.containers.tags.create @mutable
  /// tagmanager.accounts.containers.tags.update
  core.String? type;

  Tag({
    this.accountId,
    this.blockingRuleId,
    this.blockingTriggerId,
    this.containerId,
    this.fingerprint,
    this.firingRuleId,
    this.firingTriggerId,
    this.liveOnly,
    this.name,
    this.notes,
    this.parameter,
    this.parentFolderId,
    this.paused,
    this.priority,
    this.scheduleEndMs,
    this.scheduleStartMs,
    this.setupTag,
    this.tagFiringOption,
    this.tagId,
    this.teardownTag,
    this.type,
  });

  Tag.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          blockingRuleId: json_.containsKey('blockingRuleId')
              ? (json_['blockingRuleId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          blockingTriggerId: json_.containsKey('blockingTriggerId')
              ? (json_['blockingTriggerId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          containerId: json_.containsKey('containerId')
              ? json_['containerId'] as core.String
              : null,
          fingerprint: json_.containsKey('fingerprint')
              ? json_['fingerprint'] as core.String
              : null,
          firingRuleId: json_.containsKey('firingRuleId')
              ? (json_['firingRuleId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          firingTriggerId: json_.containsKey('firingTriggerId')
              ? (json_['firingTriggerId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          liveOnly: json_.containsKey('liveOnly')
              ? json_['liveOnly'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          notes:
              json_.containsKey('notes') ? json_['notes'] as core.String : null,
          parameter: json_.containsKey('parameter')
              ? (json_['parameter'] as core.List)
                  .map((value) => Parameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          parentFolderId: json_.containsKey('parentFolderId')
              ? json_['parentFolderId'] as core.String
              : null,
          paused:
              json_.containsKey('paused') ? json_['paused'] as core.bool : null,
          priority: json_.containsKey('priority')
              ? Parameter.fromJson(
                  json_['priority'] as core.Map<core.String, core.dynamic>)
              : null,
          scheduleEndMs: json_.containsKey('scheduleEndMs')
              ? json_['scheduleEndMs'] as core.String
              : null,
          scheduleStartMs: json_.containsKey('scheduleStartMs')
              ? json_['scheduleStartMs'] as core.String
              : null,
          setupTag: json_.containsKey('setupTag')
              ? (json_['setupTag'] as core.List)
                  .map((value) => SetupTag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tagFiringOption: json_.containsKey('tagFiringOption')
              ? json_['tagFiringOption'] as core.String
              : null,
          tagId:
              json_.containsKey('tagId') ? json_['tagId'] as core.String : null,
          teardownTag: json_.containsKey('teardownTag')
              ? (json_['teardownTag'] as core.List)
                  .map((value) => TeardownTag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (blockingRuleId != null) 'blockingRuleId': blockingRuleId!,
        if (blockingTriggerId != null) 'blockingTriggerId': blockingTriggerId!,
        if (containerId != null) 'containerId': containerId!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (firingRuleId != null) 'firingRuleId': firingRuleId!,
        if (firingTriggerId != null) 'firingTriggerId': firingTriggerId!,
        if (liveOnly != null) 'liveOnly': liveOnly!,
        if (name != null) 'name': name!,
        if (notes != null) 'notes': notes!,
        if (parameter != null) 'parameter': parameter!,
        if (parentFolderId != null) 'parentFolderId': parentFolderId!,
        if (paused != null) 'paused': paused!,
        if (priority != null) 'priority': priority!,
        if (scheduleEndMs != null) 'scheduleEndMs': scheduleEndMs!,
        if (scheduleStartMs != null) 'scheduleStartMs': scheduleStartMs!,
        if (setupTag != null) 'setupTag': setupTag!,
        if (tagFiringOption != null) 'tagFiringOption': tagFiringOption!,
        if (tagId != null) 'tagId': tagId!,
        if (teardownTag != null) 'teardownTag': teardownTag!,
        if (type != null) 'type': type!,
      };
}

typedef TeardownTag = $TeardownTag;

/// Represents a Google Tag Manager Trigger
class Trigger {
  /// GTM Account ID.
  core.String? accountId;

  /// Used in the case of auto event tracking.
  ///
  /// @mutable tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  core.List<Condition>? autoEventFilter;

  /// Whether or not we should only fire tags if the form submit or link click
  /// event is not cancelled by some other event handler (e.g. because of
  /// validation).
  ///
  /// Only valid for Form Submission and Link Click triggers. @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  Parameter? checkValidation;

  /// GTM Container ID.
  core.String? containerId;

  /// A visibility trigger minimum continuous visible time (in milliseconds).
  ///
  /// Only valid for AMP Visibility trigger. @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  Parameter? continuousTimeMinMilliseconds;

  /// Used in the case of custom event, which is fired iff all Conditions are
  /// true.
  ///
  /// @mutable tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  core.List<Condition>? customEventFilter;

  /// Name of the GTM event that is fired.
  ///
  /// Only valid for Timer triggers. @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  Parameter? eventName;

  /// The trigger will only fire iff all Conditions are true.
  ///
  /// @mutable tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  core.List<Condition>? filter;

  /// The fingerprint of the GTM Trigger as computed at storage time.
  ///
  /// This value is recomputed whenever the trigger is modified.
  core.String? fingerprint;

  /// List of integer percentage values for scroll triggers.
  ///
  /// The trigger will fire when each percentage is reached when the view is
  /// scrolled horizontally. Only valid for AMP scroll triggers. @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  Parameter? horizontalScrollPercentageList;

  /// Time between triggering recurring Timer Events (in milliseconds).
  ///
  /// Only valid for Timer triggers. @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  Parameter? interval;

  /// Time between Timer Events to fire (in seconds).
  ///
  /// Only valid for AMP Timer trigger. @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  Parameter? intervalSeconds;

  /// Limit of the number of GTM events this Timer Trigger will fire.
  ///
  /// If no limit is set, we will continue to fire GTM events until the user
  /// leaves the page. Only valid for Timer triggers. @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  Parameter? limit;

  /// Max time to fire Timer Events (in seconds).
  ///
  /// Only valid for AMP Timer trigger. @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  Parameter? maxTimerLengthSeconds;

  /// Trigger display name.
  ///
  /// @mutable tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  core.String? name;

  /// Additional parameters.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.create
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.update
  core.List<Parameter>? parameter;

  /// Parent folder id.
  core.String? parentFolderId;

  /// A click trigger CSS selector (i.e. "a", "button" etc.).
  ///
  /// Only valid for AMP Click trigger. @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  Parameter? selector;

  /// A visibility trigger minimum total visible time (in milliseconds).
  ///
  /// Only valid for AMP Visibility trigger. @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  Parameter? totalTimeMinMilliseconds;

  /// The Trigger ID uniquely identifies the GTM Trigger.
  core.String? triggerId;

  /// Defines the data layer event that causes this trigger.
  ///
  /// @mutable tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  /// Possible string values are:
  /// - "pageview"
  /// - "domReady"
  /// - "windowLoaded"
  /// - "customEvent"
  /// - "triggerGroup"
  /// - "always"
  /// - "formSubmission"
  /// - "click"
  /// - "linkClick"
  /// - "jsError"
  /// - "historyChange"
  /// - "timer"
  /// - "ampClick"
  /// - "ampTimer"
  /// - "ampScroll"
  /// - "ampVisibility"
  /// - "youTubeVideo"
  /// - "scrollDepth"
  /// - "elementVisibility"
  core.String? type;

  /// Globally unique id of the trigger that auto-generates this (a Form Submit,
  /// Link Click or Timer listener) if any.
  ///
  /// Used to make incompatible auto-events work together with trigger filtering
  /// based on trigger ids. This value is populated during output generation
  /// since the tags implied by triggers don't exist until then. Only valid for
  /// Form Submit, Link Click and Timer triggers. @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  Parameter? uniqueTriggerId;

  /// List of integer percentage values for scroll triggers.
  ///
  /// The trigger will fire when each percentage is reached when the view is
  /// scrolled vertically. Only valid for AMP scroll triggers. @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  Parameter? verticalScrollPercentageList;

  /// A visibility trigger CSS selector (i.e. "#id").
  ///
  /// Only valid for AMP Visibility trigger. @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  Parameter? visibilitySelector;

  /// A visibility trigger maximum percent visibility.
  ///
  /// Only valid for AMP Visibility trigger. @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  Parameter? visiblePercentageMax;

  /// A visibility trigger minimum percent visibility.
  ///
  /// Only valid for AMP Visibility trigger. @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  Parameter? visiblePercentageMin;

  /// Whether or not we should delay the form submissions or link opening until
  /// all of the tags have fired (by preventing the default action and later
  /// simulating the default action).
  ///
  /// Only valid for Form Submission and Link Click triggers. @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  Parameter? waitForTags;

  /// How long to wait (in milliseconds) for tags to fire when 'waits_for_tags'
  /// above evaluates to true.
  ///
  /// Only valid for Form Submission and Link Click triggers. @mutable
  /// tagmanager.accounts.containers.triggers.create @mutable
  /// tagmanager.accounts.containers.triggers.update
  Parameter? waitForTagsTimeout;

  Trigger({
    this.accountId,
    this.autoEventFilter,
    this.checkValidation,
    this.containerId,
    this.continuousTimeMinMilliseconds,
    this.customEventFilter,
    this.eventName,
    this.filter,
    this.fingerprint,
    this.horizontalScrollPercentageList,
    this.interval,
    this.intervalSeconds,
    this.limit,
    this.maxTimerLengthSeconds,
    this.name,
    this.parameter,
    this.parentFolderId,
    this.selector,
    this.totalTimeMinMilliseconds,
    this.triggerId,
    this.type,
    this.uniqueTriggerId,
    this.verticalScrollPercentageList,
    this.visibilitySelector,
    this.visiblePercentageMax,
    this.visiblePercentageMin,
    this.waitForTags,
    this.waitForTagsTimeout,
  });

  Trigger.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          autoEventFilter: json_.containsKey('autoEventFilter')
              ? (json_['autoEventFilter'] as core.List)
                  .map((value) => Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          checkValidation: json_.containsKey('checkValidation')
              ? Parameter.fromJson(json_['checkValidation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          containerId: json_.containsKey('containerId')
              ? json_['containerId'] as core.String
              : null,
          continuousTimeMinMilliseconds:
              json_.containsKey('continuousTimeMinMilliseconds')
                  ? Parameter.fromJson(json_['continuousTimeMinMilliseconds']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          customEventFilter: json_.containsKey('customEventFilter')
              ? (json_['customEventFilter'] as core.List)
                  .map((value) => Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          eventName: json_.containsKey('eventName')
              ? Parameter.fromJson(
                  json_['eventName'] as core.Map<core.String, core.dynamic>)
              : null,
          filter: json_.containsKey('filter')
              ? (json_['filter'] as core.List)
                  .map((value) => Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          fingerprint: json_.containsKey('fingerprint')
              ? json_['fingerprint'] as core.String
              : null,
          horizontalScrollPercentageList:
              json_.containsKey('horizontalScrollPercentageList')
                  ? Parameter.fromJson(json_['horizontalScrollPercentageList']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          interval: json_.containsKey('interval')
              ? Parameter.fromJson(
                  json_['interval'] as core.Map<core.String, core.dynamic>)
              : null,
          intervalSeconds: json_.containsKey('intervalSeconds')
              ? Parameter.fromJson(json_['intervalSeconds']
                  as core.Map<core.String, core.dynamic>)
              : null,
          limit: json_.containsKey('limit')
              ? Parameter.fromJson(
                  json_['limit'] as core.Map<core.String, core.dynamic>)
              : null,
          maxTimerLengthSeconds: json_.containsKey('maxTimerLengthSeconds')
              ? Parameter.fromJson(json_['maxTimerLengthSeconds']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parameter: json_.containsKey('parameter')
              ? (json_['parameter'] as core.List)
                  .map((value) => Parameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          parentFolderId: json_.containsKey('parentFolderId')
              ? json_['parentFolderId'] as core.String
              : null,
          selector: json_.containsKey('selector')
              ? Parameter.fromJson(
                  json_['selector'] as core.Map<core.String, core.dynamic>)
              : null,
          totalTimeMinMilliseconds:
              json_.containsKey('totalTimeMinMilliseconds')
                  ? Parameter.fromJson(json_['totalTimeMinMilliseconds']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          triggerId: json_.containsKey('triggerId')
              ? json_['triggerId'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          uniqueTriggerId: json_.containsKey('uniqueTriggerId')
              ? Parameter.fromJson(json_['uniqueTriggerId']
                  as core.Map<core.String, core.dynamic>)
              : null,
          verticalScrollPercentageList:
              json_.containsKey('verticalScrollPercentageList')
                  ? Parameter.fromJson(json_['verticalScrollPercentageList']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          visibilitySelector: json_.containsKey('visibilitySelector')
              ? Parameter.fromJson(json_['visibilitySelector']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visiblePercentageMax: json_.containsKey('visiblePercentageMax')
              ? Parameter.fromJson(json_['visiblePercentageMax']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visiblePercentageMin: json_.containsKey('visiblePercentageMin')
              ? Parameter.fromJson(json_['visiblePercentageMin']
                  as core.Map<core.String, core.dynamic>)
              : null,
          waitForTags: json_.containsKey('waitForTags')
              ? Parameter.fromJson(
                  json_['waitForTags'] as core.Map<core.String, core.dynamic>)
              : null,
          waitForTagsTimeout: json_.containsKey('waitForTagsTimeout')
              ? Parameter.fromJson(json_['waitForTagsTimeout']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (autoEventFilter != null) 'autoEventFilter': autoEventFilter!,
        if (checkValidation != null) 'checkValidation': checkValidation!,
        if (containerId != null) 'containerId': containerId!,
        if (continuousTimeMinMilliseconds != null)
          'continuousTimeMinMilliseconds': continuousTimeMinMilliseconds!,
        if (customEventFilter != null) 'customEventFilter': customEventFilter!,
        if (eventName != null) 'eventName': eventName!,
        if (filter != null) 'filter': filter!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (horizontalScrollPercentageList != null)
          'horizontalScrollPercentageList': horizontalScrollPercentageList!,
        if (interval != null) 'interval': interval!,
        if (intervalSeconds != null) 'intervalSeconds': intervalSeconds!,
        if (limit != null) 'limit': limit!,
        if (maxTimerLengthSeconds != null)
          'maxTimerLengthSeconds': maxTimerLengthSeconds!,
        if (name != null) 'name': name!,
        if (parameter != null) 'parameter': parameter!,
        if (parentFolderId != null) 'parentFolderId': parentFolderId!,
        if (selector != null) 'selector': selector!,
        if (totalTimeMinMilliseconds != null)
          'totalTimeMinMilliseconds': totalTimeMinMilliseconds!,
        if (triggerId != null) 'triggerId': triggerId!,
        if (type != null) 'type': type!,
        if (uniqueTriggerId != null) 'uniqueTriggerId': uniqueTriggerId!,
        if (verticalScrollPercentageList != null)
          'verticalScrollPercentageList': verticalScrollPercentageList!,
        if (visibilitySelector != null)
          'visibilitySelector': visibilitySelector!,
        if (visiblePercentageMax != null)
          'visiblePercentageMax': visiblePercentageMax!,
        if (visiblePercentageMin != null)
          'visiblePercentageMin': visiblePercentageMin!,
        if (waitForTags != null) 'waitForTags': waitForTags!,
        if (waitForTagsTimeout != null)
          'waitForTagsTimeout': waitForTagsTimeout!,
      };
}

/// Represents a user's permissions to an account and its container.
class UserAccess {
  /// GTM Account access permissions.
  ///
  /// @mutable tagmanager.accounts.permissions.create @mutable
  /// tagmanager.accounts.permissions.update
  AccountAccess? accountAccess;

  /// GTM Account ID.
  core.String? accountId;

  /// GTM Container access permissions.
  ///
  /// @mutable tagmanager.accounts.permissions.create @mutable
  /// tagmanager.accounts.permissions.update
  core.List<ContainerAccess>? containerAccess;

  /// User's email address.
  ///
  /// @mutable tagmanager.accounts.permissions.create
  core.String? emailAddress;

  /// Account Permission ID.
  core.String? permissionId;

  UserAccess({
    this.accountAccess,
    this.accountId,
    this.containerAccess,
    this.emailAddress,
    this.permissionId,
  });

  UserAccess.fromJson(core.Map json_)
      : this(
          accountAccess: json_.containsKey('accountAccess')
              ? AccountAccess.fromJson(
                  json_['accountAccess'] as core.Map<core.String, core.dynamic>)
              : null,
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          containerAccess: json_.containsKey('containerAccess')
              ? (json_['containerAccess'] as core.List)
                  .map((value) => ContainerAccess.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          emailAddress: json_.containsKey('emailAddress')
              ? json_['emailAddress'] as core.String
              : null,
          permissionId: json_.containsKey('permissionId')
              ? json_['permissionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountAccess != null) 'accountAccess': accountAccess!,
        if (accountId != null) 'accountId': accountId!,
        if (containerAccess != null) 'containerAccess': containerAccess!,
        if (emailAddress != null) 'emailAddress': emailAddress!,
        if (permissionId != null) 'permissionId': permissionId!,
      };
}

/// Represents a Google Tag Manager Variable.
class Variable {
  /// GTM Account ID.
  core.String? accountId;

  /// GTM Container ID.
  core.String? containerId;

  /// For mobile containers only: A list of trigger IDs for disabling
  /// conditional variables; the variable is enabled if one of the enabling
  /// trigger is true while all the disabling trigger are false.
  ///
  /// Treated as an unordered set. @mutable
  /// tagmanager.accounts.containers.variables.create @mutable
  /// tagmanager.accounts.containers.variables.update
  core.List<core.String>? disablingTriggerId;

  /// For mobile containers only: A list of trigger IDs for enabling conditional
  /// variables; the variable is enabled if one of the enabling triggers is true
  /// while all the disabling triggers are false.
  ///
  /// Treated as an unordered set. @mutable
  /// tagmanager.accounts.containers.variables.create @mutable
  /// tagmanager.accounts.containers.variables.update
  core.List<core.String>? enablingTriggerId;

  /// The fingerprint of the GTM Variable as computed at storage time.
  ///
  /// This value is recomputed whenever the variable is modified.
  core.String? fingerprint;

  /// Variable display name.
  ///
  /// @mutable tagmanager.accounts.containers.variables.create @mutable
  /// tagmanager.accounts.containers.variables.update
  core.String? name;

  /// User notes on how to apply this variable in the container.
  ///
  /// @mutable tagmanager.accounts.containers.variables.create @mutable
  /// tagmanager.accounts.containers.variables.update
  core.String? notes;

  /// The variable's parameters.
  ///
  /// @mutable tagmanager.accounts.containers.variables.create @mutable
  /// tagmanager.accounts.containers.variables.update
  core.List<Parameter>? parameter;

  /// Parent folder id.
  core.String? parentFolderId;

  /// The end timestamp in milliseconds to schedule a variable.
  ///
  /// @mutable tagmanager.accounts.containers.variables.create @mutable
  /// tagmanager.accounts.containers.variables.update
  core.String? scheduleEndMs;

  /// The start timestamp in milliseconds to schedule a variable.
  ///
  /// @mutable tagmanager.accounts.containers.variables.create @mutable
  /// tagmanager.accounts.containers.variables.update
  core.String? scheduleStartMs;

  /// GTM Variable Type.
  ///
  /// @mutable tagmanager.accounts.containers.variables.create @mutable
  /// tagmanager.accounts.containers.variables.update
  core.String? type;

  /// The Variable ID uniquely identifies the GTM Variable.
  core.String? variableId;

  Variable({
    this.accountId,
    this.containerId,
    this.disablingTriggerId,
    this.enablingTriggerId,
    this.fingerprint,
    this.name,
    this.notes,
    this.parameter,
    this.parentFolderId,
    this.scheduleEndMs,
    this.scheduleStartMs,
    this.type,
    this.variableId,
  });

  Variable.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          containerId: json_.containsKey('containerId')
              ? json_['containerId'] as core.String
              : null,
          disablingTriggerId: json_.containsKey('disablingTriggerId')
              ? (json_['disablingTriggerId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          enablingTriggerId: json_.containsKey('enablingTriggerId')
              ? (json_['enablingTriggerId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fingerprint: json_.containsKey('fingerprint')
              ? json_['fingerprint'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          notes:
              json_.containsKey('notes') ? json_['notes'] as core.String : null,
          parameter: json_.containsKey('parameter')
              ? (json_['parameter'] as core.List)
                  .map((value) => Parameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          parentFolderId: json_.containsKey('parentFolderId')
              ? json_['parentFolderId'] as core.String
              : null,
          scheduleEndMs: json_.containsKey('scheduleEndMs')
              ? json_['scheduleEndMs'] as core.String
              : null,
          scheduleStartMs: json_.containsKey('scheduleStartMs')
              ? json_['scheduleStartMs'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          variableId: json_.containsKey('variableId')
              ? json_['variableId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (containerId != null) 'containerId': containerId!,
        if (disablingTriggerId != null)
          'disablingTriggerId': disablingTriggerId!,
        if (enablingTriggerId != null) 'enablingTriggerId': enablingTriggerId!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (name != null) 'name': name!,
        if (notes != null) 'notes': notes!,
        if (parameter != null) 'parameter': parameter!,
        if (parentFolderId != null) 'parentFolderId': parentFolderId!,
        if (scheduleEndMs != null) 'scheduleEndMs': scheduleEndMs!,
        if (scheduleStartMs != null) 'scheduleStartMs': scheduleStartMs!,
        if (type != null) 'type': type!,
        if (variableId != null) 'variableId': variableId!,
      };
}
