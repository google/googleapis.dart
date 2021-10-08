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

/// Tag Manager API - v2
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
///     - [AccountsContainersVersionHeadersResource]
///     - [AccountsContainersVersionsResource]
///     - [AccountsContainersWorkspacesResource]
///       - [AccountsContainersWorkspacesBuiltInVariablesResource]
///       - [AccountsContainersWorkspacesClientsResource]
///       - [AccountsContainersWorkspacesFoldersResource]
///       - [AccountsContainersWorkspacesTagsResource]
///       - [AccountsContainersWorkspacesTemplatesResource]
///       - [AccountsContainersWorkspacesTriggersResource]
///       - [AccountsContainersWorkspacesVariablesResource]
///       - [AccountsContainersWorkspacesZonesResource]
///   - [AccountsUserPermissionsResource]
library tagmanager.v2;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

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
  AccountsUserPermissionsResource get userPermissions =>
      AccountsUserPermissionsResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;

  /// Gets a GTM Account.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Accounts's API relative path. Example: accounts/{account_id}
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
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Account.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all GTM Accounts that a user has access to.
  ///
  /// Request parameters:
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
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
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'tagmanager/v2/accounts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAccountsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a GTM Account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Accounts's API relative path. Example: accounts/{account_id}
  /// Value must have pattern `^accounts/\[^/\]+$`.
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
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Account.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersResource {
  final commons.ApiRequester _requester;

  AccountsContainersEnvironmentsResource get environments =>
      AccountsContainersEnvironmentsResource(_requester);
  AccountsContainersVersionHeadersResource get versionHeaders =>
      AccountsContainersVersionHeadersResource(_requester);
  AccountsContainersVersionsResource get versions =>
      AccountsContainersVersionsResource(_requester);
  AccountsContainersWorkspacesResource get workspaces =>
      AccountsContainersWorkspacesResource(_requester);

  AccountsContainersResource(commons.ApiRequester client) : _requester = client;

  /// Creates a Container.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Account's API relative path. Example:
  /// accounts/{account_id}.
  /// Value must have pattern `^accounts/\[^/\]+$`.
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
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/containers';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Container.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Container.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Container's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}
  /// Value must have pattern `^accounts/\[^/\]+/containers/\[^/\]+$`.
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
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Gets a Container.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Container's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}
  /// Value must have pattern `^accounts/\[^/\]+/containers/\[^/\]+$`.
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
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Container.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all Containers that belongs to a GTM Account.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Accounts's API relative path. Example:
  /// accounts/{account_id}.
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
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
    core.String parent, {
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/containers';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListContainersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Container.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Container's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}
  /// Value must have pattern `^accounts/\[^/\]+/containers/\[^/\]+$`.
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
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Container.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// [parent] - GTM Container's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}
  /// Value must have pattern `^accounts/\[^/\]+/containers/\[^/\]+$`.
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
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/environments';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Environment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a GTM Environment.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Environment's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/environments/{environment_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/environments/\[^/\]+$`.
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
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Gets a GTM Environment.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Environment's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/environments/{environment_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/environments/\[^/\]+$`.
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
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Environment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all GTM Environments of a GTM Container.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Container's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}
  /// Value must have pattern `^accounts/\[^/\]+/containers/\[^/\]+$`.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
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
    core.String parent, {
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/environments';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListEnvironmentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Re-generates the authorization code for a GTM Environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Environment's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/environments/{environment_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/environments/\[^/\]+$`.
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
  async.Future<Environment> reauthorize(
    Environment request,
    core.String path, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$path') + ':reauthorize';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Environment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a GTM Environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Environment's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/environments/{environment_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/environments/\[^/\]+$`.
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
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Environment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersVersionHeadersResource {
  final commons.ApiRequester _requester;

  AccountsContainersVersionHeadersResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest container version header
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Container's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}
  /// Value must have pattern `^accounts/\[^/\]+/containers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContainerVersionHeader].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerVersionHeader> latest(
    core.String parent, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' +
        core.Uri.encodeFull('$parent') +
        '/version_headers:latest';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ContainerVersionHeader.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all Container Versions of a GTM Container.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Container's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}
  /// Value must have pattern `^accounts/\[^/\]+/containers/\[^/\]+$`.
  ///
  /// [includeDeleted] - Also retrieve deleted (archived) versions when true.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
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
    core.String parent, {
    core.bool? includeDeleted,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (includeDeleted != null) 'includeDeleted': ['${includeDeleted}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/version_headers';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListContainerVersionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersVersionsResource {
  final commons.ApiRequester _requester;

  AccountsContainersVersionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a Container Version.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM ContainerVersion's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/versions/{version_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/versions/\[^/\]+$`.
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
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Gets a Container Version.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM ContainerVersion's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/versions/{version_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [containerVersionId] - The GTM ContainerVersion ID. Specify published to
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
    core.String path, {
    core.String? containerVersionId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (containerVersionId != null)
        'containerVersionId': [containerVersionId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ContainerVersion.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the live (i.e. published) container version
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Container's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}
  /// Value must have pattern `^accounts/\[^/\]+/containers/\[^/\]+$`.
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
  async.Future<ContainerVersion> live(
    core.String parent, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/versions:live';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ContainerVersion.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Publishes a Container Version.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM ContainerVersion's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/versions/{version_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/versions/\[^/\]+$`.
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
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path') + ':publish';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return PublishContainerVersionResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the latest version used for synchronization of workspaces when
  /// detecting conflicts and errors.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM ContainerVersion's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/versions/{version_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/versions/\[^/\]+$`.
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
  async.Future<ContainerVersion> setLatest(
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$path') + ':set_latest';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return ContainerVersion.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Undeletes a Container Version.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM ContainerVersion's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/versions/{version_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/versions/\[^/\]+$`.
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
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path') + ':undelete';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return ContainerVersion.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Container Version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM ContainerVersion's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/versions/{version_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/versions/\[^/\]+$`.
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
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return ContainerVersion.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersWorkspacesResource {
  final commons.ApiRequester _requester;

  AccountsContainersWorkspacesBuiltInVariablesResource get builtInVariables =>
      AccountsContainersWorkspacesBuiltInVariablesResource(_requester);
  AccountsContainersWorkspacesClientsResource get clients =>
      AccountsContainersWorkspacesClientsResource(_requester);
  AccountsContainersWorkspacesFoldersResource get folders =>
      AccountsContainersWorkspacesFoldersResource(_requester);
  AccountsContainersWorkspacesTagsResource get tags =>
      AccountsContainersWorkspacesTagsResource(_requester);
  AccountsContainersWorkspacesTemplatesResource get templates =>
      AccountsContainersWorkspacesTemplatesResource(_requester);
  AccountsContainersWorkspacesTriggersResource get triggers =>
      AccountsContainersWorkspacesTriggersResource(_requester);
  AccountsContainersWorkspacesVariablesResource get variables =>
      AccountsContainersWorkspacesVariablesResource(_requester);
  AccountsContainersWorkspacesZonesResource get zones =>
      AccountsContainersWorkspacesZonesResource(_requester);

  AccountsContainersWorkspacesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Workspace.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM parent Container's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}
  /// Value must have pattern `^accounts/\[^/\]+/containers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Workspace].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Workspace> create(
    Workspace request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/workspaces';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Workspace.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a Container Version from the entities present in the workspace,
  /// deletes the workspace, and sets the base container version to the newly
  /// created version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
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
  async.Future<CreateContainerVersionResponse> createVersion(
    CreateContainerVersionRequestVersionOptions request,
    core.String path, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$path') + ':create_version';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return CreateContainerVersionResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
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
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Gets a Workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Workspace].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Workspace> get(
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Workspace.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Finds conflicting and modified entities in the workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetWorkspaceStatusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetWorkspaceStatusResponse> getStatus(
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path') + '/status';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GetWorkspaceStatusResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all Workspaces that belong to a GTM Container.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM parent Container's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}
  /// Value must have pattern `^accounts/\[^/\]+/containers/\[^/\]+$`.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkspacesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkspacesResponse> list(
    core.String parent, {
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/workspaces';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListWorkspacesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Quick previews a workspace by creating a fake container version from all
  /// entities in the provided workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QuickPreviewResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QuickPreviewResponse> quickPreview(
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$path') + ':quick_preview';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return QuickPreviewResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Resolves a merge conflict for a workspace entity by updating it to the
  /// resolved entity passed in the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the entity_in_workspace in the merge conflict.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> resolveConflict(
    Entity request,
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$path') + ':resolve_conflict';

    await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Syncs a workspace to the latest container version by updating all
  /// unmodified workspace entities and displaying conflicts for modified
  /// entities.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SyncWorkspaceResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SyncWorkspaceResponse> sync(
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path') + ':sync';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return SyncWorkspaceResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Workspace.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the workspace in storage.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Workspace].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Workspace> update(
    Workspace request,
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Workspace.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersWorkspacesBuiltInVariablesResource {
  final commons.ApiRequester _requester;

  AccountsContainersWorkspacesBuiltInVariablesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates one or more GTM Built-In Variables.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [type] - The types of built-in variables to enable.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreateBuiltInVariableResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreateBuiltInVariableResponse> create(
    core.String parent, {
    core.List<core.String>? type,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (type != null) 'type': type,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' +
        core.Uri.encodeFull('$parent') +
        '/built_in_variables';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return CreateBuiltInVariableResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes one or more GTM Built-In Variables.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM BuiltInVariable's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/built_in_variables
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/built_in_variables$`.
  ///
  /// [type] - The types of built-in variables to delete.
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
    core.String path, {
    core.List<core.String>? type,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (type != null) 'type': type,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Lists all the enabled Built-In Variables of a GTM Container.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEnabledBuiltInVariablesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEnabledBuiltInVariablesResponse> list(
    core.String parent, {
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' +
        core.Uri.encodeFull('$parent') +
        '/built_in_variables';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListEnabledBuiltInVariablesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Reverts changes to a GTM Built-In Variables in a GTM Workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM BuiltInVariable's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/built_in_variables
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [type] - The type of built-in variable to revert.
  /// Possible string values are:
  /// - "builtInVariableTypeUnspecified"
  /// - "pageUrl"
  /// - "pageHostname"
  /// - "pagePath"
  /// - "referrer"
  /// - "event" : For web or mobile.
  /// - "clickElement"
  /// - "clickClasses"
  /// - "clickId"
  /// - "clickTarget"
  /// - "clickUrl"
  /// - "clickText"
  /// - "firstPartyServingUrl"
  /// - "formElement"
  /// - "formClasses"
  /// - "formId"
  /// - "formTarget"
  /// - "formUrl"
  /// - "formText"
  /// - "errorMessage"
  /// - "errorUrl"
  /// - "errorLine"
  /// - "newHistoryUrl"
  /// - "oldHistoryUrl"
  /// - "newHistoryFragment"
  /// - "oldHistoryFragment"
  /// - "newHistoryState"
  /// - "oldHistoryState"
  /// - "historySource"
  /// - "containerVersion" : For web or mobile.
  /// - "debugMode"
  /// - "randomNumber" : For web or mobile.
  /// - "containerId" : For web or mobile.
  /// - "appId"
  /// - "appName"
  /// - "appVersionCode"
  /// - "appVersionName"
  /// - "language"
  /// - "osVersion"
  /// - "platform"
  /// - "sdkVersion"
  /// - "deviceName"
  /// - "resolution"
  /// - "advertiserId"
  /// - "advertisingTrackingEnabled"
  /// - "htmlId"
  /// - "environmentName"
  /// - "ampBrowserLanguage"
  /// - "ampCanonicalPath"
  /// - "ampCanonicalUrl"
  /// - "ampCanonicalHost"
  /// - "ampReferrer"
  /// - "ampTitle"
  /// - "ampClientId"
  /// - "ampClientTimezone"
  /// - "ampClientTimestamp"
  /// - "ampClientScreenWidth"
  /// - "ampClientScreenHeight"
  /// - "ampClientScrollX"
  /// - "ampClientScrollY"
  /// - "ampClientMaxScrollX"
  /// - "ampClientMaxScrollY"
  /// - "ampTotalEngagedTime"
  /// - "ampPageViewId"
  /// - "ampPageLoadTime"
  /// - "ampPageDownloadTime"
  /// - "ampGtmEvent"
  /// - "eventName"
  /// - "firebaseEventParameterCampaign"
  /// - "firebaseEventParameterCampaignAclid"
  /// - "firebaseEventParameterCampaignAnid"
  /// - "firebaseEventParameterCampaignClickTimestamp"
  /// - "firebaseEventParameterCampaignContent"
  /// - "firebaseEventParameterCampaignCp1"
  /// - "firebaseEventParameterCampaignGclid"
  /// - "firebaseEventParameterCampaignSource"
  /// - "firebaseEventParameterCampaignTerm"
  /// - "firebaseEventParameterCurrency"
  /// - "firebaseEventParameterDynamicLinkAcceptTime"
  /// - "firebaseEventParameterDynamicLinkLinkid"
  /// - "firebaseEventParameterNotificationMessageDeviceTime"
  /// - "firebaseEventParameterNotificationMessageId"
  /// - "firebaseEventParameterNotificationMessageName"
  /// - "firebaseEventParameterNotificationMessageTime"
  /// - "firebaseEventParameterNotificationTopic"
  /// - "firebaseEventParameterPreviousAppVersion"
  /// - "firebaseEventParameterPreviousOsVersion"
  /// - "firebaseEventParameterPrice"
  /// - "firebaseEventParameterProductId"
  /// - "firebaseEventParameterQuantity"
  /// - "firebaseEventParameterValue"
  /// - "videoProvider"
  /// - "videoUrl"
  /// - "videoTitle"
  /// - "videoDuration"
  /// - "videoPercent"
  /// - "videoVisible"
  /// - "videoStatus"
  /// - "videoCurrentTime"
  /// - "scrollDepthThreshold"
  /// - "scrollDepthUnits"
  /// - "scrollDepthDirection"
  /// - "elementVisibilityRatio"
  /// - "elementVisibilityTime"
  /// - "elementVisibilityFirstTime"
  /// - "elementVisibilityRecentTime"
  /// - "requestPath"
  /// - "requestMethod"
  /// - "clientName"
  /// - "queryString"
  /// - "serverPageLocationUrl"
  /// - "serverPageLocationPath"
  /// - "serverPageLocationHostname"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RevertBuiltInVariableResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RevertBuiltInVariableResponse> revert(
    core.String path, {
    core.String? type,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' +
        core.Uri.encodeFull('$path') +
        '/built_in_variables:revert';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return RevertBuiltInVariableResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersWorkspacesClientsResource {
  final commons.ApiRequester _requester;

  AccountsContainersWorkspacesClientsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a GTM Client.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Client].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Client> create(
    Client request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/clients';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Client.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a GTM Client.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Client's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/clients/{client_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/clients/\[^/\]+$`.
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
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Gets a GTM Client.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Client's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/clients/{client_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/clients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Client].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Client> get(
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Client.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all GTM Clients of a GTM container workspace.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListClientsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListClientsResponse> list(
    core.String parent, {
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/clients';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListClientsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Reverts changes to a GTM Client in a GTM Workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Client's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/clients/{client_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/clients/\[^/\]+$`.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the client in storage.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RevertClientResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RevertClientResponse> revert(
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path') + ':revert';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return RevertClientResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a GTM Client.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Client's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/clients/{client_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/clients/\[^/\]+$`.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the client in storage.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Client].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Client> update(
    Client request,
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Client.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersWorkspacesFoldersResource {
  final commons.ApiRequester _requester;

  AccountsContainersWorkspacesFoldersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a GTM Folder.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
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
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/folders';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Folder.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a GTM Folder.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Folder's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/folders/{folder_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/folders/\[^/\]+$`.
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
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// List all entities in a GTM Folder.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Folder's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/folders/{folder_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/folders/\[^/\]+$`.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
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
  async.Future<FolderEntities> entities(
    core.String path, {
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path') + ':entities';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return FolderEntities.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a GTM Folder.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Folder's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/folders/{folder_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/folders/\[^/\]+$`.
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
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Folder.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all GTM Folders of a Container.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
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
    core.String parent, {
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/folders';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListFoldersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Moves entities to a GTM Folder.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Folder's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/folders/{folder_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/folders/\[^/\]+$`.
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
  async.Future<void> moveEntitiesToFolder(
    Folder request,
    core.String path, {
    core.List<core.String>? tagId,
    core.List<core.String>? triggerId,
    core.List<core.String>? variableId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (tagId != null) 'tagId': tagId,
      if (triggerId != null) 'triggerId': triggerId,
      if (variableId != null) 'variableId': variableId,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' +
        core.Uri.encodeFull('$path') +
        ':move_entities_to_folder';

    await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Reverts changes to a GTM Folder in a GTM Workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Folder's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/folders/{folder_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/folders/\[^/\]+$`.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the tag in storage.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RevertFolderResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RevertFolderResponse> revert(
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path') + ':revert';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return RevertFolderResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a GTM Folder.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Folder's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/folders/{folder_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/folders/\[^/\]+$`.
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
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Folder.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersWorkspacesTagsResource {
  final commons.ApiRequester _requester;

  AccountsContainersWorkspacesTagsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a GTM Tag.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
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
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/tags';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Tag.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a GTM Tag.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Tag's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/tags/{tag_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/tags/\[^/\]+$`.
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
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Gets a GTM Tag.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Tag's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/tags/{tag_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/tags/\[^/\]+$`.
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
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Tag.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all GTM Tags of a Container.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
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
    core.String parent, {
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/tags';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListTagsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Reverts changes to a GTM Tag in a GTM Workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Tag's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/tags/{tag_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/tags/\[^/\]+$`.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of thetag in storage.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RevertTagResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RevertTagResponse> revert(
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path') + ':revert';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return RevertTagResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a GTM Tag.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Tag's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/tags/{tag_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/tags/\[^/\]+$`.
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
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Tag.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersWorkspacesTemplatesResource {
  final commons.ApiRequester _requester;

  AccountsContainersWorkspacesTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a GTM Custom Template.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomTemplate> create(
    CustomTemplate request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/templates';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return CustomTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a GTM Template.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Custom Template's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/templates/{template_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/templates/\[^/\]+$`.
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
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Gets a GTM Template.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Custom Template's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/templates/{template_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/templates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomTemplate> get(
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CustomTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all GTM Templates of a GTM container workspace.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTemplatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTemplatesResponse> list(
    core.String parent, {
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/templates';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListTemplatesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Reverts changes to a GTM Template in a GTM Workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Custom Template's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/templates/{template_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/templates/\[^/\]+$`.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the template in storage.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RevertTemplateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RevertTemplateResponse> revert(
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path') + ':revert';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return RevertTemplateResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a GTM Template.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Custom Template's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/templates/{template_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/templates/\[^/\]+$`.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the templates in storage.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomTemplate> update(
    CustomTemplate request,
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return CustomTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersWorkspacesTriggersResource {
  final commons.ApiRequester _requester;

  AccountsContainersWorkspacesTriggersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a GTM Trigger.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspaces's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
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
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/triggers';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Trigger.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a GTM Trigger.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Trigger's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/triggers/{trigger_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/triggers/\[^/\]+$`.
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
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Gets a GTM Trigger.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Trigger's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/triggers/{trigger_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/triggers/\[^/\]+$`.
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
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Trigger.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all GTM Triggers of a Container.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspaces's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
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
    core.String parent, {
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/triggers';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListTriggersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Reverts changes to a GTM Trigger in a GTM Workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Trigger's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/triggers/{trigger_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/triggers/\[^/\]+$`.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the trigger in storage.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RevertTriggerResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RevertTriggerResponse> revert(
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path') + ':revert';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return RevertTriggerResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a GTM Trigger.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Trigger's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/triggers/{trigger_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/triggers/\[^/\]+$`.
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
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Trigger.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersWorkspacesVariablesResource {
  final commons.ApiRequester _requester;

  AccountsContainersWorkspacesVariablesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a GTM Variable.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
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
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/variables';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Variable.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a GTM Variable.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Variable's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/variables/{variable_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/variables/\[^/\]+$`.
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
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Gets a GTM Variable.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Variable's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/variables/{variable_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/variables/\[^/\]+$`.
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
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Variable.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all GTM Variables of a Container.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
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
    core.String parent, {
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/variables';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListVariablesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Reverts changes to a GTM Variable in a GTM Workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Variable's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/variables/{variable_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/variables/\[^/\]+$`.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the variable in storage.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RevertVariableResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RevertVariableResponse> revert(
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path') + ':revert';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return RevertVariableResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a GTM Variable.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Variable's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/variables/{variable_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/variables/\[^/\]+$`.
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
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Variable.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsContainersWorkspacesZonesResource {
  final commons.ApiRequester _requester;

  AccountsContainersWorkspacesZonesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a GTM Zone.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Zone].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Zone> create(
    Zone request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/zones';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Zone.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a GTM Zone.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Zone's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/zones/{zone_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/zones/\[^/\]+$`.
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
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Gets a GTM Zone.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Zone's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/zones/{zone_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/zones/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Zone].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Zone> get(
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Zone.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all GTM Zones of a GTM container workspace.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+$`.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListZonesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListZonesResponse> list(
    core.String parent, {
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/zones';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListZonesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Reverts changes to a GTM Zone in a GTM Workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Zone's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/zones/{zone_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/zones/\[^/\]+$`.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the zone in storage.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RevertZoneResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RevertZoneResponse> revert(
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path') + ':revert';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return RevertZoneResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a GTM Zone.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Zone's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/zones/{zone_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/containers/\[^/\]+/workspaces/\[^/\]+/zones/\[^/\]+$`.
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the zone in storage.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Zone].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Zone> update(
    Zone request,
    core.String path, {
    core.String? fingerprint,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (fingerprint != null) 'fingerprint': [fingerprint],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Zone.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsUserPermissionsResource {
  final commons.ApiRequester _requester;

  AccountsUserPermissionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a user's Account & Container access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Account's API relative path. Example: accounts/{account_id}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserPermission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserPermission> create(
    UserPermission request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/user_permissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return UserPermission.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Removes a user from the account, revoking access to it and all of its
  /// containers.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM UserPermission's API relative path. Example:
  /// accounts/{account_id}/user_permissions/{user_permission_id}
  /// Value must have pattern `^accounts/\[^/\]+/user_permissions/\[^/\]+$`.
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
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Gets a user's Account & Container access.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM UserPermission's API relative path. Example:
  /// accounts/{account_id}/user_permissions/{user_permission_id}
  /// Value must have pattern `^accounts/\[^/\]+/user_permissions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserPermission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserPermission> get(
    core.String path, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return UserPermission.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all users that have access to the account along with Account and
  /// Container user access granted to each of them.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Accounts's API relative path. Example:
  /// accounts/{account_id}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUserPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUserPermissionsResponse> list(
    core.String parent, {
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'tagmanager/v2/' + core.Uri.encodeFull('$parent') + '/user_permissions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListUserPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a user's Account & Container access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM UserPermission's API relative path. Example:
  /// accounts/{account_id}/user_permissions/{user_permission_id}
  /// Value must have pattern `^accounts/\[^/\]+/user_permissions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserPermission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserPermission> update(
    UserPermission request,
    core.String path, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'tagmanager/v2/' + core.Uri.encodeFull('$path');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return UserPermission.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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

  /// GTM Account's API relative path.
  core.String? path;

  /// Whether the account shares data anonymously with Google and others.
  ///
  /// This flag enables benchmarking by sharing your data in an anonymous form.
  /// Google will remove all identifiable information about your website,
  /// combine the data with hundreds of other anonymous sites and report
  /// aggregate trends in the benchmarking service. @mutable
  /// tagmanager.accounts.create @mutable tagmanager.accounts.update
  core.bool? shareData;

  /// Auto generated link to the tag manager UI
  core.String? tagManagerUrl;

  Account({
    this.accountId,
    this.fingerprint,
    this.name,
    this.path,
    this.shareData,
    this.tagManagerUrl,
  });

  Account.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          fingerprint: _json.containsKey('fingerprint')
              ? _json['fingerprint'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          shareData: _json.containsKey('shareData')
              ? _json['shareData'] as core.bool
              : null,
          tagManagerUrl: _json.containsKey('tagManagerUrl')
              ? _json['tagManagerUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (name != null) 'name': name!,
        if (path != null) 'path': path!,
        if (shareData != null) 'shareData': shareData!,
        if (tagManagerUrl != null) 'tagManagerUrl': tagManagerUrl!,
      };
}

/// Defines the Google Tag Manager Account access permissions.
class AccountAccess {
  /// Whether the user has no access, user access, or admin access to an
  /// account.
  ///
  /// @mutable tagmanager.accounts.permissions.create @mutable
  /// tagmanager.accounts.permissions.update
  /// Possible string values are:
  /// - "accountPermissionUnspecified"
  /// - "noAccess"
  /// - "user"
  /// - "admin"
  core.String? permission;

  AccountAccess({
    this.permission,
  });

  AccountAccess.fromJson(core.Map _json)
      : this(
          permission: _json.containsKey('permission')
              ? _json['permission'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permission != null) 'permission': permission!,
      };
}

/// Built-in variables are a special category of variables that are pre-created
/// and non-customizable.
///
/// They provide common functionality like accessing propeties of the gtm data
/// layer, monitoring clicks, or accessing elements of a page URL.
class BuiltInVariable {
  /// GTM Account ID.
  core.String? accountId;

  /// GTM Container ID.
  core.String? containerId;

  /// Name of the built-in variable to be used to refer to the built-in
  /// variable.
  core.String? name;

  /// GTM BuiltInVariable's API relative path.
  core.String? path;

  /// Type of built-in variable.
  ///
  /// @required.tagmanager.accounts.containers.workspaces.built_in_variable.update
  /// @mutable
  /// tagmanager.accounts.containers.workspaces.built_in_variable.update
  /// Possible string values are:
  /// - "builtInVariableTypeUnspecified"
  /// - "pageUrl"
  /// - "pageHostname"
  /// - "pagePath"
  /// - "referrer"
  /// - "event" : For web or mobile.
  /// - "clickElement"
  /// - "clickClasses"
  /// - "clickId"
  /// - "clickTarget"
  /// - "clickUrl"
  /// - "clickText"
  /// - "firstPartyServingUrl"
  /// - "formElement"
  /// - "formClasses"
  /// - "formId"
  /// - "formTarget"
  /// - "formUrl"
  /// - "formText"
  /// - "errorMessage"
  /// - "errorUrl"
  /// - "errorLine"
  /// - "newHistoryUrl"
  /// - "oldHistoryUrl"
  /// - "newHistoryFragment"
  /// - "oldHistoryFragment"
  /// - "newHistoryState"
  /// - "oldHistoryState"
  /// - "historySource"
  /// - "containerVersion" : For web or mobile.
  /// - "debugMode"
  /// - "randomNumber" : For web or mobile.
  /// - "containerId" : For web or mobile.
  /// - "appId"
  /// - "appName"
  /// - "appVersionCode"
  /// - "appVersionName"
  /// - "language"
  /// - "osVersion"
  /// - "platform"
  /// - "sdkVersion"
  /// - "deviceName"
  /// - "resolution"
  /// - "advertiserId"
  /// - "advertisingTrackingEnabled"
  /// - "htmlId"
  /// - "environmentName"
  /// - "ampBrowserLanguage"
  /// - "ampCanonicalPath"
  /// - "ampCanonicalUrl"
  /// - "ampCanonicalHost"
  /// - "ampReferrer"
  /// - "ampTitle"
  /// - "ampClientId"
  /// - "ampClientTimezone"
  /// - "ampClientTimestamp"
  /// - "ampClientScreenWidth"
  /// - "ampClientScreenHeight"
  /// - "ampClientScrollX"
  /// - "ampClientScrollY"
  /// - "ampClientMaxScrollX"
  /// - "ampClientMaxScrollY"
  /// - "ampTotalEngagedTime"
  /// - "ampPageViewId"
  /// - "ampPageLoadTime"
  /// - "ampPageDownloadTime"
  /// - "ampGtmEvent"
  /// - "eventName"
  /// - "firebaseEventParameterCampaign"
  /// - "firebaseEventParameterCampaignAclid"
  /// - "firebaseEventParameterCampaignAnid"
  /// - "firebaseEventParameterCampaignClickTimestamp"
  /// - "firebaseEventParameterCampaignContent"
  /// - "firebaseEventParameterCampaignCp1"
  /// - "firebaseEventParameterCampaignGclid"
  /// - "firebaseEventParameterCampaignSource"
  /// - "firebaseEventParameterCampaignTerm"
  /// - "firebaseEventParameterCurrency"
  /// - "firebaseEventParameterDynamicLinkAcceptTime"
  /// - "firebaseEventParameterDynamicLinkLinkid"
  /// - "firebaseEventParameterNotificationMessageDeviceTime"
  /// - "firebaseEventParameterNotificationMessageId"
  /// - "firebaseEventParameterNotificationMessageName"
  /// - "firebaseEventParameterNotificationMessageTime"
  /// - "firebaseEventParameterNotificationTopic"
  /// - "firebaseEventParameterPreviousAppVersion"
  /// - "firebaseEventParameterPreviousOsVersion"
  /// - "firebaseEventParameterPrice"
  /// - "firebaseEventParameterProductId"
  /// - "firebaseEventParameterQuantity"
  /// - "firebaseEventParameterValue"
  /// - "videoProvider"
  /// - "videoUrl"
  /// - "videoTitle"
  /// - "videoDuration"
  /// - "videoPercent"
  /// - "videoVisible"
  /// - "videoStatus"
  /// - "videoCurrentTime"
  /// - "scrollDepthThreshold"
  /// - "scrollDepthUnits"
  /// - "scrollDepthDirection"
  /// - "elementVisibilityRatio"
  /// - "elementVisibilityTime"
  /// - "elementVisibilityFirstTime"
  /// - "elementVisibilityRecentTime"
  /// - "requestPath"
  /// - "requestMethod"
  /// - "clientName"
  /// - "queryString"
  /// - "serverPageLocationUrl"
  /// - "serverPageLocationPath"
  /// - "serverPageLocationHostname"
  core.String? type;

  /// GTM Workspace ID.
  core.String? workspaceId;

  BuiltInVariable({
    this.accountId,
    this.containerId,
    this.name,
    this.path,
    this.type,
    this.workspaceId,
  });

  BuiltInVariable.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          containerId: _json.containsKey('containerId')
              ? _json['containerId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          workspaceId: _json.containsKey('workspaceId')
              ? _json['workspaceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (containerId != null) 'containerId': containerId!,
        if (name != null) 'name': name!,
        if (path != null) 'path': path!,
        if (type != null) 'type': type!,
        if (workspaceId != null) 'workspaceId': workspaceId!,
      };
}

class Client {
  /// GTM Account ID.
  core.String? accountId;

  /// The Client ID uniquely identifies the GTM client.
  core.String? clientId;

  /// GTM Container ID.
  core.String? containerId;

  /// The fingerprint of the GTM Client as computed at storage time.
  ///
  /// This value is recomputed whenever the client is modified.
  core.String? fingerprint;

  /// Client display name.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.clients.create @mutable
  /// tagmanager.accounts.containers.workspaces.clients.update
  core.String? name;

  /// User notes on how to apply this tag in the container.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  core.String? notes;

  /// The client's parameters.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.clients.create @mutable
  /// tagmanager.accounts.containers.workspaces.clients.update
  core.List<Parameter>? parameter;

  /// Parent folder id.
  core.String? parentFolderId;

  /// GTM client's API relative path.
  core.String? path;

  /// Priority determines relative firing order.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.clients.create @mutable
  /// tagmanager.accounts.containers.workspaces.clients.update
  core.int? priority;

  /// Auto generated link to the tag manager UI
  core.String? tagManagerUrl;

  /// Client type.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.clients.create @mutable
  /// tagmanager.accounts.containers.workspaces.clients.update
  core.String? type;

  /// GTM Workspace ID.
  core.String? workspaceId;

  Client({
    this.accountId,
    this.clientId,
    this.containerId,
    this.fingerprint,
    this.name,
    this.notes,
    this.parameter,
    this.parentFolderId,
    this.path,
    this.priority,
    this.tagManagerUrl,
    this.type,
    this.workspaceId,
  });

  Client.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          clientId: _json.containsKey('clientId')
              ? _json['clientId'] as core.String
              : null,
          containerId: _json.containsKey('containerId')
              ? _json['containerId'] as core.String
              : null,
          fingerprint: _json.containsKey('fingerprint')
              ? _json['fingerprint'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          notes:
              _json.containsKey('notes') ? _json['notes'] as core.String : null,
          parameter: _json.containsKey('parameter')
              ? (_json['parameter'] as core.List)
                  .map((value) => Parameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          parentFolderId: _json.containsKey('parentFolderId')
              ? _json['parentFolderId'] as core.String
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          priority: _json.containsKey('priority')
              ? _json['priority'] as core.int
              : null,
          tagManagerUrl: _json.containsKey('tagManagerUrl')
              ? _json['tagManagerUrl'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          workspaceId: _json.containsKey('workspaceId')
              ? _json['workspaceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (clientId != null) 'clientId': clientId!,
        if (containerId != null) 'containerId': containerId!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (name != null) 'name': name!,
        if (notes != null) 'notes': notes!,
        if (parameter != null) 'parameter': parameter!,
        if (parentFolderId != null) 'parentFolderId': parentFolderId!,
        if (path != null) 'path': path!,
        if (priority != null) 'priority': priority!,
        if (tagManagerUrl != null) 'tagManagerUrl': tagManagerUrl!,
        if (type != null) 'type': type!,
        if (workspaceId != null) 'workspaceId': workspaceId!,
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
  /// true. @mutable tagmanager.accounts.containers.workspaces.triggers.create
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.update
  core.List<Parameter>? parameter;

  /// The type of operator for this condition.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.create
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.update
  /// Possible string values are:
  /// - "conditionTypeUnspecified"
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
  /// - "urlMatches" : NOTE(lanzone): When defining a ConditionType here, don't
  /// forget to also define a matching PredicateType (in condition.proto).
  core.String? type;

  Condition({
    this.parameter,
    this.type,
  });

  Condition.fromJson(core.Map _json)
      : this(
          parameter: _json.containsKey('parameter')
              ? (_json['parameter'] as core.List)
                  .map((value) => Parameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parameter != null) 'parameter': parameter!,
        if (type != null) 'type': type!,
      };
}

/// Represents a Google Tag Manager Container, which specifies the platform tags
/// will run on, manages workspaces, and retains container versions.
class Container {
  /// GTM Account ID.
  core.String? accountId;

  /// The Container ID uniquely identifies the GTM Container.
  core.String? containerId;

  /// List of domain names associated with the Container.
  ///
  /// @mutable tagmanager.accounts.containers.create @mutable
  /// tagmanager.accounts.containers.update
  core.List<core.String>? domainName;

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

  /// GTM Container's API relative path.
  core.String? path;

  /// Container Public ID.
  core.String? publicId;

  /// Auto generated link to the tag manager UI
  core.String? tagManagerUrl;

  /// List of Usage Contexts for the Container.
  ///
  /// Valid values include: web, android, or ios. @mutable
  /// tagmanager.accounts.containers.create @mutable
  /// tagmanager.accounts.containers.update
  core.List<core.String>? usageContext;

  Container({
    this.accountId,
    this.containerId,
    this.domainName,
    this.fingerprint,
    this.name,
    this.notes,
    this.path,
    this.publicId,
    this.tagManagerUrl,
    this.usageContext,
  });

  Container.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          containerId: _json.containsKey('containerId')
              ? _json['containerId'] as core.String
              : null,
          domainName: _json.containsKey('domainName')
              ? (_json['domainName'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fingerprint: _json.containsKey('fingerprint')
              ? _json['fingerprint'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          notes:
              _json.containsKey('notes') ? _json['notes'] as core.String : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          publicId: _json.containsKey('publicId')
              ? _json['publicId'] as core.String
              : null,
          tagManagerUrl: _json.containsKey('tagManagerUrl')
              ? _json['tagManagerUrl'] as core.String
              : null,
          usageContext: _json.containsKey('usageContext')
              ? (_json['usageContext'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (containerId != null) 'containerId': containerId!,
        if (domainName != null) 'domainName': domainName!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (name != null) 'name': name!,
        if (notes != null) 'notes': notes!,
        if (path != null) 'path': path!,
        if (publicId != null) 'publicId': publicId!,
        if (tagManagerUrl != null) 'tagManagerUrl': tagManagerUrl!,
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
  /// @mutable tagmanager.accounts.permissions.create @mutable
  /// tagmanager.accounts.permissions.update
  /// Possible string values are:
  /// - "containerPermissionUnspecified"
  /// - "noAccess"
  /// - "read"
  /// - "edit"
  /// - "approve"
  /// - "publish"
  core.String? permission;

  ContainerAccess({
    this.containerId,
    this.permission,
  });

  ContainerAccess.fromJson(core.Map _json)
      : this(
          containerId: _json.containsKey('containerId')
              ? _json['containerId'] as core.String
              : null,
          permission: _json.containsKey('permission')
              ? _json['permission'] as core.String
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

  /// The built-in variables in the container that this version was taken from.
  core.List<BuiltInVariable>? builtInVariable;

  /// The clients in the container that this version was taken from.
  core.List<Client>? client;

  /// The container that this version was taken from.
  Container? container;

  /// GTM Container ID.
  core.String? containerId;

  /// The Container Version ID uniquely identifies the GTM Container Version.
  core.String? containerVersionId;

  /// The custom templates in the container that this version was taken from.
  core.List<CustomTemplate>? customTemplate;

  /// A value of true indicates this container version has been deleted.
  core.bool? deleted;

  /// Container version description.
  ///
  /// @mutable tagmanager.accounts.containers.versions.update
  core.String? description;

  /// The fingerprint of the GTM Container Version as computed at storage time.
  ///
  /// This value is recomputed whenever the container version is modified.
  core.String? fingerprint;

  /// The folders in the container that this version was taken from.
  core.List<Folder>? folder;

  /// Container version display name.
  ///
  /// @mutable tagmanager.accounts.containers.versions.update
  core.String? name;

  /// GTM ContainerVersions's API relative path.
  core.String? path;

  /// The tags in the container that this version was taken from.
  core.List<Tag>? tag;

  /// Auto generated link to the tag manager UI
  core.String? tagManagerUrl;

  /// The triggers in the container that this version was taken from.
  core.List<Trigger>? trigger;

  /// The variables in the container that this version was taken from.
  core.List<Variable>? variable;

  /// The zones in the container that this version was taken from.
  core.List<Zone>? zone;

  ContainerVersion({
    this.accountId,
    this.builtInVariable,
    this.client,
    this.container,
    this.containerId,
    this.containerVersionId,
    this.customTemplate,
    this.deleted,
    this.description,
    this.fingerprint,
    this.folder,
    this.name,
    this.path,
    this.tag,
    this.tagManagerUrl,
    this.trigger,
    this.variable,
    this.zone,
  });

  ContainerVersion.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          builtInVariable: _json.containsKey('builtInVariable')
              ? (_json['builtInVariable'] as core.List)
                  .map((value) => BuiltInVariable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          client: _json.containsKey('client')
              ? (_json['client'] as core.List)
                  .map((value) => Client.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          container: _json.containsKey('container')
              ? Container.fromJson(
                  _json['container'] as core.Map<core.String, core.dynamic>)
              : null,
          containerId: _json.containsKey('containerId')
              ? _json['containerId'] as core.String
              : null,
          containerVersionId: _json.containsKey('containerVersionId')
              ? _json['containerVersionId'] as core.String
              : null,
          customTemplate: _json.containsKey('customTemplate')
              ? (_json['customTemplate'] as core.List)
                  .map((value) => CustomTemplate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          deleted: _json.containsKey('deleted')
              ? _json['deleted'] as core.bool
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          fingerprint: _json.containsKey('fingerprint')
              ? _json['fingerprint'] as core.String
              : null,
          folder: _json.containsKey('folder')
              ? (_json['folder'] as core.List)
                  .map((value) => Folder.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          tag: _json.containsKey('tag')
              ? (_json['tag'] as core.List)
                  .map((value) => Tag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tagManagerUrl: _json.containsKey('tagManagerUrl')
              ? _json['tagManagerUrl'] as core.String
              : null,
          trigger: _json.containsKey('trigger')
              ? (_json['trigger'] as core.List)
                  .map((value) => Trigger.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          variable: _json.containsKey('variable')
              ? (_json['variable'] as core.List)
                  .map((value) => Variable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          zone: _json.containsKey('zone')
              ? (_json['zone'] as core.List)
                  .map((value) => Zone.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (builtInVariable != null) 'builtInVariable': builtInVariable!,
        if (client != null) 'client': client!,
        if (container != null) 'container': container!,
        if (containerId != null) 'containerId': containerId!,
        if (containerVersionId != null)
          'containerVersionId': containerVersionId!,
        if (customTemplate != null) 'customTemplate': customTemplate!,
        if (deleted != null) 'deleted': deleted!,
        if (description != null) 'description': description!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (folder != null) 'folder': folder!,
        if (name != null) 'name': name!,
        if (path != null) 'path': path!,
        if (tag != null) 'tag': tag!,
        if (tagManagerUrl != null) 'tagManagerUrl': tagManagerUrl!,
        if (trigger != null) 'trigger': trigger!,
        if (variable != null) 'variable': variable!,
        if (zone != null) 'zone': zone!,
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

  /// Number of clients in the container version.
  core.String? numClients;

  /// Number of custom templates in the container version.
  core.String? numCustomTemplates;

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

  /// Number of zones in the container version.
  core.String? numZones;

  /// GTM Container Versions's API relative path.
  core.String? path;

  ContainerVersionHeader({
    this.accountId,
    this.containerId,
    this.containerVersionId,
    this.deleted,
    this.name,
    this.numClients,
    this.numCustomTemplates,
    this.numMacros,
    this.numRules,
    this.numTags,
    this.numTriggers,
    this.numVariables,
    this.numZones,
    this.path,
  });

  ContainerVersionHeader.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          containerId: _json.containsKey('containerId')
              ? _json['containerId'] as core.String
              : null,
          containerVersionId: _json.containsKey('containerVersionId')
              ? _json['containerVersionId'] as core.String
              : null,
          deleted: _json.containsKey('deleted')
              ? _json['deleted'] as core.bool
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          numClients: _json.containsKey('numClients')
              ? _json['numClients'] as core.String
              : null,
          numCustomTemplates: _json.containsKey('numCustomTemplates')
              ? _json['numCustomTemplates'] as core.String
              : null,
          numMacros: _json.containsKey('numMacros')
              ? _json['numMacros'] as core.String
              : null,
          numRules: _json.containsKey('numRules')
              ? _json['numRules'] as core.String
              : null,
          numTags: _json.containsKey('numTags')
              ? _json['numTags'] as core.String
              : null,
          numTriggers: _json.containsKey('numTriggers')
              ? _json['numTriggers'] as core.String
              : null,
          numVariables: _json.containsKey('numVariables')
              ? _json['numVariables'] as core.String
              : null,
          numZones: _json.containsKey('numZones')
              ? _json['numZones'] as core.String
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (containerId != null) 'containerId': containerId!,
        if (containerVersionId != null)
          'containerVersionId': containerVersionId!,
        if (deleted != null) 'deleted': deleted!,
        if (name != null) 'name': name!,
        if (numClients != null) 'numClients': numClients!,
        if (numCustomTemplates != null)
          'numCustomTemplates': numCustomTemplates!,
        if (numMacros != null) 'numMacros': numMacros!,
        if (numRules != null) 'numRules': numRules!,
        if (numTags != null) 'numTags': numTags!,
        if (numTriggers != null) 'numTriggers': numTriggers!,
        if (numVariables != null) 'numVariables': numVariables!,
        if (numZones != null) 'numZones': numZones!,
        if (path != null) 'path': path!,
      };
}

class CreateBuiltInVariableResponse {
  /// List of created built-in variables.
  core.List<BuiltInVariable>? builtInVariable;

  CreateBuiltInVariableResponse({
    this.builtInVariable,
  });

  CreateBuiltInVariableResponse.fromJson(core.Map _json)
      : this(
          builtInVariable: _json.containsKey('builtInVariable')
              ? (_json['builtInVariable'] as core.List)
                  .map((value) => BuiltInVariable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (builtInVariable != null) 'builtInVariable': builtInVariable!,
      };
}

/// Options for new container versions.
class CreateContainerVersionRequestVersionOptions {
  /// The name of the container version to be created.
  core.String? name;

  /// The notes of the container version to be created.
  core.String? notes;

  CreateContainerVersionRequestVersionOptions({
    this.name,
    this.notes,
  });

  CreateContainerVersionRequestVersionOptions.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          notes:
              _json.containsKey('notes') ? _json['notes'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (notes != null) 'notes': notes!,
      };
}

/// Create container versions response.
class CreateContainerVersionResponse {
  /// Compiler errors or not.
  core.bool? compilerError;

  /// The container version created.
  ContainerVersion? containerVersion;

  /// Auto generated workspace path created as a result of version creation.
  ///
  /// This field should only be populated if the created version was not a quick
  /// preview.
  core.String? newWorkspacePath;

  /// Whether version creation failed when syncing the workspace to the latest
  /// container version.
  SyncStatus? syncStatus;

  CreateContainerVersionResponse({
    this.compilerError,
    this.containerVersion,
    this.newWorkspacePath,
    this.syncStatus,
  });

  CreateContainerVersionResponse.fromJson(core.Map _json)
      : this(
          compilerError: _json.containsKey('compilerError')
              ? _json['compilerError'] as core.bool
              : null,
          containerVersion: _json.containsKey('containerVersion')
              ? ContainerVersion.fromJson(_json['containerVersion']
                  as core.Map<core.String, core.dynamic>)
              : null,
          newWorkspacePath: _json.containsKey('newWorkspacePath')
              ? _json['newWorkspacePath'] as core.String
              : null,
          syncStatus: _json.containsKey('syncStatus')
              ? SyncStatus.fromJson(
                  _json['syncStatus'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compilerError != null) 'compilerError': compilerError!,
        if (containerVersion != null) 'containerVersion': containerVersion!,
        if (newWorkspacePath != null) 'newWorkspacePath': newWorkspacePath!,
        if (syncStatus != null) 'syncStatus': syncStatus!,
      };
}

/// Represents a Google Tag Manager Custom Template's contents.
class CustomTemplate {
  /// GTM Account ID.
  core.String? accountId;

  /// GTM Container ID.
  core.String? containerId;

  /// The fingerprint of the GTM Custom Template as computed at storage time.
  ///
  /// This value is recomputed whenever the template is modified.
  core.String? fingerprint;

  /// A reference to the Community Template Gallery entry.
  GalleryReference? galleryReference;

  /// Custom Template display name.
  core.String? name;

  /// GTM Custom Template's API relative path.
  core.String? path;

  /// Auto generated link to the tag manager UI
  core.String? tagManagerUrl;

  /// The custom template in text format.
  core.String? templateData;

  /// The Custom Template ID uniquely identifies the GTM custom template.
  core.String? templateId;

  /// GTM Workspace ID.
  core.String? workspaceId;

  CustomTemplate({
    this.accountId,
    this.containerId,
    this.fingerprint,
    this.galleryReference,
    this.name,
    this.path,
    this.tagManagerUrl,
    this.templateData,
    this.templateId,
    this.workspaceId,
  });

  CustomTemplate.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          containerId: _json.containsKey('containerId')
              ? _json['containerId'] as core.String
              : null,
          fingerprint: _json.containsKey('fingerprint')
              ? _json['fingerprint'] as core.String
              : null,
          galleryReference: _json.containsKey('galleryReference')
              ? GalleryReference.fromJson(_json['galleryReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          tagManagerUrl: _json.containsKey('tagManagerUrl')
              ? _json['tagManagerUrl'] as core.String
              : null,
          templateData: _json.containsKey('templateData')
              ? _json['templateData'] as core.String
              : null,
          templateId: _json.containsKey('templateId')
              ? _json['templateId'] as core.String
              : null,
          workspaceId: _json.containsKey('workspaceId')
              ? _json['workspaceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (containerId != null) 'containerId': containerId!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (galleryReference != null) 'galleryReference': galleryReference!,
        if (name != null) 'name': name!,
        if (path != null) 'path': path!,
        if (tagManagerUrl != null) 'tagManagerUrl': tagManagerUrl!,
        if (templateData != null) 'templateData': templateData!,
        if (templateId != null) 'templateId': templateId!,
        if (workspaceId != null) 'workspaceId': workspaceId!,
      };
}

/// A workspace entity that may represent a tag, trigger, variable, or folder in
/// addition to its status in the workspace.
class Entity {
  /// Represents how the entity has been changed in the workspace.
  /// Possible string values are:
  /// - "changeStatusUnspecified"
  /// - "none" : The entity has never been changed.
  /// - "added" : The entity is added to the workspace.
  /// - "deleted" : The entity is deleted from the workspace.
  /// - "updated" : The entity has been updated in the workspace.
  core.String? changeStatus;

  /// The client being represented by the entity.
  Client? client;

  /// The folder being represented by the entity.
  Folder? folder;

  /// The tag being represented by the entity.
  Tag? tag;

  /// The trigger being represented by the entity.
  Trigger? trigger;

  /// The variable being represented by the entity.
  Variable? variable;

  Entity({
    this.changeStatus,
    this.client,
    this.folder,
    this.tag,
    this.trigger,
    this.variable,
  });

  Entity.fromJson(core.Map _json)
      : this(
          changeStatus: _json.containsKey('changeStatus')
              ? _json['changeStatus'] as core.String
              : null,
          client: _json.containsKey('client')
              ? Client.fromJson(
                  _json['client'] as core.Map<core.String, core.dynamic>)
              : null,
          folder: _json.containsKey('folder')
              ? Folder.fromJson(
                  _json['folder'] as core.Map<core.String, core.dynamic>)
              : null,
          tag: _json.containsKey('tag')
              ? Tag.fromJson(
                  _json['tag'] as core.Map<core.String, core.dynamic>)
              : null,
          trigger: _json.containsKey('trigger')
              ? Trigger.fromJson(
                  _json['trigger'] as core.Map<core.String, core.dynamic>)
              : null,
          variable: _json.containsKey('variable')
              ? Variable.fromJson(
                  _json['variable'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (changeStatus != null) 'changeStatus': changeStatus!,
        if (client != null) 'client': client!,
        if (folder != null) 'folder': folder!,
        if (tag != null) 'tag': tag!,
        if (trigger != null) 'trigger': trigger!,
        if (variable != null) 'variable': variable!,
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
  core.String? authorizationTimestamp;

  /// GTM Container ID.
  core.String? containerId;

  /// Represents a link to a container version.
  core.String? containerVersionId;

  /// The environment description.
  ///
  /// Can be set or changed only on USER type environments. @mutable
  /// tagmanager.accounts.containers.environments.create @mutable
  /// tagmanager.accounts.containers.environments.update
  core.String? description;

  /// Whether or not to enable debug by default for the environment.
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

  /// GTM Environment's API relative path.
  core.String? path;

  /// Auto generated link to the tag manager UI
  core.String? tagManagerUrl;

  /// The type of this environment.
  /// Possible string values are:
  /// - "user" : Points to a user defined environment.
  /// - "live" : Points to the current live container version.
  /// - "latest" : Points to the latest container version.
  /// - "workspace" : Automatically managed environment that points to a
  /// workspace preview or version created by a workspace.
  core.String? type;

  /// Default preview page url for the environment.
  ///
  /// @mutable tagmanager.accounts.containers.environments.create @mutable
  /// tagmanager.accounts.containers.environments.update
  core.String? url;

  /// Represents a link to a quick preview of a workspace.
  core.String? workspaceId;

  Environment({
    this.accountId,
    this.authorizationCode,
    this.authorizationTimestamp,
    this.containerId,
    this.containerVersionId,
    this.description,
    this.enableDebug,
    this.environmentId,
    this.fingerprint,
    this.name,
    this.path,
    this.tagManagerUrl,
    this.type,
    this.url,
    this.workspaceId,
  });

  Environment.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          authorizationCode: _json.containsKey('authorizationCode')
              ? _json['authorizationCode'] as core.String
              : null,
          authorizationTimestamp: _json.containsKey('authorizationTimestamp')
              ? _json['authorizationTimestamp'] as core.String
              : null,
          containerId: _json.containsKey('containerId')
              ? _json['containerId'] as core.String
              : null,
          containerVersionId: _json.containsKey('containerVersionId')
              ? _json['containerVersionId'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          enableDebug: _json.containsKey('enableDebug')
              ? _json['enableDebug'] as core.bool
              : null,
          environmentId: _json.containsKey('environmentId')
              ? _json['environmentId'] as core.String
              : null,
          fingerprint: _json.containsKey('fingerprint')
              ? _json['fingerprint'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          tagManagerUrl: _json.containsKey('tagManagerUrl')
              ? _json['tagManagerUrl'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
          workspaceId: _json.containsKey('workspaceId')
              ? _json['workspaceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (authorizationCode != null) 'authorizationCode': authorizationCode!,
        if (authorizationTimestamp != null)
          'authorizationTimestamp': authorizationTimestamp!,
        if (containerId != null) 'containerId': containerId!,
        if (containerVersionId != null)
          'containerVersionId': containerVersionId!,
        if (description != null) 'description': description!,
        if (enableDebug != null) 'enableDebug': enableDebug!,
        if (environmentId != null) 'environmentId': environmentId!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (name != null) 'name': name!,
        if (path != null) 'path': path!,
        if (tagManagerUrl != null) 'tagManagerUrl': tagManagerUrl!,
        if (type != null) 'type': type!,
        if (url != null) 'url': url!,
        if (workspaceId != null) 'workspaceId': workspaceId!,
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
  /// @mutable tagmanager.accounts.containers.workspaces.folders.create @mutable
  /// tagmanager.accounts.containers.workspaces.folders.update
  core.String? name;

  /// User notes on how to apply this folder in the container.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.folders.create @mutable
  /// tagmanager.accounts.containers.workspaces.folders.update
  core.String? notes;

  /// GTM Folder's API relative path.
  core.String? path;

  /// Auto generated link to the tag manager UI
  core.String? tagManagerUrl;

  /// GTM Workspace ID.
  core.String? workspaceId;

  Folder({
    this.accountId,
    this.containerId,
    this.fingerprint,
    this.folderId,
    this.name,
    this.notes,
    this.path,
    this.tagManagerUrl,
    this.workspaceId,
  });

  Folder.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          containerId: _json.containsKey('containerId')
              ? _json['containerId'] as core.String
              : null,
          fingerprint: _json.containsKey('fingerprint')
              ? _json['fingerprint'] as core.String
              : null,
          folderId: _json.containsKey('folderId')
              ? _json['folderId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          notes:
              _json.containsKey('notes') ? _json['notes'] as core.String : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          tagManagerUrl: _json.containsKey('tagManagerUrl')
              ? _json['tagManagerUrl'] as core.String
              : null,
          workspaceId: _json.containsKey('workspaceId')
              ? _json['workspaceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (containerId != null) 'containerId': containerId!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (folderId != null) 'folderId': folderId!,
        if (name != null) 'name': name!,
        if (notes != null) 'notes': notes!,
        if (path != null) 'path': path!,
        if (tagManagerUrl != null) 'tagManagerUrl': tagManagerUrl!,
        if (workspaceId != null) 'workspaceId': workspaceId!,
      };
}

/// Represents a Google Tag Manager Folder's contents.
class FolderEntities {
  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  /// The list of tags inside the folder.
  core.List<Tag>? tag;

  /// The list of triggers inside the folder.
  core.List<Trigger>? trigger;

  /// The list of variables inside the folder.
  core.List<Variable>? variable;

  FolderEntities({
    this.nextPageToken,
    this.tag,
    this.trigger,
    this.variable,
  });

  FolderEntities.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          tag: _json.containsKey('tag')
              ? (_json['tag'] as core.List)
                  .map((value) => Tag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          trigger: _json.containsKey('trigger')
              ? (_json['trigger'] as core.List)
                  .map((value) => Trigger.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          variable: _json.containsKey('variable')
              ? (_json['variable'] as core.List)
                  .map((value) => Variable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tag != null) 'tag': tag!,
        if (trigger != null) 'trigger': trigger!,
        if (variable != null) 'variable': variable!,
      };
}

/// Represents the link between a custom template and an entry on the Community
/// Template Gallery site.
class GalleryReference {
  /// The name of the host for the community gallery template.
  core.String? host;

  /// If a user has manually edited the community gallery template.
  core.bool? isModified;

  /// The name of the owner for the community gallery template.
  core.String? owner;

  /// The name of the repository for the community gallery template.
  core.String? repository;

  /// The signature of the community gallery template as computed at import
  /// time.
  ///
  /// This value is recomputed whenever the template is updated from the
  /// gallery.
  core.String? signature;

  /// The version of the community gallery template.
  core.String? version;

  GalleryReference({
    this.host,
    this.isModified,
    this.owner,
    this.repository,
    this.signature,
    this.version,
  });

  GalleryReference.fromJson(core.Map _json)
      : this(
          host: _json.containsKey('host') ? _json['host'] as core.String : null,
          isModified: _json.containsKey('isModified')
              ? _json['isModified'] as core.bool
              : null,
          owner:
              _json.containsKey('owner') ? _json['owner'] as core.String : null,
          repository: _json.containsKey('repository')
              ? _json['repository'] as core.String
              : null,
          signature: _json.containsKey('signature')
              ? _json['signature'] as core.String
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (host != null) 'host': host!,
        if (isModified != null) 'isModified': isModified!,
        if (owner != null) 'owner': owner!,
        if (repository != null) 'repository': repository!,
        if (signature != null) 'signature': signature!,
        if (version != null) 'version': version!,
      };
}

/// The changes that have occurred in the workspace since the base container
/// version.
class GetWorkspaceStatusResponse {
  /// The merge conflict after sync.
  core.List<MergeConflict>? mergeConflict;

  /// Entities that have been changed in the workspace.
  core.List<Entity>? workspaceChange;

  GetWorkspaceStatusResponse({
    this.mergeConflict,
    this.workspaceChange,
  });

  GetWorkspaceStatusResponse.fromJson(core.Map _json)
      : this(
          mergeConflict: _json.containsKey('mergeConflict')
              ? (_json['mergeConflict'] as core.List)
                  .map((value) => MergeConflict.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          workspaceChange: _json.containsKey('workspaceChange')
              ? (_json['workspaceChange'] as core.List)
                  .map((value) => Entity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mergeConflict != null) 'mergeConflict': mergeConflict!,
        if (workspaceChange != null) 'workspaceChange': workspaceChange!,
      };
}

/// List Accounts Response.
class ListAccountsResponse {
  /// List of GTM Accounts that a user has access to.
  core.List<Account>? account;

  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  ListAccountsResponse({
    this.account,
    this.nextPageToken,
  });

  ListAccountsResponse.fromJson(core.Map _json)
      : this(
          account: _json.containsKey('account')
              ? (_json['account'] as core.List)
                  .map((value) => Account.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListClientsResponse {
  /// All GTM Clients of a GTM Container.
  core.List<Client>? client;

  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  ListClientsResponse({
    this.client,
    this.nextPageToken,
  });

  ListClientsResponse.fromJson(core.Map _json)
      : this(
          client: _json.containsKey('client')
              ? (_json['client'] as core.List)
                  .map((value) => Client.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (client != null) 'client': client!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// List container versions response.
class ListContainerVersionsResponse {
  /// All container version headers of a GTM Container.
  core.List<ContainerVersionHeader>? containerVersionHeader;

  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  ListContainerVersionsResponse({
    this.containerVersionHeader,
    this.nextPageToken,
  });

  ListContainerVersionsResponse.fromJson(core.Map _json)
      : this(
          containerVersionHeader: _json.containsKey('containerVersionHeader')
              ? (_json['containerVersionHeader'] as core.List)
                  .map((value) => ContainerVersionHeader.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerVersionHeader != null)
          'containerVersionHeader': containerVersionHeader!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// List Containers Response.
class ListContainersResponse {
  /// All Containers of a GTM Account.
  core.List<Container>? container;

  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  ListContainersResponse({
    this.container,
    this.nextPageToken,
  });

  ListContainersResponse.fromJson(core.Map _json)
      : this(
          container: _json.containsKey('container')
              ? (_json['container'] as core.List)
                  .map((value) => Container.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (container != null) 'container': container!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A list of enabled built-in variables.
class ListEnabledBuiltInVariablesResponse {
  /// All GTM BuiltInVariables of a GTM container.
  core.List<BuiltInVariable>? builtInVariable;

  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  ListEnabledBuiltInVariablesResponse({
    this.builtInVariable,
    this.nextPageToken,
  });

  ListEnabledBuiltInVariablesResponse.fromJson(core.Map _json)
      : this(
          builtInVariable: _json.containsKey('builtInVariable')
              ? (_json['builtInVariable'] as core.List)
                  .map((value) => BuiltInVariable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (builtInVariable != null) 'builtInVariable': builtInVariable!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// List Environments Response.
class ListEnvironmentsResponse {
  /// All Environments of a GTM Container.
  core.List<Environment>? environment;

  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  ListEnvironmentsResponse({
    this.environment,
    this.nextPageToken,
  });

  ListEnvironmentsResponse.fromJson(core.Map _json)
      : this(
          environment: _json.containsKey('environment')
              ? (_json['environment'] as core.List)
                  .map((value) => Environment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (environment != null) 'environment': environment!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// List Folders Response.
class ListFoldersResponse {
  /// All GTM Folders of a GTM Container.
  core.List<Folder>? folder;

  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  ListFoldersResponse({
    this.folder,
    this.nextPageToken,
  });

  ListFoldersResponse.fromJson(core.Map _json)
      : this(
          folder: _json.containsKey('folder')
              ? (_json['folder'] as core.List)
                  .map((value) => Folder.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (folder != null) 'folder': folder!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// List Tags Response.
class ListTagsResponse {
  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  /// All GTM Tags of a GTM Container.
  core.List<Tag>? tag;

  ListTagsResponse({
    this.nextPageToken,
    this.tag,
  });

  ListTagsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          tag: _json.containsKey('tag')
              ? (_json['tag'] as core.List)
                  .map((value) => Tag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tag != null) 'tag': tag!,
      };
}

class ListTemplatesResponse {
  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  /// All GTM Custom Templates of a GTM Container.
  core.List<CustomTemplate>? template;

  ListTemplatesResponse({
    this.nextPageToken,
    this.template,
  });

  ListTemplatesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          template: _json.containsKey('template')
              ? (_json['template'] as core.List)
                  .map((value) => CustomTemplate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (template != null) 'template': template!,
      };
}

/// List triggers response.
class ListTriggersResponse {
  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  /// All GTM Triggers of a GTM Container.
  core.List<Trigger>? trigger;

  ListTriggersResponse({
    this.nextPageToken,
    this.trigger,
  });

  ListTriggersResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          trigger: _json.containsKey('trigger')
              ? (_json['trigger'] as core.List)
                  .map((value) => Trigger.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (trigger != null) 'trigger': trigger!,
      };
}

/// List user permissions response.
class ListUserPermissionsResponse {
  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  /// All GTM UserPermissions of a GTM Account.
  core.List<UserPermission>? userPermission;

  ListUserPermissionsResponse({
    this.nextPageToken,
    this.userPermission,
  });

  ListUserPermissionsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          userPermission: _json.containsKey('userPermission')
              ? (_json['userPermission'] as core.List)
                  .map((value) => UserPermission.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (userPermission != null) 'userPermission': userPermission!,
      };
}

/// List Variables Response.
class ListVariablesResponse {
  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  /// All GTM Variables of a GTM Container.
  core.List<Variable>? variable;

  ListVariablesResponse({
    this.nextPageToken,
    this.variable,
  });

  ListVariablesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          variable: _json.containsKey('variable')
              ? (_json['variable'] as core.List)
                  .map((value) => Variable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (variable != null) 'variable': variable!,
      };
}

/// A list of workspaces in a container.
class ListWorkspacesResponse {
  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  /// All Workspaces of a GTM Container.
  core.List<Workspace>? workspace;

  ListWorkspacesResponse({
    this.nextPageToken,
    this.workspace,
  });

  ListWorkspacesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          workspace: _json.containsKey('workspace')
              ? (_json['workspace'] as core.List)
                  .map((value) => Workspace.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (workspace != null) 'workspace': workspace!,
      };
}

class ListZonesResponse {
  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  /// All GTM Zones of a GTM Container.
  core.List<Zone>? zone;

  ListZonesResponse({
    this.nextPageToken,
    this.zone,
  });

  ListZonesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          zone: _json.containsKey('zone')
              ? (_json['zone'] as core.List)
                  .map((value) => Zone.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (zone != null) 'zone': zone!,
      };
}

/// Represents a merge conflict.
class MergeConflict {
  /// The base version entity (since the latest sync operation) that has
  /// conflicting changes compared to the workspace.
  ///
  /// If this field is missing, it means the workspace entity is deleted from
  /// the base version.
  Entity? entityInBaseVersion;

  /// The workspace entity that has conflicting changes compared to the base
  /// version.
  ///
  /// If an entity is deleted in a workspace, it will still appear with a
  /// deleted change status.
  Entity? entityInWorkspace;

  MergeConflict({
    this.entityInBaseVersion,
    this.entityInWorkspace,
  });

  MergeConflict.fromJson(core.Map _json)
      : this(
          entityInBaseVersion: _json.containsKey('entityInBaseVersion')
              ? Entity.fromJson(_json['entityInBaseVersion']
                  as core.Map<core.String, core.dynamic>)
              : null,
          entityInWorkspace: _json.containsKey('entityInWorkspace')
              ? Entity.fromJson(_json['entityInWorkspace']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entityInBaseVersion != null)
          'entityInBaseVersion': entityInBaseVersion!,
        if (entityInWorkspace != null) 'entityInWorkspace': entityInWorkspace!,
      };
}

/// Represents a Google Tag Manager Parameter.
class Parameter {
  /// The named key that uniquely identifies a parameter.
  ///
  /// Required for top-level parameters, as well as map values. Ignored for list
  /// values. @mutable
  /// tagmanager.accounts.containers.workspaces.variables.create @mutable
  /// tagmanager.accounts.containers.workspaces.variables.update @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.create @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.update @mutable
  /// tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  core.String? key;

  /// This list parameter's parameters (keys will be ignored).
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.variables.create
  /// @mutable tagmanager.accounts.containers.workspaces.variables.update
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.create
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.update
  /// @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  core.List<Parameter>? list;

  /// This map parameter's parameters (must have keys; keys must be unique).
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.variables.create
  /// @mutable tagmanager.accounts.containers.workspaces.variables.update
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.create
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.update
  /// @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
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
  /// tagmanager.accounts.containers.workspaces.variables.create @mutable
  /// tagmanager.accounts.containers.workspaces.variables.update @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.create @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.update @mutable
  /// tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  /// Possible string values are:
  /// - "typeUnspecified"
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
  /// @mutable tagmanager.accounts.containers.workspaces.variables.create
  /// @mutable tagmanager.accounts.containers.workspaces.variables.update
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.create
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.update
  /// @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  core.String? value;

  Parameter({
    this.key,
    this.list,
    this.map,
    this.type,
    this.value,
  });

  Parameter.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          list: _json.containsKey('list')
              ? (_json['list'] as core.List)
                  .map((value) => Parameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          map: _json.containsKey('map')
              ? (_json['map'] as core.List)
                  .map((value) => Parameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
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

  PublishContainerVersionResponse.fromJson(core.Map _json)
      : this(
          compilerError: _json.containsKey('compilerError')
              ? _json['compilerError'] as core.bool
              : null,
          containerVersion: _json.containsKey('containerVersion')
              ? ContainerVersion.fromJson(_json['containerVersion']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compilerError != null) 'compilerError': compilerError!,
        if (containerVersion != null) 'containerVersion': containerVersion!,
      };
}

/// Response to quick previewing a workspace.
class QuickPreviewResponse {
  /// Were there compiler errors or not.
  core.bool? compilerError;

  /// The quick previewed container version.
  ContainerVersion? containerVersion;

  /// Whether quick previewing failed when syncing the workspace to the latest
  /// container version.
  SyncStatus? syncStatus;

  QuickPreviewResponse({
    this.compilerError,
    this.containerVersion,
    this.syncStatus,
  });

  QuickPreviewResponse.fromJson(core.Map _json)
      : this(
          compilerError: _json.containsKey('compilerError')
              ? _json['compilerError'] as core.bool
              : null,
          containerVersion: _json.containsKey('containerVersion')
              ? ContainerVersion.fromJson(_json['containerVersion']
                  as core.Map<core.String, core.dynamic>)
              : null,
          syncStatus: _json.containsKey('syncStatus')
              ? SyncStatus.fromJson(
                  _json['syncStatus'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compilerError != null) 'compilerError': compilerError!,
        if (containerVersion != null) 'containerVersion': containerVersion!,
        if (syncStatus != null) 'syncStatus': syncStatus!,
      };
}

/// The result of reverting a built-in variable in a workspace.
class RevertBuiltInVariableResponse {
  /// Whether the built-in variable is enabled after reversion.
  core.bool? enabled;

  RevertBuiltInVariableResponse({
    this.enabled,
  });

  RevertBuiltInVariableResponse.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// The result of reverting a client in a workspace.
class RevertClientResponse {
  /// Client as it appears in the latest container version since the last
  /// workspace synchronization operation.
  ///
  /// If no client is present, that means the client was deleted in the latest
  /// container version.
  Client? client;

  RevertClientResponse({
    this.client,
  });

  RevertClientResponse.fromJson(core.Map _json)
      : this(
          client: _json.containsKey('client')
              ? Client.fromJson(
                  _json['client'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (client != null) 'client': client!,
      };
}

/// The result of reverting folder changes in a workspace.
class RevertFolderResponse {
  /// Folder as it appears in the latest container version since the last
  /// workspace synchronization operation.
  ///
  /// If no folder is present, that means the folder was deleted in the latest
  /// container version.
  Folder? folder;

  RevertFolderResponse({
    this.folder,
  });

  RevertFolderResponse.fromJson(core.Map _json)
      : this(
          folder: _json.containsKey('folder')
              ? Folder.fromJson(
                  _json['folder'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (folder != null) 'folder': folder!,
      };
}

/// The result of reverting a tag in a workspace.
class RevertTagResponse {
  /// Tag as it appears in the latest container version since the last workspace
  /// synchronization operation.
  ///
  /// If no tag is present, that means the tag was deleted in the latest
  /// container version.
  Tag? tag;

  RevertTagResponse({
    this.tag,
  });

  RevertTagResponse.fromJson(core.Map _json)
      : this(
          tag: _json.containsKey('tag')
              ? Tag.fromJson(
                  _json['tag'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tag != null) 'tag': tag!,
      };
}

/// The result of reverting a template in a workspace.
class RevertTemplateResponse {
  /// Template as it appears in the latest container version since the last
  /// workspace synchronization operation.
  ///
  /// If no template is present, that means the template was deleted in the
  /// latest container version.
  CustomTemplate? template;

  RevertTemplateResponse({
    this.template,
  });

  RevertTemplateResponse.fromJson(core.Map _json)
      : this(
          template: _json.containsKey('template')
              ? CustomTemplate.fromJson(
                  _json['template'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (template != null) 'template': template!,
      };
}

/// The result of reverting a trigger in a workspace.
class RevertTriggerResponse {
  /// Trigger as it appears in the latest container version since the last
  /// workspace synchronization operation.
  ///
  /// If no trigger is present, that means the trigger was deleted in the latest
  /// container version.
  Trigger? trigger;

  RevertTriggerResponse({
    this.trigger,
  });

  RevertTriggerResponse.fromJson(core.Map _json)
      : this(
          trigger: _json.containsKey('trigger')
              ? Trigger.fromJson(
                  _json['trigger'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (trigger != null) 'trigger': trigger!,
      };
}

/// The result of reverting a variable in a workspace.
class RevertVariableResponse {
  /// Variable as it appears in the latest container version since the last
  /// workspace synchronization operation.
  ///
  /// If no variable is present, that means the variable was deleted in the
  /// latest container version.
  Variable? variable;

  RevertVariableResponse({
    this.variable,
  });

  RevertVariableResponse.fromJson(core.Map _json)
      : this(
          variable: _json.containsKey('variable')
              ? Variable.fromJson(
                  _json['variable'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (variable != null) 'variable': variable!,
      };
}

/// The result of reverting a zone in a workspace.
class RevertZoneResponse {
  /// Zone as it appears in the latest container version since the last
  /// workspace synchronization operation.
  ///
  /// If no zone is present, that means the zone was deleted in the latest
  /// container version.
  Zone? zone;

  RevertZoneResponse({
    this.zone,
  });

  RevertZoneResponse.fromJson(core.Map _json)
      : this(
          zone: _json.containsKey('zone')
              ? Zone.fromJson(
                  _json['zone'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (zone != null) 'zone': zone!,
      };
}

/// Represents a reference to atag that fires before another tag in order to set
/// up dependencies.
class SetupTag {
  /// If true, fire the main tag if and only if the setup tag fires
  /// successfully.
  ///
  /// If false, fire the main tag regardless of setup tag firing status.
  core.bool? stopOnSetupFailure;

  /// The name of the setup tag.
  core.String? tagName;

  SetupTag({
    this.stopOnSetupFailure,
    this.tagName,
  });

  SetupTag.fromJson(core.Map _json)
      : this(
          stopOnSetupFailure: _json.containsKey('stopOnSetupFailure')
              ? _json['stopOnSetupFailure'] as core.bool
              : null,
          tagName: _json.containsKey('tagName')
              ? _json['tagName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stopOnSetupFailure != null)
          'stopOnSetupFailure': stopOnSetupFailure!,
        if (tagName != null) 'tagName': tagName!,
      };
}

/// The status of a workspace after synchronization.
class SyncStatus {
  /// Synchornization operation detected a merge conflict.
  core.bool? mergeConflict;

  /// An error occurred during the synchronization operation.
  core.bool? syncError;

  SyncStatus({
    this.mergeConflict,
    this.syncError,
  });

  SyncStatus.fromJson(core.Map _json)
      : this(
          mergeConflict: _json.containsKey('mergeConflict')
              ? _json['mergeConflict'] as core.bool
              : null,
          syncError: _json.containsKey('syncError')
              ? _json['syncError'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mergeConflict != null) 'mergeConflict': mergeConflict!,
        if (syncError != null) 'syncError': syncError!,
      };
}

/// A response after synchronizing the workspace to the latest container
/// version.
class SyncWorkspaceResponse {
  /// The merge conflict after sync.
  ///
  /// If this field is not empty, the sync is still treated as successful. But a
  /// version cannot be created until all conflicts are resolved.
  core.List<MergeConflict>? mergeConflict;

  /// Indicates whether synchronization caused a merge conflict or sync error.
  SyncStatus? syncStatus;

  SyncWorkspaceResponse({
    this.mergeConflict,
    this.syncStatus,
  });

  SyncWorkspaceResponse.fromJson(core.Map _json)
      : this(
          mergeConflict: _json.containsKey('mergeConflict')
              ? (_json['mergeConflict'] as core.List)
                  .map((value) => MergeConflict.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          syncStatus: _json.containsKey('syncStatus')
              ? SyncStatus.fromJson(
                  _json['syncStatus'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mergeConflict != null) 'mergeConflict': mergeConflict!,
        if (syncStatus != null) 'syncStatus': syncStatus!,
      };
}

/// Represents a Google Tag Manager Tag.
class Tag {
  /// GTM Account ID.
  core.String? accountId;

  /// Blocking rule IDs.
  ///
  /// If any of the listed rules evaluate to true, the tag will not fire.
  /// @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  core.List<core.String>? blockingRuleId;

  /// Blocking trigger IDs.
  ///
  /// If any of the listed triggers evaluate to true, the tag will not fire.
  /// @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  core.List<core.String>? blockingTriggerId;

  /// Consent settings of a tag.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  TagConsentSetting? consentSettings;

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
  /// tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  core.List<core.String>? firingRuleId;

  /// Firing trigger IDs.
  ///
  /// A tag will fire when any of the listed triggers are true and all of its
  /// blockingTriggerIds (if any specified) are false. @mutable
  /// tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  core.List<core.String>? firingTriggerId;

  /// If set to true, this tag will only fire in the live environment (e.g. not
  /// in preview or debug mode).
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  core.bool? liveOnly;

  /// A map of key-value pairs of tag metadata to be included in the event data
  /// for tag monitoring.
  ///
  /// Notes: - This parameter must be type MAP. - Each parameter in the map are
  /// type TEMPLATE, however cannot contain variable references. @mutable
  /// tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  Parameter? monitoringMetadata;

  /// If non-empty, then the tag display name will be included in the monitoring
  /// metadata map using the key specified.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  core.String? monitoringMetadataTagNameKey;

  /// Tag display name.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  core.String? name;

  /// User notes on how to apply this tag in the container.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  core.String? notes;

  /// The tag's parameters.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  core.List<Parameter>? parameter;

  /// Parent folder id.
  core.String? parentFolderId;

  /// GTM Tag's API relative path.
  core.String? path;

  /// Indicates whether the tag is paused, which prevents the tag from firing.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  core.bool? paused;

  /// User defined numeric priority of the tag.
  ///
  /// Tags are fired asynchronously in order of priority. Tags with higher
  /// numeric value fire first. A tag's priority can be a positive or negative
  /// value. The default value is 0. @mutable
  /// tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  Parameter? priority;

  /// The end timestamp in milliseconds to schedule a tag.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  core.String? scheduleEndMs;

  /// The start timestamp in milliseconds to schedule a tag.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  core.String? scheduleStartMs;

  /// The list of setup tags.
  ///
  /// Currently we only allow one.
  core.List<SetupTag>? setupTag;

  /// Option to fire this tag.
  /// Possible string values are:
  /// - "tagFiringOptionUnspecified"
  /// - "unlimited" : Tag can be fired multiple times per event.
  /// - "oncePerEvent" : Tag can only be fired per event but can be fired
  /// multiple times per load (e.g., app load or page load).
  /// - "oncePerLoad" : Tag can only be fired per load (e.g., app load or page
  /// load).
  core.String? tagFiringOption;

  /// The Tag ID uniquely identifies the GTM Tag.
  core.String? tagId;

  /// Auto generated link to the tag manager UI
  core.String? tagManagerUrl;

  /// The list of teardown tags.
  ///
  /// Currently we only allow one.
  core.List<TeardownTag>? teardownTag;

  /// GTM Tag Type.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable
  /// tagmanager.accounts.containers.workspaces.tags.update
  core.String? type;

  /// GTM Workspace ID.
  core.String? workspaceId;

  Tag({
    this.accountId,
    this.blockingRuleId,
    this.blockingTriggerId,
    this.consentSettings,
    this.containerId,
    this.fingerprint,
    this.firingRuleId,
    this.firingTriggerId,
    this.liveOnly,
    this.monitoringMetadata,
    this.monitoringMetadataTagNameKey,
    this.name,
    this.notes,
    this.parameter,
    this.parentFolderId,
    this.path,
    this.paused,
    this.priority,
    this.scheduleEndMs,
    this.scheduleStartMs,
    this.setupTag,
    this.tagFiringOption,
    this.tagId,
    this.tagManagerUrl,
    this.teardownTag,
    this.type,
    this.workspaceId,
  });

  Tag.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          blockingRuleId: _json.containsKey('blockingRuleId')
              ? (_json['blockingRuleId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          blockingTriggerId: _json.containsKey('blockingTriggerId')
              ? (_json['blockingTriggerId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          consentSettings: _json.containsKey('consentSettings')
              ? TagConsentSetting.fromJson(_json['consentSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          containerId: _json.containsKey('containerId')
              ? _json['containerId'] as core.String
              : null,
          fingerprint: _json.containsKey('fingerprint')
              ? _json['fingerprint'] as core.String
              : null,
          firingRuleId: _json.containsKey('firingRuleId')
              ? (_json['firingRuleId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          firingTriggerId: _json.containsKey('firingTriggerId')
              ? (_json['firingTriggerId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          liveOnly: _json.containsKey('liveOnly')
              ? _json['liveOnly'] as core.bool
              : null,
          monitoringMetadata: _json.containsKey('monitoringMetadata')
              ? Parameter.fromJson(_json['monitoringMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          monitoringMetadataTagNameKey:
              _json.containsKey('monitoringMetadataTagNameKey')
                  ? _json['monitoringMetadataTagNameKey'] as core.String
                  : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          notes:
              _json.containsKey('notes') ? _json['notes'] as core.String : null,
          parameter: _json.containsKey('parameter')
              ? (_json['parameter'] as core.List)
                  .map((value) => Parameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          parentFolderId: _json.containsKey('parentFolderId')
              ? _json['parentFolderId'] as core.String
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          paused:
              _json.containsKey('paused') ? _json['paused'] as core.bool : null,
          priority: _json.containsKey('priority')
              ? Parameter.fromJson(
                  _json['priority'] as core.Map<core.String, core.dynamic>)
              : null,
          scheduleEndMs: _json.containsKey('scheduleEndMs')
              ? _json['scheduleEndMs'] as core.String
              : null,
          scheduleStartMs: _json.containsKey('scheduleStartMs')
              ? _json['scheduleStartMs'] as core.String
              : null,
          setupTag: _json.containsKey('setupTag')
              ? (_json['setupTag'] as core.List)
                  .map((value) => SetupTag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tagFiringOption: _json.containsKey('tagFiringOption')
              ? _json['tagFiringOption'] as core.String
              : null,
          tagId:
              _json.containsKey('tagId') ? _json['tagId'] as core.String : null,
          tagManagerUrl: _json.containsKey('tagManagerUrl')
              ? _json['tagManagerUrl'] as core.String
              : null,
          teardownTag: _json.containsKey('teardownTag')
              ? (_json['teardownTag'] as core.List)
                  .map((value) => TeardownTag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          workspaceId: _json.containsKey('workspaceId')
              ? _json['workspaceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (blockingRuleId != null) 'blockingRuleId': blockingRuleId!,
        if (blockingTriggerId != null) 'blockingTriggerId': blockingTriggerId!,
        if (consentSettings != null) 'consentSettings': consentSettings!,
        if (containerId != null) 'containerId': containerId!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (firingRuleId != null) 'firingRuleId': firingRuleId!,
        if (firingTriggerId != null) 'firingTriggerId': firingTriggerId!,
        if (liveOnly != null) 'liveOnly': liveOnly!,
        if (monitoringMetadata != null)
          'monitoringMetadata': monitoringMetadata!,
        if (monitoringMetadataTagNameKey != null)
          'monitoringMetadataTagNameKey': monitoringMetadataTagNameKey!,
        if (name != null) 'name': name!,
        if (notes != null) 'notes': notes!,
        if (parameter != null) 'parameter': parameter!,
        if (parentFolderId != null) 'parentFolderId': parentFolderId!,
        if (path != null) 'path': path!,
        if (paused != null) 'paused': paused!,
        if (priority != null) 'priority': priority!,
        if (scheduleEndMs != null) 'scheduleEndMs': scheduleEndMs!,
        if (scheduleStartMs != null) 'scheduleStartMs': scheduleStartMs!,
        if (setupTag != null) 'setupTag': setupTag!,
        if (tagFiringOption != null) 'tagFiringOption': tagFiringOption!,
        if (tagId != null) 'tagId': tagId!,
        if (tagManagerUrl != null) 'tagManagerUrl': tagManagerUrl!,
        if (teardownTag != null) 'teardownTag': teardownTag!,
        if (type != null) 'type': type!,
        if (workspaceId != null) 'workspaceId': workspaceId!,
      };
}

class TagConsentSetting {
  /// The tag's consent status.
  ///
  /// If set to NEEDED, the runtime will check that the consent types specified
  /// by the consent_type field have been granted.
  /// Possible string values are:
  /// - "notSet" : Default value where user has not specified any setting on it.
  /// - "notNeeded" : Tag doesn't require any additional consent settings.
  /// - "needed" : Tag requires additional consent settings.
  core.String? consentStatus;

  /// The type of consents to check for during tag firing if in the consent
  /// NEEDED state.
  ///
  /// This parameter must be of type LIST where each list item is of type
  /// STRING.
  Parameter? consentType;

  TagConsentSetting({
    this.consentStatus,
    this.consentType,
  });

  TagConsentSetting.fromJson(core.Map _json)
      : this(
          consentStatus: _json.containsKey('consentStatus')
              ? _json['consentStatus'] as core.String
              : null,
          consentType: _json.containsKey('consentType')
              ? Parameter.fromJson(
                  _json['consentType'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consentStatus != null) 'consentStatus': consentStatus!,
        if (consentType != null) 'consentType': consentType!,
      };
}

/// Represents a tag that fires after another tag in order to tear down
/// dependencies.
class TeardownTag {
  /// If true, fire the teardown tag if and only if the main tag fires
  /// successfully.
  ///
  /// If false, fire the teardown tag regardless of main tag firing status.
  core.bool? stopTeardownOnFailure;

  /// The name of the teardown tag.
  core.String? tagName;

  TeardownTag({
    this.stopTeardownOnFailure,
    this.tagName,
  });

  TeardownTag.fromJson(core.Map _json)
      : this(
          stopTeardownOnFailure: _json.containsKey('stopTeardownOnFailure')
              ? _json['stopTeardownOnFailure'] as core.bool
              : null,
          tagName: _json.containsKey('tagName')
              ? _json['tagName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stopTeardownOnFailure != null)
          'stopTeardownOnFailure': stopTeardownOnFailure!,
        if (tagName != null) 'tagName': tagName!,
      };
}

/// Represents a Google Tag Manager Trigger
class Trigger {
  /// GTM Account ID.
  core.String? accountId;

  /// Used in the case of auto event tracking.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.create
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.update
  core.List<Condition>? autoEventFilter;

  /// Whether or not we should only fire tags if the form submit or link click
  /// event is not cancelled by some other event handler (e.g. because of
  /// validation).
  ///
  /// Only valid for Form Submission and Link Click triggers. @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.create @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.update
  Parameter? checkValidation;

  /// GTM Container ID.
  core.String? containerId;

  /// A visibility trigger minimum continuous visible time (in milliseconds).
  ///
  /// Only valid for AMP Visibility trigger. @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.create @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.update
  Parameter? continuousTimeMinMilliseconds;

  /// Used in the case of custom event, which is fired iff all Conditions are
  /// true.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.create
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.update
  core.List<Condition>? customEventFilter;

  /// Name of the GTM event that is fired.
  ///
  /// Only valid for Timer triggers. @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.create @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.update
  Parameter? eventName;

  /// The trigger will only fire iff all Conditions are true.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.create
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.update
  core.List<Condition>? filter;

  /// The fingerprint of the GTM Trigger as computed at storage time.
  ///
  /// This value is recomputed whenever the trigger is modified.
  core.String? fingerprint;

  /// List of integer percentage values for scroll triggers.
  ///
  /// The trigger will fire when each percentage is reached when the view is
  /// scrolled horizontally. Only valid for AMP scroll triggers. @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.create @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.update
  Parameter? horizontalScrollPercentageList;

  /// Time between triggering recurring Timer Events (in milliseconds).
  ///
  /// Only valid for Timer triggers. @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.create @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.update
  Parameter? interval;

  /// Time between Timer Events to fire (in seconds).
  ///
  /// Only valid for AMP Timer trigger. @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.create @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.update
  Parameter? intervalSeconds;

  /// Limit of the number of GTM events this Timer Trigger will fire.
  ///
  /// If no limit is set, we will continue to fire GTM events until the user
  /// leaves the page. Only valid for Timer triggers. @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.create @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.update
  Parameter? limit;

  /// Max time to fire Timer Events (in seconds).
  ///
  /// Only valid for AMP Timer trigger. @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.create @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.update
  Parameter? maxTimerLengthSeconds;

  /// Trigger display name.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.create
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.update
  core.String? name;

  /// User notes on how to apply this trigger in the container.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.create
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.update
  core.String? notes;

  /// Additional parameters.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.create
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.update
  core.List<Parameter>? parameter;

  /// Parent folder id.
  core.String? parentFolderId;

  /// GTM Trigger's API relative path.
  core.String? path;

  /// A click trigger CSS selector (i.e. "a", "button" etc.).
  ///
  /// Only valid for AMP Click trigger. @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.create @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.update
  Parameter? selector;

  /// Auto generated link to the tag manager UI
  core.String? tagManagerUrl;

  /// A visibility trigger minimum total visible time (in milliseconds).
  ///
  /// Only valid for AMP Visibility trigger. @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.create @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.update
  Parameter? totalTimeMinMilliseconds;

  /// The Trigger ID uniquely identifies the GTM Trigger.
  core.String? triggerId;

  /// Defines the data layer event that causes this trigger.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.create
  /// @mutable tagmanager.accounts.containers.workspaces.triggers.update
  /// Possible string values are:
  /// - "eventTypeUnspecified"
  /// - "pageview"
  /// - "domReady"
  /// - "windowLoaded"
  /// - "customEvent"
  /// - "triggerGroup"
  /// - "init"
  /// - "consentInit"
  /// - "serverPageview"
  /// - "always"
  /// - "firebaseAppException"
  /// - "firebaseAppUpdate"
  /// - "firebaseCampaign"
  /// - "firebaseFirstOpen"
  /// - "firebaseInAppPurchase"
  /// - "firebaseNotificationDismiss"
  /// - "firebaseNotificationForeground"
  /// - "firebaseNotificationOpen"
  /// - "firebaseNotificationReceive"
  /// - "firebaseOsUpdate"
  /// - "firebaseSessionStart"
  /// - "firebaseUserEngagement"
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
  /// tagmanager.accounts.containers.workspaces.triggers.create @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.update
  Parameter? uniqueTriggerId;

  /// List of integer percentage values for scroll triggers.
  ///
  /// The trigger will fire when each percentage is reached when the view is
  /// scrolled vertically. Only valid for AMP scroll triggers. @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.create @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.update
  Parameter? verticalScrollPercentageList;

  /// A visibility trigger CSS selector (i.e. "#id").
  ///
  /// Only valid for AMP Visibility trigger. @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.create @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.update
  Parameter? visibilitySelector;

  /// A visibility trigger maximum percent visibility.
  ///
  /// Only valid for AMP Visibility trigger. @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.create @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.update
  Parameter? visiblePercentageMax;

  /// A visibility trigger minimum percent visibility.
  ///
  /// Only valid for AMP Visibility trigger. @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.create @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.update
  Parameter? visiblePercentageMin;

  /// Whether or not we should delay the form submissions or link opening until
  /// all of the tags have fired (by preventing the default action and later
  /// simulating the default action).
  ///
  /// Only valid for Form Submission and Link Click triggers. @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.create @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.update
  Parameter? waitForTags;

  /// How long to wait (in milliseconds) for tags to fire when 'waits_for_tags'
  /// above evaluates to true.
  ///
  /// Only valid for Form Submission and Link Click triggers. @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.create @mutable
  /// tagmanager.accounts.containers.workspaces.triggers.update
  Parameter? waitForTagsTimeout;

  /// GTM Workspace ID.
  core.String? workspaceId;

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
    this.notes,
    this.parameter,
    this.parentFolderId,
    this.path,
    this.selector,
    this.tagManagerUrl,
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
    this.workspaceId,
  });

  Trigger.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          autoEventFilter: _json.containsKey('autoEventFilter')
              ? (_json['autoEventFilter'] as core.List)
                  .map((value) => Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          checkValidation: _json.containsKey('checkValidation')
              ? Parameter.fromJson(_json['checkValidation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          containerId: _json.containsKey('containerId')
              ? _json['containerId'] as core.String
              : null,
          continuousTimeMinMilliseconds:
              _json.containsKey('continuousTimeMinMilliseconds')
                  ? Parameter.fromJson(_json['continuousTimeMinMilliseconds']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          customEventFilter: _json.containsKey('customEventFilter')
              ? (_json['customEventFilter'] as core.List)
                  .map((value) => Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          eventName: _json.containsKey('eventName')
              ? Parameter.fromJson(
                  _json['eventName'] as core.Map<core.String, core.dynamic>)
              : null,
          filter: _json.containsKey('filter')
              ? (_json['filter'] as core.List)
                  .map((value) => Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          fingerprint: _json.containsKey('fingerprint')
              ? _json['fingerprint'] as core.String
              : null,
          horizontalScrollPercentageList:
              _json.containsKey('horizontalScrollPercentageList')
                  ? Parameter.fromJson(_json['horizontalScrollPercentageList']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          interval: _json.containsKey('interval')
              ? Parameter.fromJson(
                  _json['interval'] as core.Map<core.String, core.dynamic>)
              : null,
          intervalSeconds: _json.containsKey('intervalSeconds')
              ? Parameter.fromJson(_json['intervalSeconds']
                  as core.Map<core.String, core.dynamic>)
              : null,
          limit: _json.containsKey('limit')
              ? Parameter.fromJson(
                  _json['limit'] as core.Map<core.String, core.dynamic>)
              : null,
          maxTimerLengthSeconds: _json.containsKey('maxTimerLengthSeconds')
              ? Parameter.fromJson(_json['maxTimerLengthSeconds']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          notes:
              _json.containsKey('notes') ? _json['notes'] as core.String : null,
          parameter: _json.containsKey('parameter')
              ? (_json['parameter'] as core.List)
                  .map((value) => Parameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          parentFolderId: _json.containsKey('parentFolderId')
              ? _json['parentFolderId'] as core.String
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          selector: _json.containsKey('selector')
              ? Parameter.fromJson(
                  _json['selector'] as core.Map<core.String, core.dynamic>)
              : null,
          tagManagerUrl: _json.containsKey('tagManagerUrl')
              ? _json['tagManagerUrl'] as core.String
              : null,
          totalTimeMinMilliseconds:
              _json.containsKey('totalTimeMinMilliseconds')
                  ? Parameter.fromJson(_json['totalTimeMinMilliseconds']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          triggerId: _json.containsKey('triggerId')
              ? _json['triggerId'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          uniqueTriggerId: _json.containsKey('uniqueTriggerId')
              ? Parameter.fromJson(_json['uniqueTriggerId']
                  as core.Map<core.String, core.dynamic>)
              : null,
          verticalScrollPercentageList:
              _json.containsKey('verticalScrollPercentageList')
                  ? Parameter.fromJson(_json['verticalScrollPercentageList']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          visibilitySelector: _json.containsKey('visibilitySelector')
              ? Parameter.fromJson(_json['visibilitySelector']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visiblePercentageMax: _json.containsKey('visiblePercentageMax')
              ? Parameter.fromJson(_json['visiblePercentageMax']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visiblePercentageMin: _json.containsKey('visiblePercentageMin')
              ? Parameter.fromJson(_json['visiblePercentageMin']
                  as core.Map<core.String, core.dynamic>)
              : null,
          waitForTags: _json.containsKey('waitForTags')
              ? Parameter.fromJson(
                  _json['waitForTags'] as core.Map<core.String, core.dynamic>)
              : null,
          waitForTagsTimeout: _json.containsKey('waitForTagsTimeout')
              ? Parameter.fromJson(_json['waitForTagsTimeout']
                  as core.Map<core.String, core.dynamic>)
              : null,
          workspaceId: _json.containsKey('workspaceId')
              ? _json['workspaceId'] as core.String
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
        if (notes != null) 'notes': notes!,
        if (parameter != null) 'parameter': parameter!,
        if (parentFolderId != null) 'parentFolderId': parentFolderId!,
        if (path != null) 'path': path!,
        if (selector != null) 'selector': selector!,
        if (tagManagerUrl != null) 'tagManagerUrl': tagManagerUrl!,
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
        if (workspaceId != null) 'workspaceId': workspaceId!,
      };
}

/// Represents a user's permissions to an account and its container.
class UserPermission {
  /// GTM Account access permissions.
  ///
  /// @mutable tagmanager.accounts.permissions.create @mutable
  /// tagmanager.accounts.permissions.update
  AccountAccess? accountAccess;

  /// The Account ID uniquely identifies the GTM Account.
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

  /// GTM UserPermission's API relative path.
  core.String? path;

  UserPermission({
    this.accountAccess,
    this.accountId,
    this.containerAccess,
    this.emailAddress,
    this.path,
  });

  UserPermission.fromJson(core.Map _json)
      : this(
          accountAccess: _json.containsKey('accountAccess')
              ? AccountAccess.fromJson(
                  _json['accountAccess'] as core.Map<core.String, core.dynamic>)
              : null,
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          containerAccess: _json.containsKey('containerAccess')
              ? (_json['containerAccess'] as core.List)
                  .map((value) => ContainerAccess.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          emailAddress: _json.containsKey('emailAddress')
              ? _json['emailAddress'] as core.String
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountAccess != null) 'accountAccess': accountAccess!,
        if (accountId != null) 'accountId': accountId!,
        if (containerAccess != null) 'containerAccess': containerAccess!,
        if (emailAddress != null) 'emailAddress': emailAddress!,
        if (path != null) 'path': path!,
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
  /// tagmanager.accounts.containers.workspaces.variables.create @mutable
  /// tagmanager.accounts.containers.workspaces.variables.update
  core.List<core.String>? disablingTriggerId;

  /// For mobile containers only: A list of trigger IDs for enabling conditional
  /// variables; the variable is enabled if one of the enabling triggers is true
  /// while all the disabling triggers are false.
  ///
  /// Treated as an unordered set. @mutable
  /// tagmanager.accounts.containers.workspaces.variables.create @mutable
  /// tagmanager.accounts.containers.workspaces.variables.update
  core.List<core.String>? enablingTriggerId;

  /// The fingerprint of the GTM Variable as computed at storage time.
  ///
  /// This value is recomputed whenever the variable is modified.
  core.String? fingerprint;

  /// Option to convert a variable value to other value.
  VariableFormatValue? formatValue;

  /// Variable display name.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.variables.create
  /// @mutable tagmanager.accounts.containers.workspaces.variables.update
  core.String? name;

  /// User notes on how to apply this variable in the container.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.variables.create
  /// @mutable tagmanager.accounts.containers.workspaces.variables.update
  core.String? notes;

  /// The variable's parameters.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.variables.create
  /// @mutable tagmanager.accounts.containers.workspaces.variables.update
  core.List<Parameter>? parameter;

  /// Parent folder id.
  core.String? parentFolderId;

  /// GTM Variable's API relative path.
  core.String? path;

  /// The end timestamp in milliseconds to schedule a variable.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.variables.create
  /// @mutable tagmanager.accounts.containers.workspaces.variables.update
  core.String? scheduleEndMs;

  /// The start timestamp in milliseconds to schedule a variable.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.variables.create
  /// @mutable tagmanager.accounts.containers.workspaces.variables.update
  core.String? scheduleStartMs;

  /// Auto generated link to the tag manager UI
  core.String? tagManagerUrl;

  /// GTM Variable Type.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.variables.create
  /// @mutable tagmanager.accounts.containers.workspaces.variables.update
  core.String? type;

  /// The Variable ID uniquely identifies the GTM Variable.
  core.String? variableId;

  /// GTM Workspace ID.
  core.String? workspaceId;

  Variable({
    this.accountId,
    this.containerId,
    this.disablingTriggerId,
    this.enablingTriggerId,
    this.fingerprint,
    this.formatValue,
    this.name,
    this.notes,
    this.parameter,
    this.parentFolderId,
    this.path,
    this.scheduleEndMs,
    this.scheduleStartMs,
    this.tagManagerUrl,
    this.type,
    this.variableId,
    this.workspaceId,
  });

  Variable.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          containerId: _json.containsKey('containerId')
              ? _json['containerId'] as core.String
              : null,
          disablingTriggerId: _json.containsKey('disablingTriggerId')
              ? (_json['disablingTriggerId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          enablingTriggerId: _json.containsKey('enablingTriggerId')
              ? (_json['enablingTriggerId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fingerprint: _json.containsKey('fingerprint')
              ? _json['fingerprint'] as core.String
              : null,
          formatValue: _json.containsKey('formatValue')
              ? VariableFormatValue.fromJson(
                  _json['formatValue'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          notes:
              _json.containsKey('notes') ? _json['notes'] as core.String : null,
          parameter: _json.containsKey('parameter')
              ? (_json['parameter'] as core.List)
                  .map((value) => Parameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          parentFolderId: _json.containsKey('parentFolderId')
              ? _json['parentFolderId'] as core.String
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          scheduleEndMs: _json.containsKey('scheduleEndMs')
              ? _json['scheduleEndMs'] as core.String
              : null,
          scheduleStartMs: _json.containsKey('scheduleStartMs')
              ? _json['scheduleStartMs'] as core.String
              : null,
          tagManagerUrl: _json.containsKey('tagManagerUrl')
              ? _json['tagManagerUrl'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          variableId: _json.containsKey('variableId')
              ? _json['variableId'] as core.String
              : null,
          workspaceId: _json.containsKey('workspaceId')
              ? _json['workspaceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (containerId != null) 'containerId': containerId!,
        if (disablingTriggerId != null)
          'disablingTriggerId': disablingTriggerId!,
        if (enablingTriggerId != null) 'enablingTriggerId': enablingTriggerId!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (formatValue != null) 'formatValue': formatValue!,
        if (name != null) 'name': name!,
        if (notes != null) 'notes': notes!,
        if (parameter != null) 'parameter': parameter!,
        if (parentFolderId != null) 'parentFolderId': parentFolderId!,
        if (path != null) 'path': path!,
        if (scheduleEndMs != null) 'scheduleEndMs': scheduleEndMs!,
        if (scheduleStartMs != null) 'scheduleStartMs': scheduleStartMs!,
        if (tagManagerUrl != null) 'tagManagerUrl': tagManagerUrl!,
        if (type != null) 'type': type!,
        if (variableId != null) 'variableId': variableId!,
        if (workspaceId != null) 'workspaceId': workspaceId!,
      };
}

class VariableFormatValue {
  /// The option to convert a string-type variable value to either lowercase or
  /// uppercase.
  /// Possible string values are:
  /// - "none"
  /// - "lowercase" : The option to convert a variable value to lowercase.
  /// - "uppercase" : The option to convert a variable value to uppercase.
  core.String? caseConversionType;

  /// The value to convert if a variable value is false.
  Parameter? convertFalseToValue;

  /// The value to convert if a variable value is null.
  Parameter? convertNullToValue;

  /// The value to convert if a variable value is true.
  Parameter? convertTrueToValue;

  /// The value to convert if a variable value is undefined.
  Parameter? convertUndefinedToValue;

  VariableFormatValue({
    this.caseConversionType,
    this.convertFalseToValue,
    this.convertNullToValue,
    this.convertTrueToValue,
    this.convertUndefinedToValue,
  });

  VariableFormatValue.fromJson(core.Map _json)
      : this(
          caseConversionType: _json.containsKey('caseConversionType')
              ? _json['caseConversionType'] as core.String
              : null,
          convertFalseToValue: _json.containsKey('convertFalseToValue')
              ? Parameter.fromJson(_json['convertFalseToValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          convertNullToValue: _json.containsKey('convertNullToValue')
              ? Parameter.fromJson(_json['convertNullToValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          convertTrueToValue: _json.containsKey('convertTrueToValue')
              ? Parameter.fromJson(_json['convertTrueToValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          convertUndefinedToValue: _json.containsKey('convertUndefinedToValue')
              ? Parameter.fromJson(_json['convertUndefinedToValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caseConversionType != null)
          'caseConversionType': caseConversionType!,
        if (convertFalseToValue != null)
          'convertFalseToValue': convertFalseToValue!,
        if (convertNullToValue != null)
          'convertNullToValue': convertNullToValue!,
        if (convertTrueToValue != null)
          'convertTrueToValue': convertTrueToValue!,
        if (convertUndefinedToValue != null)
          'convertUndefinedToValue': convertUndefinedToValue!,
      };
}

/// Represents a Google Tag Manager Container Workspace.
class Workspace {
  /// GTM Account ID.
  core.String? accountId;

  /// GTM Container ID.
  core.String? containerId;

  /// Workspace description.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.create @mutable
  /// tagmanager.accounts.containers.workspaces.update
  core.String? description;

  /// The fingerprint of the GTM Workspace as computed at storage time.
  ///
  /// This value is recomputed whenever the workspace is modified.
  core.String? fingerprint;

  /// Workspace display name.
  ///
  /// @mutable tagmanager.accounts.containers.workspaces.create @mutable
  /// tagmanager.accounts.containers.workspaces.update
  core.String? name;

  /// GTM Workspace's API relative path.
  core.String? path;

  /// Auto generated link to the tag manager UI
  core.String? tagManagerUrl;

  /// The Workspace ID uniquely identifies the GTM Workspace.
  core.String? workspaceId;

  Workspace({
    this.accountId,
    this.containerId,
    this.description,
    this.fingerprint,
    this.name,
    this.path,
    this.tagManagerUrl,
    this.workspaceId,
  });

  Workspace.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          containerId: _json.containsKey('containerId')
              ? _json['containerId'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          fingerprint: _json.containsKey('fingerprint')
              ? _json['fingerprint'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          tagManagerUrl: _json.containsKey('tagManagerUrl')
              ? _json['tagManagerUrl'] as core.String
              : null,
          workspaceId: _json.containsKey('workspaceId')
              ? _json['workspaceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (containerId != null) 'containerId': containerId!,
        if (description != null) 'description': description!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (name != null) 'name': name!,
        if (path != null) 'path': path!,
        if (tagManagerUrl != null) 'tagManagerUrl': tagManagerUrl!,
        if (workspaceId != null) 'workspaceId': workspaceId!,
      };
}

/// Represents a Google Tag Manager Zone's contents.
class Zone {
  /// GTM Account ID.
  core.String? accountId;

  /// This Zone's boundary.
  ZoneBoundary? boundary;

  /// Containers that are children of this Zone.
  core.List<ZoneChildContainer>? childContainer;

  /// GTM Container ID.
  core.String? containerId;

  /// The fingerprint of the GTM Zone as computed at storage time.
  ///
  /// This value is recomputed whenever the zone is modified.
  core.String? fingerprint;

  /// Zone display name.
  core.String? name;

  /// User notes on how to apply this zone in the container.
  core.String? notes;

  /// GTM Zone's API relative path.
  core.String? path;

  /// Auto generated link to the tag manager UI
  core.String? tagManagerUrl;

  /// This Zone's type restrictions.
  ZoneTypeRestriction? typeRestriction;

  /// GTM Workspace ID.
  core.String? workspaceId;

  /// The Zone ID uniquely identifies the GTM Zone.
  core.String? zoneId;

  Zone({
    this.accountId,
    this.boundary,
    this.childContainer,
    this.containerId,
    this.fingerprint,
    this.name,
    this.notes,
    this.path,
    this.tagManagerUrl,
    this.typeRestriction,
    this.workspaceId,
    this.zoneId,
  });

  Zone.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          boundary: _json.containsKey('boundary')
              ? ZoneBoundary.fromJson(
                  _json['boundary'] as core.Map<core.String, core.dynamic>)
              : null,
          childContainer: _json.containsKey('childContainer')
              ? (_json['childContainer'] as core.List)
                  .map((value) => ZoneChildContainer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          containerId: _json.containsKey('containerId')
              ? _json['containerId'] as core.String
              : null,
          fingerprint: _json.containsKey('fingerprint')
              ? _json['fingerprint'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          notes:
              _json.containsKey('notes') ? _json['notes'] as core.String : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          tagManagerUrl: _json.containsKey('tagManagerUrl')
              ? _json['tagManagerUrl'] as core.String
              : null,
          typeRestriction: _json.containsKey('typeRestriction')
              ? ZoneTypeRestriction.fromJson(_json['typeRestriction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          workspaceId: _json.containsKey('workspaceId')
              ? _json['workspaceId'] as core.String
              : null,
          zoneId: _json.containsKey('zoneId')
              ? _json['zoneId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (boundary != null) 'boundary': boundary!,
        if (childContainer != null) 'childContainer': childContainer!,
        if (containerId != null) 'containerId': containerId!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (name != null) 'name': name!,
        if (notes != null) 'notes': notes!,
        if (path != null) 'path': path!,
        if (tagManagerUrl != null) 'tagManagerUrl': tagManagerUrl!,
        if (typeRestriction != null) 'typeRestriction': typeRestriction!,
        if (workspaceId != null) 'workspaceId': workspaceId!,
        if (zoneId != null) 'zoneId': zoneId!,
      };
}

/// Represents a Zone's boundaries.
class ZoneBoundary {
  /// The conditions that, when conjoined, make up the boundary.
  core.List<Condition>? condition;

  /// Custom evaluation trigger IDs.
  ///
  /// A zone will evaluate its boundary conditions when any of the listed
  /// triggers are true.
  core.List<core.String>? customEvaluationTriggerId;

  ZoneBoundary({
    this.condition,
    this.customEvaluationTriggerId,
  });

  ZoneBoundary.fromJson(core.Map _json)
      : this(
          condition: _json.containsKey('condition')
              ? (_json['condition'] as core.List)
                  .map((value) => Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          customEvaluationTriggerId:
              _json.containsKey('customEvaluationTriggerId')
                  ? (_json['customEvaluationTriggerId'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (customEvaluationTriggerId != null)
          'customEvaluationTriggerId': customEvaluationTriggerId!,
      };
}

/// Represents a child container of a Zone.
class ZoneChildContainer {
  /// The zone's nickname for the child container.
  core.String? nickname;

  /// The child container's public id.
  core.String? publicId;

  ZoneChildContainer({
    this.nickname,
    this.publicId,
  });

  ZoneChildContainer.fromJson(core.Map _json)
      : this(
          nickname: _json.containsKey('nickname')
              ? _json['nickname'] as core.String
              : null,
          publicId: _json.containsKey('publicId')
              ? _json['publicId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nickname != null) 'nickname': nickname!,
        if (publicId != null) 'publicId': publicId!,
      };
}

/// Represents a Zone's type restrictions.
class ZoneTypeRestriction {
  /// True if type restrictions have been enabled for this Zone.
  core.bool? enable;

  /// List of type public ids that have been whitelisted for use in this Zone.
  core.List<core.String>? whitelistedTypeId;

  ZoneTypeRestriction({
    this.enable,
    this.whitelistedTypeId,
  });

  ZoneTypeRestriction.fromJson(core.Map _json)
      : this(
          enable:
              _json.containsKey('enable') ? _json['enable'] as core.bool : null,
          whitelistedTypeId: _json.containsKey('whitelistedTypeId')
              ? (_json['whitelistedTypeId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enable != null) 'enable': enable!,
        if (whitelistedTypeId != null) 'whitelistedTypeId': whitelistedTypeId!,
      };
}
