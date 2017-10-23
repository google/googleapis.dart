// This is a generated file (see the discoveryapis_generator project).

library googleapis.iam.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client iam/v1';

/// Manages identity and access control for Google Cloud Platform resources,
/// including the creation of service accounts, which you can use to
/// authenticate to Google and make API calls.
class IamApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  OrganizationsResourceApi get organizations =>
      new OrganizationsResourceApi(_requester);
  PermissionsResourceApi get permissions =>
      new PermissionsResourceApi(_requester);
  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);
  RolesResourceApi get roles => new RolesResourceApi(_requester);

  IamApi(http.Client client,
      {core.String rootUrl: "https://iam.googleapis.com/",
      core.String servicePath: ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class OrganizationsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsRolesResourceApi get roles =>
      new OrganizationsRolesResourceApi(_requester);

  OrganizationsResourceApi(commons.ApiRequester client) : _requester = client;
}

class OrganizationsRolesResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsRolesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the parent resource in one of the
  /// following formats:
  /// `organizations/{ORGANIZATION_ID}`
  /// `projects/{PROJECT_ID}`
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> create(CreateRoleRequest request, core.String parent,
      {core.String $fields}) {
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/roles';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Role.fromJson(data));
  }

  /// Soft deletes a role. The role is suspended and cannot be used to create
  /// new
  /// IAM Policy Bindings.
  /// The Role will not be included in `ListRoles()` unless `show_deleted` is
  /// set
  /// in the `ListRolesRequest`. The Role contains the deleted boolean set.
  /// Existing Bindings remains, but are inactive. The Role can be undeleted
  /// within 7 days. After 7 days the Role is deleted and all Bindings
  /// associated
  /// with the role are removed.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the role in one of the following formats:
  /// `organizations/{ORGANIZATION_ID}/roles/{ROLE_NAME}`
  /// `projects/{PROJECT_ID}/roles/{ROLE_NAME}`
  /// Value must have pattern "^organizations/[^/]+/roles/[^/]+$".
  ///
  /// [etag] - Used to perform a consistent read-modify-write.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> delete(core.String name,
      {core.String etag, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (etag != null) {
      _queryParams["etag"] = [etag];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Role.fromJson(data));
  }

  /// Gets a Role definition.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the role in one of the following formats:
  /// `roles/{ROLE_NAME}`
  /// `organizations/{ORGANIZATION_ID}/roles/{ROLE_NAME}`
  /// `projects/{PROJECT_ID}/roles/{ROLE_NAME}`
  /// Value must have pattern "^organizations/[^/]+/roles/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> get(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Role.fromJson(data));
  }

  /// Lists the Roles defined on a resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the parent resource in one of the
  /// following formats:
  /// `` (empty string) -- this refers to curated roles.
  /// `organizations/{ORGANIZATION_ID}`
  /// `projects/{PROJECT_ID}`
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [showDeleted] - Include Roles that have been deleted.
  ///
  /// [pageToken] - Optional pagination token returned in an earlier
  /// ListRolesResponse.
  ///
  /// [pageSize] - Optional limit on the number of roles to include in the
  /// response.
  ///
  /// [view] - Optional view for the returned Role objects.
  /// Possible string values are:
  /// - "BASIC" : A BASIC.
  /// - "FULL" : A FULL.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRolesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRolesResponse> list(core.String parent,
      {core.bool showDeleted,
      core.String pageToken,
      core.int pageSize,
      core.String view,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (showDeleted != null) {
      _queryParams["showDeleted"] = ["${showDeleted}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/roles';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListRolesResponse.fromJson(data));
  }

  /// Updates a Role definition.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the role in one of the following formats:
  /// `roles/{ROLE_NAME}`
  /// `organizations/{ORGANIZATION_ID}/roles/{ROLE_NAME}`
  /// `projects/{PROJECT_ID}/roles/{ROLE_NAME}`
  /// Value must have pattern "^organizations/[^/]+/roles/[^/]+$".
  ///
  /// [updateMask] - A mask describing which fields in the Role have changed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> patch(Role request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Role.fromJson(data));
  }

  /// Undelete a Role, bringing it back in its previous state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the role in one of the following formats:
  /// `organizations/{ORGANIZATION_ID}/roles/{ROLE_NAME}`
  /// `projects/{PROJECT_ID}/roles/{ROLE_NAME}`
  /// Value must have pattern "^organizations/[^/]+/roles/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> undelete(UndeleteRoleRequest request, core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':undelete';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Role.fromJson(data));
  }
}

class PermissionsResourceApi {
  final commons.ApiRequester _requester;

  PermissionsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Lists the permissions testable on a resource.
  /// A permission is testable if it can be tested for an identity on a
  /// resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryTestablePermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryTestablePermissionsResponse> queryTestablePermissions(
      QueryTestablePermissionsRequest request,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/permissions:queryTestablePermissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new QueryTestablePermissionsResponse.fromJson(data));
  }
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsRolesResourceApi get roles =>
      new ProjectsRolesResourceApi(_requester);
  ProjectsServiceAccountsResourceApi get serviceAccounts =>
      new ProjectsServiceAccountsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsRolesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsRolesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new Role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the parent resource in one of the
  /// following formats:
  /// `organizations/{ORGANIZATION_ID}`
  /// `projects/{PROJECT_ID}`
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> create(CreateRoleRequest request, core.String parent,
      {core.String $fields}) {
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/roles';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Role.fromJson(data));
  }

  /// Soft deletes a role. The role is suspended and cannot be used to create
  /// new
  /// IAM Policy Bindings.
  /// The Role will not be included in `ListRoles()` unless `show_deleted` is
  /// set
  /// in the `ListRolesRequest`. The Role contains the deleted boolean set.
  /// Existing Bindings remains, but are inactive. The Role can be undeleted
  /// within 7 days. After 7 days the Role is deleted and all Bindings
  /// associated
  /// with the role are removed.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the role in one of the following formats:
  /// `organizations/{ORGANIZATION_ID}/roles/{ROLE_NAME}`
  /// `projects/{PROJECT_ID}/roles/{ROLE_NAME}`
  /// Value must have pattern "^projects/[^/]+/roles/[^/]+$".
  ///
  /// [etag] - Used to perform a consistent read-modify-write.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> delete(core.String name,
      {core.String etag, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (etag != null) {
      _queryParams["etag"] = [etag];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Role.fromJson(data));
  }

  /// Gets a Role definition.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the role in one of the following formats:
  /// `roles/{ROLE_NAME}`
  /// `organizations/{ORGANIZATION_ID}/roles/{ROLE_NAME}`
  /// `projects/{PROJECT_ID}/roles/{ROLE_NAME}`
  /// Value must have pattern "^projects/[^/]+/roles/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> get(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Role.fromJson(data));
  }

  /// Lists the Roles defined on a resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the parent resource in one of the
  /// following formats:
  /// `` (empty string) -- this refers to curated roles.
  /// `organizations/{ORGANIZATION_ID}`
  /// `projects/{PROJECT_ID}`
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [showDeleted] - Include Roles that have been deleted.
  ///
  /// [pageToken] - Optional pagination token returned in an earlier
  /// ListRolesResponse.
  ///
  /// [pageSize] - Optional limit on the number of roles to include in the
  /// response.
  ///
  /// [view] - Optional view for the returned Role objects.
  /// Possible string values are:
  /// - "BASIC" : A BASIC.
  /// - "FULL" : A FULL.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRolesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRolesResponse> list(core.String parent,
      {core.bool showDeleted,
      core.String pageToken,
      core.int pageSize,
      core.String view,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (showDeleted != null) {
      _queryParams["showDeleted"] = ["${showDeleted}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/roles';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListRolesResponse.fromJson(data));
  }

  /// Updates a Role definition.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the role in one of the following formats:
  /// `roles/{ROLE_NAME}`
  /// `organizations/{ORGANIZATION_ID}/roles/{ROLE_NAME}`
  /// `projects/{PROJECT_ID}/roles/{ROLE_NAME}`
  /// Value must have pattern "^projects/[^/]+/roles/[^/]+$".
  ///
  /// [updateMask] - A mask describing which fields in the Role have changed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> patch(Role request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Role.fromJson(data));
  }

  /// Undelete a Role, bringing it back in its previous state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the role in one of the following formats:
  /// `organizations/{ORGANIZATION_ID}/roles/{ROLE_NAME}`
  /// `projects/{PROJECT_ID}/roles/{ROLE_NAME}`
  /// Value must have pattern "^projects/[^/]+/roles/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> undelete(UndeleteRoleRequest request, core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':undelete';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Role.fromJson(data));
  }
}

class ProjectsServiceAccountsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsServiceAccountsKeysResourceApi get keys =>
      new ProjectsServiceAccountsKeysResourceApi(_requester);

  ProjectsServiceAccountsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a ServiceAccount
  /// and returns it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the project associated with the
  /// service
  /// accounts, such as `projects/my-project-123`.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccount> create(
      CreateServiceAccountRequest request, core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/serviceAccounts';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceAccount.fromJson(data));
  }

  /// Deletes a ServiceAccount.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account in the following format:
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`.
  /// Using `-` as a wildcard for the `PROJECT_ID` will infer the project from
  /// the account. The `ACCOUNT` value can be the `email` address or the
  /// `unique_id` of the service account.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets a ServiceAccount.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account in the following format:
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`.
  /// Using `-` as a wildcard for the `PROJECT_ID` will infer the project from
  /// the account. The `ACCOUNT` value can be the `email` address or the
  /// `unique_id` of the service account.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccount> get(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceAccount.fromJson(data));
  }

  /// Returns the IAM access control policy for a
  /// ServiceAccount.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(core.String resource,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Lists ServiceAccounts for a project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the project associated with the
  /// service
  /// accounts, such as `projects/my-project-123`.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - Optional pagination token returned in an earlier
  /// ListServiceAccountsResponse.next_page_token.
  ///
  /// [pageSize] - Optional limit on the number of service accounts to include
  /// in the
  /// response. Further accounts can subsequently be obtained by including the
  /// ListServiceAccountsResponse.next_page_token
  /// in a subsequent request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServiceAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServiceAccountsResponse> list(core.String name,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/serviceAccounts';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListServiceAccountsResponse.fromJson(data));
  }

  /// Sets the IAM access control policy for a
  /// ServiceAccount.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
      SetIamPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Signs a blob using a service account's system-managed private key.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account in the following format:
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`.
  /// Using `-` as a wildcard for the `PROJECT_ID` will infer the project from
  /// the account. The `ACCOUNT` value can be the `email` address or the
  /// `unique_id` of the service account.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SignBlobResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SignBlobResponse> signBlob(
      SignBlobRequest request, core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':signBlob';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SignBlobResponse.fromJson(data));
  }

  /// Signs a JWT using a service account's system-managed private key.
  ///
  /// If no expiry time (`exp`) is provided in the `SignJwtRequest`, IAM sets an
  /// an expiry time of one hour by default. If you request an expiry time of
  /// more than one hour, the request will fail.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account in the following format:
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`.
  /// Using `-` as a wildcard for the `PROJECT_ID` will infer the project from
  /// the account. The `ACCOUNT` value can be the `email` address or the
  /// `unique_id` of the service account.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SignJwtResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SignJwtResponse> signJwt(
      SignJwtRequest request, core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':signJwt';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SignJwtResponse.fromJson(data));
  }

  /// Tests the specified permissions against the IAM access control policy
  /// for a ServiceAccount.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
      TestIamPermissionsRequest request, core.String resource,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new TestIamPermissionsResponse.fromJson(data));
  }

  /// Updates a ServiceAccount.
  ///
  /// Currently, only the following fields are updatable:
  /// `display_name` .
  /// The `etag` is mandatory.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account in the following format:
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`.
  ///
  /// Requests using `-` as a wildcard for the `PROJECT_ID` will infer the
  /// project from the `account` and the `ACCOUNT` value can be the `email`
  /// address or the `unique_id` of the service account.
  ///
  /// In responses the resource name will always be in the format
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccount> update(ServiceAccount request, core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceAccount.fromJson(data));
  }
}

class ProjectsServiceAccountsKeysResourceApi {
  final commons.ApiRequester _requester;

  ProjectsServiceAccountsKeysResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a ServiceAccountKey
  /// and returns it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account in the following format:
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`.
  /// Using `-` as a wildcard for the `PROJECT_ID` will infer the project from
  /// the account. The `ACCOUNT` value can be the `email` address or the
  /// `unique_id` of the service account.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccountKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccountKey> create(
      CreateServiceAccountKeyRequest request, core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/keys';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceAccountKey.fromJson(data));
  }

  /// Deletes a ServiceAccountKey.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account key in the following
  /// format:
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{key}`.
  /// Using `-` as a wildcard for the `PROJECT_ID` will infer the project from
  /// the account. The `ACCOUNT` value can be the `email` address or the
  /// `unique_id` of the service account.
  /// Value must have pattern
  /// "^projects/[^/]+/serviceAccounts/[^/]+/keys/[^/]+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets the ServiceAccountKey
  /// by key id.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account key in the following
  /// format:
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{key}`.
  ///
  /// Using `-` as a wildcard for the `PROJECT_ID` will infer the project from
  /// the account. The `ACCOUNT` value can be the `email` address or the
  /// `unique_id` of the service account.
  /// Value must have pattern
  /// "^projects/[^/]+/serviceAccounts/[^/]+/keys/[^/]+$".
  ///
  /// [publicKeyType] - The output format of the public key requested.
  /// X509_PEM is the default output format.
  /// Possible string values are:
  /// - "TYPE_NONE" : A TYPE_NONE.
  /// - "TYPE_X509_PEM_FILE" : A TYPE_X509_PEM_FILE.
  /// - "TYPE_RAW_PUBLIC_KEY" : A TYPE_RAW_PUBLIC_KEY.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccountKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccountKey> get(core.String name,
      {core.String publicKeyType, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (publicKeyType != null) {
      _queryParams["publicKeyType"] = [publicKeyType];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceAccountKey.fromJson(data));
  }

  /// Lists ServiceAccountKeys.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account in the following format:
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`.
  ///
  /// Using `-` as a wildcard for the `PROJECT_ID`, will infer the project from
  /// the account. The `ACCOUNT` value can be the `email` address or the
  /// `unique_id` of the service account.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [keyTypes] - Filters the types of keys the user wants to include in the
  /// list
  /// response. Duplicate key types are not allowed. If no key type
  /// is provided, all keys are returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServiceAccountKeysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServiceAccountKeysResponse> list(core.String name,
      {core.List<core.String> keyTypes, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (keyTypes != null) {
      _queryParams["keyTypes"] = keyTypes;
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/keys';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListServiceAccountKeysResponse.fromJson(data));
  }
}

class RolesResourceApi {
  final commons.ApiRequester _requester;

  RolesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets a Role definition.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the role in one of the following formats:
  /// `roles/{ROLE_NAME}`
  /// `organizations/{ORGANIZATION_ID}/roles/{ROLE_NAME}`
  /// `projects/{PROJECT_ID}/roles/{ROLE_NAME}`
  /// Value must have pattern "^roles/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> get(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Role.fromJson(data));
  }

  /// Lists the Roles defined on a resource.
  ///
  /// Request parameters:
  ///
  /// [view] - Optional view for the returned Role objects.
  /// Possible string values are:
  /// - "BASIC" : A BASIC.
  /// - "FULL" : A FULL.
  ///
  /// [parent] - The resource name of the parent resource in one of the
  /// following formats:
  /// `` (empty string) -- this refers to curated roles.
  /// `organizations/{ORGANIZATION_ID}`
  /// `projects/{PROJECT_ID}`
  ///
  /// [showDeleted] - Include Roles that have been deleted.
  ///
  /// [pageToken] - Optional pagination token returned in an earlier
  /// ListRolesResponse.
  ///
  /// [pageSize] - Optional limit on the number of roles to include in the
  /// response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRolesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRolesResponse> list(
      {core.String view,
      core.String parent,
      core.bool showDeleted,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (view != null) {
      _queryParams["view"] = [view];
    }
    if (parent != null) {
      _queryParams["parent"] = [parent];
    }
    if (showDeleted != null) {
      _queryParams["showDeleted"] = ["${showDeleted}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/roles';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListRolesResponse.fromJson(data));
  }

  /// Queries roles that can be granted on a particular resource.
  /// A role is grantable if it can be used as the role in a binding for a
  /// policy
  /// for that resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryGrantableRolesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryGrantableRolesResponse> queryGrantableRoles(
      QueryGrantableRolesRequest request,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/roles:queryGrantableRoles';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new QueryGrantableRolesResponse.fromJson(data));
  }
}

/// Audit log information specific to Cloud IAM. This message is serialized
/// as an `Any` type in the `ServiceData` message of an
/// `AuditLog` message.
class AuditData {
  /// Policy delta between the original policy and the newly set policy.
  PolicyDelta policyDelta;

  AuditData();

  AuditData.fromJson(core.Map _json) {
    if (_json.containsKey("policyDelta")) {
      policyDelta = new PolicyDelta.fromJson(_json["policyDelta"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (policyDelta != null) {
      _json["policyDelta"] = (policyDelta).toJson();
    }
    return _json;
  }
}

/// Associates `members` with a `role`.
class Binding {
  /// Specifies the identities requesting access for a Cloud Platform resource.
  /// `members` can have the following values:
  ///
  /// * `allUsers`: A special identifier that represents anyone who is
  ///    on the internet; with or without a Google account.
  ///
  /// * `allAuthenticatedUsers`: A special identifier that represents anyone
  ///    who is authenticated with a Google account or a service account.
  ///
  /// * `user:{emailid}`: An email address that represents a specific Google
  ///    account. For example, `alice@gmail.com` or `joe@example.com`.
  ///
  ///
  /// * `serviceAccount:{emailid}`: An email address that represents a service
  ///    account. For example, `my-other-app@appspot.gserviceaccount.com`.
  ///
  /// * `group:{emailid}`: An email address that represents a Google group.
  ///    For example, `admins@example.com`.
  ///
  ///
  /// * `domain:{domain}`: A Google Apps domain name that represents all the
  ///    users of that domain. For example, `google.com` or `example.com`.
  core.List<core.String> members;

  /// Role that is assigned to `members`.
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  /// Required
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey("members")) {
      members = _json["members"];
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (members != null) {
      _json["members"] = members;
    }
    if (role != null) {
      _json["role"] = role;
    }
    return _json;
  }
}

/// One delta entry for Binding. Each individual change (only one member in each
/// entry) to a binding will be a separate entry.
class BindingDelta {
  /// The action that was performed on a Binding.
  /// Required
  /// Possible string values are:
  /// - "ACTION_UNSPECIFIED" : Unspecified.
  /// - "ADD" : Addition of a Binding.
  /// - "REMOVE" : Removal of a Binding.
  core.String action;

  /// The condition that is associated with this binding.
  /// This field is GOOGLE_INTERNAL.
  /// This field is not logged in IAM side because it's only for audit logging.
  /// Optional
  Expr condition;

  /// A single identity requesting access for a Cloud Platform resource.
  /// Follows the same format of Binding.members.
  /// Required
  core.String member;

  /// Role that is assigned to `members`.
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  /// Required
  core.String role;

  BindingDelta();

  BindingDelta.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("condition")) {
      condition = new Expr.fromJson(_json["condition"]);
    }
    if (_json.containsKey("member")) {
      member = _json["member"];
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (action != null) {
      _json["action"] = action;
    }
    if (condition != null) {
      _json["condition"] = (condition).toJson();
    }
    if (member != null) {
      _json["member"] = member;
    }
    if (role != null) {
      _json["role"] = role;
    }
    return _json;
  }
}

/// The request to create a new role.
class CreateRoleRequest {
  /// The Role resource to create.
  Role role;

  /// The role id to use for this role.
  core.String roleId;

  CreateRoleRequest();

  CreateRoleRequest.fromJson(core.Map _json) {
    if (_json.containsKey("role")) {
      role = new Role.fromJson(_json["role"]);
    }
    if (_json.containsKey("roleId")) {
      roleId = _json["roleId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (role != null) {
      _json["role"] = (role).toJson();
    }
    if (roleId != null) {
      _json["roleId"] = roleId;
    }
    return _json;
  }
}

/// The service account key create request.
class CreateServiceAccountKeyRequest {
  /// Which type of key and algorithm to use for the key.
  /// The default is currently a 2K RSA key.  However this may change in the
  /// future.
  /// Possible string values are:
  /// - "KEY_ALG_UNSPECIFIED" : An unspecified key algorithm.
  /// - "KEY_ALG_RSA_1024" : 1k RSA Key.
  /// - "KEY_ALG_RSA_2048" : 2k RSA Key.
  core.String keyAlgorithm;

  /// The output format of the private key. `GOOGLE_CREDENTIALS_FILE` is the
  /// default output format.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified. Equivalent to
  /// `TYPE_GOOGLE_CREDENTIALS_FILE`.
  /// - "TYPE_PKCS12_FILE" : PKCS12 format.
  /// The password for the PKCS12 file is `notasecret`.
  /// For more information, see https://tools.ietf.org/html/rfc7292.
  /// - "TYPE_GOOGLE_CREDENTIALS_FILE" : Google Credentials File format.
  core.String privateKeyType;

  CreateServiceAccountKeyRequest();

  CreateServiceAccountKeyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("keyAlgorithm")) {
      keyAlgorithm = _json["keyAlgorithm"];
    }
    if (_json.containsKey("privateKeyType")) {
      privateKeyType = _json["privateKeyType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (keyAlgorithm != null) {
      _json["keyAlgorithm"] = keyAlgorithm;
    }
    if (privateKeyType != null) {
      _json["privateKeyType"] = privateKeyType;
    }
    return _json;
  }
}

/// The service account create request.
class CreateServiceAccountRequest {
  /// Required. The account id that is used to generate the service account
  /// email address and a stable unique id. It is unique within a project,
  /// must be 6-30 characters long, and match the regular expression
  /// `[a-z]([-a-z0-9]*[a-z0-9])` to comply with RFC1035.
  core.String accountId;

  /// The ServiceAccount resource to create.
  /// Currently, only the following values are user assignable:
  /// `display_name` .
  ServiceAccount serviceAccount;

  CreateServiceAccountRequest();

  CreateServiceAccountRequest.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("serviceAccount")) {
      serviceAccount = new ServiceAccount.fromJson(_json["serviceAccount"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (serviceAccount != null) {
      _json["serviceAccount"] = (serviceAccount).toJson();
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Represents an expression text. Example:
///
///     title: "User account presence"
///     description: "Determines whether the request has a user account"
///     expression: "size(request.user) > 0"
class Expr {
  /// An optional description of the expression. This is a longer text which
  /// describes the expression, e.g. when hovered over it in a UI.
  core.String description;

  /// Textual representation of an expression in
  /// Common Expression Language syntax.
  ///
  /// The application context of the containing message determines which
  /// well-known feature set of CEL is supported.
  core.String expression;

  /// An optional string indicating the location of the expression for error
  /// reporting, e.g. a file name and a position in the file.
  core.String location;

  /// An optional title for the expression, i.e. a short string describing
  /// its purpose. This can be used e.g. in UIs which allow to enter the
  /// expression.
  core.String title;

  Expr();

  Expr.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("expression")) {
      expression = _json["expression"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (expression != null) {
      _json["expression"] = expression;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// The response containing the roles defined under a resource.
class ListRolesResponse {
  /// To retrieve the next page of results, set
  /// `ListRolesRequest.page_token` to this value.
  core.String nextPageToken;

  /// The Roles defined on this resource.
  core.List<Role> roles;

  ListRolesResponse();

  ListRolesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("roles")) {
      roles = _json["roles"].map((value) => new Role.fromJson(value)).toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (roles != null) {
      _json["roles"] = roles.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The service account keys list response.
class ListServiceAccountKeysResponse {
  /// The public keys for the service account.
  core.List<ServiceAccountKey> keys;

  ListServiceAccountKeysResponse();

  ListServiceAccountKeysResponse.fromJson(core.Map _json) {
    if (_json.containsKey("keys")) {
      keys = _json["keys"]
          .map((value) => new ServiceAccountKey.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (keys != null) {
      _json["keys"] = keys.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The service account list response.
class ListServiceAccountsResponse {
  /// The list of matching service accounts.
  core.List<ServiceAccount> accounts;

  /// To retrieve the next page of results, set
  /// ListServiceAccountsRequest.page_token
  /// to this value.
  core.String nextPageToken;

  ListServiceAccountsResponse();

  ListServiceAccountsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("accounts")) {
      accounts = _json["accounts"]
          .map((value) => new ServiceAccount.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accounts != null) {
      _json["accounts"] = accounts.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// A permission which can be included by a role.
class Permission {
  /// The current custom role support level.
  /// Possible string values are:
  /// - "SUPPORTED" : Permission is fully supported for custom role use.
  /// - "TESTING" : Permission is being tested to check custom role
  /// compatibility.
  /// - "NOT_SUPPORTED" : Permission is not supported for custom role use.
  core.String customRolesSupportLevel;

  /// A brief description of what this Permission is used for.
  core.String description;

  /// The name of this Permission.
  core.String name;

  /// This permission can ONLY be used in predefined roles.
  core.bool onlyInPredefinedRoles;

  /// The current launch stage of the permission.
  /// Possible string values are:
  /// - "ALPHA" : The permission is currently in an alpha phase.
  /// - "BETA" : The permission is currently in a beta phase.
  /// - "GA" : The permission is generally available.
  /// - "DEPRECATED" : The permission is being deprecated.
  core.String stage;

  /// The title of this Permission.
  core.String title;

  Permission();

  Permission.fromJson(core.Map _json) {
    if (_json.containsKey("customRolesSupportLevel")) {
      customRolesSupportLevel = _json["customRolesSupportLevel"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("onlyInPredefinedRoles")) {
      onlyInPredefinedRoles = _json["onlyInPredefinedRoles"];
    }
    if (_json.containsKey("stage")) {
      stage = _json["stage"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (customRolesSupportLevel != null) {
      _json["customRolesSupportLevel"] = customRolesSupportLevel;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (onlyInPredefinedRoles != null) {
      _json["onlyInPredefinedRoles"] = onlyInPredefinedRoles;
    }
    if (stage != null) {
      _json["stage"] = stage;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Defines an Identity and Access Management (IAM) policy. It is used to
/// specify access control policies for Cloud Platform resources.
///
///
/// A `Policy` consists of a list of `bindings`. A `Binding` binds a list of
/// `members` to a `role`, where the members can be user accounts, Google
/// groups,
/// Google domains, and service accounts. A `role` is a named list of
/// permissions
/// defined by IAM.
///
/// **Example**
///
///     {
///       "bindings": [
///         {
///           "role": "roles/owner",
///           "members": [
///             "user:mike@example.com",
///             "group:admins@example.com",
///             "domain:google.com",
///             "serviceAccount:my-other-app@appspot.gserviceaccount.com",
///           ]
///         },
///         {
///           "role": "roles/viewer",
///           "members": ["user:sean@example.com"]
///         }
///       ]
///     }
///
/// For a description of IAM and its features, see the
/// [IAM developer's guide](https://cloud.google.com/iam).
class Policy {
  /// Associates a list of `members` to a `role`.
  /// `bindings` with no members will result in an error.
  core.List<Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help
  /// prevent simultaneous updates of a policy from overwriting each other.
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy.
  ///
  /// If no `etag` is provided in the call to `setIamPolicy`, then the existing
  /// policy is overwritten blindly.
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return convert.BASE64.decode(etag);
  }

  void set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Version of the `Policy`. The default version is 0.
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("bindings")) {
      bindings = _json["bindings"]
          .map((value) => new Binding.fromJson(value))
          .toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bindings != null) {
      _json["bindings"] = bindings.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// The difference delta between two policies.
class PolicyDelta {
  /// The delta for Bindings between two policies.
  core.List<BindingDelta> bindingDeltas;

  PolicyDelta();

  PolicyDelta.fromJson(core.Map _json) {
    if (_json.containsKey("bindingDeltas")) {
      bindingDeltas = _json["bindingDeltas"]
          .map((value) => new BindingDelta.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bindingDeltas != null) {
      _json["bindingDeltas"] =
          bindingDeltas.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The grantable role query request.
class QueryGrantableRolesRequest {
  /// Required. The full resource name to query from the list of grantable
  /// roles.
  ///
  /// The name follows the Google Cloud Platform resource format.
  /// For example, a Cloud Platform project with id `my-project` will be named
  /// `//cloudresourcemanager.googleapis.com/projects/my-project`.
  core.String fullResourceName;

  /// Optional limit on the number of roles to include in the response.
  core.int pageSize;

  /// Optional pagination token returned in an earlier
  /// QueryGrantableRolesResponse.
  core.String pageToken;

  ///
  /// Possible string values are:
  /// - "BASIC" : Omits the `included_permissions` field.
  /// This is the default value.
  /// - "FULL" : Returns all fields.
  core.String view;

  QueryGrantableRolesRequest();

  QueryGrantableRolesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("fullResourceName")) {
      fullResourceName = _json["fullResourceName"];
    }
    if (_json.containsKey("pageSize")) {
      pageSize = _json["pageSize"];
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
    if (_json.containsKey("view")) {
      view = _json["view"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fullResourceName != null) {
      _json["fullResourceName"] = fullResourceName;
    }
    if (pageSize != null) {
      _json["pageSize"] = pageSize;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    if (view != null) {
      _json["view"] = view;
    }
    return _json;
  }
}

/// The grantable role query response.
class QueryGrantableRolesResponse {
  /// To retrieve the next page of results, set
  /// `QueryGrantableRolesRequest.page_token` to this value.
  core.String nextPageToken;

  /// The list of matching roles.
  core.List<Role> roles;

  QueryGrantableRolesResponse();

  QueryGrantableRolesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("roles")) {
      roles = _json["roles"].map((value) => new Role.fromJson(value)).toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (roles != null) {
      _json["roles"] = roles.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A request to get permissions which can be tested on a resource.
class QueryTestablePermissionsRequest {
  /// Required. The full resource name to query from the list of testable
  /// permissions.
  ///
  /// The name follows the Google Cloud Platform resource format.
  /// For example, a Cloud Platform project with id `my-project` will be named
  /// `//cloudresourcemanager.googleapis.com/projects/my-project`.
  core.String fullResourceName;

  /// Optional limit on the number of permissions to include in the response.
  core.int pageSize;

  /// Optional pagination token returned in an earlier
  /// QueryTestablePermissionsRequest.
  core.String pageToken;

  QueryTestablePermissionsRequest();

  QueryTestablePermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("fullResourceName")) {
      fullResourceName = _json["fullResourceName"];
    }
    if (_json.containsKey("pageSize")) {
      pageSize = _json["pageSize"];
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fullResourceName != null) {
      _json["fullResourceName"] = fullResourceName;
    }
    if (pageSize != null) {
      _json["pageSize"] = pageSize;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    return _json;
  }
}

/// The response containing permissions which can be tested on a resource.
class QueryTestablePermissionsResponse {
  /// To retrieve the next page of results, set
  /// `QueryTestableRolesRequest.page_token` to this value.
  core.String nextPageToken;

  /// The Permissions testable on the requested resource.
  core.List<Permission> permissions;

  QueryTestablePermissionsResponse();

  QueryTestablePermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("permissions")) {
      permissions = _json["permissions"]
          .map((value) => new Permission.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (permissions != null) {
      _json["permissions"] =
          permissions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A role in the Identity and Access Management API.
class Role {
  /// The current deleted state of the role. This field is read only.
  /// It will be ignored in calls to CreateRole and UpdateRole.
  core.bool deleted;

  /// Optional.  A human-readable description for the role.
  core.String description;

  /// Used to perform a consistent read-modify-write.
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return convert.BASE64.decode(etag);
  }

  void set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The names of the permissions this role grants when bound in an IAM policy.
  core.List<core.String> includedPermissions;

  /// The name of the role.
  ///
  /// When Role is used in CreateRole, the role name must not be set.
  ///
  /// When Role is used in output and other input such as UpdateRole, the role
  /// name is the complete path, e.g., roles/logging.viewer for curated roles
  /// and organizations/{ORGANIZATION_ID}/roles/logging.viewer for custom roles.
  core.String name;

  /// The current launch stage of the role.
  /// Possible string values are:
  /// - "ALPHA" : The user has indicated this role is currently in an alpha
  /// phase.
  /// - "BETA" : The user has indicated this role is currently in a beta phase.
  /// - "GA" : The user has indicated this role is generally available.
  /// - "DEPRECATED" : The user has indicated this role is being deprecated.
  /// - "DISABLED" : This role is disabled and will not contribute permissions
  /// to any members
  /// it is granted to in policies.
  /// - "EAP" : The user has indicated this role is currently in an eap phase.
  core.String stage;

  /// Optional.  A human-readable title for the role.  Typically this
  /// is limited to 100 UTF-8 bytes.
  core.String title;

  Role();

  Role.fromJson(core.Map _json) {
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("includedPermissions")) {
      includedPermissions = _json["includedPermissions"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("stage")) {
      stage = _json["stage"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (includedPermissions != null) {
      _json["includedPermissions"] = includedPermissions;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (stage != null) {
      _json["stage"] = stage;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// A service account in the Identity and Access Management API.
///
/// To create a service account, specify the `project_id` and the `account_id`
/// for the account.  The `account_id` is unique within the project, and is used
/// to generate the service account email address and a stable
/// `unique_id`.
///
/// If the account already exists, the account's resource name is returned
/// in util::Status's ResourceInfo.resource_name in the format of
/// projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}. The caller can
/// use the name in other methods to access the account.
///
/// All other methods can identify the service account using the format
/// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`.
/// Using `-` as a wildcard for the `PROJECT_ID` will infer the project from
/// the account. The `ACCOUNT` value can be the `email` address or the
/// `unique_id` of the service account.
class ServiceAccount {
  /// Optional. A user-specified description of the service account.  Must be
  /// fewer than 100 UTF-8 bytes.
  core.String displayName;

  /// @OutputOnly The email address of the service account.
  core.String email;

  /// Used to perform a consistent read-modify-write.
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return convert.BASE64.decode(etag);
  }

  void set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The resource name of the service account in the following format:
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`.
  ///
  /// Requests using `-` as a wildcard for the `PROJECT_ID` will infer the
  /// project from the `account` and the `ACCOUNT` value can be the `email`
  /// address or the `unique_id` of the service account.
  ///
  /// In responses the resource name will always be in the format
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`.
  core.String name;

  /// @OutputOnly. The OAuth2 client id for the service account.
  /// This is used in conjunction with the OAuth2 clientconfig API to make
  /// three legged OAuth2 (3LO) flows to access the data of Google users.
  core.String oauth2ClientId;

  /// @OutputOnly The id of the project that owns the service account.
  core.String projectId;

  /// @OutputOnly The unique and stable id of the service account.
  core.String uniqueId;

  ServiceAccount();

  ServiceAccount.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("oauth2ClientId")) {
      oauth2ClientId = _json["oauth2ClientId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("uniqueId")) {
      uniqueId = _json["uniqueId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (oauth2ClientId != null) {
      _json["oauth2ClientId"] = oauth2ClientId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (uniqueId != null) {
      _json["uniqueId"] = uniqueId;
    }
    return _json;
  }
}

/// Represents a service account key.
///
/// A service account has two sets of key-pairs: user-managed, and
/// system-managed.
///
/// User-managed key-pairs can be created and deleted by users.  Users are
/// responsible for rotating these keys periodically to ensure security of
/// their service accounts.  Users retain the private key of these key-pairs,
/// and Google retains ONLY the public key.
///
/// System-managed key-pairs are managed automatically by Google, and rotated
/// daily without user intervention.  The private key never leaves Google's
/// servers to maximize security.
///
/// Public keys for all service accounts are also published at the OAuth2
/// Service Account API.
class ServiceAccountKey {
  /// Specifies the algorithm (and possibly key size) for the key.
  /// Possible string values are:
  /// - "KEY_ALG_UNSPECIFIED" : An unspecified key algorithm.
  /// - "KEY_ALG_RSA_1024" : 1k RSA Key.
  /// - "KEY_ALG_RSA_2048" : 2k RSA Key.
  core.String keyAlgorithm;

  /// The resource name of the service account key in the following format
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{key}`.
  core.String name;

  /// The private key data. Only provided in `CreateServiceAccountKey`
  /// responses. Make sure to keep the private key data secure because it
  /// allows for the assertion of the service account identity.
  /// When decoded, the private key data can be used to authenticate with
  /// Google API client libraries and with
  /// <a href="/sdk/gcloud/reference/auth/activate-service-account">gcloud
  /// auth activate-service-account</a>.
  core.String privateKeyData;
  core.List<core.int> get privateKeyDataAsBytes {
    return convert.BASE64.decode(privateKeyData);
  }

  void set privateKeyDataAsBytes(core.List<core.int> _bytes) {
    privateKeyData =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The output format for the private key.
  /// Only provided in `CreateServiceAccountKey` responses, not
  /// in `GetServiceAccountKey` or `ListServiceAccountKey` responses.
  ///
  /// Google never exposes system-managed private keys, and never retains
  /// user-managed private keys.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified. Equivalent to
  /// `TYPE_GOOGLE_CREDENTIALS_FILE`.
  /// - "TYPE_PKCS12_FILE" : PKCS12 format.
  /// The password for the PKCS12 file is `notasecret`.
  /// For more information, see https://tools.ietf.org/html/rfc7292.
  /// - "TYPE_GOOGLE_CREDENTIALS_FILE" : Google Credentials File format.
  core.String privateKeyType;

  /// The public key data. Only provided in `GetServiceAccountKey` responses.
  core.String publicKeyData;
  core.List<core.int> get publicKeyDataAsBytes {
    return convert.BASE64.decode(publicKeyData);
  }

  void set publicKeyDataAsBytes(core.List<core.int> _bytes) {
    publicKeyData =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The key can be used after this timestamp.
  core.String validAfterTime;

  /// The key can be used before this timestamp.
  core.String validBeforeTime;

  ServiceAccountKey();

  ServiceAccountKey.fromJson(core.Map _json) {
    if (_json.containsKey("keyAlgorithm")) {
      keyAlgorithm = _json["keyAlgorithm"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("privateKeyData")) {
      privateKeyData = _json["privateKeyData"];
    }
    if (_json.containsKey("privateKeyType")) {
      privateKeyType = _json["privateKeyType"];
    }
    if (_json.containsKey("publicKeyData")) {
      publicKeyData = _json["publicKeyData"];
    }
    if (_json.containsKey("validAfterTime")) {
      validAfterTime = _json["validAfterTime"];
    }
    if (_json.containsKey("validBeforeTime")) {
      validBeforeTime = _json["validBeforeTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (keyAlgorithm != null) {
      _json["keyAlgorithm"] = keyAlgorithm;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (privateKeyData != null) {
      _json["privateKeyData"] = privateKeyData;
    }
    if (privateKeyType != null) {
      _json["privateKeyType"] = privateKeyType;
    }
    if (publicKeyData != null) {
      _json["publicKeyData"] = publicKeyData;
    }
    if (validAfterTime != null) {
      _json["validAfterTime"] = validAfterTime;
    }
    if (validBeforeTime != null) {
      _json["validBeforeTime"] = validBeforeTime;
    }
    return _json;
  }
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`. The size of
  /// the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects)
  /// might reject them.
  Policy policy;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("policy")) {
      policy = new Policy.fromJson(_json["policy"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    return _json;
  }
}

/// The service account sign blob request.
class SignBlobRequest {
  /// The bytes to sign.
  core.String bytesToSign;
  core.List<core.int> get bytesToSignAsBytes {
    return convert.BASE64.decode(bytesToSign);
  }

  void set bytesToSignAsBytes(core.List<core.int> _bytes) {
    bytesToSign =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  SignBlobRequest();

  SignBlobRequest.fromJson(core.Map _json) {
    if (_json.containsKey("bytesToSign")) {
      bytesToSign = _json["bytesToSign"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bytesToSign != null) {
      _json["bytesToSign"] = bytesToSign;
    }
    return _json;
  }
}

/// The service account sign blob response.
class SignBlobResponse {
  /// The id of the key used to sign the blob.
  core.String keyId;

  /// The signed blob.
  core.String signature;
  core.List<core.int> get signatureAsBytes {
    return convert.BASE64.decode(signature);
  }

  void set signatureAsBytes(core.List<core.int> _bytes) {
    signature =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  SignBlobResponse();

  SignBlobResponse.fromJson(core.Map _json) {
    if (_json.containsKey("keyId")) {
      keyId = _json["keyId"];
    }
    if (_json.containsKey("signature")) {
      signature = _json["signature"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (keyId != null) {
      _json["keyId"] = keyId;
    }
    if (signature != null) {
      _json["signature"] = signature;
    }
    return _json;
  }
}

/// The service account sign JWT request.
class SignJwtRequest {
  /// The JWT payload to sign, a JSON JWT Claim set.
  core.String payload;

  SignJwtRequest();

  SignJwtRequest.fromJson(core.Map _json) {
    if (_json.containsKey("payload")) {
      payload = _json["payload"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (payload != null) {
      _json["payload"] = payload;
    }
    return _json;
  }
}

/// The service account sign JWT response.
class SignJwtResponse {
  /// The id of the key used to sign the JWT.
  core.String keyId;

  /// The signed JWT.
  core.String signedJwt;

  SignJwtResponse();

  SignJwtResponse.fromJson(core.Map _json) {
    if (_json.containsKey("keyId")) {
      keyId = _json["keyId"];
    }
    if (_json.containsKey("signedJwt")) {
      signedJwt = _json["signedJwt"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (keyId != null) {
      _json["keyId"] = keyId;
    }
    if (signedJwt != null) {
      _json["signedJwt"] = signedJwt;
    }
    return _json;
  }
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`. Permissions with
  /// wildcards (such as '*' or 'storage.*') are not allowed. For more
  /// information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = _json["permissions"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/// Response message for `TestIamPermissions` method.
class TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = _json["permissions"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/// The request to undelete an existing role.
class UndeleteRoleRequest {
  /// Used to perform a consistent read-modify-write.
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return convert.BASE64.decode(etag);
  }

  void set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  UndeleteRoleRequest();

  UndeleteRoleRequest.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    return _json;
  }
}
