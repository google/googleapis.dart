// This is a generated file (see the discoveryapis_generator project).

library googleapis.tagmanager.v2;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client tagmanager/v2';

/// Accesses Tag Manager accounts and containers.
class TagmanagerApi {
  /// Delete your Google Tag Manager containers
  static const TagmanagerDeleteContainersScope =
      "https://www.googleapis.com/auth/tagmanager.delete.containers";

  /// Manage your Google Tag Manager container and its subcomponents, excluding
  /// versioning and publishing
  static const TagmanagerEditContainersScope =
      "https://www.googleapis.com/auth/tagmanager.edit.containers";

  /// Manage your Google Tag Manager container versions
  static const TagmanagerEditContainerversionsScope =
      "https://www.googleapis.com/auth/tagmanager.edit.containerversions";

  /// View and manage your Google Tag Manager accounts
  static const TagmanagerManageAccountsScope =
      "https://www.googleapis.com/auth/tagmanager.manage.accounts";

  /// Manage user permissions of your Google Tag Manager account and container
  static const TagmanagerManageUsersScope =
      "https://www.googleapis.com/auth/tagmanager.manage.users";

  /// Publish your Google Tag Manager container versions
  static const TagmanagerPublishScope =
      "https://www.googleapis.com/auth/tagmanager.publish";

  /// View your Google Tag Manager container and its subcomponents
  static const TagmanagerReadonlyScope =
      "https://www.googleapis.com/auth/tagmanager.readonly";

  final commons.ApiRequester _requester;

  AccountsResourceApi get accounts => new AccountsResourceApi(_requester);

  TagmanagerApi(http.Client client,
      {core.String rootUrl: "https://www.googleapis.com/",
      core.String servicePath: "tagmanager/v2/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class AccountsResourceApi {
  final commons.ApiRequester _requester;

  AccountsContainersResourceApi get containers =>
      new AccountsContainersResourceApi(_requester);
  AccountsUserPermissionsResourceApi get userPermissions =>
      new AccountsUserPermissionsResourceApi(_requester);

  AccountsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets a GTM Account.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Accounts's API relative path. Example: accounts/{account_id}
  ///
  /// Completes with a [Account].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Account> get(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Account.fromJson(data));
  }

  /// Lists all GTM Accounts that a user has access to.
  ///
  /// Request parameters:
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// Completes with a [ListAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAccountsResponse> list({core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'accounts';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListAccountsResponse.fromJson(data));
  }

  /// Updates a GTM Account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Accounts's API relative path. Example: accounts/{account_id}
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the account in storage.
  ///
  /// Completes with a [Account].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Account> update(Account request, core.String path,
      {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Account.fromJson(data));
  }
}

class AccountsContainersResourceApi {
  final commons.ApiRequester _requester;

  AccountsContainersEnvironmentsResourceApi get environments =>
      new AccountsContainersEnvironmentsResourceApi(_requester);
  AccountsContainersVersionHeadersResourceApi get versionHeaders =>
      new AccountsContainersVersionHeadersResourceApi(_requester);
  AccountsContainersVersionsResourceApi get versions =>
      new AccountsContainersVersionsResourceApi(_requester);
  AccountsContainersWorkspacesResourceApi get workspaces =>
      new AccountsContainersWorkspacesResourceApi(_requester);

  AccountsContainersResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Container.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Account's API relative path. Example:
  /// accounts/{account_id}.
  ///
  /// Completes with a [Container].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Container> create(Container request, core.String parent) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$parent') + '/containers';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Container.fromJson(data));
  }

  /// Deletes a Container.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Container's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets a Container.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Container's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}
  ///
  /// Completes with a [Container].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Container> get(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Container.fromJson(data));
  }

  /// Lists all Containers that belongs to a GTM Account.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Accounts's API relative path. Example:
  /// accounts/{account_id}.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// Completes with a [ListContainersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListContainersResponse> list(core.String parent,
      {core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariableReserved('$parent') + '/containers';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListContainersResponse.fromJson(data));
  }

  /// Updates a Container.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Container's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the container in storage.
  ///
  /// Completes with a [Container].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Container> update(Container request, core.String path,
      {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Container.fromJson(data));
  }
}

class AccountsContainersEnvironmentsResourceApi {
  final commons.ApiRequester _requester;

  AccountsContainersEnvironmentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a GTM Environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Container's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}
  ///
  /// Completes with a [Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Environment> create(Environment request, core.String parent) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$parent') + '/environments';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Environment.fromJson(data));
  }

  /// Deletes a GTM Environment.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Environment's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/environments/{environment_id}
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets a GTM Environment.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Environment's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/environments/{environment_id}
  ///
  /// Completes with a [Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Environment> get(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Environment.fromJson(data));
  }

  /// Lists all GTM Environments of a GTM Container.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Container's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// Completes with a [ListEnvironmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEnvironmentsResponse> list(core.String parent,
      {core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariableReserved('$parent') + '/environments';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListEnvironmentsResponse.fromJson(data));
  }

  /// Updates a GTM Environment. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Environment's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/environments/{environment_id}
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the environment in storage.
  ///
  /// Completes with a [Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Environment> patch(Environment request, core.String path,
      {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Environment.fromJson(data));
  }

  /// Re-generates the authorization code for a GTM Environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Environment's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/environments/{environment_id}
  ///
  /// Completes with a [Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Environment> reauthorize(Environment request, core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$path') + ':reauthorize';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Environment.fromJson(data));
  }

  /// Updates a GTM Environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Environment's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/environments/{environment_id}
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the environment in storage.
  ///
  /// Completes with a [Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Environment> update(Environment request, core.String path,
      {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Environment.fromJson(data));
  }
}

class AccountsContainersVersionHeadersResourceApi {
  final commons.ApiRequester _requester;

  AccountsContainersVersionHeadersResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest container version header
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Container's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}
  ///
  /// Completes with a [ContainerVersionHeader].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerVersionHeader> latest(core.String parent) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$parent') +
        '/version_headers:latest';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ContainerVersionHeader.fromJson(data));
  }

  /// Lists all Container Versions of a GTM Container.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Container's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}
  ///
  /// [includeDeleted] - Also retrieve deleted (archived) versions when true.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// Completes with a [ListContainerVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListContainerVersionsResponse> list(core.String parent,
      {core.bool includeDeleted, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (includeDeleted != null) {
      _queryParams["includeDeleted"] = ["${includeDeleted}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url =
        commons.Escaper.ecapeVariableReserved('$parent') + '/version_headers';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListContainerVersionsResponse.fromJson(data));
  }
}

class AccountsContainersVersionsResourceApi {
  final commons.ApiRequester _requester;

  AccountsContainersVersionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a Container Version.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM ContainerVersion's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/versions/{version_id}
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets a Container Version.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM ContainerVersion's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/versions/{version_id}
  ///
  /// [containerVersionId] - The GTM ContainerVersion ID. Specify published to
  /// retrieve the currently published version.
  ///
  /// Completes with a [ContainerVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerVersion> get(core.String path,
      {core.String containerVersionId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (containerVersionId != null) {
      _queryParams["containerVersionId"] = [containerVersionId];
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ContainerVersion.fromJson(data));
  }

  /// Gets the live (i.e. published) container version
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Container's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}
  ///
  /// Completes with a [ContainerVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerVersion> live(core.String parent) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$parent') + '/versions:live';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ContainerVersion.fromJson(data));
  }

  /// Publishes a Container Version.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM ContainerVersion's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/versions/{version_id}
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the container version in storage.
  ///
  /// Completes with a [PublishContainerVersionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PublishContainerVersionResponse> publish(core.String path,
      {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }

    _url = commons.Escaper.ecapeVariableReserved('$path') + ':publish';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new PublishContainerVersionResponse.fromJson(data));
  }

  /// Sets the latest version used for synchronization of workspaces when
  /// detecting conflicts and errors.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM ContainerVersion's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/versions/{version_id}
  ///
  /// Completes with a [ContainerVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerVersion> setLatest(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$path') + ':set_latest';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ContainerVersion.fromJson(data));
  }

  /// Undeletes a Container Version.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM ContainerVersion's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/versions/{version_id}
  ///
  /// Completes with a [ContainerVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerVersion> undelete(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$path') + ':undelete';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ContainerVersion.fromJson(data));
  }

  /// Updates a Container Version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM ContainerVersion's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/versions/{version_id}
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the container version in storage.
  ///
  /// Completes with a [ContainerVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerVersion> update(
      ContainerVersion request, core.String path,
      {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ContainerVersion.fromJson(data));
  }
}

class AccountsContainersWorkspacesResourceApi {
  final commons.ApiRequester _requester;

  AccountsContainersWorkspacesBuiltInVariablesResourceApi
      get builtInVariables =>
          new AccountsContainersWorkspacesBuiltInVariablesResourceApi(
              _requester);
  AccountsContainersWorkspacesFoldersResourceApi get folders =>
      new AccountsContainersWorkspacesFoldersResourceApi(_requester);
  AccountsContainersWorkspacesProposalResourceApi get proposal =>
      new AccountsContainersWorkspacesProposalResourceApi(_requester);
  AccountsContainersWorkspacesTagsResourceApi get tags =>
      new AccountsContainersWorkspacesTagsResourceApi(_requester);
  AccountsContainersWorkspacesTriggersResourceApi get triggers =>
      new AccountsContainersWorkspacesTriggersResourceApi(_requester);
  AccountsContainersWorkspacesVariablesResourceApi get variables =>
      new AccountsContainersWorkspacesVariablesResourceApi(_requester);

  AccountsContainersWorkspacesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Workspace.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM parent Container's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}
  ///
  /// Completes with a [Workspace].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Workspace> create(Workspace request, core.String parent) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$parent') + '/workspaces';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Workspace.fromJson(data));
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
  ///
  /// Completes with a [CreateContainerVersionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreateContainerVersionResponse> createVersion(
      CreateContainerVersionRequestVersionOptions request, core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$path') + ':create_version';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new CreateContainerVersionResponse.fromJson(data));
  }

  /// Deletes a Workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets a Workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  ///
  /// Completes with a [Workspace].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Workspace> get(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Workspace.fromJson(data));
  }

  /// Gets a GTM Workspace Proposal.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM workspace proposal's relative path: Example:
  /// accounts/{aid}/containers/{cid}/workspace/{wid}/workspace_proposal
  ///
  /// Completes with a [WorkspaceProposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkspaceProposal> getProposal(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WorkspaceProposal.fromJson(data));
  }

  /// Finds conflicting and modified entities in the workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  ///
  /// Completes with a [GetWorkspaceStatusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetWorkspaceStatusResponse> getStatus(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$path') + '/status';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GetWorkspaceStatusResponse.fromJson(data));
  }

  /// Lists all Workspaces that belong to a GTM Container.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM parent Container's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// Completes with a [ListWorkspacesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkspacesResponse> list(core.String parent,
      {core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariableReserved('$parent') + '/workspaces';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListWorkspacesResponse.fromJson(data));
  }

  /// Quick previews a workspace by creating a fake container version from all
  /// entities in the provided workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  ///
  /// Completes with a [QuickPreviewResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QuickPreviewResponse> quickPreview(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$path') + ':quick_preview';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new QuickPreviewResponse.fromJson(data));
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
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the entity_in_workspace in the merge conflict.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future resolveConflict(Entity request, core.String path,
      {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariableReserved('$path') + ':resolve_conflict';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Syncs a workspace to the latest container version by updating all
  /// unmodified workspace entities and displaying conflicts for modified
  /// entities.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  ///
  /// Completes with a [SyncWorkspaceResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SyncWorkspaceResponse> sync(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$path') + ':sync';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SyncWorkspaceResponse.fromJson(data));
  }

  /// Updates a Workspace.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the workspace in storage.
  ///
  /// Completes with a [Workspace].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Workspace> update(Workspace request, core.String path,
      {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Workspace.fromJson(data));
  }

  /// Updates a GTM Workspace Proposal.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM workspace proposal's relative path: Example:
  /// accounts/{aid}/containers/{cid}/workspace/{wid}/workspace_proposal
  ///
  /// Completes with a [WorkspaceProposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkspaceProposal> updateProposal(
      UpdateWorkspaceProposalRequest request, core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WorkspaceProposal.fromJson(data));
  }
}

class AccountsContainersWorkspacesBuiltInVariablesResourceApi {
  final commons.ApiRequester _requester;

  AccountsContainersWorkspacesBuiltInVariablesResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates one or more GTM Built-In Variables.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  ///
  /// [type] - The types of built-in variables to enable.
  ///
  /// Completes with a [CreateBuiltInVariableResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreateBuiltInVariableResponse> create(core.String parent,
      {core.List<core.String> type}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (type != null) {
      _queryParams["type"] = type;
    }

    _url = commons.Escaper.ecapeVariableReserved('$parent') +
        '/built_in_variables';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new CreateBuiltInVariableResponse.fromJson(data));
  }

  /// Deletes one or more GTM Built-In Variables.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM BuiltInVariable's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/built_in_variables
  ///
  /// [type] - The types of built-in variables to delete.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String path, {core.List<core.String> type}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (type != null) {
      _queryParams["type"] = type;
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Lists all the enabled Built-In Variables of a GTM Container.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// Completes with a [ListEnabledBuiltInVariablesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEnabledBuiltInVariablesResponse> list(core.String parent,
      {core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariableReserved('$parent') +
        '/built_in_variables';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListEnabledBuiltInVariablesResponse.fromJson(data));
  }

  /// Reverts changes to a GTM Built-In Variables in a GTM Workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM BuiltInVariable's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/built_in_variables
  ///
  /// [type] - The type of built-in variable to revert.
  /// Possible string values are:
  /// - "advertiserId"
  /// - "advertisingTrackingEnabled"
  /// - "ampBrowserLanguage"
  /// - "ampCanonicalHost"
  /// - "ampCanonicalPath"
  /// - "ampCanonicalUrl"
  /// - "ampClientId"
  /// - "ampClientMaxScrollX"
  /// - "ampClientMaxScrollY"
  /// - "ampClientScreenHeight"
  /// - "ampClientScreenWidth"
  /// - "ampClientScrollX"
  /// - "ampClientScrollY"
  /// - "ampClientTimestamp"
  /// - "ampClientTimezone"
  /// - "ampGtmEvent"
  /// - "ampPageDownloadTime"
  /// - "ampPageLoadTime"
  /// - "ampPageViewId"
  /// - "ampReferrer"
  /// - "ampTitle"
  /// - "ampTotalEngagedTime"
  /// - "appId"
  /// - "appName"
  /// - "appVersionCode"
  /// - "appVersionName"
  /// - "builtInVariableTypeUnspecified"
  /// - "clickClasses"
  /// - "clickElement"
  /// - "clickId"
  /// - "clickTarget"
  /// - "clickText"
  /// - "clickUrl"
  /// - "containerId"
  /// - "containerVersion"
  /// - "debugMode"
  /// - "deviceName"
  /// - "environmentName"
  /// - "errorLine"
  /// - "errorMessage"
  /// - "errorUrl"
  /// - "event"
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
  /// - "formClasses"
  /// - "formElement"
  /// - "formId"
  /// - "formTarget"
  /// - "formText"
  /// - "formUrl"
  /// - "historySource"
  /// - "htmlId"
  /// - "language"
  /// - "newHistoryFragment"
  /// - "newHistoryState"
  /// - "oldHistoryFragment"
  /// - "oldHistoryState"
  /// - "osVersion"
  /// - "pageHostname"
  /// - "pagePath"
  /// - "pageUrl"
  /// - "platform"
  /// - "randomNumber"
  /// - "referrer"
  /// - "resolution"
  /// - "sdkVersion"
  /// - "videoCurrentTime"
  /// - "videoDuration"
  /// - "videoElapsedTime"
  /// - "videoPercent"
  /// - "videoProvider"
  /// - "videoStatus"
  /// - "videoTitle"
  /// - "videoUrl"
  /// - "videoVisible"
  ///
  /// Completes with a [RevertBuiltInVariableResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RevertBuiltInVariableResponse> revert(core.String path,
      {core.String type}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (type != null) {
      _queryParams["type"] = [type];
    }

    _url = commons.Escaper.ecapeVariableReserved('$path') +
        '/built_in_variables:revert';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new RevertBuiltInVariableResponse.fromJson(data));
  }
}

class AccountsContainersWorkspacesFoldersResourceApi {
  final commons.ApiRequester _requester;

  AccountsContainersWorkspacesFoldersResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a GTM Folder.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  ///
  /// Completes with a [Folder].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Folder> create(Folder request, core.String parent) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$parent') + '/folders';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Folder.fromJson(data));
  }

  /// Deletes a GTM Folder.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Folder's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/folders/{folder_id}
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// List all entities in a GTM Folder.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Folder's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/folders/{folder_id}
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// Completes with a [FolderEntities].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FolderEntities> entities(core.String path,
      {core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariableReserved('$path') + ':entities';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new FolderEntities.fromJson(data));
  }

  /// Gets a GTM Folder.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Folder's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/folders/{folder_id}
  ///
  /// Completes with a [Folder].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Folder> get(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Folder.fromJson(data));
  }

  /// Lists all GTM Folders of a Container.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// Completes with a [ListFoldersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFoldersResponse> list(core.String parent,
      {core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariableReserved('$parent') + '/folders';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListFoldersResponse.fromJson(data));
  }

  /// Moves entities to a GTM Folder.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Folder's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/folders/{folder_id}
  ///
  /// [tagId] - The tags to be moved to the folder.
  ///
  /// [triggerId] - The triggers to be moved to the folder.
  ///
  /// [variableId] - The variables to be moved to the folder.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future moveEntitiesToFolder(Folder request, core.String path,
      {core.List<core.String> tagId,
      core.List<core.String> triggerId,
      core.List<core.String> variableId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (tagId != null) {
      _queryParams["tagId"] = tagId;
    }
    if (triggerId != null) {
      _queryParams["triggerId"] = triggerId;
    }
    if (variableId != null) {
      _queryParams["variableId"] = variableId;
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariableReserved('$path') +
        ':move_entities_to_folder';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Reverts changes to a GTM Folder in a GTM Workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Folder's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/folders/{folder_id}
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the tag in storage.
  ///
  /// Completes with a [RevertFolderResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RevertFolderResponse> revert(core.String path,
      {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }

    _url = commons.Escaper.ecapeVariableReserved('$path') + ':revert';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RevertFolderResponse.fromJson(data));
  }

  /// Updates a GTM Folder.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Folder's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/folders/{folder_id}
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the folder in storage.
  ///
  /// Completes with a [Folder].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Folder> update(Folder request, core.String path,
      {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Folder.fromJson(data));
  }
}

class AccountsContainersWorkspacesProposalResourceApi {
  final commons.ApiRequester _requester;

  AccountsContainersWorkspacesProposalResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a GTM Workspace Proposal.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{aid}/containers/{cid}/workspace/{wid}
  ///
  /// Completes with a [WorkspaceProposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkspaceProposal> create(
      CreateWorkspaceProposalRequest request, core.String parent) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$parent') + '/proposal';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WorkspaceProposal.fromJson(data));
  }

  /// Deletes a GTM Workspace Proposal.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM workspace proposal's relative path: Example:
  /// accounts/{aid}/containers/{cid}/workspace/{wid}/workspace_proposal
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }
}

class AccountsContainersWorkspacesTagsResourceApi {
  final commons.ApiRequester _requester;

  AccountsContainersWorkspacesTagsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a GTM Tag.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  ///
  /// Completes with a [Tag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tag> create(Tag request, core.String parent) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$parent') + '/tags';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Tag.fromJson(data));
  }

  /// Deletes a GTM Tag.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Tag's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/tags/{tag_id}
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets a GTM Tag.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Tag's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/tags/{tag_id}
  ///
  /// Completes with a [Tag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tag> get(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Tag.fromJson(data));
  }

  /// Lists all GTM Tags of a Container.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// Completes with a [ListTagsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTagsResponse> list(core.String parent,
      {core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariableReserved('$parent') + '/tags';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTagsResponse.fromJson(data));
  }

  /// Reverts changes to a GTM Tag in a GTM Workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Tag's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/tags/{tag_id}
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of thetag in storage.
  ///
  /// Completes with a [RevertTagResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RevertTagResponse> revert(core.String path,
      {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }

    _url = commons.Escaper.ecapeVariableReserved('$path') + ':revert';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RevertTagResponse.fromJson(data));
  }

  /// Updates a GTM Tag.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Tag's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/tags/{tag_id}
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the tag in storage.
  ///
  /// Completes with a [Tag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tag> update(Tag request, core.String path,
      {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Tag.fromJson(data));
  }
}

class AccountsContainersWorkspacesTriggersResourceApi {
  final commons.ApiRequester _requester;

  AccountsContainersWorkspacesTriggersResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a GTM Trigger.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspaces's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  ///
  /// Completes with a [Trigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Trigger> create(Trigger request, core.String parent) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$parent') + '/triggers';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Trigger.fromJson(data));
  }

  /// Deletes a GTM Trigger.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Trigger's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/triggers/{trigger_id}
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets a GTM Trigger.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Trigger's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/triggers/{trigger_id}
  ///
  /// Completes with a [Trigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Trigger> get(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Trigger.fromJson(data));
  }

  /// Lists all GTM Triggers of a Container.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspaces's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// Completes with a [ListTriggersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTriggersResponse> list(core.String parent,
      {core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariableReserved('$parent') + '/triggers';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTriggersResponse.fromJson(data));
  }

  /// Reverts changes to a GTM Trigger in a GTM Workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Trigger's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/triggers/{trigger_id}
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the trigger in storage.
  ///
  /// Completes with a [RevertTriggerResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RevertTriggerResponse> revert(core.String path,
      {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }

    _url = commons.Escaper.ecapeVariableReserved('$path') + ':revert';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RevertTriggerResponse.fromJson(data));
  }

  /// Updates a GTM Trigger.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Trigger's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/triggers/{trigger_id}
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the trigger in storage.
  ///
  /// Completes with a [Trigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Trigger> update(Trigger request, core.String path,
      {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Trigger.fromJson(data));
  }
}

class AccountsContainersWorkspacesVariablesResourceApi {
  final commons.ApiRequester _requester;

  AccountsContainersWorkspacesVariablesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a GTM Variable.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  ///
  /// Completes with a [Variable].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Variable> create(Variable request, core.String parent) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$parent') + '/variables';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Variable.fromJson(data));
  }

  /// Deletes a GTM Variable.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Variable's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/variables/{variable_id}
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets a GTM Variable.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Variable's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/variables/{variable_id}
  ///
  /// Completes with a [Variable].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Variable> get(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Variable.fromJson(data));
  }

  /// Lists all GTM Variables of a Container.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Workspace's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// Completes with a [ListVariablesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVariablesResponse> list(core.String parent,
      {core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariableReserved('$parent') + '/variables';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListVariablesResponse.fromJson(data));
  }

  /// Reverts changes to a GTM Variable in a GTM Workspace.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Variable's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/variables/{variable_id}
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the variable in storage.
  ///
  /// Completes with a [RevertVariableResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RevertVariableResponse> revert(core.String path,
      {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }

    _url = commons.Escaper.ecapeVariableReserved('$path') + ':revert';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RevertVariableResponse.fromJson(data));
  }

  /// Updates a GTM Variable.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM Variable's API relative path. Example:
  /// accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/variables/{variable_id}
  ///
  /// [fingerprint] - When provided, this fingerprint must match the fingerprint
  /// of the variable in storage.
  ///
  /// Completes with a [Variable].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Variable> update(Variable request, core.String path,
      {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Variable.fromJson(data));
  }
}

class AccountsUserPermissionsResourceApi {
  final commons.ApiRequester _requester;

  AccountsUserPermissionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a user's Account & Container access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Account's API relative path. Example: accounts/{account_id}
  ///
  /// Completes with a [UserPermission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserPermission> create(
      UserPermission request, core.String parent) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }

    _url =
        commons.Escaper.ecapeVariableReserved('$parent') + '/user_permissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UserPermission.fromJson(data));
  }

  /// Removes a user from the account, revoking access to it and all of its
  /// containers.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM UserPermission's API relative path. Example:
  /// accounts/{account_id}/user_permissions/{user_permission_id}
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets a user's Account & Container access.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM UserPermission's API relative path. Example:
  /// accounts/{account_id}/user_permissions/{user_permission_id}
  ///
  /// Completes with a [UserPermission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserPermission> get(core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UserPermission.fromJson(data));
  }

  /// List all users that have access to the account along with Account and
  /// Container user access granted to each of them.
  ///
  /// Request parameters:
  ///
  /// [parent] - GTM Accounts's API relative path. Example:
  /// accounts/{account_id}
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// Completes with a [ListUserPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUserPermissionsResponse> list(core.String parent,
      {core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url =
        commons.Escaper.ecapeVariableReserved('$parent') + '/user_permissions';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListUserPermissionsResponse.fromJson(data));
  }

  /// Updates a user's Account & Container access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [path] - GTM UserPermission's API relative path. Example:
  /// accounts/{account_id}/user_permissions/{user_permission_id}
  ///
  /// Completes with a [UserPermission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserPermission> update(
      UserPermission request, core.String path) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (path == null) {
      throw new core.ArgumentError("Parameter path is required.");
    }

    _url = commons.Escaper.ecapeVariableReserved('$path');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UserPermission.fromJson(data));
  }
}

/// Represents a Google Tag Manager Account.
class Account {
  /// The Account ID uniquely identifies the GTM Account.
  core.String accountId;

  /// The fingerprint of the GTM Account as computed at storage time. This value
  /// is recomputed whenever the account is modified.
  core.String fingerprint;

  /// Account display name.
  core.String name;

  /// GTM Account's API relative path.
  core.String path;

  /// Whether the account shares data anonymously with Google and others. This
  /// flag enables benchmarking by sharing your data in an anonymous form.
  /// Google will remove all identifiable information about your website,
  /// combine the data with hundreds of other anonymous sites and report
  /// aggregate trends in the benchmarking service.
  core.bool shareData;

  /// Auto generated link to the tag manager UI
  core.String tagManagerUrl;

  Account();

  Account.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("shareData")) {
      shareData = _json["shareData"];
    }
    if (_json.containsKey("tagManagerUrl")) {
      tagManagerUrl = _json["tagManagerUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (shareData != null) {
      _json["shareData"] = shareData;
    }
    if (tagManagerUrl != null) {
      _json["tagManagerUrl"] = tagManagerUrl;
    }
    return _json;
  }
}

/// Defines the Google Tag Manager Account access permissions.
class AccountAccess {
  /// Whether the user has no access, user access, or admin access to an
  /// account.
  /// Possible string values are:
  /// - "accountPermissionUnspecified"
  /// - "admin"
  /// - "noAccess"
  /// - "user"
  core.String permission;

  AccountAccess();

  AccountAccess.fromJson(core.Map _json) {
    if (_json.containsKey("permission")) {
      permission = _json["permission"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permission != null) {
      _json["permission"] = permission;
    }
    return _json;
  }
}

/// Built-in variables are a special category of variables that are pre-created
/// and non-customizable. They provide common functionality like accessing
/// propeties of the gtm data layer, monitoring clicks, or accessing elements of
/// a page URL.
class BuiltInVariable {
  /// GTM Account ID.
  core.String accountId;

  /// GTM Container ID.
  core.String containerId;

  /// Name of the built-in variable to be used to refer to the built-in
  /// variable.
  core.String name;

  /// GTM BuiltInVariable's API relative path.
  core.String path;

  /// Type of built-in variable.
  /// Possible string values are:
  /// - "advertiserId"
  /// - "advertisingTrackingEnabled"
  /// - "ampBrowserLanguage"
  /// - "ampCanonicalHost"
  /// - "ampCanonicalPath"
  /// - "ampCanonicalUrl"
  /// - "ampClientId"
  /// - "ampClientMaxScrollX"
  /// - "ampClientMaxScrollY"
  /// - "ampClientScreenHeight"
  /// - "ampClientScreenWidth"
  /// - "ampClientScrollX"
  /// - "ampClientScrollY"
  /// - "ampClientTimestamp"
  /// - "ampClientTimezone"
  /// - "ampGtmEvent"
  /// - "ampPageDownloadTime"
  /// - "ampPageLoadTime"
  /// - "ampPageViewId"
  /// - "ampReferrer"
  /// - "ampTitle"
  /// - "ampTotalEngagedTime"
  /// - "appId"
  /// - "appName"
  /// - "appVersionCode"
  /// - "appVersionName"
  /// - "builtInVariableTypeUnspecified"
  /// - "clickClasses"
  /// - "clickElement"
  /// - "clickId"
  /// - "clickTarget"
  /// - "clickText"
  /// - "clickUrl"
  /// - "containerId"
  /// - "containerVersion"
  /// - "debugMode"
  /// - "deviceName"
  /// - "environmentName"
  /// - "errorLine"
  /// - "errorMessage"
  /// - "errorUrl"
  /// - "event"
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
  /// - "formClasses"
  /// - "formElement"
  /// - "formId"
  /// - "formTarget"
  /// - "formText"
  /// - "formUrl"
  /// - "historySource"
  /// - "htmlId"
  /// - "language"
  /// - "newHistoryFragment"
  /// - "newHistoryState"
  /// - "oldHistoryFragment"
  /// - "oldHistoryState"
  /// - "osVersion"
  /// - "pageHostname"
  /// - "pagePath"
  /// - "pageUrl"
  /// - "platform"
  /// - "randomNumber"
  /// - "referrer"
  /// - "resolution"
  /// - "sdkVersion"
  /// - "videoCurrentTime"
  /// - "videoDuration"
  /// - "videoElapsedTime"
  /// - "videoPercent"
  /// - "videoProvider"
  /// - "videoStatus"
  /// - "videoTitle"
  /// - "videoUrl"
  /// - "videoVisible"
  core.String type;

  /// GTM Workspace ID.
  core.String workspaceId;

  BuiltInVariable();

  BuiltInVariable.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("workspaceId")) {
      workspaceId = _json["workspaceId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (workspaceId != null) {
      _json["workspaceId"] = workspaceId;
    }
    return _json;
  }
}

/// Represents a predicate.
class Condition {
  /// A list of named parameters (key/value), depending on the condition's type.
  /// Notes:
  /// - For binary operators, include parameters named arg0 and arg1 for
  /// specifying the left and right operands, respectively.
  /// - At this time, the left operand (arg0) must be a reference to a variable.
  /// - For case-insensitive Regex matching, include a boolean parameter named
  /// ignore_case that is set to true. If not specified or set to any other
  /// value, the matching will be case sensitive.
  /// - To negate an operator, include a boolean parameter named negate boolean
  /// parameter that is set to true.
  core.List<Parameter> parameter;

  /// The type of operator for this condition.
  /// Possible string values are:
  /// - "conditionTypeUnspecified"
  /// - "contains"
  /// - "cssSelector"
  /// - "endsWith"
  /// - "equals"
  /// - "greater"
  /// - "greaterOrEquals"
  /// - "less"
  /// - "lessOrEquals"
  /// - "matchRegex"
  /// - "startsWith"
  /// - "urlMatches"
  core.String type;

  Condition();

  Condition.fromJson(core.Map _json) {
    if (_json.containsKey("parameter")) {
      parameter = _json["parameter"]
          .map((value) => new Parameter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (parameter != null) {
      _json["parameter"] = parameter.map((value) => (value).toJson()).toList();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Represents a Google Tag Manager Container, which specifies the platform tags
/// will run on, manages workspaces, and retains container versions.
class Container {
  /// GTM Account ID.
  core.String accountId;

  /// The Container ID uniquely identifies the GTM Container.
  core.String containerId;

  /// List of domain names associated with the Container.
  core.List<core.String> domainName;

  /// The fingerprint of the GTM Container as computed at storage time. This
  /// value is recomputed whenever the account is modified.
  core.String fingerprint;

  /// Container display name.
  core.String name;

  /// Container Notes.
  core.String notes;

  /// GTM Container's API relative path.
  core.String path;

  /// Container Public ID.
  core.String publicId;

  /// Auto generated link to the tag manager UI
  core.String tagManagerUrl;

  /// List of Usage Contexts for the Container. Valid values include: web,
  /// android, or ios.
  core.List<core.String> usageContext;

  Container();

  Container.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("domainName")) {
      domainName = _json["domainName"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notes")) {
      notes = _json["notes"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("publicId")) {
      publicId = _json["publicId"];
    }
    if (_json.containsKey("tagManagerUrl")) {
      tagManagerUrl = _json["tagManagerUrl"];
    }
    if (_json.containsKey("usageContext")) {
      usageContext = _json["usageContext"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (domainName != null) {
      _json["domainName"] = domainName;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (notes != null) {
      _json["notes"] = notes;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (publicId != null) {
      _json["publicId"] = publicId;
    }
    if (tagManagerUrl != null) {
      _json["tagManagerUrl"] = tagManagerUrl;
    }
    if (usageContext != null) {
      _json["usageContext"] = usageContext;
    }
    return _json;
  }
}

/// Defines the Google Tag Manager Container access permissions.
class ContainerAccess {
  /// GTM Container ID.
  core.String containerId;

  /// List of Container permissions.
  /// Possible string values are:
  /// - "approve"
  /// - "containerPermissionUnspecified"
  /// - "edit"
  /// - "noAccess"
  /// - "publish"
  /// - "read"
  core.String permission;

  ContainerAccess();

  ContainerAccess.fromJson(core.Map _json) {
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("permission")) {
      permission = _json["permission"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (permission != null) {
      _json["permission"] = permission;
    }
    return _json;
  }
}

/// Represents a Google Tag Manager Container Version.
class ContainerVersion {
  /// GTM Account ID.
  core.String accountId;

  /// The built-in variables in the container that this version was taken from.
  core.List<BuiltInVariable> builtInVariable;

  /// The container that this version was taken from.
  Container container;

  /// GTM Container ID.
  core.String containerId;

  /// The Container Version ID uniquely identifies the GTM Container Version.
  core.String containerVersionId;

  /// A value of true indicates this container version has been deleted.
  core.bool deleted;

  /// Container version description.
  core.String description;

  /// The fingerprint of the GTM Container Version as computed at storage time.
  /// This value is recomputed whenever the container version is modified.
  core.String fingerprint;

  /// The folders in the container that this version was taken from.
  core.List<Folder> folder;

  /// Container version display name.
  core.String name;

  /// GTM ContainerVersions's API relative path.
  core.String path;

  /// The tags in the container that this version was taken from.
  core.List<Tag> tag;

  /// Auto generated link to the tag manager UI
  core.String tagManagerUrl;

  /// The triggers in the container that this version was taken from.
  core.List<Trigger> trigger;

  /// The variables in the container that this version was taken from.
  core.List<Variable> variable;

  /// The zones in the container that this version was taken from.
  core.List<Zone> zone;

  ContainerVersion();

  ContainerVersion.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("builtInVariable")) {
      builtInVariable = _json["builtInVariable"]
          .map((value) => new BuiltInVariable.fromJson(value))
          .toList();
    }
    if (_json.containsKey("container")) {
      container = new Container.fromJson(_json["container"]);
    }
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("containerVersionId")) {
      containerVersionId = _json["containerVersionId"];
    }
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("folder")) {
      folder =
          _json["folder"].map((value) => new Folder.fromJson(value)).toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("tag")) {
      tag = _json["tag"].map((value) => new Tag.fromJson(value)).toList();
    }
    if (_json.containsKey("tagManagerUrl")) {
      tagManagerUrl = _json["tagManagerUrl"];
    }
    if (_json.containsKey("trigger")) {
      trigger =
          _json["trigger"].map((value) => new Trigger.fromJson(value)).toList();
    }
    if (_json.containsKey("variable")) {
      variable = _json["variable"]
          .map((value) => new Variable.fromJson(value))
          .toList();
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"].map((value) => new Zone.fromJson(value)).toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (builtInVariable != null) {
      _json["builtInVariable"] =
          builtInVariable.map((value) => (value).toJson()).toList();
    }
    if (container != null) {
      _json["container"] = (container).toJson();
    }
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (containerVersionId != null) {
      _json["containerVersionId"] = containerVersionId;
    }
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (folder != null) {
      _json["folder"] = folder.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (tag != null) {
      _json["tag"] = tag.map((value) => (value).toJson()).toList();
    }
    if (tagManagerUrl != null) {
      _json["tagManagerUrl"] = tagManagerUrl;
    }
    if (trigger != null) {
      _json["trigger"] = trigger.map((value) => (value).toJson()).toList();
    }
    if (variable != null) {
      _json["variable"] = variable.map((value) => (value).toJson()).toList();
    }
    if (zone != null) {
      _json["zone"] = zone.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Represents a Google Tag Manager Container Version Header.
class ContainerVersionHeader {
  /// GTM Account ID.
  core.String accountId;

  /// GTM Container ID.
  core.String containerId;

  /// The Container Version ID uniquely identifies the GTM Container Version.
  core.String containerVersionId;

  /// A value of true indicates this container version has been deleted.
  core.bool deleted;

  /// Container version display name.
  core.String name;

  /// Number of macros in the container version.
  core.String numMacros;

  /// Number of rules in the container version.
  core.String numRules;

  /// Number of tags in the container version.
  core.String numTags;

  /// Number of triggers in the container version.
  core.String numTriggers;

  /// Number of variables in the container version.
  core.String numVariables;

  /// Number of zones in the container version.
  core.String numZones;

  /// GTM Container Versions's API relative path.
  core.String path;

  ContainerVersionHeader();

  ContainerVersionHeader.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("containerVersionId")) {
      containerVersionId = _json["containerVersionId"];
    }
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("numMacros")) {
      numMacros = _json["numMacros"];
    }
    if (_json.containsKey("numRules")) {
      numRules = _json["numRules"];
    }
    if (_json.containsKey("numTags")) {
      numTags = _json["numTags"];
    }
    if (_json.containsKey("numTriggers")) {
      numTriggers = _json["numTriggers"];
    }
    if (_json.containsKey("numVariables")) {
      numVariables = _json["numVariables"];
    }
    if (_json.containsKey("numZones")) {
      numZones = _json["numZones"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (containerVersionId != null) {
      _json["containerVersionId"] = containerVersionId;
    }
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (numMacros != null) {
      _json["numMacros"] = numMacros;
    }
    if (numRules != null) {
      _json["numRules"] = numRules;
    }
    if (numTags != null) {
      _json["numTags"] = numTags;
    }
    if (numTriggers != null) {
      _json["numTriggers"] = numTriggers;
    }
    if (numVariables != null) {
      _json["numVariables"] = numVariables;
    }
    if (numZones != null) {
      _json["numZones"] = numZones;
    }
    if (path != null) {
      _json["path"] = path;
    }
    return _json;
  }
}

class CreateBuiltInVariableResponse {
  /// List of created built-in variables.
  core.List<BuiltInVariable> builtInVariable;

  CreateBuiltInVariableResponse();

  CreateBuiltInVariableResponse.fromJson(core.Map _json) {
    if (_json.containsKey("builtInVariable")) {
      builtInVariable = _json["builtInVariable"]
          .map((value) => new BuiltInVariable.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (builtInVariable != null) {
      _json["builtInVariable"] =
          builtInVariable.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Options for new container versions.
class CreateContainerVersionRequestVersionOptions {
  /// The name of the container version to be created.
  core.String name;

  /// The notes of the container version to be created.
  core.String notes;

  CreateContainerVersionRequestVersionOptions();

  CreateContainerVersionRequestVersionOptions.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notes")) {
      notes = _json["notes"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (notes != null) {
      _json["notes"] = notes;
    }
    return _json;
  }
}

/// Create container versions response.
class CreateContainerVersionResponse {
  /// Compiler errors or not.
  core.bool compilerError;

  /// The container version created.
  ContainerVersion containerVersion;

  /// Auto generated workspace path created as a result of version creation.
  /// This field should only be populated if the created version was not a quick
  /// preview.
  core.String newWorkspacePath;

  /// Whether version creation failed when syncing the workspace to the latest
  /// container version.
  SyncStatus syncStatus;

  CreateContainerVersionResponse();

  CreateContainerVersionResponse.fromJson(core.Map _json) {
    if (_json.containsKey("compilerError")) {
      compilerError = _json["compilerError"];
    }
    if (_json.containsKey("containerVersion")) {
      containerVersion =
          new ContainerVersion.fromJson(_json["containerVersion"]);
    }
    if (_json.containsKey("newWorkspacePath")) {
      newWorkspacePath = _json["newWorkspacePath"];
    }
    if (_json.containsKey("syncStatus")) {
      syncStatus = new SyncStatus.fromJson(_json["syncStatus"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (compilerError != null) {
      _json["compilerError"] = compilerError;
    }
    if (containerVersion != null) {
      _json["containerVersion"] = (containerVersion).toJson();
    }
    if (newWorkspacePath != null) {
      _json["newWorkspacePath"] = newWorkspacePath;
    }
    if (syncStatus != null) {
      _json["syncStatus"] = (syncStatus).toJson();
    }
    return _json;
  }
}

/// Creates a workspace proposal to start a review of a workspace.
class CreateWorkspaceProposalRequest {
  /// If present, an initial comment to associate with the workspace proposal.
  WorkspaceProposalHistoryComment initialComment;

  /// List of users to review the workspace proposal.
  core.List<WorkspaceProposalUser> reviewers;

  CreateWorkspaceProposalRequest();

  CreateWorkspaceProposalRequest.fromJson(core.Map _json) {
    if (_json.containsKey("initialComment")) {
      initialComment =
          new WorkspaceProposalHistoryComment.fromJson(_json["initialComment"]);
    }
    if (_json.containsKey("reviewers")) {
      reviewers = _json["reviewers"]
          .map((value) => new WorkspaceProposalUser.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (initialComment != null) {
      _json["initialComment"] = (initialComment).toJson();
    }
    if (reviewers != null) {
      _json["reviewers"] = reviewers.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A workspace entity that may represent a tag, trigger, variable, or folder in
/// addition to its status in the workspace.
class Entity {
  /// Represents how the entity has been changed in the workspace.
  /// Possible string values are:
  /// - "added"
  /// - "changeStatusUnspecified"
  /// - "deleted"
  /// - "none"
  /// - "updated"
  core.String changeStatus;

  /// The Folder being represented by the entity.
  Folder folder;

  /// The tag being represented by the entity.
  Tag tag;

  /// The trigger being represented by the entity.
  Trigger trigger;

  /// The variable being represented by the entity.
  Variable variable;

  Entity();

  Entity.fromJson(core.Map _json) {
    if (_json.containsKey("changeStatus")) {
      changeStatus = _json["changeStatus"];
    }
    if (_json.containsKey("folder")) {
      folder = new Folder.fromJson(_json["folder"]);
    }
    if (_json.containsKey("tag")) {
      tag = new Tag.fromJson(_json["tag"]);
    }
    if (_json.containsKey("trigger")) {
      trigger = new Trigger.fromJson(_json["trigger"]);
    }
    if (_json.containsKey("variable")) {
      variable = new Variable.fromJson(_json["variable"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (changeStatus != null) {
      _json["changeStatus"] = changeStatus;
    }
    if (folder != null) {
      _json["folder"] = (folder).toJson();
    }
    if (tag != null) {
      _json["tag"] = (tag).toJson();
    }
    if (trigger != null) {
      _json["trigger"] = (trigger).toJson();
    }
    if (variable != null) {
      _json["variable"] = (variable).toJson();
    }
    return _json;
  }
}

/// Represents a Google Tag Manager Environment. Note that a user can create,
/// delete and update environments of type USER, but can only update the
/// enable_debug and url fields of environments of other types.
class Environment {
  /// GTM Account ID.
  core.String accountId;

  /// The environment authorization code.
  core.String authorizationCode;

  /// The last update time-stamp for the authorization code.
  Timestamp authorizationTimestamp;

  /// GTM Container ID.
  core.String containerId;

  /// Represents a link to a container version.
  core.String containerVersionId;

  /// The environment description. Can be set or changed only on USER type
  /// environments.
  core.String description;

  /// Whether or not to enable debug by default for the environment.
  core.bool enableDebug;

  /// GTM Environment ID uniquely identifies the GTM Environment.
  core.String environmentId;

  /// The fingerprint of the GTM environment as computed at storage time. This
  /// value is recomputed whenever the environment is modified.
  core.String fingerprint;

  /// The environment display name. Can be set or changed only on USER type
  /// environments.
  core.String name;

  /// GTM Environment's API relative path.
  core.String path;

  /// Auto generated link to the tag manager UI
  core.String tagManagerUrl;

  /// The type of this environment.
  /// Possible string values are:
  /// - "latest"
  /// - "live"
  /// - "user"
  /// - "workspace"
  core.String type;

  /// Default preview page url for the environment.
  core.String url;

  /// Represents a link to a quick preview of a workspace.
  core.String workspaceId;

  Environment();

  Environment.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("authorizationCode")) {
      authorizationCode = _json["authorizationCode"];
    }
    if (_json.containsKey("authorizationTimestamp")) {
      authorizationTimestamp =
          new Timestamp.fromJson(_json["authorizationTimestamp"]);
    }
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("containerVersionId")) {
      containerVersionId = _json["containerVersionId"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("enableDebug")) {
      enableDebug = _json["enableDebug"];
    }
    if (_json.containsKey("environmentId")) {
      environmentId = _json["environmentId"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("tagManagerUrl")) {
      tagManagerUrl = _json["tagManagerUrl"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
    if (_json.containsKey("workspaceId")) {
      workspaceId = _json["workspaceId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (authorizationCode != null) {
      _json["authorizationCode"] = authorizationCode;
    }
    if (authorizationTimestamp != null) {
      _json["authorizationTimestamp"] = (authorizationTimestamp).toJson();
    }
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (containerVersionId != null) {
      _json["containerVersionId"] = containerVersionId;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (enableDebug != null) {
      _json["enableDebug"] = enableDebug;
    }
    if (environmentId != null) {
      _json["environmentId"] = environmentId;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (tagManagerUrl != null) {
      _json["tagManagerUrl"] = tagManagerUrl;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (url != null) {
      _json["url"] = url;
    }
    if (workspaceId != null) {
      _json["workspaceId"] = workspaceId;
    }
    return _json;
  }
}

/// Represents a Google Tag Manager Folder.
class Folder {
  /// GTM Account ID.
  core.String accountId;

  /// GTM Container ID.
  core.String containerId;

  /// The fingerprint of the GTM Folder as computed at storage time. This value
  /// is recomputed whenever the folder is modified.
  core.String fingerprint;

  /// The Folder ID uniquely identifies the GTM Folder.
  core.String folderId;

  /// Folder display name.
  core.String name;

  /// User notes on how to apply this folder in the container.
  core.String notes;

  /// GTM Folder's API relative path.
  core.String path;

  /// Auto generated link to the tag manager UI
  core.String tagManagerUrl;

  /// GTM Workspace ID.
  core.String workspaceId;

  Folder();

  Folder.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("folderId")) {
      folderId = _json["folderId"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notes")) {
      notes = _json["notes"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("tagManagerUrl")) {
      tagManagerUrl = _json["tagManagerUrl"];
    }
    if (_json.containsKey("workspaceId")) {
      workspaceId = _json["workspaceId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (folderId != null) {
      _json["folderId"] = folderId;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (notes != null) {
      _json["notes"] = notes;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (tagManagerUrl != null) {
      _json["tagManagerUrl"] = tagManagerUrl;
    }
    if (workspaceId != null) {
      _json["workspaceId"] = workspaceId;
    }
    return _json;
  }
}

/// Represents a Google Tag Manager Folder's contents.
class FolderEntities {
  /// Continuation token for fetching the next page of results.
  core.String nextPageToken;

  /// The list of tags inside the folder.
  core.List<Tag> tag;

  /// The list of triggers inside the folder.
  core.List<Trigger> trigger;

  /// The list of variables inside the folder.
  core.List<Variable> variable;

  FolderEntities();

  FolderEntities.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("tag")) {
      tag = _json["tag"].map((value) => new Tag.fromJson(value)).toList();
    }
    if (_json.containsKey("trigger")) {
      trigger =
          _json["trigger"].map((value) => new Trigger.fromJson(value)).toList();
    }
    if (_json.containsKey("variable")) {
      variable = _json["variable"]
          .map((value) => new Variable.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (tag != null) {
      _json["tag"] = tag.map((value) => (value).toJson()).toList();
    }
    if (trigger != null) {
      _json["trigger"] = trigger.map((value) => (value).toJson()).toList();
    }
    if (variable != null) {
      _json["variable"] = variable.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The changes that have occurred in the workspace since the base container
/// version.
class GetWorkspaceStatusResponse {
  /// The merge conflict after sync.
  core.List<MergeConflict> mergeConflict;

  /// Entities that have been changed in the workspace.
  core.List<Entity> workspaceChange;

  GetWorkspaceStatusResponse();

  GetWorkspaceStatusResponse.fromJson(core.Map _json) {
    if (_json.containsKey("mergeConflict")) {
      mergeConflict = _json["mergeConflict"]
          .map((value) => new MergeConflict.fromJson(value))
          .toList();
    }
    if (_json.containsKey("workspaceChange")) {
      workspaceChange = _json["workspaceChange"]
          .map((value) => new Entity.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (mergeConflict != null) {
      _json["mergeConflict"] =
          mergeConflict.map((value) => (value).toJson()).toList();
    }
    if (workspaceChange != null) {
      _json["workspaceChange"] =
          workspaceChange.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// List Accounts Response.
class ListAccountsResponse {
  /// List of GTM Accounts that a user has access to.
  core.List<Account> account;

  /// Continuation token for fetching the next page of results.
  core.String nextPageToken;

  ListAccountsResponse();

  ListAccountsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("account")) {
      account =
          _json["account"].map((value) => new Account.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (account != null) {
      _json["account"] = account.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// List container versions response.
class ListContainerVersionsResponse {
  /// All container version headers of a GTM Container.
  core.List<ContainerVersionHeader> containerVersionHeader;

  /// Continuation token for fetching the next page of results.
  core.String nextPageToken;

  ListContainerVersionsResponse();

  ListContainerVersionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("containerVersionHeader")) {
      containerVersionHeader = _json["containerVersionHeader"]
          .map((value) => new ContainerVersionHeader.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (containerVersionHeader != null) {
      _json["containerVersionHeader"] =
          containerVersionHeader.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// List Containers Response.
class ListContainersResponse {
  /// All Containers of a GTM Account.
  core.List<Container> container;

  /// Continuation token for fetching the next page of results.
  core.String nextPageToken;

  ListContainersResponse();

  ListContainersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("container")) {
      container = _json["container"]
          .map((value) => new Container.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (container != null) {
      _json["container"] = container.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// A list of enabled built-in variables.
class ListEnabledBuiltInVariablesResponse {
  /// All GTM BuiltInVariables of a GTM container.
  core.List<BuiltInVariable> builtInVariable;

  /// Continuation token for fetching the next page of results.
  core.String nextPageToken;

  ListEnabledBuiltInVariablesResponse();

  ListEnabledBuiltInVariablesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("builtInVariable")) {
      builtInVariable = _json["builtInVariable"]
          .map((value) => new BuiltInVariable.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (builtInVariable != null) {
      _json["builtInVariable"] =
          builtInVariable.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// List Environments Response.
class ListEnvironmentsResponse {
  /// All Environments of a GTM Container.
  core.List<Environment> environment;

  /// Continuation token for fetching the next page of results.
  core.String nextPageToken;

  ListEnvironmentsResponse();

  ListEnvironmentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("environment")) {
      environment = _json["environment"]
          .map((value) => new Environment.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (environment != null) {
      _json["environment"] =
          environment.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// List Folders Response.
class ListFoldersResponse {
  /// All GTM Folders of a GTM Container.
  core.List<Folder> folder;

  /// Continuation token for fetching the next page of results.
  core.String nextPageToken;

  ListFoldersResponse();

  ListFoldersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("folder")) {
      folder =
          _json["folder"].map((value) => new Folder.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (folder != null) {
      _json["folder"] = folder.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// List Tags Response.
class ListTagsResponse {
  /// Continuation token for fetching the next page of results.
  core.String nextPageToken;

  /// All GTM Tags of a GTM Container.
  core.List<Tag> tag;

  ListTagsResponse();

  ListTagsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("tag")) {
      tag = _json["tag"].map((value) => new Tag.fromJson(value)).toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (tag != null) {
      _json["tag"] = tag.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// List triggers response.
class ListTriggersResponse {
  /// Continuation token for fetching the next page of results.
  core.String nextPageToken;

  /// All GTM Triggers of a GTM Container.
  core.List<Trigger> trigger;

  ListTriggersResponse();

  ListTriggersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("trigger")) {
      trigger =
          _json["trigger"].map((value) => new Trigger.fromJson(value)).toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (trigger != null) {
      _json["trigger"] = trigger.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// List user permissions response.
class ListUserPermissionsResponse {
  /// Continuation token for fetching the next page of results.
  core.String nextPageToken;

  /// All GTM UserPermissions of a GTM Account.
  core.List<UserPermission> userPermission;

  ListUserPermissionsResponse();

  ListUserPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("userPermission")) {
      userPermission = _json["userPermission"]
          .map((value) => new UserPermission.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (userPermission != null) {
      _json["userPermission"] =
          userPermission.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// List Variables Response.
class ListVariablesResponse {
  /// Continuation token for fetching the next page of results.
  core.String nextPageToken;

  /// All GTM Variables of a GTM Container.
  core.List<Variable> variable;

  ListVariablesResponse();

  ListVariablesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("variable")) {
      variable = _json["variable"]
          .map((value) => new Variable.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (variable != null) {
      _json["variable"] = variable.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A list of workspaces in a container.
class ListWorkspacesResponse {
  /// Continuation token for fetching the next page of results.
  core.String nextPageToken;

  /// All Workspaces of a GTM Container.
  core.List<Workspace> workspace;

  ListWorkspacesResponse();

  ListWorkspacesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("workspace")) {
      workspace = _json["workspace"]
          .map((value) => new Workspace.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (workspace != null) {
      _json["workspace"] = workspace.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Represents a merge conflict.
class MergeConflict {
  /// The base version entity (since the latest sync operation) that has
  /// conflicting changes compared to the workspace. If this field is missing,
  /// it means the workspace entity is deleted from the base version.
  Entity entityInBaseVersion;

  /// The workspace entity that has conflicting changes compared to the base
  /// version. If an entity is deleted in a workspace, it will still appear with
  /// a deleted change status.
  Entity entityInWorkspace;

  MergeConflict();

  MergeConflict.fromJson(core.Map _json) {
    if (_json.containsKey("entityInBaseVersion")) {
      entityInBaseVersion = new Entity.fromJson(_json["entityInBaseVersion"]);
    }
    if (_json.containsKey("entityInWorkspace")) {
      entityInWorkspace = new Entity.fromJson(_json["entityInWorkspace"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entityInBaseVersion != null) {
      _json["entityInBaseVersion"] = (entityInBaseVersion).toJson();
    }
    if (entityInWorkspace != null) {
      _json["entityInWorkspace"] = (entityInWorkspace).toJson();
    }
    return _json;
  }
}

/// Represents a Google Tag Manager Parameter.
class Parameter {
  /// The named key that uniquely identifies a parameter. Required for top-level
  /// parameters, as well as map values. Ignored for list values.
  core.String key;

  /// This list parameter's parameters (keys will be ignored).
  core.List<Parameter> list;

  /// This map parameter's parameters (must have keys; keys must be unique).
  core.List<Parameter> map;

  /// The parameter type. Valid values are:
  /// - boolean: The value represents a boolean, represented as 'true' or
  /// 'false'
  /// - integer: The value represents a 64-bit signed integer value, in base 10
  /// - list: A list of parameters should be specified
  /// - map: A map of parameters should be specified
  /// - template: The value represents any text; this can include variable
  /// references (even variable references that might return non-string types)
  /// Possible string values are:
  /// - "boolean"
  /// - "integer"
  /// - "list"
  /// - "map"
  /// - "template"
  /// - "typeUnspecified"
  core.String type;

  /// A parameter's value (may contain variable references such as
  /// "{{myVariable}}") as appropriate to the specified type.
  core.String value;

  Parameter();

  Parameter.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("list")) {
      list =
          _json["list"].map((value) => new Parameter.fromJson(value)).toList();
    }
    if (_json.containsKey("map")) {
      map = _json["map"].map((value) => new Parameter.fromJson(value)).toList();
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (list != null) {
      _json["list"] = list.map((value) => (value).toJson()).toList();
    }
    if (map != null) {
      _json["map"] = map.map((value) => (value).toJson()).toList();
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Publish container version response.
class PublishContainerVersionResponse {
  /// Compiler errors or not.
  core.bool compilerError;

  /// The container version created.
  ContainerVersion containerVersion;

  PublishContainerVersionResponse();

  PublishContainerVersionResponse.fromJson(core.Map _json) {
    if (_json.containsKey("compilerError")) {
      compilerError = _json["compilerError"];
    }
    if (_json.containsKey("containerVersion")) {
      containerVersion =
          new ContainerVersion.fromJson(_json["containerVersion"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (compilerError != null) {
      _json["compilerError"] = compilerError;
    }
    if (containerVersion != null) {
      _json["containerVersion"] = (containerVersion).toJson();
    }
    return _json;
  }
}

/// Response to quick previewing a workspace.
class QuickPreviewResponse {
  /// Were there compiler errors or not.
  core.bool compilerError;

  /// The quick previewed container version.
  ContainerVersion containerVersion;

  /// Whether quick previewing failed when syncing the workspace to the latest
  /// container version.
  SyncStatus syncStatus;

  QuickPreviewResponse();

  QuickPreviewResponse.fromJson(core.Map _json) {
    if (_json.containsKey("compilerError")) {
      compilerError = _json["compilerError"];
    }
    if (_json.containsKey("containerVersion")) {
      containerVersion =
          new ContainerVersion.fromJson(_json["containerVersion"]);
    }
    if (_json.containsKey("syncStatus")) {
      syncStatus = new SyncStatus.fromJson(_json["syncStatus"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (compilerError != null) {
      _json["compilerError"] = compilerError;
    }
    if (containerVersion != null) {
      _json["containerVersion"] = (containerVersion).toJson();
    }
    if (syncStatus != null) {
      _json["syncStatus"] = (syncStatus).toJson();
    }
    return _json;
  }
}

/// The result of reverting a built-in variable in a workspace.
class RevertBuiltInVariableResponse {
  /// Whether the built-in variable is enabled after reversion.
  core.bool enabled;

  RevertBuiltInVariableResponse();

  RevertBuiltInVariableResponse.fromJson(core.Map _json) {
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    return _json;
  }
}

/// The result of reverting folder changes in a workspace.
class RevertFolderResponse {
  /// Folder as it appears in the latest container version since the last
  /// workspace synchronization operation. If no folder is present, that means
  /// the folder was deleted in the latest container version.
  Folder folder;

  RevertFolderResponse();

  RevertFolderResponse.fromJson(core.Map _json) {
    if (_json.containsKey("folder")) {
      folder = new Folder.fromJson(_json["folder"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (folder != null) {
      _json["folder"] = (folder).toJson();
    }
    return _json;
  }
}

/// The result of reverting a tag in a workspace.
class RevertTagResponse {
  /// Tag as it appears in the latest container version since the last workspace
  /// synchronization operation. If no tag is present, that means the tag was
  /// deleted in the latest container version.
  Tag tag;

  RevertTagResponse();

  RevertTagResponse.fromJson(core.Map _json) {
    if (_json.containsKey("tag")) {
      tag = new Tag.fromJson(_json["tag"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (tag != null) {
      _json["tag"] = (tag).toJson();
    }
    return _json;
  }
}

/// The result of reverting a trigger in a workspace.
class RevertTriggerResponse {
  /// Trigger as it appears in the latest container version since the last
  /// workspace synchronization operation. If no trigger is present, that means
  /// the trigger was deleted in the latest container version.
  Trigger trigger;

  RevertTriggerResponse();

  RevertTriggerResponse.fromJson(core.Map _json) {
    if (_json.containsKey("trigger")) {
      trigger = new Trigger.fromJson(_json["trigger"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (trigger != null) {
      _json["trigger"] = (trigger).toJson();
    }
    return _json;
  }
}

/// The result of reverting a variable in a workspace.
class RevertVariableResponse {
  /// Variable as it appears in the latest container version since the last
  /// workspace synchronization operation. If no variable is present, that means
  /// the variable was deleted in the latest container version.
  Variable variable;

  RevertVariableResponse();

  RevertVariableResponse.fromJson(core.Map _json) {
    if (_json.containsKey("variable")) {
      variable = new Variable.fromJson(_json["variable"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (variable != null) {
      _json["variable"] = (variable).toJson();
    }
    return _json;
  }
}

/// Represents a reference to atag that fires before another tag in order to set
/// up dependencies.
class SetupTag {
  /// If true, fire the main tag if and only if the setup tag fires
  /// successfully. If false, fire the main tag regardless of setup tag firing
  /// status.
  core.bool stopOnSetupFailure;

  /// The name of the setup tag.
  core.String tagName;

  SetupTag();

  SetupTag.fromJson(core.Map _json) {
    if (_json.containsKey("stopOnSetupFailure")) {
      stopOnSetupFailure = _json["stopOnSetupFailure"];
    }
    if (_json.containsKey("tagName")) {
      tagName = _json["tagName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (stopOnSetupFailure != null) {
      _json["stopOnSetupFailure"] = stopOnSetupFailure;
    }
    if (tagName != null) {
      _json["tagName"] = tagName;
    }
    return _json;
  }
}

/// The status of a workspace after synchronization.
class SyncStatus {
  /// Synchornization operation detected a merge conflict.
  core.bool mergeConflict;

  /// An error occurred during the synchronization operation.
  core.bool syncError;

  SyncStatus();

  SyncStatus.fromJson(core.Map _json) {
    if (_json.containsKey("mergeConflict")) {
      mergeConflict = _json["mergeConflict"];
    }
    if (_json.containsKey("syncError")) {
      syncError = _json["syncError"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (mergeConflict != null) {
      _json["mergeConflict"] = mergeConflict;
    }
    if (syncError != null) {
      _json["syncError"] = syncError;
    }
    return _json;
  }
}

/// A response after synchronizing the workspace to the latest container
/// version.
class SyncWorkspaceResponse {
  /// The merge conflict after sync. If this field is not empty, the sync is
  /// still treated as successful. But a version cannot be created until all
  /// conflicts are resolved.
  core.List<MergeConflict> mergeConflict;

  /// Indicates whether synchronization caused a merge conflict or sync error.
  SyncStatus syncStatus;

  SyncWorkspaceResponse();

  SyncWorkspaceResponse.fromJson(core.Map _json) {
    if (_json.containsKey("mergeConflict")) {
      mergeConflict = _json["mergeConflict"]
          .map((value) => new MergeConflict.fromJson(value))
          .toList();
    }
    if (_json.containsKey("syncStatus")) {
      syncStatus = new SyncStatus.fromJson(_json["syncStatus"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (mergeConflict != null) {
      _json["mergeConflict"] =
          mergeConflict.map((value) => (value).toJson()).toList();
    }
    if (syncStatus != null) {
      _json["syncStatus"] = (syncStatus).toJson();
    }
    return _json;
  }
}

/// Represents a Google Tag Manager Tag.
class Tag {
  /// GTM Account ID.
  core.String accountId;

  /// Blocking rule IDs. If any of the listed rules evaluate to true, the tag
  /// will not fire.
  core.List<core.String> blockingRuleId;

  /// Blocking trigger IDs. If any of the listed triggers evaluate to true, the
  /// tag will not fire.
  core.List<core.String> blockingTriggerId;

  /// GTM Container ID.
  core.String containerId;

  /// The fingerprint of the GTM Tag as computed at storage time. This value is
  /// recomputed whenever the tag is modified.
  core.String fingerprint;

  /// Firing rule IDs. A tag will fire when any of the listed rules are true and
  /// all of its blockingRuleIds (if any specified) are false.
  core.List<core.String> firingRuleId;

  /// Firing trigger IDs. A tag will fire when any of the listed triggers are
  /// true and all of its blockingTriggerIds (if any specified) are false.
  core.List<core.String> firingTriggerId;

  /// If set to true, this tag will only fire in the live environment (e.g. not
  /// in preview or debug mode).
  core.bool liveOnly;

  /// Tag display name.
  core.String name;

  /// User notes on how to apply this tag in the container.
  core.String notes;

  /// The tag's parameters.
  core.List<Parameter> parameter;

  /// Parent folder id.
  core.String parentFolderId;

  /// GTM Tag's API relative path.
  core.String path;

  /// User defined numeric priority of the tag. Tags are fired asynchronously in
  /// order of priority. Tags with higher numeric value fire first. A tag's
  /// priority can be a positive or negative value. The default value is 0.
  Parameter priority;

  /// The end timestamp in milliseconds to schedule a tag.
  core.String scheduleEndMs;

  /// The start timestamp in milliseconds to schedule a tag.
  core.String scheduleStartMs;

  /// The list of setup tags. Currently we only allow one.
  core.List<SetupTag> setupTag;

  /// Option to fire this tag.
  /// Possible string values are:
  /// - "oncePerEvent"
  /// - "oncePerLoad"
  /// - "tagFiringOptionUnspecified"
  /// - "unlimited"
  core.String tagFiringOption;

  /// The Tag ID uniquely identifies the GTM Tag.
  core.String tagId;

  /// Auto generated link to the tag manager UI
  core.String tagManagerUrl;

  /// The list of teardown tags. Currently we only allow one.
  core.List<TeardownTag> teardownTag;

  /// GTM Tag Type.
  core.String type;

  /// GTM Workspace ID.
  core.String workspaceId;

  Tag();

  Tag.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("blockingRuleId")) {
      blockingRuleId = _json["blockingRuleId"];
    }
    if (_json.containsKey("blockingTriggerId")) {
      blockingTriggerId = _json["blockingTriggerId"];
    }
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("firingRuleId")) {
      firingRuleId = _json["firingRuleId"];
    }
    if (_json.containsKey("firingTriggerId")) {
      firingTriggerId = _json["firingTriggerId"];
    }
    if (_json.containsKey("liveOnly")) {
      liveOnly = _json["liveOnly"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notes")) {
      notes = _json["notes"];
    }
    if (_json.containsKey("parameter")) {
      parameter = _json["parameter"]
          .map((value) => new Parameter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("parentFolderId")) {
      parentFolderId = _json["parentFolderId"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("priority")) {
      priority = new Parameter.fromJson(_json["priority"]);
    }
    if (_json.containsKey("scheduleEndMs")) {
      scheduleEndMs = _json["scheduleEndMs"];
    }
    if (_json.containsKey("scheduleStartMs")) {
      scheduleStartMs = _json["scheduleStartMs"];
    }
    if (_json.containsKey("setupTag")) {
      setupTag = _json["setupTag"]
          .map((value) => new SetupTag.fromJson(value))
          .toList();
    }
    if (_json.containsKey("tagFiringOption")) {
      tagFiringOption = _json["tagFiringOption"];
    }
    if (_json.containsKey("tagId")) {
      tagId = _json["tagId"];
    }
    if (_json.containsKey("tagManagerUrl")) {
      tagManagerUrl = _json["tagManagerUrl"];
    }
    if (_json.containsKey("teardownTag")) {
      teardownTag = _json["teardownTag"]
          .map((value) => new TeardownTag.fromJson(value))
          .toList();
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("workspaceId")) {
      workspaceId = _json["workspaceId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (blockingRuleId != null) {
      _json["blockingRuleId"] = blockingRuleId;
    }
    if (blockingTriggerId != null) {
      _json["blockingTriggerId"] = blockingTriggerId;
    }
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (firingRuleId != null) {
      _json["firingRuleId"] = firingRuleId;
    }
    if (firingTriggerId != null) {
      _json["firingTriggerId"] = firingTriggerId;
    }
    if (liveOnly != null) {
      _json["liveOnly"] = liveOnly;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (notes != null) {
      _json["notes"] = notes;
    }
    if (parameter != null) {
      _json["parameter"] = parameter.map((value) => (value).toJson()).toList();
    }
    if (parentFolderId != null) {
      _json["parentFolderId"] = parentFolderId;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (priority != null) {
      _json["priority"] = (priority).toJson();
    }
    if (scheduleEndMs != null) {
      _json["scheduleEndMs"] = scheduleEndMs;
    }
    if (scheduleStartMs != null) {
      _json["scheduleStartMs"] = scheduleStartMs;
    }
    if (setupTag != null) {
      _json["setupTag"] = setupTag.map((value) => (value).toJson()).toList();
    }
    if (tagFiringOption != null) {
      _json["tagFiringOption"] = tagFiringOption;
    }
    if (tagId != null) {
      _json["tagId"] = tagId;
    }
    if (tagManagerUrl != null) {
      _json["tagManagerUrl"] = tagManagerUrl;
    }
    if (teardownTag != null) {
      _json["teardownTag"] =
          teardownTag.map((value) => (value).toJson()).toList();
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (workspaceId != null) {
      _json["workspaceId"] = workspaceId;
    }
    return _json;
  }
}

/// Represents a tag that fires after another tag in order to tear down
/// dependencies.
class TeardownTag {
  /// If true, fire the teardown tag if and only if the main tag fires
  /// successfully. If false, fire the teardown tag regardless of main tag
  /// firing status.
  core.bool stopTeardownOnFailure;

  /// The name of the teardown tag.
  core.String tagName;

  TeardownTag();

  TeardownTag.fromJson(core.Map _json) {
    if (_json.containsKey("stopTeardownOnFailure")) {
      stopTeardownOnFailure = _json["stopTeardownOnFailure"];
    }
    if (_json.containsKey("tagName")) {
      tagName = _json["tagName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (stopTeardownOnFailure != null) {
      _json["stopTeardownOnFailure"] = stopTeardownOnFailure;
    }
    if (tagName != null) {
      _json["tagName"] = tagName;
    }
    return _json;
  }
}

/// A Timestamp represents a point in time independent of any time zone or
/// calendar, represented as seconds and fractions of seconds at nanosecond
/// resolution in UTC Epoch time. It is encoded using the Proleptic Gregorian
/// Calendar which extends the Gregorian calendar backwards to year one. It is
/// encoded assuming all minutes are 60 seconds long, i.e. leap seconds are
/// "smeared" so that no leap second table is needed for interpretation. Range
/// is from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z. By
/// restricting to that range, we ensure that we can convert to and from RFC
/// 3339 date strings. See
/// [https://www.ietf.org/rfc/rfc3339.txt](https://www.ietf.org/rfc/rfc3339.txt).
///
/// # Examples
///
/// Example 1: Compute Timestamp from POSIX `time()`.
///
/// Timestamp timestamp; timestamp.set_seconds(time(NULL));
/// timestamp.set_nanos(0);
///
/// Example 2: Compute Timestamp from POSIX `gettimeofday()`.
///
/// struct timeval tv; gettimeofday(&tv, NULL);
///
/// Timestamp timestamp; timestamp.set_seconds(tv.tv_sec);
/// timestamp.set_nanos(tv.tv_usec * 1000);
///
/// Example 3: Compute Timestamp from Win32 `GetSystemTimeAsFileTime()`.
///
/// FILETIME ft; GetSystemTimeAsFileTime(&ft); UINT64 ticks =
/// (((UINT64)ft.dwHighDateTime) << 32) | ft.dwLowDateTime;
///
/// // A Windows tick is 100 nanoseconds. Windows epoch 1601-01-01T00:00:00Z //
/// is 11644473600 seconds before Unix epoch 1970-01-01T00:00:00Z. Timestamp
/// timestamp; timestamp.set_seconds((INT64) ((ticks / 10000000) -
/// 11644473600LL)); timestamp.set_nanos((INT32) ((ticks % 10000000) * 100));
///
/// Example 4: Compute Timestamp from Java `System.currentTimeMillis()`.
///
/// long millis = System.currentTimeMillis();
///
/// Timestamp timestamp = Timestamp.newBuilder().setSeconds(millis / 1000)
/// .setNanos((int) ((millis % 1000) * 1000000)).build();
///
///
///
/// Example 5: Compute Timestamp from current time in Python.
///
/// timestamp = Timestamp() timestamp.GetCurrentTime()
///
/// # JSON Mapping
///
/// In JSON format, the Timestamp type is encoded as a string in the [RFC
/// 3339](https://www.ietf.org/rfc/rfc3339.txt) format. That is, the format is
/// "{year}-{month}-{day}T{hour}:{min}:{sec}[.{frac_sec}]Z" where {year} is
/// always expressed using four digits while {month}, {day}, {hour}, {min}, and
/// {sec} are zero-padded to two digits each. The fractional seconds, which can
/// go up to 9 digits (i.e. up to 1 nanosecond resolution), are optional. The
/// "Z" suffix indicates the timezone ("UTC"); the timezone is required, though
/// only UTC (as indicated by "Z") is presently supported.
///
/// For example, "2017-01-15T01:30:15.01Z" encodes 15.01 seconds past 01:30 UTC
/// on January 15, 2017.
///
/// In JavaScript, one can convert a Date object to this format using the
/// standard
/// [toISOString()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toISOString]
/// method. In Python, a standard `datetime.datetime` object can be converted to
/// this format using
/// [`strftime`](https://docs.python.org/2/library/time.html#time.strftime) with
/// the time format spec '%Y-%m-%dT%H:%M:%S.%fZ'. Likewise, in Java, one can use
/// the Joda Time's [`ISODateTimeFormat.dateTime()`](
/// http://joda-time.sourceforge.net/apidocs/org/joda/time/format/ISODateTimeFormat.html#dateTime())
/// to obtain a formatter capable of generating timestamps in this format.
class Timestamp {
  /// Non-negative fractions of a second at nanosecond resolution. Negative
  /// second values with fractions must still have non-negative nanos values
  /// that count forward in time. Must be from 0 to 999,999,999 inclusive.
  core.int nanos;

  /// Represents seconds of UTC time since Unix epoch 1970-01-01T00:00:00Z. Must
  /// be from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59Z inclusive.
  core.String seconds;

  Timestamp();

  Timestamp.fromJson(core.Map _json) {
    if (_json.containsKey("nanos")) {
      nanos = _json["nanos"];
    }
    if (_json.containsKey("seconds")) {
      seconds = _json["seconds"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nanos != null) {
      _json["nanos"] = nanos;
    }
    if (seconds != null) {
      _json["seconds"] = seconds;
    }
    return _json;
  }
}

/// Represents a Google Tag Manager Trigger
class Trigger {
  /// GTM Account ID.
  core.String accountId;

  /// Used in the case of auto event tracking.
  core.List<Condition> autoEventFilter;

  /// Whether or not we should only fire tags if the form submit or link click
  /// event is not cancelled by some other event handler (e.g. because of
  /// validation). Only valid for Form Submission and Link Click triggers.
  Parameter checkValidation;

  /// GTM Container ID.
  core.String containerId;

  /// A visibility trigger minimum continuous visible time (in milliseconds).
  /// Only valid for AMP Visibility trigger.
  Parameter continuousTimeMinMilliseconds;

  /// Used in the case of custom event, which is fired iff all Conditions are
  /// true.
  core.List<Condition> customEventFilter;

  /// Name of the GTM event that is fired. Only valid for Timer triggers.
  Parameter eventName;

  /// The trigger will only fire iff all Conditions are true.
  core.List<Condition> filter;

  /// The fingerprint of the GTM Trigger as computed at storage time. This value
  /// is recomputed whenever the trigger is modified.
  core.String fingerprint;

  /// List of integer percentage values for scroll triggers. The trigger will
  /// fire when each percentage is reached when the view is scrolled
  /// horizontally. Only valid for AMP scroll triggers.
  Parameter horizontalScrollPercentageList;

  /// Time between triggering recurring Timer Events (in milliseconds). Only
  /// valid for Timer triggers.
  Parameter interval;

  /// Time between Timer Events to fire (in seconds). Only valid for AMP Timer
  /// trigger.
  Parameter intervalSeconds;

  /// Limit of the number of GTM events this Timer Trigger will fire. If no
  /// limit is set, we will continue to fire GTM events until the user leaves
  /// the page. Only valid for Timer triggers.
  Parameter limit;

  /// Max time to fire Timer Events (in seconds). Only valid for AMP Timer
  /// trigger.
  Parameter maxTimerLengthSeconds;

  /// Trigger display name.
  core.String name;

  /// User notes on how to apply this trigger in the container.
  core.String notes;

  /// Additional parameters.
  core.List<Parameter> parameter;

  /// Parent folder id.
  core.String parentFolderId;

  /// GTM Trigger's API relative path.
  core.String path;

  /// A click trigger CSS selector (i.e. "a", "button" etc.). Only valid for AMP
  /// Click trigger.
  Parameter selector;

  /// Auto generated link to the tag manager UI
  core.String tagManagerUrl;

  /// A visibility trigger minimum total visible time (in milliseconds). Only
  /// valid for AMP Visibility trigger.
  Parameter totalTimeMinMilliseconds;

  /// The Trigger ID uniquely identifies the GTM Trigger.
  core.String triggerId;

  /// Defines the data layer event that causes this trigger.
  /// Possible string values are:
  /// - "always"
  /// - "ampClick"
  /// - "ampScroll"
  /// - "ampTimer"
  /// - "ampVisibility"
  /// - "click"
  /// - "customEvent"
  /// - "domReady"
  /// - "eventTypeUnspecified"
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
  /// - "historyChange"
  /// - "jsError"
  /// - "linkClick"
  /// - "pageview"
  /// - "timer"
  /// - "windowLoaded"
  /// - "youTubeVideo"
  core.String type;

  /// Globally unique id of the trigger that auto-generates this (a Form Submit,
  /// Link Click or Timer listener) if any. Used to make incompatible
  /// auto-events work together with trigger filtering based on trigger ids.
  /// This value is populated during output generation since the tags implied by
  /// triggers don't exist until then. Only valid for Form Submit, Link Click
  /// and Timer triggers.
  Parameter uniqueTriggerId;

  /// List of integer percentage values for scroll triggers. The trigger will
  /// fire when each percentage is reached when the view is scrolled vertically.
  /// Only valid for AMP scroll triggers.
  Parameter verticalScrollPercentageList;

  /// A visibility trigger CSS selector (i.e. "#id"). Only valid for AMP
  /// Visibility trigger.
  Parameter visibilitySelector;

  /// A visibility trigger maximum percent visibility. Only valid for AMP
  /// Visibility trigger.
  Parameter visiblePercentageMax;

  /// A visibility trigger minimum percent visibility. Only valid for AMP
  /// Visibility trigger.
  Parameter visiblePercentageMin;

  /// Whether or not we should delay the form submissions or link opening until
  /// all of the tags have fired (by preventing the default action and later
  /// simulating the default action). Only valid for Form Submission and Link
  /// Click triggers.
  Parameter waitForTags;

  /// How long to wait (in milliseconds) for tags to fire when 'waits_for_tags'
  /// above evaluates to true. Only valid for Form Submission and Link Click
  /// triggers.
  Parameter waitForTagsTimeout;

  /// GTM Workspace ID.
  core.String workspaceId;

  Trigger();

  Trigger.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("autoEventFilter")) {
      autoEventFilter = _json["autoEventFilter"]
          .map((value) => new Condition.fromJson(value))
          .toList();
    }
    if (_json.containsKey("checkValidation")) {
      checkValidation = new Parameter.fromJson(_json["checkValidation"]);
    }
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("continuousTimeMinMilliseconds")) {
      continuousTimeMinMilliseconds =
          new Parameter.fromJson(_json["continuousTimeMinMilliseconds"]);
    }
    if (_json.containsKey("customEventFilter")) {
      customEventFilter = _json["customEventFilter"]
          .map((value) => new Condition.fromJson(value))
          .toList();
    }
    if (_json.containsKey("eventName")) {
      eventName = new Parameter.fromJson(_json["eventName"]);
    }
    if (_json.containsKey("filter")) {
      filter = _json["filter"]
          .map((value) => new Condition.fromJson(value))
          .toList();
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("horizontalScrollPercentageList")) {
      horizontalScrollPercentageList =
          new Parameter.fromJson(_json["horizontalScrollPercentageList"]);
    }
    if (_json.containsKey("interval")) {
      interval = new Parameter.fromJson(_json["interval"]);
    }
    if (_json.containsKey("intervalSeconds")) {
      intervalSeconds = new Parameter.fromJson(_json["intervalSeconds"]);
    }
    if (_json.containsKey("limit")) {
      limit = new Parameter.fromJson(_json["limit"]);
    }
    if (_json.containsKey("maxTimerLengthSeconds")) {
      maxTimerLengthSeconds =
          new Parameter.fromJson(_json["maxTimerLengthSeconds"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notes")) {
      notes = _json["notes"];
    }
    if (_json.containsKey("parameter")) {
      parameter = _json["parameter"]
          .map((value) => new Parameter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("parentFolderId")) {
      parentFolderId = _json["parentFolderId"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("selector")) {
      selector = new Parameter.fromJson(_json["selector"]);
    }
    if (_json.containsKey("tagManagerUrl")) {
      tagManagerUrl = _json["tagManagerUrl"];
    }
    if (_json.containsKey("totalTimeMinMilliseconds")) {
      totalTimeMinMilliseconds =
          new Parameter.fromJson(_json["totalTimeMinMilliseconds"]);
    }
    if (_json.containsKey("triggerId")) {
      triggerId = _json["triggerId"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("uniqueTriggerId")) {
      uniqueTriggerId = new Parameter.fromJson(_json["uniqueTriggerId"]);
    }
    if (_json.containsKey("verticalScrollPercentageList")) {
      verticalScrollPercentageList =
          new Parameter.fromJson(_json["verticalScrollPercentageList"]);
    }
    if (_json.containsKey("visibilitySelector")) {
      visibilitySelector = new Parameter.fromJson(_json["visibilitySelector"]);
    }
    if (_json.containsKey("visiblePercentageMax")) {
      visiblePercentageMax =
          new Parameter.fromJson(_json["visiblePercentageMax"]);
    }
    if (_json.containsKey("visiblePercentageMin")) {
      visiblePercentageMin =
          new Parameter.fromJson(_json["visiblePercentageMin"]);
    }
    if (_json.containsKey("waitForTags")) {
      waitForTags = new Parameter.fromJson(_json["waitForTags"]);
    }
    if (_json.containsKey("waitForTagsTimeout")) {
      waitForTagsTimeout = new Parameter.fromJson(_json["waitForTagsTimeout"]);
    }
    if (_json.containsKey("workspaceId")) {
      workspaceId = _json["workspaceId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (autoEventFilter != null) {
      _json["autoEventFilter"] =
          autoEventFilter.map((value) => (value).toJson()).toList();
    }
    if (checkValidation != null) {
      _json["checkValidation"] = (checkValidation).toJson();
    }
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (continuousTimeMinMilliseconds != null) {
      _json["continuousTimeMinMilliseconds"] =
          (continuousTimeMinMilliseconds).toJson();
    }
    if (customEventFilter != null) {
      _json["customEventFilter"] =
          customEventFilter.map((value) => (value).toJson()).toList();
    }
    if (eventName != null) {
      _json["eventName"] = (eventName).toJson();
    }
    if (filter != null) {
      _json["filter"] = filter.map((value) => (value).toJson()).toList();
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (horizontalScrollPercentageList != null) {
      _json["horizontalScrollPercentageList"] =
          (horizontalScrollPercentageList).toJson();
    }
    if (interval != null) {
      _json["interval"] = (interval).toJson();
    }
    if (intervalSeconds != null) {
      _json["intervalSeconds"] = (intervalSeconds).toJson();
    }
    if (limit != null) {
      _json["limit"] = (limit).toJson();
    }
    if (maxTimerLengthSeconds != null) {
      _json["maxTimerLengthSeconds"] = (maxTimerLengthSeconds).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (notes != null) {
      _json["notes"] = notes;
    }
    if (parameter != null) {
      _json["parameter"] = parameter.map((value) => (value).toJson()).toList();
    }
    if (parentFolderId != null) {
      _json["parentFolderId"] = parentFolderId;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (selector != null) {
      _json["selector"] = (selector).toJson();
    }
    if (tagManagerUrl != null) {
      _json["tagManagerUrl"] = tagManagerUrl;
    }
    if (totalTimeMinMilliseconds != null) {
      _json["totalTimeMinMilliseconds"] = (totalTimeMinMilliseconds).toJson();
    }
    if (triggerId != null) {
      _json["triggerId"] = triggerId;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (uniqueTriggerId != null) {
      _json["uniqueTriggerId"] = (uniqueTriggerId).toJson();
    }
    if (verticalScrollPercentageList != null) {
      _json["verticalScrollPercentageList"] =
          (verticalScrollPercentageList).toJson();
    }
    if (visibilitySelector != null) {
      _json["visibilitySelector"] = (visibilitySelector).toJson();
    }
    if (visiblePercentageMax != null) {
      _json["visiblePercentageMax"] = (visiblePercentageMax).toJson();
    }
    if (visiblePercentageMin != null) {
      _json["visiblePercentageMin"] = (visiblePercentageMin).toJson();
    }
    if (waitForTags != null) {
      _json["waitForTags"] = (waitForTags).toJson();
    }
    if (waitForTagsTimeout != null) {
      _json["waitForTagsTimeout"] = (waitForTagsTimeout).toJson();
    }
    if (workspaceId != null) {
      _json["workspaceId"] = workspaceId;
    }
    return _json;
  }
}

/// Updates a workspace proposal with patch-like semantics.
class UpdateWorkspaceProposalRequest {
  /// When provided, this fingerprint must match the fingerprint of the proposal
  /// in storage.
  core.String fingerprint;

  /// If present, a new comment is added to the workspace proposal history.
  WorkspaceProposalHistoryComment newComment;

  /// If present, the list of reviewers of the workspace proposal is updated.
  core.List<WorkspaceProposalUser> reviewers;

  /// If present, the status of the workspace proposal is updated.
  /// Possible string values are:
  /// - "approved"
  /// - "cancelled"
  /// - "completed"
  /// - "requested"
  /// - "reviewed"
  /// - "statusUnspecified"
  core.String status;

  UpdateWorkspaceProposalRequest();

  UpdateWorkspaceProposalRequest.fromJson(core.Map _json) {
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("newComment")) {
      newComment =
          new WorkspaceProposalHistoryComment.fromJson(_json["newComment"]);
    }
    if (_json.containsKey("reviewers")) {
      reviewers = _json["reviewers"]
          .map((value) => new WorkspaceProposalUser.fromJson(value))
          .toList();
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (newComment != null) {
      _json["newComment"] = (newComment).toJson();
    }
    if (reviewers != null) {
      _json["reviewers"] = reviewers.map((value) => (value).toJson()).toList();
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}

/// Represents a user's permissions to an account and its container.
class UserPermission {
  /// GTM Account access permissions.
  AccountAccess accountAccess;

  /// The Account ID uniquely identifies the GTM Account.
  core.String accountId;

  /// GTM Container access permissions.
  core.List<ContainerAccess> containerAccess;

  /// User's email address.
  core.String emailAddress;

  /// GTM UserPermission's API relative path.
  core.String path;

  UserPermission();

  UserPermission.fromJson(core.Map _json) {
    if (_json.containsKey("accountAccess")) {
      accountAccess = new AccountAccess.fromJson(_json["accountAccess"]);
    }
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("containerAccess")) {
      containerAccess = _json["containerAccess"]
          .map((value) => new ContainerAccess.fromJson(value))
          .toList();
    }
    if (_json.containsKey("emailAddress")) {
      emailAddress = _json["emailAddress"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountAccess != null) {
      _json["accountAccess"] = (accountAccess).toJson();
    }
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (containerAccess != null) {
      _json["containerAccess"] =
          containerAccess.map((value) => (value).toJson()).toList();
    }
    if (emailAddress != null) {
      _json["emailAddress"] = emailAddress;
    }
    if (path != null) {
      _json["path"] = path;
    }
    return _json;
  }
}

/// Represents a Google Tag Manager Variable.
class Variable {
  /// GTM Account ID.
  core.String accountId;

  /// GTM Container ID.
  core.String containerId;

  /// For mobile containers only: A list of trigger IDs for disabling
  /// conditional variables; the variable is enabled if one of the enabling
  /// trigger is true while all the disabling trigger are false. Treated as an
  /// unordered set.
  core.List<core.String> disablingTriggerId;

  /// For mobile containers only: A list of trigger IDs for enabling conditional
  /// variables; the variable is enabled if one of the enabling triggers is true
  /// while all the disabling triggers are false. Treated as an unordered set.
  core.List<core.String> enablingTriggerId;

  /// The fingerprint of the GTM Variable as computed at storage time. This
  /// value is recomputed whenever the variable is modified.
  core.String fingerprint;

  /// Variable display name.
  core.String name;

  /// User notes on how to apply this variable in the container.
  core.String notes;

  /// The variable's parameters.
  core.List<Parameter> parameter;

  /// Parent folder id.
  core.String parentFolderId;

  /// GTM Variable's API relative path.
  core.String path;

  /// The end timestamp in milliseconds to schedule a variable.
  core.String scheduleEndMs;

  /// The start timestamp in milliseconds to schedule a variable.
  core.String scheduleStartMs;

  /// Auto generated link to the tag manager UI
  core.String tagManagerUrl;

  /// GTM Variable Type.
  core.String type;

  /// The Variable ID uniquely identifies the GTM Variable.
  core.String variableId;

  /// GTM Workspace ID.
  core.String workspaceId;

  Variable();

  Variable.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("disablingTriggerId")) {
      disablingTriggerId = _json["disablingTriggerId"];
    }
    if (_json.containsKey("enablingTriggerId")) {
      enablingTriggerId = _json["enablingTriggerId"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notes")) {
      notes = _json["notes"];
    }
    if (_json.containsKey("parameter")) {
      parameter = _json["parameter"]
          .map((value) => new Parameter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("parentFolderId")) {
      parentFolderId = _json["parentFolderId"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("scheduleEndMs")) {
      scheduleEndMs = _json["scheduleEndMs"];
    }
    if (_json.containsKey("scheduleStartMs")) {
      scheduleStartMs = _json["scheduleStartMs"];
    }
    if (_json.containsKey("tagManagerUrl")) {
      tagManagerUrl = _json["tagManagerUrl"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("variableId")) {
      variableId = _json["variableId"];
    }
    if (_json.containsKey("workspaceId")) {
      workspaceId = _json["workspaceId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (disablingTriggerId != null) {
      _json["disablingTriggerId"] = disablingTriggerId;
    }
    if (enablingTriggerId != null) {
      _json["enablingTriggerId"] = enablingTriggerId;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (notes != null) {
      _json["notes"] = notes;
    }
    if (parameter != null) {
      _json["parameter"] = parameter.map((value) => (value).toJson()).toList();
    }
    if (parentFolderId != null) {
      _json["parentFolderId"] = parentFolderId;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (scheduleEndMs != null) {
      _json["scheduleEndMs"] = scheduleEndMs;
    }
    if (scheduleStartMs != null) {
      _json["scheduleStartMs"] = scheduleStartMs;
    }
    if (tagManagerUrl != null) {
      _json["tagManagerUrl"] = tagManagerUrl;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (variableId != null) {
      _json["variableId"] = variableId;
    }
    if (workspaceId != null) {
      _json["workspaceId"] = workspaceId;
    }
    return _json;
  }
}

/// Represents a Google Tag Manager Container Workspace.
class Workspace {
  /// GTM Account ID.
  core.String accountId;

  /// GTM Container ID.
  core.String containerId;

  /// Workspace description.
  core.String description;

  /// The fingerprint of the GTM Workspace as computed at storage time. This
  /// value is recomputed whenever the workspace is modified.
  core.String fingerprint;

  /// Workspace display name.
  core.String name;

  /// GTM Workspace's API relative path.
  core.String path;

  /// Auto generated link to the tag manager UI
  core.String tagManagerUrl;

  /// The Workspace ID uniquely identifies the GTM Workspace.
  core.String workspaceId;

  Workspace();

  Workspace.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("tagManagerUrl")) {
      tagManagerUrl = _json["tagManagerUrl"];
    }
    if (_json.containsKey("workspaceId")) {
      workspaceId = _json["workspaceId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (tagManagerUrl != null) {
      _json["tagManagerUrl"] = tagManagerUrl;
    }
    if (workspaceId != null) {
      _json["workspaceId"] = workspaceId;
    }
    return _json;
  }
}

/// A workspace proposal represents an ongoing review of workspace changes in an
/// effort to gain approval for container version creation.
class WorkspaceProposal {
  /// List of authors for the workspace proposal.
  core.List<WorkspaceProposalUser> authors;

  /// The fingerprint of the GTM workspace proposal as computed at storage time.
  /// This value is recomputed whenever the proposal is modified.
  core.String fingerprint;

  /// Records the history of comments and status changes.
  core.List<WorkspaceProposalHistory> history;

  /// GTM workspace proposal's relative path.
  core.String path;

  /// Lists of reviewers for the workspace proposal.
  core.List<WorkspaceProposalUser> reviewers;

  /// The status of the workspace proposal as it goes through review.
  /// Possible string values are:
  /// - "approved"
  /// - "cancelled"
  /// - "completed"
  /// - "requested"
  /// - "reviewed"
  /// - "statusUnspecified"
  core.String status;

  WorkspaceProposal();

  WorkspaceProposal.fromJson(core.Map _json) {
    if (_json.containsKey("authors")) {
      authors = _json["authors"]
          .map((value) => new WorkspaceProposalUser.fromJson(value))
          .toList();
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("history")) {
      history = _json["history"]
          .map((value) => new WorkspaceProposalHistory.fromJson(value))
          .toList();
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("reviewers")) {
      reviewers = _json["reviewers"]
          .map((value) => new WorkspaceProposalUser.fromJson(value))
          .toList();
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (authors != null) {
      _json["authors"] = authors.map((value) => (value).toJson()).toList();
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (history != null) {
      _json["history"] = history.map((value) => (value).toJson()).toList();
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (reviewers != null) {
      _json["reviewers"] = reviewers.map((value) => (value).toJson()).toList();
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}

/// A history event that represents a comment or status change in the proposal.
class WorkspaceProposalHistory {
  /// A user or reviewer comment.
  WorkspaceProposalHistoryComment comment;

  /// The party responsible for the change in history.
  WorkspaceProposalUser createdBy;

  /// When this history event was added to the workspace proposal.
  Timestamp createdTimestamp;

  /// A change in the proposal's status.
  WorkspaceProposalHistoryStatusChange statusChange;

  /// The history type distinguishing between comments and status changes.
  /// Possible string values are:
  /// - "comment"
  /// - "statusChange"
  /// - "unspecified"
  core.String type;

  WorkspaceProposalHistory();

  WorkspaceProposalHistory.fromJson(core.Map _json) {
    if (_json.containsKey("comment")) {
      comment = new WorkspaceProposalHistoryComment.fromJson(_json["comment"]);
    }
    if (_json.containsKey("createdBy")) {
      createdBy = new WorkspaceProposalUser.fromJson(_json["createdBy"]);
    }
    if (_json.containsKey("createdTimestamp")) {
      createdTimestamp = new Timestamp.fromJson(_json["createdTimestamp"]);
    }
    if (_json.containsKey("statusChange")) {
      statusChange = new WorkspaceProposalHistoryStatusChange.fromJson(
          _json["statusChange"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (comment != null) {
      _json["comment"] = (comment).toJson();
    }
    if (createdBy != null) {
      _json["createdBy"] = (createdBy).toJson();
    }
    if (createdTimestamp != null) {
      _json["createdTimestamp"] = (createdTimestamp).toJson();
    }
    if (statusChange != null) {
      _json["statusChange"] = (statusChange).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// A comment from the reviewer or author.
class WorkspaceProposalHistoryComment {
  /// The contents of the reviewer or author comment.
  core.String content;

  WorkspaceProposalHistoryComment();

  WorkspaceProposalHistoryComment.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (content != null) {
      _json["content"] = content;
    }
    return _json;
  }
}

/// A change in the proposal's status.
class WorkspaceProposalHistoryStatusChange {
  /// The new proposal status after that status change.
  /// Possible string values are:
  /// - "approved"
  /// - "cancelled"
  /// - "completed"
  /// - "requested"
  /// - "reviewed"
  /// - "statusUnspecified"
  core.String newStatus;

  /// The old proposal status before the status change.
  /// Possible string values are:
  /// - "approved"
  /// - "cancelled"
  /// - "completed"
  /// - "requested"
  /// - "reviewed"
  /// - "statusUnspecified"
  core.String oldStatus;

  WorkspaceProposalHistoryStatusChange();

  WorkspaceProposalHistoryStatusChange.fromJson(core.Map _json) {
    if (_json.containsKey("newStatus")) {
      newStatus = _json["newStatus"];
    }
    if (_json.containsKey("oldStatus")) {
      oldStatus = _json["oldStatus"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (newStatus != null) {
      _json["newStatus"] = newStatus;
    }
    if (oldStatus != null) {
      _json["oldStatus"] = oldStatus;
    }
    return _json;
  }
}

/// Represents an external user or internal Google Tag Manager system.
class WorkspaceProposalUser {
  /// Gaia id associated with a user, absent for the Google Tag Manager system.
  core.String gaiaId;

  /// User type distinguishes between a user and the Google Tag Manager system.
  /// Possible string values are:
  /// - "gaiaId"
  /// - "system"
  core.String type;

  WorkspaceProposalUser();

  WorkspaceProposalUser.fromJson(core.Map _json) {
    if (_json.containsKey("gaiaId")) {
      gaiaId = _json["gaiaId"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (gaiaId != null) {
      _json["gaiaId"] = gaiaId;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Represents a Google Tag Manager Zone's contents.
class Zone {
  /// GTM Account ID.
  core.String accountId;

  /// This Zone's boundary.
  ZoneBoundary boundary;

  /// Containers that are children of this Zone.
  core.List<ZoneChildContainer> childContainer;

  /// GTM Container ID.
  core.String containerId;

  /// The fingerprint of the GTM Zone as computed at storage time. This value is
  /// recomputed whenever the zone is modified.
  core.String fingerprint;

  /// Zone display name.
  core.String name;

  /// User notes on how to apply this zone in the container.
  core.String notes;

  /// GTM Zone's API relative path.
  core.String path;

  /// Auto generated link to the tag manager UI
  core.String tagManagerUrl;

  /// This Zone's type restrictions.
  ZoneTypeRestriction typeRestriction;

  /// GTM Workspace ID.
  core.String workspaceId;

  /// The Zone ID uniquely identifies the GTM Zone.
  core.String zoneId;

  Zone();

  Zone.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("boundary")) {
      boundary = new ZoneBoundary.fromJson(_json["boundary"]);
    }
    if (_json.containsKey("childContainer")) {
      childContainer = _json["childContainer"]
          .map((value) => new ZoneChildContainer.fromJson(value))
          .toList();
    }
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notes")) {
      notes = _json["notes"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("tagManagerUrl")) {
      tagManagerUrl = _json["tagManagerUrl"];
    }
    if (_json.containsKey("typeRestriction")) {
      typeRestriction =
          new ZoneTypeRestriction.fromJson(_json["typeRestriction"]);
    }
    if (_json.containsKey("workspaceId")) {
      workspaceId = _json["workspaceId"];
    }
    if (_json.containsKey("zoneId")) {
      zoneId = _json["zoneId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (boundary != null) {
      _json["boundary"] = (boundary).toJson();
    }
    if (childContainer != null) {
      _json["childContainer"] =
          childContainer.map((value) => (value).toJson()).toList();
    }
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (notes != null) {
      _json["notes"] = notes;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (tagManagerUrl != null) {
      _json["tagManagerUrl"] = tagManagerUrl;
    }
    if (typeRestriction != null) {
      _json["typeRestriction"] = (typeRestriction).toJson();
    }
    if (workspaceId != null) {
      _json["workspaceId"] = workspaceId;
    }
    if (zoneId != null) {
      _json["zoneId"] = zoneId;
    }
    return _json;
  }
}

/// Represents a Zone's boundaries.
class ZoneBoundary {
  /// The conditions that, when conjoined, make up the boundary.
  core.List<Condition> condition;

  /// Custom evaluation trigger IDs. A zone will evaluate its boundary
  /// conditions when any of the listed triggers are true.
  core.List<core.String> customEvaluationTriggerId;

  ZoneBoundary();

  ZoneBoundary.fromJson(core.Map _json) {
    if (_json.containsKey("condition")) {
      condition = _json["condition"]
          .map((value) => new Condition.fromJson(value))
          .toList();
    }
    if (_json.containsKey("customEvaluationTriggerId")) {
      customEvaluationTriggerId = _json["customEvaluationTriggerId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (condition != null) {
      _json["condition"] = condition.map((value) => (value).toJson()).toList();
    }
    if (customEvaluationTriggerId != null) {
      _json["customEvaluationTriggerId"] = customEvaluationTriggerId;
    }
    return _json;
  }
}

/// Represents a child container of a Zone.
class ZoneChildContainer {
  /// The zone's nickname for the child container.
  core.String nickname;

  /// The child container's public id.
  core.String publicId;

  ZoneChildContainer();

  ZoneChildContainer.fromJson(core.Map _json) {
    if (_json.containsKey("nickname")) {
      nickname = _json["nickname"];
    }
    if (_json.containsKey("publicId")) {
      publicId = _json["publicId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nickname != null) {
      _json["nickname"] = nickname;
    }
    if (publicId != null) {
      _json["publicId"] = publicId;
    }
    return _json;
  }
}

/// Represents a Zone's type restrictions.
class ZoneTypeRestriction {
  /// True if type restrictions have been enabled for this Zone.
  core.bool enable;

  /// List of type public ids that have been whitelisted for use in this Zone.
  core.List<core.String> whitelistedTypeId;

  ZoneTypeRestriction();

  ZoneTypeRestriction.fromJson(core.Map _json) {
    if (_json.containsKey("enable")) {
      enable = _json["enable"];
    }
    if (_json.containsKey("whitelistedTypeId")) {
      whitelistedTypeId = _json["whitelistedTypeId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enable != null) {
      _json["enable"] = enable;
    }
    if (whitelistedTypeId != null) {
      _json["whitelistedTypeId"] = whitelistedTypeId;
    }
    return _json;
  }
}
