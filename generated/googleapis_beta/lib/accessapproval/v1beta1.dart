// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis_beta.accessapproval.v1beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client accessapproval/v1beta1';

/// An API for controlling access to data by Google personnel.
class AccessapprovalApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  FoldersResourceApi get folders => new FoldersResourceApi(_requester);
  OrganizationsResourceApi get organizations =>
      new OrganizationsResourceApi(_requester);
  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  AccessapprovalApi(http.Client client,
      {core.String rootUrl = "https://accessapproval.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class FoldersResourceApi {
  final commons.ApiRequester _requester;

  FoldersApprovalRequestsResourceApi get approvalRequests =>
      new FoldersApprovalRequestsResourceApi(_requester);

  FoldersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the settings associated with a project, folder, or organization.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the AccessApprovalSettings to retrieve.
  /// Value must have pattern "^folders/[^/]+/accessApprovalSettings$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessApprovalSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessApprovalSettings> getAccessApprovalSettings(
      core.String name,
      {core.String $fields}) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AccessApprovalSettings.fromJson(data));
  }

  /// Updates the settings associated with a project, folder, or organization.
  /// Completely replaces the existing settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the settings. Format is one of:
  /// <ol>
  ///   <li>"projects/{project_id}/accessApprovalSettings"</li>
  ///   <li>"folders/{folder_id}/accessApprovalSettings"</li>
  ///   <li>"organizations/{organization_id}/accessApprovalSettings"</li>
  /// <ol>
  /// Value must have pattern "^folders/[^/]+/accessApprovalSettings$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessApprovalSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessApprovalSettings> updateAccessApprovalSettings(
      AccessApprovalSettings request, core.String name,
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
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AccessApprovalSettings.fromJson(data));
  }
}

class FoldersApprovalRequestsResourceApi {
  final commons.ApiRequester _requester;

  FoldersApprovalRequestsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Approves a request and returns the updated ApprovalRequest.
  ///
  /// Returns NOT_FOUND if the request does not exist. Returns
  /// FAILED_PRECONDITION if the request exists but is not in a pending state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the approval request to approve.
  /// Value must have pattern "^folders/[^/]+/approvalRequests/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApprovalRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApprovalRequest> approve(
      ApproveApprovalRequestMessage request, core.String name,
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
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':approve';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ApprovalRequest.fromJson(data));
  }

  /// Dismisses a request. Returns the updated ApprovalRequest.
  ///
  /// NOTE: This does not deny access to the resource if another request has
  /// been
  /// made and approved. It is equivalent in effect to ignoring the request
  /// altogether.
  ///
  /// Returns NOT_FOUND if the request does not exist.
  ///
  /// Returns FAILED_PRECONDITION if the request exists but is not in a pending
  /// state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the ApprovalRequest to dismiss.
  /// Value must have pattern "^folders/[^/]+/approvalRequests/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApprovalRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApprovalRequest> dismiss(
      DismissApprovalRequestMessage request, core.String name,
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
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':dismiss';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ApprovalRequest.fromJson(data));
  }

  /// Gets an approval request. Returns NOT_FOUND if the request does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the approval request to retrieve.
  /// Value must have pattern "^folders/[^/]+/approvalRequests/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApprovalRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApprovalRequest> get(core.String name, {core.String $fields}) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ApprovalRequest.fromJson(data));
  }

  /// Lists approval requests associated with a project, folder, or
  /// organization.
  /// Approval requests can be filtered by state (pending, active, dismissed).
  /// The order is reverse chronological.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource. This may be "projects/{project_id}",
  /// "folders/{folder_id}", or "organizations/{organization_id}".
  /// Value must have pattern "^folders/[^/]+$".
  ///
  /// [pageToken] - A token identifying the page of results to return.
  ///
  /// [pageSize] - Requested page size.
  ///
  /// [filter] - A filter on the type of approval requests to retrieve. Must be
  /// one of the
  /// following values:
  /// <ol>
  ///   <li>[not set]: Requests that are pending or have active approvals.</li>
  ///   <li>ALL: All requests.</li>
  ///   <li>PENDING: Only pending requests.</li>
  ///   <li>ACTIVE: Only active (i.e. currently approved) requests.</li>
  ///   <li>DISMISSED: Only dismissed (including expired) requests.</li>
  /// </ol>
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListApprovalRequestsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListApprovalRequestsResponse> list(core.String parent,
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

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/approvalRequests';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListApprovalRequestsResponse.fromJson(data));
  }
}

class OrganizationsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsApprovalRequestsResourceApi get approvalRequests =>
      new OrganizationsApprovalRequestsResourceApi(_requester);

  OrganizationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the settings associated with a project, folder, or organization.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the AccessApprovalSettings to retrieve.
  /// Value must have pattern "^organizations/[^/]+/accessApprovalSettings$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessApprovalSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessApprovalSettings> getAccessApprovalSettings(
      core.String name,
      {core.String $fields}) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AccessApprovalSettings.fromJson(data));
  }

  /// Updates the settings associated with a project, folder, or organization.
  /// Completely replaces the existing settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the settings. Format is one of:
  /// <ol>
  ///   <li>"projects/{project_id}/accessApprovalSettings"</li>
  ///   <li>"folders/{folder_id}/accessApprovalSettings"</li>
  ///   <li>"organizations/{organization_id}/accessApprovalSettings"</li>
  /// <ol>
  /// Value must have pattern "^organizations/[^/]+/accessApprovalSettings$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessApprovalSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessApprovalSettings> updateAccessApprovalSettings(
      AccessApprovalSettings request, core.String name,
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
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AccessApprovalSettings.fromJson(data));
  }
}

class OrganizationsApprovalRequestsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsApprovalRequestsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Approves a request and returns the updated ApprovalRequest.
  ///
  /// Returns NOT_FOUND if the request does not exist. Returns
  /// FAILED_PRECONDITION if the request exists but is not in a pending state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the approval request to approve.
  /// Value must have pattern "^organizations/[^/]+/approvalRequests/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApprovalRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApprovalRequest> approve(
      ApproveApprovalRequestMessage request, core.String name,
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
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':approve';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ApprovalRequest.fromJson(data));
  }

  /// Dismisses a request. Returns the updated ApprovalRequest.
  ///
  /// NOTE: This does not deny access to the resource if another request has
  /// been
  /// made and approved. It is equivalent in effect to ignoring the request
  /// altogether.
  ///
  /// Returns NOT_FOUND if the request does not exist.
  ///
  /// Returns FAILED_PRECONDITION if the request exists but is not in a pending
  /// state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the ApprovalRequest to dismiss.
  /// Value must have pattern "^organizations/[^/]+/approvalRequests/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApprovalRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApprovalRequest> dismiss(
      DismissApprovalRequestMessage request, core.String name,
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
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':dismiss';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ApprovalRequest.fromJson(data));
  }

  /// Gets an approval request. Returns NOT_FOUND if the request does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the approval request to retrieve.
  /// Value must have pattern "^organizations/[^/]+/approvalRequests/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApprovalRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApprovalRequest> get(core.String name, {core.String $fields}) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ApprovalRequest.fromJson(data));
  }

  /// Lists approval requests associated with a project, folder, or
  /// organization.
  /// Approval requests can be filtered by state (pending, active, dismissed).
  /// The order is reverse chronological.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource. This may be "projects/{project_id}",
  /// "folders/{folder_id}", or "organizations/{organization_id}".
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [pageToken] - A token identifying the page of results to return.
  ///
  /// [pageSize] - Requested page size.
  ///
  /// [filter] - A filter on the type of approval requests to retrieve. Must be
  /// one of the
  /// following values:
  /// <ol>
  ///   <li>[not set]: Requests that are pending or have active approvals.</li>
  ///   <li>ALL: All requests.</li>
  ///   <li>PENDING: Only pending requests.</li>
  ///   <li>ACTIVE: Only active (i.e. currently approved) requests.</li>
  ///   <li>DISMISSED: Only dismissed (including expired) requests.</li>
  /// </ol>
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListApprovalRequestsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListApprovalRequestsResponse> list(core.String parent,
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

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/approvalRequests';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListApprovalRequestsResponse.fromJson(data));
  }
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsApprovalRequestsResourceApi get approvalRequests =>
      new ProjectsApprovalRequestsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the settings associated with a project, folder, or organization.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the AccessApprovalSettings to retrieve.
  /// Value must have pattern "^projects/[^/]+/accessApprovalSettings$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessApprovalSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessApprovalSettings> getAccessApprovalSettings(
      core.String name,
      {core.String $fields}) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AccessApprovalSettings.fromJson(data));
  }

  /// Updates the settings associated with a project, folder, or organization.
  /// Completely replaces the existing settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the settings. Format is one of:
  /// <ol>
  ///   <li>"projects/{project_id}/accessApprovalSettings"</li>
  ///   <li>"folders/{folder_id}/accessApprovalSettings"</li>
  ///   <li>"organizations/{organization_id}/accessApprovalSettings"</li>
  /// <ol>
  /// Value must have pattern "^projects/[^/]+/accessApprovalSettings$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessApprovalSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessApprovalSettings> updateAccessApprovalSettings(
      AccessApprovalSettings request, core.String name,
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
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AccessApprovalSettings.fromJson(data));
  }
}

class ProjectsApprovalRequestsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsApprovalRequestsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Approves a request and returns the updated ApprovalRequest.
  ///
  /// Returns NOT_FOUND if the request does not exist. Returns
  /// FAILED_PRECONDITION if the request exists but is not in a pending state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the approval request to approve.
  /// Value must have pattern "^projects/[^/]+/approvalRequests/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApprovalRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApprovalRequest> approve(
      ApproveApprovalRequestMessage request, core.String name,
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
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':approve';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ApprovalRequest.fromJson(data));
  }

  /// Dismisses a request. Returns the updated ApprovalRequest.
  ///
  /// NOTE: This does not deny access to the resource if another request has
  /// been
  /// made and approved. It is equivalent in effect to ignoring the request
  /// altogether.
  ///
  /// Returns NOT_FOUND if the request does not exist.
  ///
  /// Returns FAILED_PRECONDITION if the request exists but is not in a pending
  /// state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the ApprovalRequest to dismiss.
  /// Value must have pattern "^projects/[^/]+/approvalRequests/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApprovalRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApprovalRequest> dismiss(
      DismissApprovalRequestMessage request, core.String name,
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
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':dismiss';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ApprovalRequest.fromJson(data));
  }

  /// Gets an approval request. Returns NOT_FOUND if the request does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the approval request to retrieve.
  /// Value must have pattern "^projects/[^/]+/approvalRequests/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApprovalRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApprovalRequest> get(core.String name, {core.String $fields}) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ApprovalRequest.fromJson(data));
  }

  /// Lists approval requests associated with a project, folder, or
  /// organization.
  /// Approval requests can be filtered by state (pending, active, dismissed).
  /// The order is reverse chronological.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource. This may be "projects/{project_id}",
  /// "folders/{folder_id}", or "organizations/{organization_id}".
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - A token identifying the page of results to return.
  ///
  /// [pageSize] - Requested page size.
  ///
  /// [filter] - A filter on the type of approval requests to retrieve. Must be
  /// one of the
  /// following values:
  /// <ol>
  ///   <li>[not set]: Requests that are pending or have active approvals.</li>
  ///   <li>ALL: All requests.</li>
  ///   <li>PENDING: Only pending requests.</li>
  ///   <li>ACTIVE: Only active (i.e. currently approved) requests.</li>
  ///   <li>DISMISSED: Only dismissed (including expired) requests.</li>
  /// </ol>
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListApprovalRequestsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListApprovalRequestsResponse> list(core.String parent,
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

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/approvalRequests';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListApprovalRequestsResponse.fromJson(data));
  }
}

/// Settings on a Project/Folder/Organization related to Access Approval.
class AccessApprovalSettings {
  /// The resource name of the settings. Format is one of:
  /// <ol>
  ///   <li>"projects/{project_id}/accessApprovalSettings"</li>
  ///   <li>"folders/{folder_id}/accessApprovalSettings"</li>
  ///   <li>"organizations/{organization_id}/accessApprovalSettings"</li>
  /// <ol>
  core.String name;

  /// A list of email addresses to which notifications relating to approval
  /// requests should be sent. Notifications relating to a resource will be sent
  /// to all emails in the settings of ancestor resources of that resource.
  core.List<core.String> notificationEmails;

  AccessApprovalSettings();

  AccessApprovalSettings.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notificationEmails")) {
      notificationEmails =
          (_json["notificationEmails"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (notificationEmails != null) {
      _json["notificationEmails"] = notificationEmails;
    }
    return _json;
  }
}

/// Home office and physical location of the principal.
class AccessLocations {
  /// The "home office" location of the principal. A two-letter country code
  /// (ISO 3166-1 alpha-2), such as "US", "DE" or "GB" or a region code. In some
  /// limited situations Google systems may refer refer to a region code instead
  /// of a country code.
  /// Possible Region Codes:
  /// <ol>
  ///   <li>ASI: Asia</li>
  ///   <li>EUR: Europe</li>
  ///   <li>OCE: Oceania</li>
  ///   <li>AFR: Africa</li>
  ///   <li>NAM: North America</li>
  ///   <li>SAM: South America</li>
  ///   <li>ANT: Antarctica</li>
  ///   <li>ANY: Any location</li>
  /// </ol>
  core.String principalOfficeCountry;

  /// Physical location of the principal at the time of the access. A
  /// two-letter country code (ISO 3166-1 alpha-2), such as "US", "DE" or "GB"
  /// or
  /// a region code. In some limited situations Google systems may refer refer
  /// to
  /// a region code instead of a country code.
  /// Possible Region Codes:
  /// <ol>
  ///   <li>ASI: Asia</li>
  ///   <li>EUR: Europe</li>
  ///   <li>OCE: Oceania</li>
  ///   <li>AFR: Africa</li>
  ///   <li>NAM: North America</li>
  ///   <li>SAM: South America</li>
  ///   <li>ANT: Antarctica</li>
  ///   <li>ANY: Any location</li>
  /// </ol>
  core.String principalPhysicalLocationCountry;

  AccessLocations();

  AccessLocations.fromJson(core.Map _json) {
    if (_json.containsKey("principalOfficeCountry")) {
      principalOfficeCountry = _json["principalOfficeCountry"];
    }
    if (_json.containsKey("principalPhysicalLocationCountry")) {
      principalPhysicalLocationCountry =
          _json["principalPhysicalLocationCountry"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (principalOfficeCountry != null) {
      _json["principalOfficeCountry"] = principalOfficeCountry;
    }
    if (principalPhysicalLocationCountry != null) {
      _json["principalPhysicalLocationCountry"] =
          principalPhysicalLocationCountry;
    }
    return _json;
  }
}

class AccessReason {
  /// More detail about certain reason types. See comments for each type above.
  core.String detail;

  /// Type of access justification.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value for proto, shouldn't be used.
  /// - "CUSTOMER_INITIATED_SUPPORT" : Customer made a request or raised an
  /// issue that required the principal to
  /// access customer data. `detail` is of the form ("#####" is the issue ID):
  /// <ol>
  ///   <li>"Feedback Report: #####"</li>
  ///   <li>"Case Number: #####"</li>
  ///   <li>"Case ID: #####"</li>
  ///   <li>"E-PIN Reference: #####"</li>
  ///   <li>"Google-#####"</li>
  ///   <li>"T-#####"</li>
  /// </ol>
  /// - "GOOGLE_INITIATED_SERVICE" : The principal accessed customer data in
  /// order to diagnose or resolve a
  /// suspected issue in services or a known outage. Often this access is used
  /// to confirm that customers are not affected by a suspected service issue
  /// or to remediate a reversible system issue.
  /// - "GOOGLE_INITIATED_REVIEW" : Google initiated service for security,
  /// fraud, abuse, or compliance
  /// purposes.
  core.String type;

  AccessReason();

  AccessReason.fromJson(core.Map _json) {
    if (_json.containsKey("detail")) {
      detail = _json["detail"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (detail != null) {
      _json["detail"] = detail;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// A request for the customer to approve access to a resource.
class ApprovalRequest {
  /// Access was approved.
  ApproveDecision approve;

  /// The request was dismissed.
  DismissDecision dismiss;

  /// The resource name of the request. Format is
  /// "{projects|folders|organizations}/{id}/approvalRequests/{approval_request_id}".
  core.String name;

  /// The time at which approval was requested.
  core.String requestTime;

  /// The requested expiration for the approval. If the request is approved,
  /// access will be granted from the time of approval until the expiration
  /// time.
  core.String requestedExpiration;

  /// The locations for which approval is being requested.
  AccessLocations requestedLocations;

  /// The justification for which approval is being requested.
  AccessReason requestedReason;

  /// The resource for which approval is being requested. The format of the
  /// resource name is defined at
  /// https://cloud.google.com/apis/design/resource_names. The resource name
  /// here
  /// may either be a "full" resource name (e.g.
  /// "//library.googleapis.com/shelves/shelf1/books/book2") or a "relative"
  /// resource name (e.g. "shelves/shelf1/books/book2") as described in the
  /// resource name specification.
  core.String requestedResourceName;

  /// Properties related to the resource represented by requested_resource_name.
  ResourceProperties requestedResourceProperties;

  ApprovalRequest();

  ApprovalRequest.fromJson(core.Map _json) {
    if (_json.containsKey("approve")) {
      approve = new ApproveDecision.fromJson(_json["approve"]);
    }
    if (_json.containsKey("dismiss")) {
      dismiss = new DismissDecision.fromJson(_json["dismiss"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("requestTime")) {
      requestTime = _json["requestTime"];
    }
    if (_json.containsKey("requestedExpiration")) {
      requestedExpiration = _json["requestedExpiration"];
    }
    if (_json.containsKey("requestedLocations")) {
      requestedLocations =
          new AccessLocations.fromJson(_json["requestedLocations"]);
    }
    if (_json.containsKey("requestedReason")) {
      requestedReason = new AccessReason.fromJson(_json["requestedReason"]);
    }
    if (_json.containsKey("requestedResourceName")) {
      requestedResourceName = _json["requestedResourceName"];
    }
    if (_json.containsKey("requestedResourceProperties")) {
      requestedResourceProperties =
          new ResourceProperties.fromJson(_json["requestedResourceProperties"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (approve != null) {
      _json["approve"] = (approve).toJson();
    }
    if (dismiss != null) {
      _json["dismiss"] = (dismiss).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (requestTime != null) {
      _json["requestTime"] = requestTime;
    }
    if (requestedExpiration != null) {
      _json["requestedExpiration"] = requestedExpiration;
    }
    if (requestedLocations != null) {
      _json["requestedLocations"] = (requestedLocations).toJson();
    }
    if (requestedReason != null) {
      _json["requestedReason"] = (requestedReason).toJson();
    }
    if (requestedResourceName != null) {
      _json["requestedResourceName"] = requestedResourceName;
    }
    if (requestedResourceProperties != null) {
      _json["requestedResourceProperties"] =
          (requestedResourceProperties).toJson();
    }
    return _json;
  }
}

/// Request to approve an ApprovalRequest.
class ApproveApprovalRequestMessage {
  /// The expiration time of this approval.
  core.String expireTime;

  ApproveApprovalRequestMessage();

  ApproveApprovalRequestMessage.fromJson(core.Map _json) {
    if (_json.containsKey("expireTime")) {
      expireTime = _json["expireTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (expireTime != null) {
      _json["expireTime"] = expireTime;
    }
    return _json;
  }
}

/// A decision that has been made to approve access to a resource.
class ApproveDecision {
  /// The time at which approval was granted.
  core.String approveTime;

  /// The time at which the approval expires.
  core.String expireTime;

  ApproveDecision();

  ApproveDecision.fromJson(core.Map _json) {
    if (_json.containsKey("approveTime")) {
      approveTime = _json["approveTime"];
    }
    if (_json.containsKey("expireTime")) {
      expireTime = _json["expireTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (approveTime != null) {
      _json["approveTime"] = approveTime;
    }
    if (expireTime != null) {
      _json["expireTime"] = expireTime;
    }
    return _json;
  }
}

/// Request to dismiss an approval request.
class DismissApprovalRequestMessage {
  DismissApprovalRequestMessage();

  DismissApprovalRequestMessage.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// A decision that has been made to dismiss an approval request.
class DismissDecision {
  /// The time at which the approval request was dismissed.
  core.String dismissTime;

  DismissDecision();

  DismissDecision.fromJson(core.Map _json) {
    if (_json.containsKey("dismissTime")) {
      dismissTime = _json["dismissTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dismissTime != null) {
      _json["dismissTime"] = dismissTime;
    }
    return _json;
  }
}

/// Response to listing of ApprovalRequest objects.
class ListApprovalRequestsResponse {
  /// Approval request details.
  core.List<ApprovalRequest> approvalRequests;

  /// Token to retrieve the next page of results, or empty if there are no more.
  core.String nextPageToken;

  ListApprovalRequestsResponse();

  ListApprovalRequestsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("approvalRequests")) {
      approvalRequests = (_json["approvalRequests"] as core.List)
          .map<ApprovalRequest>((value) => new ApprovalRequest.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (approvalRequests != null) {
      _json["approvalRequests"] =
          approvalRequests.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The properties associated with the resource of the request.
class ResourceProperties {
  /// Whether an approval will exclude the descendants of the resource being
  /// requested.
  core.bool excludesDescendants;

  ResourceProperties();

  ResourceProperties.fromJson(core.Map _json) {
    if (_json.containsKey("excludesDescendants")) {
      excludesDescendants = _json["excludesDescendants"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (excludesDescendants != null) {
      _json["excludesDescendants"] = excludesDescendants;
    }
    return _json;
  }
}
