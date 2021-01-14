// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_field
// ignore_for_file: unused_import

library googleapis_beta.cloudresourcemanager.v1beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudresourcemanager/v1beta1';

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

  OrganizationsResourceApi get organizations =>
      OrganizationsResourceApi(_requester);
  ProjectsResourceApi get projects => ProjectsResourceApi(_requester);

  CloudresourcemanagerApi(http.Client client,
      {core.String rootUrl = "https://cloudresourcemanager.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class OrganizationsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Fetches an Organization resource identified by the specified resource
  /// name.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the Organization to fetch. This is the
  /// organization's relative path in the API, formatted as
  /// "organizations/[organizationId]". For example, "organizations/1234".
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [organizationId] - The id of the Organization resource to fetch. This
  /// field is deprecated and will be removed in v1. Use name instead.
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
  async.Future<Organization> get(
    core.String name, {
    core.String organizationId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError("Parameter name is required.");
    }
    if (organizationId != null) {
      _queryParams["organizationId"] = [organizationId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      "GET",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Organization.fromJson(data));
  }

  /// Gets the access control policy for an Organization resource. May be empty
  /// if no such policy or resource exists. The `resource` field should be the
  /// organization's resource name, e.g. "organizations/123".
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = _requester.request(
      _url,
      "POST",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Policy.fromJson(data));
  }

  /// Lists Organization resources that are visible to the user and satisfy the
  /// specified filter. This method returns Organizations in an unspecified
  /// order. New Organizations do not necessarily appear at the end of the list.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of Organizations to return in the
  /// response. This field is optional.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// `ListOrganizations` that indicates from where listing should continue.
  /// This field is optional.
  ///
  /// [filter] - An optional query string used to filter the Organizations to
  /// return in the response. Filter rules are case-insensitive. Organizations
  /// may be filtered by `owner.directoryCustomerId` or by `domain`, where the
  /// domain is a G Suite domain, for example: * Filter
  /// `owner.directorycustomerid:123456789` returns Organization resources with
  /// `owner.directory_customer_id` equal to `123456789`. * Filter
  /// `domain:google.com` returns Organization resources corresponding to the
  /// domain `google.com`. This field is optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOrganizationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOrganizationsResponse> list({
    core.int pageSize,
    core.String pageToken,
    core.String filter,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/organizations';

    final _response = _requester.request(
      _url,
      "GET",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListOrganizationsResponse.fromJson(data));
  }

  /// Sets the access control policy on an Organization resource. Replaces any
  /// existing policy. The `resource` field should be the organization's
  /// resource name, e.g. "organizations/123".
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
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
    SetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    final _response = _requester.request(
      _url,
      "POST",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Policy.fromJson(data));
  }

  /// Returns permissions that a caller has on the specified Organization. The
  /// `resource` field should be the organization's resource name, e.g.
  /// "organizations/123".
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
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
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    final _response = _requester.request(
      _url,
      "POST",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => TestIamPermissionsResponse.fromJson(data));
  }

  /// Updates an Organization resource identified by the specified resource
  /// name.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the organization. This is the
  /// organization's relative path in the API. Its format is
  /// "organizations/[organization_id]". For example, "organizations/1234".
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
  async.Future<Organization> update(
    Organization request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      "PUT",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Organization.fromJson(data));
  }
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a Project resource. Initially, the Project resource is owned by
  /// its creator exclusively. The creator can later grant permission to others
  /// to read or update the Project. Several APIs are activated automatically
  /// for the Project, including Google Cloud Storage. The parent is identified
  /// by a specified ResourceId, which must include both an ID and a type, such
  /// as project, folder, or organization. This method does not associate the
  /// new project with a billing account. You can set or update the billing
  /// account associated with a project using the [`projects.updateBillingInfo`]
  /// (/billing/reference/rest/v1/projects/updateBillingInfo) method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [useLegacyStack] - A now unused experiment opt-out option.
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
  async.Future<Project> create(
    Project request, {
    core.bool useLegacyStack,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (useLegacyStack != null) {
      _queryParams["useLegacyStack"] = ["${useLegacyStack}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/projects';

    final _response = _requester.request(
      _url,
      "POST",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Project.fromJson(data));
  }

  /// Marks the Project identified by the specified `project_id` (for example,
  /// `my-project-123`) for deletion. This method will only affect the Project
  /// if it has a lifecycle state of ACTIVE. This method changes the Project's
  /// lifecycle state from ACTIVE to DELETE_REQUESTED. The deletion starts at an
  /// unspecified time, at which point the project is no longer accessible.
  /// Until the deletion completes, you can check the lifecycle state checked by
  /// retrieving the Project with GetProject, and the Project remains visible to
  /// ListProjects. However, you cannot update the project. After the deletion
  /// completes, the Project is not retrievable by the GetProject and
  /// ListProjects methods. The caller must have delete permissions for this
  /// Project.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The Project ID (for example, `foo-bar-123`).
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
  async.Future<Empty> delete(
    core.String projectId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (projectId == null) {
      throw core.ArgumentError("Parameter projectId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/projects/' + commons.Escaper.ecapeVariable('$projectId');

    final _response = _requester.request(
      _url,
      "DELETE",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Empty.fromJson(data));
  }

  /// Retrieves the Project identified by the specified `project_id` (for
  /// example, `my-project-123`). The caller must have read permissions for this
  /// Project.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The Project ID (for example, `my-project-123`).
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
  async.Future<Project> get(
    core.String projectId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (projectId == null) {
      throw core.ArgumentError("Parameter projectId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/projects/' + commons.Escaper.ecapeVariable('$projectId');

    final _response = _requester.request(
      _url,
      "GET",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Project.fromJson(data));
  }

  /// Gets a list of ancestors in the resource hierarchy for the Project
  /// identified by the specified `project_id` (for example, `my-project-123`).
  /// The caller must have read permissions for this Project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The Project ID (for example, `my-project-123`).
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
    GetAncestryRequest request,
    core.String projectId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError("Parameter projectId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        ':getAncestry';

    final _response = _requester.request(
      _url,
      "POST",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GetAncestryResponse.fromJson(data));
  }

  /// Returns the IAM access control policy for the specified Project.
  /// Permission is denied if the policy or the resource does not exist. For
  /// additional information about resource structure and identification, see
  /// [Resource Names](/apis/design/resource_names).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/projects/' +
        commons.Escaper.ecapeVariable('$resource') +
        ':getIamPolicy';

    final _response = _requester.request(
      _url,
      "POST",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Policy.fromJson(data));
  }

  /// Lists Projects that the caller has the `resourcemanager.projects.get`
  /// permission on and satisfy the specified filter. This method returns
  /// Projects in an unspecified order. This method is eventually consistent
  /// with project mutations; this means that a newly created project may not
  /// appear in the results or recent updates to an existing project may not be
  /// reflected in the results. To retrieve the latest state of a project, use
  /// the GetProject method. NOTE: If the request filter contains a
  /// `parent.type` and `parent.id` and the caller has the
  /// `resourcemanager.projects.list` permission on the parent, the results will
  /// be drawn from an alternate index which provides more consistent results.
  /// In future versions of this API, this List method will be split into List
  /// and Search to properly capture the behavioral difference.
  ///
  /// Request parameters:
  ///
  /// [filter] - An expression for filtering the results of the request. Filter
  /// rules are case insensitive. If multiple fields are included in a filter
  /// query, the query will return results that match any of the fields. Some
  /// eligible fields for filtering are: + `name` + `id` + `labels.` (where
  /// *key* is the name of a label) + `parent.type` + `parent.id` Some examples
  /// of using labels as filters: | Filter | Description |
  /// |------------------|-----------------------------------------------------|
  /// | name:how* | The project's name starts with "how". | | name:Howl | The
  /// project's name is `Howl` or `howl`. | | name:HOWL | Equivalent to above. |
  /// | NAME:howl | Equivalent to above. | | labels.color:* | The project has
  /// the label `color`. | | labels.color:red | The project's label `color` has
  /// the value `red`. | | labels.color:red labels.size:big |The project's label
  /// `color` has the value `red` and its label `size` has the value `big`. | If
  /// no filter is specified, the call will return projects for which the user
  /// has the `resourcemanager.projects.get` permission. NOTE: To perform a
  /// by-parent query (eg., what projects are directly in a Folder), the caller
  /// must have the `resourcemanager.projects.list` permission on the parent and
  /// the filter must contain both a `parent.type` and a `parent.id` restriction
  /// (example: "parent.type:folder parent.id:123"). In this case an alternate
  /// search index is used which provides more consistent results. Optional.
  ///
  /// [pageSize] - The maximum number of Projects to return in the response. The
  /// server can return fewer Projects than requested. If unspecified, server
  /// picks an appropriate default. Optional.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListProjects that indicates from where listing should continue. Optional.
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
  async.Future<ListProjectsResponse> list({
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/projects';

    final _response = _requester.request(
      _url,
      "GET",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListProjectsResponse.fromJson(data));
  }

  /// Sets the IAM access control policy for the specified Project. CAUTION:
  /// This method will replace the existing policy, and cannot be used to append
  /// additional IAM settings. NOTE: Removing service accounts from policies or
  /// changing their roles can render services completely inoperable. It is
  /// important to understand how the service account is being used before
  /// removing or updating its roles. The following constraints apply when using
  /// `setIamPolicy()`: + Project does not support `allUsers` and
  /// `allAuthenticatedUsers` as `members` in a `Binding` of a `Policy`. + The
  /// owner role can be granted to a `user`, `serviceAccount`, or a group that
  /// is part of an organization. For example, group@myownpersonaldomain.com
  /// could be added as an owner to a project in the myownpersonaldomain.com
  /// organization, but not the examplepetstore.com organization. + Service
  /// accounts can be made owners of a project directly without any
  /// restrictions. However, to be added as an owner, a user must be invited via
  /// Cloud Platform console and must accept the invitation. + A user cannot be
  /// granted the owner role using `setIamPolicy()`. The user must be granted
  /// the owner role using the Cloud Platform Console and must explicitly accept
  /// the invitation. + Invitations to grant the owner role cannot be sent using
  /// `setIamPolicy()`; they must be sent only using the Cloud Platform Console.
  /// + Membership changes that leave the project without any owners that have
  /// accepted the Terms of Service (ToS) will be rejected. + If the project is
  /// not part of an organization, there must be at least one owner who has
  /// accepted the Terms of Service (ToS) agreement in the policy. Calling
  /// `setIamPolicy()` to remove the last ToS-accepted owner from the policy
  /// will fail. This restriction also applies to legacy projects that no longer
  /// have owners who have accepted the ToS. Edits to IAM policies will be
  /// rejected until the lack of a ToS-accepting owner is rectified.
  /// Authorization requires the Google IAM permission
  /// `resourcemanager.projects.setIamPolicy` on the project
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
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
    SetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/projects/' +
        commons.Escaper.ecapeVariable('$resource') +
        ':setIamPolicy';

    final _response = _requester.request(
      _url,
      "POST",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Policy.fromJson(data));
  }

  /// Returns permissions that a caller has on the specified Project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
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
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/projects/' +
        commons.Escaper.ecapeVariable('$resource') +
        ':testIamPermissions';

    final _response = _requester.request(
      _url,
      "POST",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => TestIamPermissionsResponse.fromJson(data));
  }

  /// Restores the Project identified by the specified `project_id` (for
  /// example, `my-project-123`). You can only use this method for a Project
  /// that has a lifecycle state of DELETE_REQUESTED. After deletion starts, the
  /// Project cannot be restored. The caller must have undelete permissions for
  /// this Project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The project ID (for example, `foo-bar-123`).
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
    UndeleteProjectRequest request,
    core.String projectId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError("Parameter projectId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        ':undelete';

    final _response = _requester.request(
      _url,
      "POST",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Empty.fromJson(data));
  }

  /// Updates the attributes of the Project identified by the specified
  /// `project_id` (for example, `my-project-123`). The caller must have modify
  /// permissions for this Project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project ID (for example, `my-project-123`).
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
  async.Future<Project> update(
    Project request,
    core.String projectId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError("Parameter projectId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/projects/' + commons.Escaper.ecapeVariable('$projectId');

    final _response = _requester.request(
      _url,
      "PUT",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Project.fromJson(data));
  }
}

/// Identifying information for a single ancestor of a project.
class Ancestor {
  /// Resource id of the ancestor.
  ResourceId resourceId;

  Ancestor();

  Ancestor.fromJson(core.Map _json) {
    if (_json.containsKey("resourceId")) {
      resourceId = ResourceId.fromJson(_json["resourceId"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (resourceId != null) {
      _json["resourceId"] = resourceId.toJson();
    }
    return _json;
  }
}

/// Specifies the audit configuration for a service. The configuration
/// determines which permission types are logged, and what identities, if any,
/// are exempted from logging. An AuditConfig must have one or more
/// AuditLogConfigs. If there are AuditConfigs for both `allServices` and a
/// specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": [ { "service": "allServices",
/// "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [
/// "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For
/// sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts jose@example.com from DATA_READ logging, and
/// aliya@example.com from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig> auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging. For example,
  /// `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a
  /// special value that covers all services.
  core.String service;

  AuditConfig();

  AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey("auditLogConfigs")) {
      auditLogConfigs = (_json["auditLogConfigs"] as core.List)
          .map<AuditLogConfig>((value) => AuditLogConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (auditLogConfigs != null) {
      _json["auditLogConfigs"] =
          auditLogConfigs.map((value) => value.toJson()).toList();
    }
    if (service != null) {
      _json["service"] = service;
    }
    return _json;
  }
}

/// Provides the configuration for logging a type of permissions. Example: {
/// "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [
/// "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables
/// 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
/// DATA_READ logging.
class AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission. Follows the same format of Binding.members.
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
        <core.String, core.Object>{};
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
  /// A client-specified ID for this binding. Expected to be globally unique to
  /// support the internal bindings-by-ID API.
  core.String bindingId;

  /// The condition that is associated with this binding. If the condition
  /// evaluates to `true`, then this binding applies to the current request. If
  /// the condition evaluates to `false`, then this binding does not apply to
  /// the current request. However, a different role binding might grant the
  /// same role to one or more of the members in this binding. To learn which
  /// resources support conditions in their IAM policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. * `user:{emailid}`: An email address that represents a specific
  /// Google account. For example, `alice@example.com` . *
  /// `serviceAccount:{emailid}`: An email address that represents a service
  /// account. For example, `my-other-app@appspot.gserviceaccount.com`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. * `domain:{domain}`: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, `google.com` or
  /// `example.com`.
  core.List<core.String> members;

  /// Role that is assigned to `members`. For example, `roles/viewer`,
  /// `roles/editor`, or `roles/owner`.
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey("bindingId")) {
      bindingId = _json["bindingId"];
    }
    if (_json.containsKey("condition")) {
      condition = Expr.fromJson(_json["condition"]);
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
        <core.String, core.Object>{};
    if (bindingId != null) {
      _json["bindingId"] = bindingId;
    }
    if (condition != null) {
      _json["condition"] = condition.toJson();
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

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance: service Foo { rpc
/// Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
/// representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax. CEL is a C-like expression language. The syntax and semantics of CEL
/// are documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() < 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
class Expr {
  /// Optional. Description of the expression. This is a longer text which
  /// describes the expression, e.g. when hovered over it in a UI.
  core.String description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String expression;

  /// Optional. String indicating the location of the expression for error
  /// reporting, e.g. a file name and a position in the file.
  core.String location;

  /// Optional. Title for the expression, i.e. a short string describing its
  /// purpose. This can be used e.g. in UIs which allow to enter the expression.
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
        <core.String, core.Object>{};
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
  /// The resource name of the folder or organization we are either creating the
  /// folder under or moving the folder to.
  core.String destinationParent;

  /// The display name of the folder.
  core.String displayName;

  /// The type of this operation.
  /// Possible string values are:
  /// - "OPERATION_TYPE_UNSPECIFIED" : Operation type not specified.
  /// - "CREATE" : A create folder operation.
  /// - "MOVE" : A move folder operation.
  core.String operationType;

  /// The resource name of the folder's parent. Only applicable when the
  /// operation_type is MOVE.
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
        <core.String, core.Object>{};
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
  /// the locally-unique folder display_name constraint.
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
  /// the max deleted folder depth constraint.
  core.String errorMessageId;

  FolderOperationError();

  FolderOperationError.fromJson(core.Map _json) {
    if (_json.containsKey("errorMessageId")) {
      errorMessageId = _json["errorMessageId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (errorMessageId != null) {
      _json["errorMessageId"] = errorMessageId;
    }
    return _json;
  }
}

/// The request sent to the
/// [google.cloudresourcemanager.projects.v1beta1.DeveloperProjects.GetAncestry]
/// method.
class GetAncestryRequest {
  GetAncestryRequest();

  GetAncestryRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Response from the projects.getAncestry method.
class GetAncestryResponse {
  /// Ancestors are ordered from bottom to top of the resource hierarchy. The
  /// first ancestor is the project itself, followed by the project's parent,
  /// etc.
  core.List<Ancestor> ancestor;

  GetAncestryResponse();

  GetAncestryResponse.fromJson(core.Map _json) {
    if (_json.containsKey("ancestor")) {
      ancestor = (_json["ancestor"] as core.List)
          .map<Ancestor>((value) => Ancestor.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (ancestor != null) {
      _json["ancestor"] = ancestor.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`.
  GetPolicyOptions options;

  GetIamPolicyRequest();

  GetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("options")) {
      options = GetPolicyOptions.fromJson(_json["options"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (options != null) {
      _json["options"] = options.toJson();
    }
    return _json;
  }
}

/// Encapsulates settings provided to GetIamPolicy.
class GetPolicyOptions {
  /// Optional. The policy format version to be returned. Valid values are 0, 1,
  /// and 3. Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional bindings must specify version 3. Policies
  /// without any conditional bindings may specify any valid value or leave the
  /// field unset. To learn which resources support conditions in their IAM
  /// policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int requestedPolicyVersion;

  GetPolicyOptions();

  GetPolicyOptions.fromJson(core.Map _json) {
    if (_json.containsKey("requestedPolicyVersion")) {
      requestedPolicyVersion = _json["requestedPolicyVersion"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (requestedPolicyVersion != null) {
      _json["requestedPolicyVersion"] = requestedPolicyVersion;
    }
    return _json;
  }
}

/// The response returned from the `ListOrganizations` method.
class ListOrganizationsResponse {
  /// A pagination token to be used to retrieve the next page of results. If the
  /// result is too large to fit within the page size specified in the request,
  /// this field will be set with a token that can be used to fetch the next
  /// page of results. If this field is empty, it indicates that this response
  /// contains the last page of results.
  core.String nextPageToken;

  /// The list of Organizations that matched the list query, possibly paginated.
  core.List<Organization> organizations;

  ListOrganizationsResponse();

  ListOrganizationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("organizations")) {
      organizations = (_json["organizations"] as core.List)
          .map<Organization>((value) => Organization.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (organizations != null) {
      _json["organizations"] =
          organizations.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A page of the response received from the ListProjects method. A paginated
/// response where more pages are available has `next_page_token` set. This
/// token can be used in a subsequent request to retrieve the next request page.
class ListProjectsResponse {
  /// Pagination token. If the result set is too large to fit in a single
  /// response, this token is returned. It encodes the position of the current
  /// result cursor. Feeding this value into a new list request with the
  /// `page_token` parameter gives the next page of the results. When
  /// `next_page_token` is not filled in, there is no next page and the list
  /// returned is the last page in the result set. Pagination tokens have a
  /// limited lifetime.
  core.String nextPageToken;

  /// The list of Projects that matched the list filter. This list can be
  /// paginated.
  core.List<Project> projects;

  ListProjectsResponse();

  ListProjectsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("projects")) {
      projects = (_json["projects"] as core.List)
          .map<Project>((value) => Project.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (projects != null) {
      _json["projects"] = projects.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The root node in the resource hierarchy to which a particular entity's
/// (e.g., company) resources belong.
class Organization {
  /// Timestamp when the Organization was created. Assigned by the server.
  core.String creationTime;

  /// A human-readable string that refers to the Organization in the GCP Console
  /// UI. This string is set by the server and cannot be changed. The string
  /// will be set to the primary domain (for example, "google.com") of the G
  /// Suite customer that owns the organization.
  core.String displayName;

  /// The organization's current lifecycle state. Assigned by the server.
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : Unspecified state. This is only useful
  /// for distinguishing unset values.
  /// - "ACTIVE" : The normal and active state.
  /// - "DELETE_REQUESTED" : The organization has been marked for deletion by
  /// the user.
  core.String lifecycleState;

  /// Output only. The resource name of the organization. This is the
  /// organization's relative path in the API. Its format is
  /// "organizations/[organization_id]". For example, "organizations/1234".
  core.String name;

  /// An immutable id for the Organization that is assigned on creation. This
  /// should be omitted when creating a new Organization. This field is
  /// read-only.
  core.String organizationId;

  /// The owner of this Organization. The owner should be specified on creation.
  /// Once set, it cannot be changed. This field is required.
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
    if (_json.containsKey("organizationId")) {
      organizationId = _json["organizationId"];
    }
    if (_json.containsKey("owner")) {
      owner = OrganizationOwner.fromJson(_json["owner"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
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
    if (organizationId != null) {
      _json["organizationId"] = organizationId;
    }
    if (owner != null) {
      _json["owner"] = owner.toJson();
    }
    return _json;
  }
}

/// The entity that owns an Organization. The lifetime of the Organization and
/// all of its descendants are bound to the `OrganizationOwner`. If the
/// `OrganizationOwner` is deleted, the Organization and all its descendants
/// will be deleted.
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
        <core.String, core.Object>{};
    if (directoryCustomerId != null) {
      _json["directoryCustomerId"] = directoryCustomerId;
    }
    return _json;
  }
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources. A `Policy` is a collection of
/// `bindings`. A `binding` binds one or more `members` to a single `role`.
/// Members can be user accounts, service accounts, Google groups, and domains
/// (such as G Suite). A `role` is a named list of permissions; each `role` can
/// be an IAM predefined role or a user-created custom role. For some types of
/// Google Cloud resources, a `binding` can also specify a `condition`, which is
/// a logical expression that allows access to a resource only if the expression
/// evaluates to `true`. A condition can add constraints based on attributes of
/// the request, the resource, or both. To learn which resources support
/// conditions in their IAM policies, see the [IAM
/// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time < timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= -
/// version: 3 For a description of IAM and its features, see the [IAM
/// documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig> auditConfigs;

  /// Associates a list of `members` to a `role`. Optionally, may specify a
  /// `condition` that determines how and when the `bindings` are applied. Each
  /// of the `bindings` must contain at least one member.
  core.List<Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other. It is
  /// strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
  /// Requests that specify an invalid value are rejected. Any operation that
  /// affects conditional role bindings must specify version `3`. This
  /// requirement applies to the following operations: * Getting a policy that
  /// includes a conditional role binding * Adding a conditional role binding to
  /// a policy * Changing a conditional role binding in a policy * Removing any
  /// role binding, with or without a condition, from a policy that includes
  /// conditions **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost. If a
  /// policy does not include any conditions, operations on that policy may
  /// specify any valid version or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("auditConfigs")) {
      auditConfigs = (_json["auditConfigs"] as core.List)
          .map<AuditConfig>((value) => AuditConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("bindings")) {
      bindings = (_json["bindings"] as core.List)
          .map<Binding>((value) => Binding.fromJson(value))
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
        <core.String, core.Object>{};
    if (auditConfigs != null) {
      _json["auditConfigs"] =
          auditConfigs.map((value) => value.toJson()).toList();
    }
    if (bindings != null) {
      _json["bindings"] = bindings.map((value) => value.toJson()).toList();
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

/// A Project is a high-level Google Cloud Platform entity. It is a container
/// for ACLs, APIs, App Engine Apps, VMs, and other Google Cloud Platform
/// resources.
class Project {
  /// Creation time. Read-only.
  core.String createTime;

  /// The labels associated with this Project. Label keys must be between 1 and
  /// 63 characters long and must conform to the following regular expression:
  /// a-z{0,62}. Label values must be between 0 and 63 characters long and must
  /// conform to the regular expression [a-z0-9_-]{0,63}. A label value can be
  /// empty. No more than 256 labels can be associated with a given resource.
  /// Clients should store labels in a representation such as JSON that does not
  /// depend on specific characters being disallowed. Example: `"environment" :
  /// "dev"` Read-write.
  core.Map<core.String, core.String> labels;

  /// The Project lifecycle state. Read-only.
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : Unspecified state. This is only
  /// used/useful for distinguishing unset values.
  /// - "ACTIVE" : The normal and active state.
  /// - "DELETE_REQUESTED" : The project has been marked for deletion by the
  /// user (by invoking DeleteProject) or by the system (Google Cloud Platform).
  /// This can generally be reversed by invoking UndeleteProject.
  /// - "DELETE_IN_PROGRESS" : This lifecycle state is no longer used and is not
  /// returned by the API.
  core.String lifecycleState;

  /// The optional user-assigned display name of the Project. When present it
  /// must be between 4 to 30 characters. Allowed characters are: lowercase and
  /// uppercase letters, numbers, hyphen, single-quote, double-quote, space, and
  /// exclamation point. Example: `My Project` Read-write.
  core.String name;

  /// An optional reference to a parent Resource. Supported parent types include
  /// "organization" and "folder". Once set, the parent cannot be cleared. The
  /// `parent` can be set on creation or using the `UpdateProject` method; the
  /// end user must have the `resourcemanager.projects.create` permission on the
  /// parent. Read-write.
  ResourceId parent;

  /// The unique, user-assigned ID of the Project. It must be 6 to 30 lowercase
  /// letters, digits, or hyphens. It must start with a letter. Trailing hyphens
  /// are prohibited. Example: `tokyo-rain-123` Read-only after creation.
  core.String projectId;

  /// The number uniquely identifying the project. Example: `415104041262`
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
      parent = ResourceId.fromJson(_json["parent"]);
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
        <core.String, core.Object>{};
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
      _json["parent"] = parent.toJson();
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
/// of Project creation have completed.
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
        <core.String, core.Object>{};
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

  /// Required field representing the resource type this id is for. At present,
  /// the valid types are "project", "folder", and "organization".
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
        <core.String, core.Object>{};
    if (id != null) {
      _json["id"] = id;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`. The size of
  /// the policy is limited to a few 10s of KB. An empty policy is a valid
  /// policy but certain Cloud Platform services (such as Projects) might reject
  /// them.
  Policy policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String updateMask;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("policy")) {
      policy = Policy.fromJson(_json["policy"]);
    }
    if (_json.containsKey("updateMask")) {
      updateMask = _json["updateMask"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (policy != null) {
      _json["policy"] = policy.toJson();
    }
    if (updateMask != null) {
      _json["updateMask"] = updateMask;
    }
    return _json;
  }
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`. Permissions with
  /// wildcards (such as '*' or 'storage.*') are not allowed. For more
  /// information see [IAM
  /// Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
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
        <core.String, core.Object>{};
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/// The request sent to the UndeleteProject method.
class UndeleteProjectRequest {
  UndeleteProjectRequest();

  UndeleteProjectRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}
