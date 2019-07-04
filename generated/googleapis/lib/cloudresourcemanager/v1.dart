// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.cloudresourcemanager.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudresourcemanager/v1';

/// Creates, reads, and updates metadata for Google Cloud Platform resource
/// containers.
class CloudresourcemanagerApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// View your data across Google Cloud Platform services
  static const CloudPlatformReadOnlyScope =
      "https://www.googleapis.com/auth/cloud-platform.read-only";

  final commons.ApiRequester _requester;

  FoldersResourceApi get folders => new FoldersResourceApi(_requester);
  LiensResourceApi get liens => new LiensResourceApi(_requester);
  OperationsResourceApi get operations => new OperationsResourceApi(_requester);
  OrganizationsResourceApi get organizations =>
      new OrganizationsResourceApi(_requester);
  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  CloudresourcemanagerApi(http.Client client,
      {core.String rootUrl = "https://cloudresourcemanager.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class FoldersResourceApi {
  final commons.ApiRequester _requester;

  FoldersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Clears a `Policy` from a resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource for the `Policy` to clear.
  /// Value must have pattern "^folders/[^/]+$".
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
  async.Future<Empty> clearOrgPolicy(
      ClearOrgPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':clearOrgPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets the effective `Policy` on a resource. This is the result of merging
  /// `Policies` in the resource hierarchy. The returned `Policy` will not have
  /// an `etag`set because it is a computed `Policy` across multiple resources.
  /// Subtrees of Resource Manager resource hierarchy with 'under:' prefix will
  /// not be expanded.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - The name of the resource to start computing the effective
  /// `Policy`.
  /// Value must have pattern "^folders/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgPolicy> getEffectiveOrgPolicy(
      GetEffectiveOrgPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getEffectiveOrgPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new OrgPolicy.fromJson(data));
  }

  /// Gets a `Policy` on a resource.
  ///
  /// If no `Policy` is set on the resource, a `Policy` is returned with default
  /// values including `POLICY_TYPE_NOT_SET` for the `policy_type oneof`. The
  /// `etag` value can be used with `SetOrgPolicy()` to create or update a
  /// `Policy` during read-modify-write.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource the `Policy` is set on.
  /// Value must have pattern "^folders/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgPolicy> getOrgPolicy(
      GetOrgPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getOrgPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new OrgPolicy.fromJson(data));
  }

  /// Lists `Constraints` that could be applied on the specified resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource to list `Constraints` for.
  /// Value must have pattern "^folders/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAvailableOrgPolicyConstraintsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAvailableOrgPolicyConstraintsResponse>
      listAvailableOrgPolicyConstraints(
          ListAvailableOrgPolicyConstraintsRequest request,
          core.String resource,
          {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':listAvailableOrgPolicyConstraints';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new ListAvailableOrgPolicyConstraintsResponse.fromJson(data));
  }

  /// Lists all the `Policies` set for a particular resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource to list Policies for.
  /// Value must have pattern "^folders/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOrgPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOrgPoliciesResponse> listOrgPolicies(
      ListOrgPoliciesRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':listOrgPolicies';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOrgPoliciesResponse.fromJson(data));
  }

  /// Updates the specified `Policy` on the resource. Creates a new `Policy` for
  /// that `Constraint` on the resource if one does not exist.
  ///
  /// Not supplying an `etag` on the request `Policy` results in an
  /// unconditional
  /// write of the `Policy`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Resource name of the resource to attach the `Policy`.
  /// Value must have pattern "^folders/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgPolicy> setOrgPolicy(
      SetOrgPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setOrgPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new OrgPolicy.fromJson(data));
  }
}

class LiensResourceApi {
  final commons.ApiRequester _requester;

  LiensResourceApi(commons.ApiRequester client) : _requester = client;

  /// Create a Lien which applies to the resource denoted by the `parent` field.
  ///
  /// Callers of this method will require permission on the `parent` resource.
  /// For example, applying to `projects/1234` requires permission
  /// `resourcemanager.projects.updateLiens`.
  ///
  /// NOTE: Some resources may limit the number of Liens which may be applied.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Lien].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Lien> create(Lien request, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/liens';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Lien.fromJson(data));
  }

  /// Delete a Lien by `name`.
  ///
  /// Callers of this method will require permission on the `parent` resource.
  /// For example, a Lien with a `parent` of `projects/1234` requires permission
  /// `resourcemanager.projects.updateLiens`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name/identifier of the Lien to delete.
  /// Value must have pattern "^liens/.+$".
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
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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

  /// Retrieve a Lien by `name`.
  ///
  /// Callers of this method will require permission on the `parent` resource.
  /// For example, a Lien with a `parent` of `projects/1234` requires permission
  /// requires permission `resourcemanager.projects.get` or
  /// `resourcemanager.projects.updateLiens`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name/identifier of the Lien.
  /// Value must have pattern "^liens/.+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Lien].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Lien> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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
    return _response.then((data) => new Lien.fromJson(data));
  }

  /// List all Liens applied to the `parent` resource.
  ///
  /// Callers of this method will require permission on the `parent` resource.
  /// For example, a Lien with a `parent` of `projects/1234` requires permission
  /// `resourcemanager.projects.get`.
  ///
  /// Request parameters:
  ///
  /// [pageToken] - The `next_page_token` value returned from a previous List
  /// request, if any.
  ///
  /// [pageSize] - The maximum number of items to return. This is a suggestion
  /// for the server.
  ///
  /// [parent] - The name of the resource to list all attached Liens.
  /// For example, `projects/1234`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLiensResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLiensResponse> list(
      {core.String pageToken,
      core.int pageSize,
      core.String parent,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (parent != null) {
      _queryParams["parent"] = [parent];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/liens';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLiensResponse.fromJson(data));
  }
}

class OperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.  Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^operations/.+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class OrganizationsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Clears a `Policy` from a resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource for the `Policy` to clear.
  /// Value must have pattern "^organizations/[^/]+$".
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
  async.Future<Empty> clearOrgPolicy(
      ClearOrgPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':clearOrgPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Fetches an Organization resource identified by the specified resource
  /// name.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the Organization to fetch. This is the
  /// organization's
  /// relative path in the API, formatted as "organizations/[organizationId]".
  /// For example, "organizations/1234".
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Organization].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Organization> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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
    return _response.then((data) => new Organization.fromJson(data));
  }

  /// Gets the effective `Policy` on a resource. This is the result of merging
  /// `Policies` in the resource hierarchy. The returned `Policy` will not have
  /// an `etag`set because it is a computed `Policy` across multiple resources.
  /// Subtrees of Resource Manager resource hierarchy with 'under:' prefix will
  /// not be expanded.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - The name of the resource to start computing the effective
  /// `Policy`.
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgPolicy> getEffectiveOrgPolicy(
      GetEffectiveOrgPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getEffectiveOrgPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new OrgPolicy.fromJson(data));
  }

  /// Gets the access control policy for an Organization resource. May be empty
  /// if no such policy or resource exists. The `resource` field should be the
  /// organization's resource name, e.g. "organizations/123".
  ///
  /// Authorization requires the Google IAM permission
  /// `resourcemanager.organizations.getIamPolicy` on the specified organization
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^organizations/[^/]+$".
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
  async.Future<Policy> getIamPolicy(
      GetIamPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
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

  /// Gets a `Policy` on a resource.
  ///
  /// If no `Policy` is set on the resource, a `Policy` is returned with default
  /// values including `POLICY_TYPE_NOT_SET` for the `policy_type oneof`. The
  /// `etag` value can be used with `SetOrgPolicy()` to create or update a
  /// `Policy` during read-modify-write.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource the `Policy` is set on.
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgPolicy> getOrgPolicy(
      GetOrgPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getOrgPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new OrgPolicy.fromJson(data));
  }

  /// Lists `Constraints` that could be applied on the specified resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource to list `Constraints` for.
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAvailableOrgPolicyConstraintsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAvailableOrgPolicyConstraintsResponse>
      listAvailableOrgPolicyConstraints(
          ListAvailableOrgPolicyConstraintsRequest request,
          core.String resource,
          {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':listAvailableOrgPolicyConstraints';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new ListAvailableOrgPolicyConstraintsResponse.fromJson(data));
  }

  /// Lists all the `Policies` set for a particular resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource to list Policies for.
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOrgPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOrgPoliciesResponse> listOrgPolicies(
      ListOrgPoliciesRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':listOrgPolicies';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOrgPoliciesResponse.fromJson(data));
  }

  /// Searches Organization resources that are visible to the user and satisfy
  /// the specified filter. This method returns Organizations in an unspecified
  /// order. New Organizations do not necessarily appear at the end of the
  /// results.
  ///
  /// Search will only return organizations on which the user has the permission
  /// `resourcemanager.organizations.get`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchOrganizationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchOrganizationsResponse> search(
      SearchOrganizationsRequest request,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/organizations:search';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new SearchOrganizationsResponse.fromJson(data));
  }

  /// Sets the access control policy on an Organization resource. Replaces any
  /// existing policy. The `resource` field should be the organization's
  /// resource
  /// name, e.g. "organizations/123".
  ///
  /// Authorization requires the Google IAM permission
  /// `resourcemanager.organizations.setIamPolicy` on the specified organization
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^organizations/[^/]+$".
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
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
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

  /// Updates the specified `Policy` on the resource. Creates a new `Policy` for
  /// that `Constraint` on the resource if one does not exist.
  ///
  /// Not supplying an `etag` on the request `Policy` results in an
  /// unconditional
  /// write of the `Policy`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Resource name of the resource to attach the `Policy`.
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgPolicy> setOrgPolicy(
      SetOrgPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setOrgPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new OrgPolicy.fromJson(data));
  }

  /// Returns permissions that a caller has on the specified Organization.
  /// The `resource` field should be the organization's resource name,
  /// e.g. "organizations/123".
  ///
  /// There are no permissions required for making this API call.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^organizations/[^/]+$".
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
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
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
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Clears a `Policy` from a resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource for the `Policy` to clear.
  /// Value must have pattern "^projects/[^/]+$".
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
  async.Future<Empty> clearOrgPolicy(
      ClearOrgPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':clearOrgPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Request that a new Project be created. The result is an Operation which
  /// can be used to track the creation process. It is automatically deleted
  /// after a few hours, so there is no need to call DeleteOperation.
  ///
  /// Our SLO permits Project creation to take up to 30 seconds at the 90th
  /// percentile. As of 2016-08-29, we are observing 6 seconds 50th percentile
  /// latency. 95th percentile latency is around 11 seconds. We recommend
  /// polling at the 5th second with an exponential backoff.
  ///
  /// Authorization requires the Google IAM permission
  /// `resourcemanager.projects.create` on the specified parent for the new
  /// project. The parent is identified by a specified ResourceId,
  /// which must include both an ID and a type, such as organization.
  ///
  /// This method does not associate the new project with a billing account.
  /// You can set or update the billing account associated with a project using
  /// the [`projects.updateBillingInfo`]
  /// (/billing/reference/rest/v1/projects/updateBillingInfo) method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(Project request, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Marks the Project identified by the specified
  /// `project_id` (for example, `my-project-123`) for deletion.
  /// This method will only affect the Project if it has a lifecycle state of
  /// ACTIVE.
  ///
  /// This method changes the Project's lifecycle state from
  /// ACTIVE
  /// to DELETE_REQUESTED.
  /// The deletion starts at an unspecified time,
  /// at which point the Project is no longer accessible.
  ///
  /// Until the deletion completes, you can check the lifecycle state
  /// checked by retrieving the Project with GetProject,
  /// and the Project remains visible to ListProjects.
  /// However, you cannot update the project.
  ///
  /// After the deletion completes, the Project is not retrievable by
  /// the  GetProject and
  /// ListProjects methods.
  ///
  /// The caller must have modify permissions for this Project.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The Project ID (for example, `foo-bar-123`).
  ///
  /// Required.
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
  async.Future<Empty> delete(core.String projectId, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Retrieves the Project identified by the specified
  /// `project_id` (for example, `my-project-123`).
  ///
  /// The caller must have read permissions for this Project.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The Project ID (for example, `my-project-123`).
  ///
  /// Required.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Project].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Project> get(core.String projectId, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Project.fromJson(data));
  }

  /// Gets a list of ancestors in the resource hierarchy for the Project
  /// identified by the specified `project_id` (for example, `my-project-123`).
  ///
  /// The caller must have read permissions for this Project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The Project ID (for example, `my-project-123`).
  ///
  /// Required.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetAncestryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetAncestryResponse> getAncestry(
      GetAncestryRequest request, core.String projectId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        ':getAncestry';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GetAncestryResponse.fromJson(data));
  }

  /// Gets the effective `Policy` on a resource. This is the result of merging
  /// `Policies` in the resource hierarchy. The returned `Policy` will not have
  /// an `etag`set because it is a computed `Policy` across multiple resources.
  /// Subtrees of Resource Manager resource hierarchy with 'under:' prefix will
  /// not be expanded.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - The name of the resource to start computing the effective
  /// `Policy`.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgPolicy> getEffectiveOrgPolicy(
      GetEffectiveOrgPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getEffectiveOrgPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new OrgPolicy.fromJson(data));
  }

  /// Returns the IAM access control policy for the specified Project.
  /// Permission is denied if the policy or the resource does not exist.
  ///
  /// Authorization requires the Google IAM permission
  /// `resourcemanager.projects.getIamPolicy` on the project.
  ///
  /// For additional information about resource structure and identification,
  /// see [Resource Names](/apis/design/resource_names).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
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
  async.Future<Policy> getIamPolicy(
      GetIamPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$resource') +
        ':getIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Gets a `Policy` on a resource.
  ///
  /// If no `Policy` is set on the resource, a `Policy` is returned with default
  /// values including `POLICY_TYPE_NOT_SET` for the `policy_type oneof`. The
  /// `etag` value can be used with `SetOrgPolicy()` to create or update a
  /// `Policy` during read-modify-write.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource the `Policy` is set on.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgPolicy> getOrgPolicy(
      GetOrgPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getOrgPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new OrgPolicy.fromJson(data));
  }

  /// Lists Projects that the caller has the `resourcemanager.projects.get`
  /// permission on and satisfy the specified filter.
  ///
  /// This method returns Projects in an unspecified order.
  /// This method is eventually consistent with project mutations; this means
  /// that a newly created project may not appear in the results or recent
  /// updates to an existing project may not be reflected in the results. To
  /// retrieve the latest state of a project, use the
  /// GetProject method.
  ///
  /// NOTE: If the request filter contains a `parent.type` and `parent.id` and
  /// the caller has the `resourcemanager.projects.list` permission on the
  /// parent, the results will be drawn from an alternate index which provides
  /// more consistent results. In future versions of this API, this List method
  /// will be split into List and Search to properly capture the behavorial
  /// difference.
  ///
  /// Request parameters:
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListProjects
  /// that indicates from where listing should continue.
  ///
  /// Optional.
  ///
  /// [pageSize] - The maximum number of Projects to return in the response.
  /// The server can return fewer Projects than requested.
  /// If unspecified, server picks an appropriate default.
  ///
  /// Optional.
  ///
  /// [filter] - An expression for filtering the results of the request.  Filter
  /// rules are
  /// case insensitive. The fields eligible for filtering are:
  ///
  /// + `name`
  /// + `id`
  /// + `labels.<key>` (where *key* is the name of a label)
  /// + `parent.type`
  /// + `parent.id`
  ///
  /// Some examples of using labels as filters:
  ///
  /// | Filter           | Description                                         |
  /// |------------------|-----------------------------------------------------|
  /// | name:how*        | The project's name starts with "how".               |
  /// | name:Howl        | The project's name is `Howl` or `howl`.             |
  /// | name:HOWL        | Equivalent to above.                                |
  /// | NAME:howl        | Equivalent to above.                                |
  /// | labels.color:*   | The project has the label `color`.                  |
  /// | labels.color:red | The project's label `color` has the value `red`.    |
  /// | labels.color:red&nbsp;labels.size:big |The project's label `color` has
  /// the value `red` and its label `size` has the value `big`.              |
  ///
  /// If no filter is specified, the call will return projects for which the
  /// user
  /// has the `resourcemanager.projects.get` permission.
  ///
  /// NOTE: To perform a by-parent query (eg., what projects are directly in a
  /// Folder), the caller must have the `resourcemanager.projects.list`
  /// permission on the parent and the filter must contain both a `parent.type`
  /// and a `parent.id` restriction
  /// (example: "parent.type:folder parent.id:123"). In this case an alternate
  /// search index is used which provides more consistent results.
  ///
  /// Optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProjectsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProjectsResponse> list(
      {core.String pageToken,
      core.int pageSize,
      core.String filter,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListProjectsResponse.fromJson(data));
  }

  /// Lists `Constraints` that could be applied on the specified resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource to list `Constraints` for.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAvailableOrgPolicyConstraintsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAvailableOrgPolicyConstraintsResponse>
      listAvailableOrgPolicyConstraints(
          ListAvailableOrgPolicyConstraintsRequest request,
          core.String resource,
          {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':listAvailableOrgPolicyConstraints';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new ListAvailableOrgPolicyConstraintsResponse.fromJson(data));
  }

  /// Lists all the `Policies` set for a particular resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource to list Policies for.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOrgPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOrgPoliciesResponse> listOrgPolicies(
      ListOrgPoliciesRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':listOrgPolicies';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOrgPoliciesResponse.fromJson(data));
  }

  /// Sets the IAM access control policy for the specified Project. Overwrites
  /// any existing policy.
  ///
  /// The following constraints apply when using `setIamPolicy()`:
  ///
  /// + Project does not support `allUsers` and `allAuthenticatedUsers` as
  /// `members` in a `Binding` of a `Policy`.
  ///
  /// + The owner role can be granted only to `user` and `serviceAccount`.
  ///
  /// + Service accounts can be made owners of a project directly
  /// without any restrictions. However, to be added as an owner, a user must be
  /// invited via Cloud Platform console and must accept the invitation.
  ///
  /// + A user cannot be granted the owner role using `setIamPolicy()`. The user
  /// must be granted the owner role using the Cloud Platform Console and must
  /// explicitly accept the invitation.
  ///
  /// + You can only grant ownership of a project to a member by using the
  /// GCP Console. Inviting a member will deliver an invitation email that
  /// they must accept. An invitation email is not generated if you are
  /// granting a role other than owner, or if both the member you are inviting
  /// and the project are part of your organization.
  ///
  /// + Membership changes that leave the project without any owners that have
  /// accepted the Terms of Service (ToS) will be rejected.
  ///
  /// + If the project is not part of an organization, there must be at least
  /// one owner who has accepted the Terms of Service (ToS) agreement in the
  /// policy. Calling `setIamPolicy()` to remove the last ToS-accepted owner
  /// from the policy will fail. This restriction also applies to legacy
  /// projects that no longer have owners who have accepted the ToS. Edits to
  /// IAM policies will be rejected until the lack of a ToS-accepting owner is
  /// rectified.
  ///
  /// + This method will replace the existing policy, and cannot be used to
  /// append additional IAM settings.
  ///
  /// Note: Removing service accounts from policies or changing their roles
  /// can render services completely inoperable. It is important to understand
  /// how the service account is being used before removing or updating its
  /// roles.
  ///
  /// Authorization requires the Google IAM permission
  /// `resourcemanager.projects.setIamPolicy` on the project
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified.
  /// See the operation documentation for the appropriate value for this field.
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
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$resource') +
        ':setIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Updates the specified `Policy` on the resource. Creates a new `Policy` for
  /// that `Constraint` on the resource if one does not exist.
  ///
  /// Not supplying an `etag` on the request `Policy` results in an
  /// unconditional
  /// write of the `Policy`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Resource name of the resource to attach the `Policy`.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgPolicy> setOrgPolicy(
      SetOrgPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setOrgPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new OrgPolicy.fromJson(data));
  }

  /// Returns permissions that a caller has on the specified Project.
  ///
  /// There are no permissions required for making this API call.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
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
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$resource') +
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

  /// Restores the Project identified by the specified
  /// `project_id` (for example, `my-project-123`).
  /// You can only use this method for a Project that has a lifecycle state of
  /// DELETE_REQUESTED.
  /// After deletion starts, the Project cannot be restored.
  ///
  /// The caller must have modify permissions for this Project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project ID (for example, `foo-bar-123`).
  ///
  /// Required.
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
  async.Future<Empty> undelete(
      UndeleteProjectRequest request, core.String projectId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        ':undelete';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Updates the attributes of the Project identified by the specified
  /// `project_id` (for example, `my-project-123`).
  ///
  /// The caller must have modify permissions for this Project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project ID (for example, `my-project-123`).
  ///
  /// Required.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Project].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Project> update(Project request, core.String projectId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Project.fromJson(data));
  }
}

/// Identifying information for a single ancestor of a project.
class Ancestor {
  /// Resource id of the ancestor.
  ResourceId resourceId;

  Ancestor();

  Ancestor.fromJson(core.Map _json) {
    if (_json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(_json["resourceId"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (resourceId != null) {
      _json["resourceId"] = (resourceId).toJson();
    }
    return _json;
  }
}

/// Specifies the audit configuration for a service.
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging.
/// An AuditConfig must have one or more AuditLogConfigs.
///
/// If there are AuditConfigs for both `allServices` and a specific service,
/// the union of the two AuditConfigs is used for that service: the log_types
/// specified in each AuditConfig are enabled, and the exempted_members in each
/// AuditLogConfig are exempted.
///
/// Example Policy with multiple AuditConfigs:
///
///     {
///       "audit_configs": [
///         {
///           "service": "allServices"
///           "audit_log_configs": [
///             {
///               "log_type": "DATA_READ",
///               "exempted_members": [
///                 "user:foo@gmail.com"
///               ]
///             },
///             {
///               "log_type": "DATA_WRITE",
///             },
///             {
///               "log_type": "ADMIN_READ",
///             }
///           ]
///         },
///         {
///           "service": "fooservice.googleapis.com"
///           "audit_log_configs": [
///             {
///               "log_type": "DATA_READ",
///             },
///             {
///               "log_type": "DATA_WRITE",
///               "exempted_members": [
///                 "user:bar@gmail.com"
///               ]
///             }
///           ]
///         }
///       ]
///     }
///
/// For fooservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts foo@gmail.com from DATA_READ logging, and
/// bar@gmail.com from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig> auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String service;

  AuditConfig();

  AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey("auditLogConfigs")) {
      auditLogConfigs = (_json["auditLogConfigs"] as core.List)
          .map<AuditLogConfig>((value) => new AuditLogConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (auditLogConfigs != null) {
      _json["auditLogConfigs"] =
          auditLogConfigs.map((value) => (value).toJson()).toList();
    }
    if (service != null) {
      _json["service"] = service;
    }
    return _json;
  }
}

/// Provides the configuration for logging a type of permissions.
/// Example:
///
///     {
///       "audit_log_configs": [
///         {
///           "log_type": "DATA_READ",
///           "exempted_members": [
///             "user:foo@gmail.com"
///           ]
///         },
///         {
///           "log_type": "DATA_WRITE",
///         }
///       ]
///     }
///
/// This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting
/// foo@gmail.com from DATA_READ logging.
class AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission.
  /// Follows the same format of Binding.members.
  core.List<core.String> exemptedMembers;

  /// The log type that this config enables.
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
  /// - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
  /// - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
  /// - "DATA_READ" : Data reads. Example: CloudSQL Users list
  core.String logType;

  AuditLogConfig();

  AuditLogConfig.fromJson(core.Map _json) {
    if (_json.containsKey("exemptedMembers")) {
      exemptedMembers =
          (_json["exemptedMembers"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("logType")) {
      logType = _json["logType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exemptedMembers != null) {
      _json["exemptedMembers"] = exemptedMembers;
    }
    if (logType != null) {
      _json["logType"] = logType;
    }
    return _json;
  }
}

/// Associates `members` with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  /// NOTE: An unsatisfied condition will not allow user access via current
  /// binding. Different bindings, including their conditions, are examined
  /// independently.
  Expr condition;

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
  ///    account. For example, `alice@gmail.com` .
  ///
  ///
  /// * `serviceAccount:{emailid}`: An email address that represents a service
  ///    account. For example, `my-other-app@appspot.gserviceaccount.com`.
  ///
  /// * `group:{emailid}`: An email address that represents a Google group.
  ///    For example, `admins@example.com`.
  ///
  ///
  /// * `domain:{domain}`: The G Suite domain (primary) that represents all the
  ///    users of that domain. For example, `google.com` or `example.com`.
  core.List<core.String> members;

  /// Role that is assigned to `members`.
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey("condition")) {
      condition = new Expr.fromJson(_json["condition"]);
    }
    if (_json.containsKey("members")) {
      members = (_json["members"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (condition != null) {
      _json["condition"] = (condition).toJson();
    }
    if (members != null) {
      _json["members"] = members;
    }
    if (role != null) {
      _json["role"] = role;
    }
    return _json;
  }
}

/// A `Constraint` that is either enforced or not.
///
/// For example a constraint `constraints/compute.disableSerialPortAccess`.
/// If it is enforced on a VM instance, serial port connections will not be
/// opened to that instance.
class BooleanConstraint {
  BooleanConstraint();

  BooleanConstraint.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Used in `policy_type` to specify how `boolean_policy` will behave at this
/// resource.
class BooleanPolicy {
  /// If `true`, then the `Policy` is enforced. If `false`, then any
  /// configuration is acceptable.
  ///
  /// Suppose you have a `Constraint`
  /// `constraints/compute.disableSerialPortAccess` with `constraint_default`
  /// set to `ALLOW`. A `Policy` for that `Constraint` exhibits the following
  /// behavior:
  ///   - If the `Policy` at this resource has enforced set to `false`, serial
  ///     port connection attempts will be allowed.
  ///   - If the `Policy` at this resource has enforced set to `true`, serial
  ///     port connection attempts will be refused.
  ///   - If the `Policy` at this resource is `RestoreDefault`, serial port
  ///     connection attempts will be allowed.
  ///   - If no `Policy` is set at this resource or anywhere higher in the
  ///     resource hierarchy, serial port connection attempts will be allowed.
  ///   - If no `Policy` is set at this resource, but one exists higher in the
  ///     resource hierarchy, the behavior is as if the`Policy` were set at
  ///     this resource.
  ///
  /// The following examples demonstrate the different possible layerings:
  ///
  /// Example 1 (nearest `Constraint` wins):
  ///   `organizations/foo` has a `Policy` with:
  ///     {enforced: false}
  ///   `projects/bar` has no `Policy` set.
  /// The constraint at `projects/bar` and `organizations/foo` will not be
  /// enforced.
  ///
  /// Example 2 (enforcement gets replaced):
  ///   `organizations/foo` has a `Policy` with:
  ///     {enforced: false}
  ///   `projects/bar` has a `Policy` with:
  ///     {enforced: true}
  /// The constraint at `organizations/foo` is not enforced.
  /// The constraint at `projects/bar` is enforced.
  ///
  /// Example 3 (RestoreDefault):
  ///   `organizations/foo` has a `Policy` with:
  ///     {enforced: true}
  ///   `projects/bar` has a `Policy` with:
  ///     {RestoreDefault: {}}
  /// The constraint at `organizations/foo` is enforced.
  /// The constraint at `projects/bar` is not enforced, because
  /// `constraint_default` for the `Constraint` is `ALLOW`.
  core.bool enforced;

  BooleanPolicy();

  BooleanPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("enforced")) {
      enforced = _json["enforced"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enforced != null) {
      _json["enforced"] = enforced;
    }
    return _json;
  }
}

/// The request sent to the ClearOrgPolicy method.
class ClearOrgPolicyRequest {
  /// Name of the `Constraint` of the `Policy` to clear.
  core.String constraint;

  /// The current version, for concurrency control. Not sending an `etag`
  /// will cause the `Policy` to be cleared blindly.
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return convert.base64.decode(etag);
  }

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  ClearOrgPolicyRequest();

  ClearOrgPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("constraint")) {
      constraint = _json["constraint"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (constraint != null) {
      _json["constraint"] = constraint;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    return _json;
  }
}

/// A `Constraint` describes a way in which a resource's configuration can be
/// restricted. For example, it controls which cloud services can be activated
/// across an organization, or whether a Compute Engine instance can have
/// serial port connections established. `Constraints` can be configured by the
/// organization's policy adminstrator to fit the needs of the organzation by
/// setting Policies for `Constraints` at different locations in the
/// organization's resource hierarchy. Policies are inherited down the resource
/// hierarchy from higher levels, but can also be overridden. For details about
/// the inheritance rules please read about
/// Policies.
///
/// `Constraints` have a default behavior determined by the `constraint_default`
/// field, which is the enforcement behavior that is used in the absence of a
/// `Policy` being defined or inherited for the resource in question.
class Constraint {
  /// Defines this constraint as being a BooleanConstraint.
  BooleanConstraint booleanConstraint;

  /// The evaluation behavior of this constraint in the absense of 'Policy'.
  /// Possible string values are:
  /// - "CONSTRAINT_DEFAULT_UNSPECIFIED" : This is only used for distinguishing
  /// unset values and should never be
  /// used.
  /// - "ALLOW" : Indicate that all values are allowed for list constraints.
  /// Indicate that enforcement is off for boolean constraints.
  /// - "DENY" : Indicate that all values are denied for list constraints.
  /// Indicate that enforcement is on for boolean constraints.
  core.String constraintDefault;

  /// Detailed description of what this `Constraint` controls as well as how and
  /// where it is enforced.
  ///
  /// Mutable.
  core.String description;

  /// The human readable name.
  ///
  /// Mutable.
  core.String displayName;

  /// Defines this constraint as being a ListConstraint.
  ListConstraint listConstraint;

  /// Immutable value, required to globally be unique. For example,
  /// `constraints/serviceuser.services`
  core.String name;

  /// Version of the `Constraint`. Default version is 0;
  core.int version;

  Constraint();

  Constraint.fromJson(core.Map _json) {
    if (_json.containsKey("booleanConstraint")) {
      booleanConstraint =
          new BooleanConstraint.fromJson(_json["booleanConstraint"]);
    }
    if (_json.containsKey("constraintDefault")) {
      constraintDefault = _json["constraintDefault"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("listConstraint")) {
      listConstraint = new ListConstraint.fromJson(_json["listConstraint"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (booleanConstraint != null) {
      _json["booleanConstraint"] = (booleanConstraint).toJson();
    }
    if (constraintDefault != null) {
      _json["constraintDefault"] = constraintDefault;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (listConstraint != null) {
      _json["listConstraint"] = (listConstraint).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (version != null) {
      _json["version"] = version;
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

/// Metadata describing a long running folder operation
class FolderOperation {
  /// The resource name of the folder or organization we are either creating
  /// the folder under or moving the folder to.
  core.String destinationParent;

  /// The display name of the folder.
  core.String displayName;

  /// The type of this operation.
  /// Possible string values are:
  /// - "OPERATION_TYPE_UNSPECIFIED" : Operation type not specified.
  /// - "CREATE" : A create folder operation.
  /// - "MOVE" : A move folder operation.
  core.String operationType;

  /// The resource name of the folder's parent.
  /// Only applicable when the operation_type is MOVE.
  core.String sourceParent;

  FolderOperation();

  FolderOperation.fromJson(core.Map _json) {
    if (_json.containsKey("destinationParent")) {
      destinationParent = _json["destinationParent"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("operationType")) {
      operationType = _json["operationType"];
    }
    if (_json.containsKey("sourceParent")) {
      sourceParent = _json["sourceParent"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (destinationParent != null) {
      _json["destinationParent"] = destinationParent;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (operationType != null) {
      _json["operationType"] = operationType;
    }
    if (sourceParent != null) {
      _json["sourceParent"] = sourceParent;
    }
    return _json;
  }
}

/// A classification of the Folder Operation error.
class FolderOperationError {
  /// The type of operation error experienced.
  /// Possible string values are:
  /// - "ERROR_TYPE_UNSPECIFIED" : The error type was unrecognized or
  /// unspecified.
  /// - "ACTIVE_FOLDER_HEIGHT_VIOLATION" : The attempted action would violate
  /// the max folder depth constraint.
  /// - "MAX_CHILD_FOLDERS_VIOLATION" : The attempted action would violate the
  /// max child folders constraint.
  /// - "FOLDER_NAME_UNIQUENESS_VIOLATION" : The attempted action would violate
  /// the locally-unique folder
  /// display_name constraint.
  /// - "RESOURCE_DELETED_VIOLATION" : The resource being moved has been
  /// deleted.
  /// - "PARENT_DELETED_VIOLATION" : The resource a folder was being added to
  /// has been deleted.
  /// - "CYCLE_INTRODUCED_VIOLATION" : The attempted action would introduce
  /// cycle in resource path.
  /// - "FOLDER_BEING_MOVED_VIOLATION" : The attempted action would move a
  /// folder that is already being moved.
  /// - "FOLDER_TO_DELETE_NON_EMPTY_VIOLATION" : The folder the caller is trying
  /// to delete contains active resources.
  /// - "DELETED_FOLDER_HEIGHT_VIOLATION" : The attempted action would violate
  /// the max deleted folder depth
  /// constraint.
  core.String errorMessageId;

  FolderOperationError();

  FolderOperationError.fromJson(core.Map _json) {
    if (_json.containsKey("errorMessageId")) {
      errorMessageId = _json["errorMessageId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (errorMessageId != null) {
      _json["errorMessageId"] = errorMessageId;
    }
    return _json;
  }
}

/// The request sent to the
/// GetAncestry
/// method.
class GetAncestryRequest {
  GetAncestryRequest();

  GetAncestryRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Response from the GetAncestry method.
class GetAncestryResponse {
  /// Ancestors are ordered from bottom to top of the resource hierarchy. The
  /// first ancestor is the project itself, followed by the project's parent,
  /// etc..
  core.List<Ancestor> ancestor;

  GetAncestryResponse();

  GetAncestryResponse.fromJson(core.Map _json) {
    if (_json.containsKey("ancestor")) {
      ancestor = (_json["ancestor"] as core.List)
          .map<Ancestor>((value) => new Ancestor.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ancestor != null) {
      _json["ancestor"] = ancestor.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The request sent to the GetEffectiveOrgPolicy method.
class GetEffectiveOrgPolicyRequest {
  /// The name of the `Constraint` to compute the effective `Policy`.
  core.String constraint;

  GetEffectiveOrgPolicyRequest();

  GetEffectiveOrgPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("constraint")) {
      constraint = _json["constraint"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (constraint != null) {
      _json["constraint"] = constraint;
    }
    return _json;
  }
}

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`. This field is only used by Cloud IAM.
  GetPolicyOptions options;

  GetIamPolicyRequest();

  GetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("options")) {
      options = new GetPolicyOptions.fromJson(_json["options"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (options != null) {
      _json["options"] = (options).toJson();
    }
    return _json;
  }
}

/// The request sent to the GetOrgPolicy method.
class GetOrgPolicyRequest {
  /// Name of the `Constraint` to get the `Policy`.
  core.String constraint;

  GetOrgPolicyRequest();

  GetOrgPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("constraint")) {
      constraint = _json["constraint"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (constraint != null) {
      _json["constraint"] = constraint;
    }
    return _json;
  }
}

/// Encapsulates settings provided to GetIamPolicy.
class GetPolicyOptions {
  /// Optional. The policy format version to be returned.
  /// Acceptable values are 0 and 1.
  /// If the value is 0, or the field is omitted, policy format version 1 will
  /// be
  /// returned.
  core.int requestedPolicyVersion;

  GetPolicyOptions();

  GetPolicyOptions.fromJson(core.Map _json) {
    if (_json.containsKey("requestedPolicyVersion")) {
      requestedPolicyVersion = _json["requestedPolicyVersion"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (requestedPolicyVersion != null) {
      _json["requestedPolicyVersion"] = requestedPolicyVersion;
    }
    return _json;
  }
}

/// A Lien represents an encumbrance on the actions that can be performed on a
/// resource.
class Lien {
  /// The creation time of this Lien.
  core.String createTime;

  /// A system-generated unique identifier for this Lien.
  ///
  /// Example: `liens/1234abcd`
  core.String name;

  /// A stable, user-visible/meaningful string identifying the origin of the
  /// Lien, intended to be inspected programmatically. Maximum length of 200
  /// characters.
  ///
  /// Example: 'compute.googleapis.com'
  core.String origin;

  /// A reference to the resource this Lien is attached to. The server will
  /// validate the parent against those for which Liens are supported.
  ///
  /// Example: `projects/1234`
  core.String parent;

  /// Concise user-visible strings indicating why an action cannot be performed
  /// on a resource. Maximum length of 200 characters.
  ///
  /// Example: 'Holds production API key'
  core.String reason;

  /// The types of operations which should be blocked as a result of this Lien.
  /// Each value should correspond to an IAM permission. The server will
  /// validate the permissions against those for which Liens are supported.
  ///
  /// An empty list is meaningless and will be rejected.
  ///
  /// Example: ['resourcemanager.projects.delete']
  core.List<core.String> restrictions;

  Lien();

  Lien.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("origin")) {
      origin = _json["origin"];
    }
    if (_json.containsKey("parent")) {
      parent = _json["parent"];
    }
    if (_json.containsKey("reason")) {
      reason = _json["reason"];
    }
    if (_json.containsKey("restrictions")) {
      restrictions = (_json["restrictions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (origin != null) {
      _json["origin"] = origin;
    }
    if (parent != null) {
      _json["parent"] = parent;
    }
    if (reason != null) {
      _json["reason"] = reason;
    }
    if (restrictions != null) {
      _json["restrictions"] = restrictions;
    }
    return _json;
  }
}

/// The request sent to the [ListAvailableOrgPolicyConstraints]
/// google.cloud.OrgPolicy.v1.ListAvailableOrgPolicyConstraints] method.
class ListAvailableOrgPolicyConstraintsRequest {
  /// Size of the pages to be returned. This is currently unsupported and will
  /// be ignored. The server may at any point start using this field to limit
  /// page size.
  core.int pageSize;

  /// Page token used to retrieve the next page. This is currently unsupported
  /// and will be ignored. The server may at any point start using this field.
  core.String pageToken;

  ListAvailableOrgPolicyConstraintsRequest();

  ListAvailableOrgPolicyConstraintsRequest.fromJson(core.Map _json) {
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
    if (pageSize != null) {
      _json["pageSize"] = pageSize;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    return _json;
  }
}

/// The response returned from the ListAvailableOrgPolicyConstraints method.
/// Returns all `Constraints` that could be set at this level of the hierarchy
/// (contrast with the response from `ListPolicies`, which returns all policies
/// which are set).
class ListAvailableOrgPolicyConstraintsResponse {
  /// The collection of constraints that are settable on the request resource.
  core.List<Constraint> constraints;

  /// Page token used to retrieve the next page. This is currently not used.
  core.String nextPageToken;

  ListAvailableOrgPolicyConstraintsResponse();

  ListAvailableOrgPolicyConstraintsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("constraints")) {
      constraints = (_json["constraints"] as core.List)
          .map<Constraint>((value) => new Constraint.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (constraints != null) {
      _json["constraints"] =
          constraints.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// A `Constraint` that allows or disallows a list of string values, which are
/// configured by an Organization's policy administrator with a `Policy`.
class ListConstraint {
  /// Optional. The Google Cloud Console will try to default to a configuration
  /// that matches the value specified in this `Constraint`.
  core.String suggestedValue;

  /// Indicates whether subtrees of Cloud Resource Manager resource hierarchy
  /// can be used in `Policy.allowed_values` and `Policy.denied_values`. For
  /// example, `"under:folders/123"` would match any resource under the
  /// 'folders/123' folder.
  core.bool supportsUnder;

  ListConstraint();

  ListConstraint.fromJson(core.Map _json) {
    if (_json.containsKey("suggestedValue")) {
      suggestedValue = _json["suggestedValue"];
    }
    if (_json.containsKey("supportsUnder")) {
      supportsUnder = _json["supportsUnder"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (suggestedValue != null) {
      _json["suggestedValue"] = suggestedValue;
    }
    if (supportsUnder != null) {
      _json["supportsUnder"] = supportsUnder;
    }
    return _json;
  }
}

/// The response message for Liens.ListLiens.
class ListLiensResponse {
  /// A list of Liens.
  core.List<Lien> liens;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  ListLiensResponse();

  ListLiensResponse.fromJson(core.Map _json) {
    if (_json.containsKey("liens")) {
      liens = (_json["liens"] as core.List)
          .map<Lien>((value) => new Lien.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (liens != null) {
      _json["liens"] = liens.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The request sent to the ListOrgPolicies method.
class ListOrgPoliciesRequest {
  /// Size of the pages to be returned. This is currently unsupported and will
  /// be ignored. The server may at any point start using this field to limit
  /// page size.
  core.int pageSize;

  /// Page token used to retrieve the next page. This is currently unsupported
  /// and will be ignored. The server may at any point start using this field.
  core.String pageToken;

  ListOrgPoliciesRequest();

  ListOrgPoliciesRequest.fromJson(core.Map _json) {
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
    if (pageSize != null) {
      _json["pageSize"] = pageSize;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    return _json;
  }
}

/// The response returned from the ListOrgPolicies method. It will be empty
/// if no `Policies` are set on the resource.
class ListOrgPoliciesResponse {
  /// Page token used to retrieve the next page. This is currently not used, but
  /// the server may at any point start supplying a valid token.
  core.String nextPageToken;

  /// The `Policies` that are set on the resource. It will be empty if no
  /// `Policies` are set.
  core.List<OrgPolicy> policies;

  ListOrgPoliciesResponse();

  ListOrgPoliciesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("policies")) {
      policies = (_json["policies"] as core.List)
          .map<OrgPolicy>((value) => new OrgPolicy.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (policies != null) {
      _json["policies"] = policies.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Used in `policy_type` to specify how `list_policy` behaves at this
/// resource.
///
/// `ListPolicy` can define specific values and subtrees of Cloud Resource
/// Manager resource hierarchy (`Organizations`, `Folders`, `Projects`) that
/// are allowed or denied by setting the `allowed_values` and `denied_values`
/// fields. This is achieved by using the `under:` and optional `is:` prefixes.
/// The `under:` prefix is used to denote resource subtree values.
/// The `is:` prefix is used to denote specific values, and is required only
/// if the value contains a ":". Values prefixed with "is:" are treated the
/// same as values with no prefix.
/// Ancestry subtrees must be in one of the following formats:
///     - “projects/<project-id>”, e.g. “projects/tokyo-rain-123”
///     - “folders/<folder-id>”, e.g. “folders/1234”
///     - “organizations/<organization-id>”, e.g. “organizations/1234”
/// The `supports_under` field of the associated `Constraint`  defines whether
/// ancestry prefixes can be used. You can set `allowed_values` and
/// `denied_values` in the same `Policy` if `all_values` is
/// `ALL_VALUES_UNSPECIFIED`. `ALLOW` or `DENY` are used to allow or deny all
/// values. If `all_values` is set to either `ALLOW` or `DENY`,
/// `allowed_values` and `denied_values` must be unset.
class ListPolicy {
  /// The policy all_values state.
  /// Possible string values are:
  /// - "ALL_VALUES_UNSPECIFIED" : Indicates that allowed_values or
  /// denied_values must be set.
  /// - "ALLOW" : A policy with this set allows all values.
  /// - "DENY" : A policy with this set denies all values.
  core.String allValues;

  /// List of values allowed  at this resource. Can only be set if `all_values`
  /// is set to `ALL_VALUES_UNSPECIFIED`.
  core.List<core.String> allowedValues;

  /// List of values denied at this resource. Can only be set if `all_values`
  /// is set to `ALL_VALUES_UNSPECIFIED`.
  core.List<core.String> deniedValues;

  /// Determines the inheritance behavior for this `Policy`.
  ///
  /// By default, a `ListPolicy` set at a resource supercedes any `Policy` set
  /// anywhere up the resource hierarchy. However, if `inherit_from_parent` is
  /// set to `true`, then the values from the effective `Policy` of the parent
  /// resource are inherited, meaning the values set in this `Policy` are
  /// added to the values inherited up the hierarchy.
  ///
  /// Setting `Policy` hierarchies that inherit both allowed values and denied
  /// values isn't recommended in most circumstances to keep the configuration
  /// simple and understandable. However, it is possible to set a `Policy` with
  /// `allowed_values` set that inherits a `Policy` with `denied_values` set.
  /// In this case, the values that are allowed must be in `allowed_values` and
  /// not present in `denied_values`.
  ///
  /// For example, suppose you have a `Constraint`
  /// `constraints/serviceuser.services`, which has a `constraint_type` of
  /// `list_constraint`, and with `constraint_default` set to `ALLOW`.
  /// Suppose that at the Organization level, a `Policy` is applied that
  /// restricts the allowed API activations to {`E1`, `E2`}. Then, if a
  /// `Policy` is applied to a project below the Organization that has
  /// `inherit_from_parent` set to `false` and field all_values set to DENY,
  /// then an attempt to activate any API will be denied.
  ///
  /// The following examples demonstrate different possible layerings for
  /// `projects/bar` parented by `organizations/foo`:
  ///
  /// Example 1 (no inherited values):
  ///   `organizations/foo` has a `Policy` with values:
  ///     {allowed_values: “E1” allowed_values:”E2”}
  ///   `projects/bar` has `inherit_from_parent` `false` and values:
  ///     {allowed_values: "E3" allowed_values: "E4"}
  /// The accepted values at `organizations/foo` are `E1`, `E2`.
  /// The accepted values at `projects/bar` are `E3`, and `E4`.
  ///
  /// Example 2 (inherited values):
  ///   `organizations/foo` has a `Policy` with values:
  ///     {allowed_values: “E1” allowed_values:”E2”}
  ///   `projects/bar` has a `Policy` with values:
  ///     {value: “E3” value: ”E4” inherit_from_parent: true}
  /// The accepted values at `organizations/foo` are `E1`, `E2`.
  /// The accepted values at `projects/bar` are `E1`, `E2`, `E3`, and `E4`.
  ///
  /// Example 3 (inheriting both allowed and denied values):
  ///   `organizations/foo` has a `Policy` with values:
  ///     {allowed_values: "E1" allowed_values: "E2"}
  ///   `projects/bar` has a `Policy` with:
  ///     {denied_values: "E1"}
  /// The accepted values at `organizations/foo` are `E1`, `E2`.
  /// The value accepted at `projects/bar` is `E2`.
  ///
  /// Example 4 (RestoreDefault):
  ///   `organizations/foo` has a `Policy` with values:
  ///     {allowed_values: “E1” allowed_values:”E2”}
  ///   `projects/bar` has a `Policy` with values:
  ///     {RestoreDefault: {}}
  /// The accepted values at `organizations/foo` are `E1`, `E2`.
  /// The accepted values at `projects/bar` are either all or none depending on
  /// the value of `constraint_default` (if `ALLOW`, all; if
  /// `DENY`, none).
  ///
  /// Example 5 (no policy inherits parent policy):
  ///   `organizations/foo` has no `Policy` set.
  ///   `projects/bar` has no `Policy` set.
  /// The accepted values at both levels are either all or none depending on
  /// the value of `constraint_default` (if `ALLOW`, all; if
  /// `DENY`, none).
  ///
  /// Example 6 (ListConstraint allowing all):
  ///   `organizations/foo` has a `Policy` with values:
  ///     {allowed_values: “E1” allowed_values: ”E2”}
  ///   `projects/bar` has a `Policy` with:
  ///     {all: ALLOW}
  /// The accepted values at `organizations/foo` are `E1`, E2`.
  /// Any value is accepted at `projects/bar`.
  ///
  /// Example 7 (ListConstraint allowing none):
  ///   `organizations/foo` has a `Policy` with values:
  ///     {allowed_values: “E1” allowed_values: ”E2”}
  ///   `projects/bar` has a `Policy` with:
  ///     {all: DENY}
  /// The accepted values at `organizations/foo` are `E1`, E2`.
  /// No value is accepted at `projects/bar`.
  ///
  /// Example 10 (allowed and denied subtrees of Resource Manager hierarchy):
  /// Given the following resource hierarchy
  ///   O1->{F1, F2}; F1->{P1}; F2->{P2, P3},
  ///   `organizations/foo` has a `Policy` with values:
  ///     {allowed_values: "under:organizations/O1"}
  ///   `projects/bar` has a `Policy` with:
  ///     {allowed_values: "under:projects/P3"}
  ///     {denied_values: "under:folders/F2"}
  /// The accepted values at `organizations/foo` are `organizations/O1`,
  ///   `folders/F1`, `folders/F2`, `projects/P1`, `projects/P2`,
  ///   `projects/P3`.
  /// The accepted values at `projects/bar` are `organizations/O1`,
  ///   `folders/F1`, `projects/P1`.
  core.bool inheritFromParent;

  /// Optional. The Google Cloud Console will try to default to a configuration
  /// that matches the value specified in this `Policy`. If `suggested_value`
  /// is not set, it will inherit the value specified higher in the hierarchy,
  /// unless `inherit_from_parent` is `false`.
  core.String suggestedValue;

  ListPolicy();

  ListPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("allValues")) {
      allValues = _json["allValues"];
    }
    if (_json.containsKey("allowedValues")) {
      allowedValues = (_json["allowedValues"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("deniedValues")) {
      deniedValues = (_json["deniedValues"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("inheritFromParent")) {
      inheritFromParent = _json["inheritFromParent"];
    }
    if (_json.containsKey("suggestedValue")) {
      suggestedValue = _json["suggestedValue"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allValues != null) {
      _json["allValues"] = allValues;
    }
    if (allowedValues != null) {
      _json["allowedValues"] = allowedValues;
    }
    if (deniedValues != null) {
      _json["deniedValues"] = deniedValues;
    }
    if (inheritFromParent != null) {
      _json["inheritFromParent"] = inheritFromParent;
    }
    if (suggestedValue != null) {
      _json["suggestedValue"] = suggestedValue;
    }
    return _json;
  }
}

/// A page of the response received from the
/// ListProjects
/// method.
///
/// A paginated response where more pages are available has
/// `next_page_token` set. This token can be used in a subsequent request to
/// retrieve the next request page.
class ListProjectsResponse {
  /// Pagination token.
  ///
  /// If the result set is too large to fit in a single response, this token
  /// is returned. It encodes the position of the current result cursor.
  /// Feeding this value into a new list request with the `page_token` parameter
  /// gives the next page of the results.
  ///
  /// When `next_page_token` is not filled in, there is no next page and
  /// the list returned is the last page in the result set.
  ///
  /// Pagination tokens have a limited lifetime.
  core.String nextPageToken;

  /// The list of Projects that matched the list filter. This list can
  /// be paginated.
  core.List<Project> projects;

  ListProjectsResponse();

  ListProjectsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("projects")) {
      projects = (_json["projects"] as core.List)
          .map<Project>((value) => new Project.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (projects != null) {
      _json["projects"] = projects.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation.  It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata.  Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that
  /// originally returns it. If you use the default HTTP mapping, the
  /// `name` should be a resource name ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success.  If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`.  If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource.  For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx`
  /// is the original method name.  For example, if the original method name
  /// is `TakeSnapshot()`, the inferred response type is
  /// `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response =
          (_json["response"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (response != null) {
      _json["response"] = response;
    }
    return _json;
  }
}

/// Defines a Cloud Organization `Policy` which is used to specify `Constraints`
/// for configurations of Cloud Platform resources.
class OrgPolicy {
  /// For boolean `Constraints`, whether to enforce the `Constraint` or not.
  BooleanPolicy booleanPolicy;

  /// The name of the `Constraint` the `Policy` is configuring, for example,
  /// `constraints/serviceuser.services`.
  ///
  /// Immutable after creation.
  core.String constraint;

  /// An opaque tag indicating the current version of the `Policy`, used for
  /// concurrency control.
  ///
  /// When the `Policy` is returned from either a `GetPolicy` or a
  /// `ListOrgPolicy` request, this `etag` indicates the version of the current
  /// `Policy` to use when executing a read-modify-write loop.
  ///
  /// When the `Policy` is returned from a `GetEffectivePolicy` request, the
  /// `etag` will be unset.
  ///
  /// When the `Policy` is used in a `SetOrgPolicy` method, use the `etag` value
  /// that was returned from a `GetOrgPolicy` request as part of a
  /// read-modify-write loop for concurrency control. Not setting the `etag`in a
  /// `SetOrgPolicy` request will result in an unconditional write of the
  /// `Policy`.
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return convert.base64.decode(etag);
  }

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// List of values either allowed or disallowed.
  ListPolicy listPolicy;

  /// Restores the default behavior of the constraint; independent of
  /// `Constraint` type.
  RestoreDefault restoreDefault;

  /// The time stamp the `Policy` was previously updated. This is set by the
  /// server, not specified by the caller, and represents the last time a call
  /// to
  /// `SetOrgPolicy` was made for that `Policy`. Any value set by the client
  /// will
  /// be ignored.
  core.String updateTime;

  /// Version of the `Policy`. Default version is 0;
  core.int version;

  OrgPolicy();

  OrgPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("booleanPolicy")) {
      booleanPolicy = new BooleanPolicy.fromJson(_json["booleanPolicy"]);
    }
    if (_json.containsKey("constraint")) {
      constraint = _json["constraint"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("listPolicy")) {
      listPolicy = new ListPolicy.fromJson(_json["listPolicy"]);
    }
    if (_json.containsKey("restoreDefault")) {
      restoreDefault = new RestoreDefault.fromJson(_json["restoreDefault"]);
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (booleanPolicy != null) {
      _json["booleanPolicy"] = (booleanPolicy).toJson();
    }
    if (constraint != null) {
      _json["constraint"] = constraint;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (listPolicy != null) {
      _json["listPolicy"] = (listPolicy).toJson();
    }
    if (restoreDefault != null) {
      _json["restoreDefault"] = (restoreDefault).toJson();
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// The root node in the resource hierarchy to which a particular entity's
/// (e.g., company) resources belong.
class Organization {
  /// Timestamp when the Organization was created. Assigned by the server.
  /// @OutputOnly
  core.String creationTime;

  /// A human-readable string that refers to the Organization in the
  /// GCP Console UI. This string is set by the server and cannot be
  /// changed. The string will be set to the primary domain (for example,
  /// "google.com") of the G Suite customer that owns the organization.
  /// @OutputOnly
  core.String displayName;

  /// The organization's current lifecycle state. Assigned by the server.
  /// @OutputOnly
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : Unspecified state.  This is only useful
  /// for distinguishing unset values.
  /// - "ACTIVE" : The normal and active state.
  /// - "DELETE_REQUESTED" : The organization has been marked for deletion by
  /// the user.
  core.String lifecycleState;

  /// Output Only. The resource name of the organization. This is the
  /// organization's relative path in the API. Its format is
  /// "organizations/[organization_id]". For example, "organizations/1234".
  core.String name;

  /// The owner of this Organization. The owner should be specified on
  /// creation. Once set, it cannot be changed.
  /// This field is required.
  OrganizationOwner owner;

  Organization();

  Organization.fromJson(core.Map _json) {
    if (_json.containsKey("creationTime")) {
      creationTime = _json["creationTime"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("lifecycleState")) {
      lifecycleState = _json["lifecycleState"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("owner")) {
      owner = new OrganizationOwner.fromJson(_json["owner"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (creationTime != null) {
      _json["creationTime"] = creationTime;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (lifecycleState != null) {
      _json["lifecycleState"] = lifecycleState;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (owner != null) {
      _json["owner"] = (owner).toJson();
    }
    return _json;
  }
}

/// The entity that owns an Organization. The lifetime of the Organization and
/// all of its descendants are bound to the `OrganizationOwner`. If the
/// `OrganizationOwner` is deleted, the Organization and all its descendants
/// will
/// be deleted.
class OrganizationOwner {
  /// The G Suite customer id used in the Directory API.
  core.String directoryCustomerId;

  OrganizationOwner();

  OrganizationOwner.fromJson(core.Map _json) {
    if (_json.containsKey("directoryCustomerId")) {
      directoryCustomerId = _json["directoryCustomerId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (directoryCustomerId != null) {
      _json["directoryCustomerId"] = directoryCustomerId;
    }
    return _json;
  }
}

/// Defines an Identity and Access Management (IAM) policy. It is used to
/// specify access control policies for Cloud Platform resources.
///
///
/// A `Policy` consists of a list of `bindings`. A `binding` binds a list of
/// `members` to a `role`, where the members can be user accounts, Google
/// groups,
/// Google domains, and service accounts. A `role` is a named list of
/// permissions
/// defined by IAM.
///
/// **JSON Example**
///
///     {
///       "bindings": [
///         {
///           "role": "roles/owner",
///           "members": [
///             "user:mike@example.com",
///             "group:admins@example.com",
///             "domain:google.com",
///             "serviceAccount:my-other-app@appspot.gserviceaccount.com"
///           ]
///         },
///         {
///           "role": "roles/viewer",
///           "members": ["user:sean@example.com"]
///         }
///       ]
///     }
///
/// **YAML Example**
///
///     bindings:
///     - members:
///       - user:mike@example.com
///       - group:admins@example.com
///       - domain:google.com
///       - serviceAccount:my-other-app@appspot.gserviceaccount.com
///       role: roles/owner
///     - members:
///       - user:sean@example.com
///       role: roles/viewer
///
///
/// For a description of IAM and its features, see the
/// [IAM developer's guide](https://cloud.google.com/iam/docs).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig> auditConfigs;

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
    return convert.base64.decode(etag);
  }

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Deprecated.
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("auditConfigs")) {
      auditConfigs = (_json["auditConfigs"] as core.List)
          .map<AuditConfig>((value) => new AuditConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("bindings")) {
      bindings = (_json["bindings"] as core.List)
          .map<Binding>((value) => new Binding.fromJson(value))
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
    if (auditConfigs != null) {
      _json["auditConfigs"] =
          auditConfigs.map((value) => (value).toJson()).toList();
    }
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

/// A Project is a high-level Google Cloud Platform entity.  It is a
/// container for ACLs, APIs, App Engine Apps, VMs, and other
/// Google Cloud Platform resources.
class Project {
  /// Creation time.
  ///
  /// Read-only.
  core.String createTime;

  /// The labels associated with this Project.
  ///
  /// Label keys must be between 1 and 63 characters long and must conform
  /// to the following regular expression: \[a-z\](\[-a-z0-9\]*\[a-z0-9\])?.
  ///
  /// Label values must be between 0 and 63 characters long and must conform
  /// to the regular expression (\[a-z\](\[-a-z0-9\]*\[a-z0-9\])?)?. A label
  /// value can be empty.
  ///
  /// No more than 256 labels can be associated with a given resource.
  ///
  /// Clients should store labels in a representation such as JSON that does not
  /// depend on specific characters being disallowed.
  ///
  /// Example: <code>"environment" : "dev"</code>
  /// Read-write.
  core.Map<core.String, core.String> labels;

  /// The Project lifecycle state.
  ///
  /// Read-only.
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : Unspecified state.  This is only
  /// used/useful for distinguishing
  /// unset values.
  /// - "ACTIVE" : The normal and active state.
  /// - "DELETE_REQUESTED" : The project has been marked for deletion by the
  /// user
  /// (by invoking
  /// DeleteProject)
  /// or by the system (Google Cloud Platform).
  /// This can generally be reversed by invoking UndeleteProject.
  /// - "DELETE_IN_PROGRESS" : This lifecycle state is no longer used and not
  /// returned by the API.
  core.String lifecycleState;

  /// The optional user-assigned display name of the Project.
  /// When present it must be between 4 to 30 characters.
  /// Allowed characters are: lowercase and uppercase letters, numbers,
  /// hyphen, single-quote, double-quote, space, and exclamation point.
  ///
  /// Example: <code>My Project</code>
  /// Read-write.
  core.String name;

  /// An optional reference to a parent Resource.
  ///
  /// Supported parent types include "organization" and "folder". Once set, the
  /// parent cannot be cleared. The `parent` can be set on creation or using the
  /// `UpdateProject` method; the end user must have the
  /// `resourcemanager.projects.create` permission on the parent.
  ///
  /// Read-write.
  ResourceId parent;

  /// The unique, user-assigned ID of the Project.
  /// It must be 6 to 30 lowercase letters, digits, or hyphens.
  /// It must start with a letter.
  /// Trailing hyphens are prohibited.
  ///
  /// Example: <code>tokyo-rain-123</code>
  /// Read-only after creation.
  core.String projectId;

  /// The number uniquely identifying the project.
  ///
  /// Example: <code>415104041262</code>
  /// Read-only.
  core.String projectNumber;

  Project();

  Project.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("lifecycleState")) {
      lifecycleState = _json["lifecycleState"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parent")) {
      parent = new ResourceId.fromJson(_json["parent"]);
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("projectNumber")) {
      projectNumber = _json["projectNumber"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (lifecycleState != null) {
      _json["lifecycleState"] = lifecycleState;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (parent != null) {
      _json["parent"] = (parent).toJson();
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (projectNumber != null) {
      _json["projectNumber"] = projectNumber;
    }
    return _json;
  }
}

/// A status object which is used as the `metadata` field for the Operation
/// returned by CreateProject. It provides insight for when significant phases
/// of
/// Project creation have completed.
class ProjectCreationStatus {
  /// Creation time of the project creation workflow.
  core.String createTime;

  /// True if the project can be retrieved using GetProject. No other operations
  /// on the project are guaranteed to work until the project creation is
  /// complete.
  core.bool gettable;

  /// True if the project creation process is complete.
  core.bool ready;

  ProjectCreationStatus();

  ProjectCreationStatus.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("gettable")) {
      gettable = _json["gettable"];
    }
    if (_json.containsKey("ready")) {
      ready = _json["ready"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (gettable != null) {
      _json["gettable"] = gettable;
    }
    if (ready != null) {
      _json["ready"] = ready;
    }
    return _json;
  }
}

/// A container to reference an id for any resource type. A `resource` in Google
/// Cloud Platform is a generic term for something you (a developer) may want to
/// interact with through one of our API's. Some examples are an App Engine app,
/// a Compute Engine instance, a Cloud SQL database, and so on.
class ResourceId {
  /// Required field for the type-specific id. This should correspond to the id
  /// used in the type-specific API's.
  core.String id;

  /// Required field representing the resource type this id is for.
  /// At present, the valid types are: "organization" and "folder".
  core.String type;

  ResourceId();

  ResourceId.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (id != null) {
      _json["id"] = id;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Ignores policies set above this resource and restores the
/// `constraint_default` enforcement behavior of the specific `Constraint` at
/// this resource.
///
/// Suppose that `constraint_default` is set to `ALLOW` for the
/// `Constraint` `constraints/serviceuser.services`. Suppose that organization
/// foo.com sets a `Policy` at their Organization resource node that restricts
/// the allowed service activations to deny all service activations. They
/// could then set a `Policy` with the `policy_type` `restore_default` on
/// several experimental projects, restoring the `constraint_default`
/// enforcement of the `Constraint` for only those projects, allowing those
/// projects to have all services activated.
class RestoreDefault {
  RestoreDefault();

  RestoreDefault.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// The request sent to the `SearchOrganizations` method.
class SearchOrganizationsRequest {
  /// An optional query string used to filter the Organizations to return in
  /// the response. Filter rules are case-insensitive.
  ///
  ///
  /// Organizations may be filtered by `owner.directoryCustomerId` or by
  /// `domain`, where the domain is a G Suite domain, for example:
  ///
  /// * Filter `owner.directorycustomerid:123456789` returns Organization
  /// resources with `owner.directory_customer_id` equal to `123456789`.
  /// * Filter `domain:google.com` returns Organization resources corresponding
  /// to the domain `google.com`.
  ///
  /// This field is optional.
  core.String filter;

  /// The maximum number of Organizations to return in the response.
  /// This field is optional.
  core.int pageSize;

  /// A pagination token returned from a previous call to `SearchOrganizations`
  /// that indicates from where listing should continue.
  /// This field is optional.
  core.String pageToken;

  SearchOrganizationsRequest();

  SearchOrganizationsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("filter")) {
      filter = _json["filter"];
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
    if (filter != null) {
      _json["filter"] = filter;
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

/// The response returned from the `SearchOrganizations` method.
class SearchOrganizationsResponse {
  /// A pagination token to be used to retrieve the next page of results. If the
  /// result is too large to fit within the page size specified in the request,
  /// this field will be set with a token that can be used to fetch the next
  /// page
  /// of results. If this field is empty, it indicates that this response
  /// contains the last page of results.
  core.String nextPageToken;

  /// The list of Organizations that matched the search query, possibly
  /// paginated.
  core.List<Organization> organizations;

  SearchOrganizationsResponse();

  SearchOrganizationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("organizations")) {
      organizations = (_json["organizations"] as core.List)
          .map<Organization>((value) => new Organization.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (organizations != null) {
      _json["organizations"] =
          organizations.map((value) => (value).toJson()).toList();
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

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  /// Only
  /// the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used:
  /// paths: "bindings, etag"
  /// This field is only used by Cloud IAM.
  core.String updateMask;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("policy")) {
      policy = new Policy.fromJson(_json["policy"]);
    }
    if (_json.containsKey("updateMask")) {
      updateMask = _json["updateMask"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    if (updateMask != null) {
      _json["updateMask"] = updateMask;
    }
    return _json;
  }
}

/// The request sent to the SetOrgPolicyRequest method.
class SetOrgPolicyRequest {
  /// `Policy` to set on the resource.
  OrgPolicy policy;

  SetOrgPolicyRequest();

  SetOrgPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("policy")) {
      policy = new OrgPolicy.fromJson(_json["policy"]);
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

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details.
///
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.  There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
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
      permissions = (_json["permissions"] as core.List).cast<core.String>();
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
      permissions = (_json["permissions"] as core.List).cast<core.String>();
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

/// The request sent to the UndeleteProject
/// method.
class UndeleteProjectRequest {
  UndeleteProjectRequest();

  UndeleteProjectRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}
