// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unused_import, unnecessary_cast

library googleapis.networkmanagement.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client networkmanagement/v1';

/// The Network Management API provides a collection of network performance
/// monitoring and diagnostic capabilities.
class NetworkmanagementApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  NetworkmanagementApi(http.Client client,
      {core.String rootUrl = "https://networkmanagement.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsResourceApi get locations =>
      new ProjectsLocationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalResourceApi get global =>
      new ProjectsLocationsGlobalResourceApi(_requester);

  ProjectsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> get(core.String name, {core.String $fields}) {
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
    return _response.then((data) => new Location.fromJson(data));
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(core.String name,
      {core.String filter,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
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

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/locations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLocationsResponse.fromJson(data));
  }
}

class ProjectsLocationsGlobalResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalConnectivityTestsResourceApi get connectivityTests =>
      new ProjectsLocationsGlobalConnectivityTestsResourceApi(_requester);
  ProjectsLocationsGlobalOperationsResourceApi get operations =>
      new ProjectsLocationsGlobalOperationsResourceApi(_requester);

  ProjectsLocationsGlobalResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsGlobalConnectivityTestsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalConnectivityTestsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Connectivity Test. After you create a test, the reachability
  /// analysis is performed as part of the long running operation, which
  /// completes when the analysis completes. If the endpoint specifications in
  /// `ConnectivityTest` are invalid (for example, containing non-existent
  /// resources in the network, or you don't have read permissions to the
  /// network configurations of listed projects), then the reachability result
  /// returns a value of `UNKNOWN`. If the endpoint specifications in
  /// `ConnectivityTest` are incomplete, the reachability result returns a value
  /// of AMBIGUOUS. For more information, see the Connectivity Test
  /// documentation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the Connectivity Test to
  /// create: `projects/{project_id}/locations/global`
  /// Value must have pattern "^projects/[^/]+/locations/global$".
  ///
  /// [testId] - Required. The logical name of the Connectivity Test in your
  /// project with the following restrictions: * Must contain only lowercase
  /// letters, numbers, and hyphens. * Must start with a letter. * Must be
  /// between 1-40 characters. * Must end with a number or a letter. * Must be
  /// unique within the customer project
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
  async.Future<Operation> create(ConnectivityTest request, core.String parent,
      {core.String testId, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (testId != null) {
      _queryParams["testId"] = [testId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/connectivityTests';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Deletes a specific `ConnectivityTest`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Connectivity Test resource name using the form:
  /// `projects/{project_id}/locations/global/connectivityTests/{test_id}`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/global/connectivityTests/[^/]+$".
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
  async.Future<Operation> delete(core.String name, {core.String $fields}) {
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
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Gets the details of a specific Connectivity Test.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. `ConnectivityTest` resource name using the form:
  /// `projects/{project_id}/locations/global/connectivityTests/{test_id}`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/global/connectivityTests/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConnectivityTest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConnectivityTest> get(core.String name, {core.String $fields}) {
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
    return _response.then((data) => new ConnectivityTest.fromJson(data));
  }

  /// Gets the access control policy for a resource. Returns an empty policy if
  /// the resource exists and does not have a policy set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/global/connectivityTests/[^/]+$".
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
      {core.int options_requestedPolicyVersion, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if (options_requestedPolicyVersion != null) {
      _queryParams["options.requestedPolicyVersion"] = [
        "${options_requestedPolicyVersion}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Lists all Connectivity Tests owned by a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the Connectivity Tests:
  /// `projects/{project_id}/locations/global`
  /// Value must have pattern "^projects/[^/]+/locations/global$".
  ///
  /// [pageToken] - Page token from an earlier query, as returned in
  /// `next_page_token`.
  ///
  /// [pageSize] - Number of `ConnectivityTests` to return.
  ///
  /// [orderBy] - Field to use to sort the list.
  ///
  /// [filter] - Lists the `ConnectivityTests` that match the filter expression.
  /// A filter expression filters the resources listed in the response. The
  /// expression must be of the form ` ` where operators: `<`, `>`, `<=`, `>=`,
  /// `!=`, `=`, `:` are supported (colon `:` represents a HAS operator which is
  /// roughly synonymous with equality). can refer to a proto or JSON field, or
  /// a synthetic field. Field names can be camelCase or snake_case. Examples: -
  /// Filter by name: name =
  /// "projects/proj-1/locations/global/connectivityTests/test-1 - Filter by
  /// labels: - Resources that have a key called `foo` labels.foo:* - Resources
  /// that have a key called `foo` whose value is `bar` labels.foo = bar
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConnectivityTestsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConnectivityTestsResponse> list(core.String parent,
      {core.String pageToken,
      core.int pageSize,
      core.String orderBy,
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
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/connectivityTests';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListConnectivityTestsResponse.fromJson(data));
  }

  /// Updates the configuration of an existing `ConnectivityTest`. After you
  /// update a test, the reachability analysis is performed as part of the long
  /// running operation, which completes when the analysis completes. The
  /// Reachability state in the test resource is updated with the new result. If
  /// the endpoint specifications in `ConnectivityTest` are invalid (for
  /// example, they contain non-existent resources in the network, or the user
  /// does not have read permissions to the network configurations of listed
  /// projects), then the reachability result returns a value of UNKNOWN. If the
  /// endpoint specifications in `ConnectivityTest` are incomplete, the
  /// reachability result returns a value of `AMBIGUOUS`. See the documentation
  /// in `ConnectivityTest` for for more details.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Unique name of the resource using the form:
  /// `projects/{project_id}/locations/global/connectivityTests/{test_id}`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/global/connectivityTests/[^/]+$".
  ///
  /// [updateMask] - Required. Mask of fields to update. At least one path must
  /// be supplied in this field.
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
  async.Future<Operation> patch(ConnectivityTest request, core.String name,
      {core.String updateMask, core.String $fields}) {
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
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Rerun an existing `ConnectivityTest`. After the user triggers the rerun,
  /// the reachability analysis is performed as part of the long running
  /// operation, which completes when the analysis completes. Even though the
  /// test configuration remains the same, the reachability result may change
  /// due to underlying network configuration changes. If the endpoint
  /// specifications in `ConnectivityTest` become invalid (for example,
  /// specified resources are deleted in the network, or you lost read
  /// permissions to the network configurations of listed projects), then the
  /// reachability result returns a value of `UNKNOWN`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Connectivity Test resource name using the form:
  /// `projects/{project_id}/locations/global/connectivityTests/{test_id}`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/global/connectivityTests/[^/]+$".
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
  async.Future<Operation> rerun(
      RerunConnectivityTestRequest request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':rerun';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and
  /// `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/global/connectivityTests/[^/]+$".
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

  /// Returns permissions that a caller has on the specified resource. If the
  /// resource does not exist, this will return an empty set of permissions, not
  /// a `NOT_FOUND` error. Note: This operation is designed to be used for
  /// building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/global/connectivityTests/[^/]+$".
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

class ProjectsLocationsGlobalOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation. The server
  /// makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/global/operations/[^/]+$".
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
  async.Future<Empty> cancel(CancelOperationRequest request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Deletes a long-running operation. This method indicates that the client is
  /// no longer interested in the operation result. It does not cancel the
  /// operation. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/global/operations/[^/]+$".
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

  /// Gets the latest state of a long-running operation. Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/global/operations/[^/]+$".
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

  /// Lists operations that match the specified filter in the request. If the
  /// server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the
  /// `name` binding allows API services to override the binding to use
  /// different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern "^projects/[^/]+/locations/global$".
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(core.String name,
      {core.String filter,
      core.int pageSize,
      core.String pageToken,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
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

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/operations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOperationsResponse.fromJson(data));
  }
}

/// Details of the final state "abort" and associated resource.
class AbortInfo {
  /// Causes that the analysis is aborted.
  /// Possible string values are:
  /// - "CAUSE_UNSPECIFIED" : Cause is unspecified.
  /// - "UNKNOWN_NETWORK" : Aborted due to unknown network. The reachability
  /// analysis cannot proceed because the user does not have access to the host
  /// project's network configurations, including firewall rules and routes.
  /// This happens when the project is a service project and the endpoints being
  /// traced are in the host project's network.
  /// - "UNKNOWN_IP" : Aborted because the IP address(es) are unknown.
  /// - "UNKNOWN_PROJECT" : Aborted because no project information can be
  /// derived from the test input.
  /// - "PERMISSION_DENIED" : Aborted because the user lacks the permission to
  /// access all or part of the network configurations required to run the test.
  /// - "NO_SOURCE_LOCATION" : Aborted because no valid source endpoint is
  /// derived from the input test request.
  /// - "INVALID_ARGUMENT" : Aborted because the source and/or destination
  /// endpoint specified in the test are invalid. The possible reasons that an
  /// endpoint is invalid include: malformed IP address; nonexistent instance or
  /// network URI; IP address not in the range of specified network URI; and
  /// instance not owning the network interface in the specified network.
  /// - "NO_EXTERNAL_IP" : Aborted because traffic is sent from a public IP to
  /// an instance without an external IP.
  /// - "UNINTENDED_DESTINATION" : Aborted because none of the traces matches
  /// destination information specified in the input test request.
  /// - "TRACE_TOO_LONG" : Aborted because the number of steps in the trace
  /// exceeding a certain limit which may be caused by routing loop.
  /// - "INTERNAL_ERROR" : Aborted due to internal server error.
  core.String cause;

  /// URI of the resource that caused the abort.
  core.String resourceUri;

  AbortInfo();

  AbortInfo.fromJson(core.Map _json) {
    if (_json.containsKey("cause")) {
      cause = _json["cause"];
    }
    if (_json.containsKey("resourceUri")) {
      resourceUri = _json["resourceUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cause != null) {
      _json["cause"] = cause;
    }
    if (resourceUri != null) {
      _json["resourceUri"] = resourceUri;
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

/// The request message for Operations.CancelOperation.
class CancelOperationRequest {
  CancelOperationRequest();

  CancelOperationRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// A Connectivity Test for a network reachability analysis.
class ConnectivityTest {
  /// Output only. The time the test was created.
  core.String createTime;

  /// The user-supplied description of the Connectivity Test. Maximum of 512
  /// characters.
  core.String description;

  /// Required. Destination specification of the Connectivity Test. You can use
  /// a combination of destination IP address, Compute Engine VM instance, or
  /// VPC network to uniquely identify the destination location. Even if the
  /// destination IP address is not unique, the source IP location is unique.
  /// Usually, the analysis can infer the destination endpoint from route
  /// information. If the destination you specify is a VM instance and the
  /// instance has multiple network interfaces, then you must also specify
  /// either a destination IP address or VPC network to identify the destination
  /// interface. A reachability analysis proceeds even if the destination
  /// location is ambiguous. However, the result can include endpoints that you
  /// don't intend to test.
  Endpoint destination;

  /// Output only. The display name of a Connectivity Test.
  core.String displayName;

  /// Resource labels to represent user-provided metadata.
  core.Map<core.String, core.String> labels;

  /// Required. Unique name of the resource using the form:
  /// `projects/{project_id}/locations/global/connectivityTests/{test_id}`
  core.String name;

  /// IP Protocol of the test. When not provided, "TCP" is assumed.
  core.String protocol;

  /// Output only. The reachability details of this test from the latest run.
  /// The details are updated when creating a new test, updating an existing
  /// test, or triggering a one-time rerun of an existing test.
  ReachabilityDetails reachabilityDetails;

  /// Other projects that may be relevant for reachability analysis. This is
  /// applicable to scenarios where a test can cross project boundaries.
  core.List<core.String> relatedProjects;

  /// Required. Source specification of the Connectivity Test. You can use a
  /// combination of source IP address, virtual machine (VM) instance, or
  /// Compute Engine network to uniquely identify the source location. Examples:
  /// If the source IP address is an internal IP address within a Google Cloud
  /// Virtual Private Cloud (VPC) network, then you must also specify the VPC
  /// network. Otherwise, specify the VM instance, which already contains its
  /// internal IP address and VPC network information. If the source of the test
  /// is within an on-premises network, then you must provide the destination
  /// VPC network. If the source endpoint is a Compute Engine VM instance with
  /// multiple network interfaces, the instance itself is not sufficient to
  /// identify the endpoint. So, you must also specify the source IP address or
  /// VPC network. A reachability analysis proceeds even if the source location
  /// is ambiguous. However, the test result may include endpoints that you
  /// don't intend to test.
  Endpoint source;

  /// Output only. The time the test's configuration was updated.
  core.String updateTime;

  ConnectivityTest();

  ConnectivityTest.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("destination")) {
      destination = new Endpoint.fromJson(_json["destination"]);
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("protocol")) {
      protocol = _json["protocol"];
    }
    if (_json.containsKey("reachabilityDetails")) {
      reachabilityDetails =
          new ReachabilityDetails.fromJson(_json["reachabilityDetails"]);
    }
    if (_json.containsKey("relatedProjects")) {
      relatedProjects =
          (_json["relatedProjects"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("source")) {
      source = new Endpoint.fromJson(_json["source"]);
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (destination != null) {
      _json["destination"] = (destination).toJson();
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (protocol != null) {
      _json["protocol"] = protocol;
    }
    if (reachabilityDetails != null) {
      _json["reachabilityDetails"] = (reachabilityDetails).toJson();
    }
    if (relatedProjects != null) {
      _json["relatedProjects"] = relatedProjects;
    }
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// Details of the final state "deliver" and associated resource.
class DeliverInfo {
  /// URI of the resource that the packet is delivered to.
  core.String resourceUri;

  /// Target type where the packet is delivered to.
  /// Possible string values are:
  /// - "TARGET_UNSPECIFIED" : Target not specified.
  /// - "INSTANCE" : Target is a Compute Engine instance.
  /// - "INTERNET" : Target is the Internet.
  /// - "GOOGLE_API" : Target is a Google API.
  core.String target;

  DeliverInfo();

  DeliverInfo.fromJson(core.Map _json) {
    if (_json.containsKey("resourceUri")) {
      resourceUri = _json["resourceUri"];
    }
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (resourceUri != null) {
      _json["resourceUri"] = resourceUri;
    }
    if (target != null) {
      _json["target"] = target;
    }
    return _json;
  }
}

/// Details of the final state "drop" and associated resource.
class DropInfo {
  /// Cause that the packet is dropped.
  /// Possible string values are:
  /// - "CAUSE_UNSPECIFIED" : Cause is unspecified.
  /// - "UNKNOWN_EXTERNAL_ADDRESS" : Destination external address cannot be
  /// resolved to a known target.
  /// - "FOREIGN_IP_DISALLOWED" : a Compute Engine instance can only send or
  /// receive a packet with a foreign IP if ip_forward is enabled.
  /// - "FIREWALL_RULE" : Dropped due to a firewall rule unless allowed due to
  /// connection tracking.
  /// - "NO_ROUTE" : Dropped due to no routes.
  /// - "ROUTE_BLACKHOLE" : Dropped due to invalid route. Route's next hop is a
  /// blackhole.
  /// - "ROUTE_WRONG_NETWORK" : Packet is sent to a wrong (unintended) network.
  /// Example: user traces a packet from VM1:Network1 to VM2:Network2, however,
  /// the route configured in Network1 sends the packet destined for VM2's IP
  /// addresss to Network3.
  /// - "PRIVATE_TRAFFIC_TO_INTERNET" : Packet with internal destination address
  /// sent to Internet gateway.
  /// - "PRIVATE_GOOGLE_ACCESS_DISALLOWED" : Instance with only an internal IP
  /// tries to access Google API and Services, and private Google access is not
  /// enabled.
  /// - "NO_EXTERNAL_ADDRESS" : Instance with only internal IP tries to access
  /// external hosts, but Cloud NAT is not enabled in the subnet, unless special
  /// configurations on a VM allows this connection. See [Special Configurations
  /// for VM instances](/vpc/docs/special-configurations) for details.
  /// - "UNKNOWN_INTERNAL_ADDRESS" : Destination internal address cannot be
  /// resolved to a known target.
  /// - "FORWARDING_RULE_MISMATCH" : Forwarding rule's protocol and ports do not
  /// match the packet header.
  /// - "FORWARDING_RULE_NO_INSTANCES" : Forwarding rule does not have backends
  /// configured.
  /// - "FIREWALL_BLOCKING_LOAD_BALANCER_BACKEND_HEALTH_CHECK" : Firewalls block
  /// the health check probes to the backends and cause the backends to be
  /// unavailable for traffic from the load balancer. See [Health check firewall
  /// rules](/load-balancing/docs/ health-checks#firewall_rules) for more
  /// details.
  /// - "INSTANCE_NOT_RUNNING" : Packet is sent from or to a Compute Engine
  /// instance that is not in a running state.
  /// - "TRAFFIC_TYPE_BLOCKED" : The type of traffic is blocked and the user
  /// cannot configure a firewall rule to enable it. See [Always blocked
  /// traffic](/vpc/docs/firewalls# blockedtraffic) for more details.
  /// - "GKE_MASTER_UNAUTHORIZED_ACCESS" : Access to GKE master's endpoint is
  /// not authorized. See [Access to the cluster
  /// endpoints](/kubernetes-engine/docs/how-to/
  /// private-clusters#access_to_the_cluster_endpoints) for more details.
  core.String cause;

  /// URI of the resource that caused the drop.
  core.String resourceUri;

  DropInfo();

  DropInfo.fromJson(core.Map _json) {
    if (_json.containsKey("cause")) {
      cause = _json["cause"];
    }
    if (_json.containsKey("resourceUri")) {
      resourceUri = _json["resourceUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cause != null) {
      _json["cause"] = cause;
    }
    if (resourceUri != null) {
      _json["resourceUri"] = resourceUri;
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
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Source or destination of the Connectivity Test.
class Endpoint {
  /// A Compute Engine instance URI.
  core.String instance;

  /// The IP address of the endpoint, which can be an external or internal IP.
  /// An IPv6 address is only allowed when the test's destination is a [global
  /// load balancer VIP](/load-balancing/docs/load-balancing-overview).
  core.String ipAddress;

  /// A Compute Engine network URI.
  core.String network;

  /// Type of the network where the endpoint is located. Applicable only to
  /// source endpoint, as destination network type can be inferred from the
  /// source.
  /// Possible string values are:
  /// - "NETWORK_TYPE_UNSPECIFIED" : Default type if unspecified.
  /// - "GCP_NETWORK" : A network hosted within Google Cloud Platform. To
  /// receive more detailed output, specify the URI for the source or
  /// destination network.
  /// - "NON_GCP_NETWORK" : A network hosted outside of Google Cloud Platform.
  /// This can be an on-premises network, or a network hosted by another cloud
  /// provider.
  core.String networkType;

  /// The IP protocol port of the endpoint. Only applicable when protocol is TCP
  /// or UDP.
  core.int port;

  /// Project ID where the endpoint is located. The Project ID can be derived
  /// from the URI if you provide a VM instance or network URI. The following
  /// are two cases where you must provide the project ID: 1. Only the IP
  /// address is specified, and the IP address is within a GCP project. 2. When
  /// you are using Shared VPC and the IP address that you provide is from the
  /// service project. In this case, the network that the IP address resides in
  /// is defined in the host project.
  core.String projectId;

  Endpoint();

  Endpoint.fromJson(core.Map _json) {
    if (_json.containsKey("instance")) {
      instance = _json["instance"];
    }
    if (_json.containsKey("ipAddress")) {
      ipAddress = _json["ipAddress"];
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("networkType")) {
      networkType = _json["networkType"];
    }
    if (_json.containsKey("port")) {
      port = _json["port"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (instance != null) {
      _json["instance"] = instance;
    }
    if (ipAddress != null) {
      _json["ipAddress"] = ipAddress;
    }
    if (network != null) {
      _json["network"] = network;
    }
    if (networkType != null) {
      _json["networkType"] = networkType;
    }
    if (port != null) {
      _json["port"] = port;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    return _json;
  }
}

/// For display only. The specification of the endpoints for the test.
/// EndpointInfo is derived from source and destination Endpoint and validated
/// by the backend data plane model.
class EndpointInfo {
  /// Destination IP address.
  core.String destinationIp;

  /// URI of the network where this packet is sent to.
  core.String destinationNetworkUri;

  /// Destination port. Only valid when protocol is TCP or UDP.
  core.int destinationPort;

  /// IP protocol in string format, for example: "TCP", "UDP", "ICMP".
  core.String protocol;

  /// Source IP address.
  core.String sourceIp;

  /// URI of the network where this packet originates from.
  core.String sourceNetworkUri;

  /// Source port. Only valid when protocol is TCP or UDP.
  core.int sourcePort;

  EndpointInfo();

  EndpointInfo.fromJson(core.Map _json) {
    if (_json.containsKey("destinationIp")) {
      destinationIp = _json["destinationIp"];
    }
    if (_json.containsKey("destinationNetworkUri")) {
      destinationNetworkUri = _json["destinationNetworkUri"];
    }
    if (_json.containsKey("destinationPort")) {
      destinationPort = _json["destinationPort"];
    }
    if (_json.containsKey("protocol")) {
      protocol = _json["protocol"];
    }
    if (_json.containsKey("sourceIp")) {
      sourceIp = _json["sourceIp"];
    }
    if (_json.containsKey("sourceNetworkUri")) {
      sourceNetworkUri = _json["sourceNetworkUri"];
    }
    if (_json.containsKey("sourcePort")) {
      sourcePort = _json["sourcePort"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (destinationIp != null) {
      _json["destinationIp"] = destinationIp;
    }
    if (destinationNetworkUri != null) {
      _json["destinationNetworkUri"] = destinationNetworkUri;
    }
    if (destinationPort != null) {
      _json["destinationPort"] = destinationPort;
    }
    if (protocol != null) {
      _json["protocol"] = protocol;
    }
    if (sourceIp != null) {
      _json["sourceIp"] = sourceIp;
    }
    if (sourceNetworkUri != null) {
      _json["sourceNetworkUri"] = sourceNetworkUri;
    }
    if (sourcePort != null) {
      _json["sourcePort"] = sourcePort;
    }
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

/// For display only. Metadata associated with a Compute Engine firewall rule.
class FirewallInfo {
  /// Possible values: ALLOW, DENY
  core.String action;

  /// Possible values: INGRESS, EGRESS
  core.String direction;

  /// Name of a Compute Engine firewall rule.
  core.String displayName;

  /// URI of a Compute Engine network.
  core.String networkUri;

  /// Priority of the firewall rule.
  core.int priority;

  /// Target service accounts of the firewall rule.
  core.List<core.String> targetServiceAccounts;

  /// Target tags of the firewall rule.
  core.List<core.String> targetTags;

  /// URI of a Compute Engine firewall rule. Implied default rule does not have
  /// URI.
  core.String uri;

  FirewallInfo();

  FirewallInfo.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("direction")) {
      direction = _json["direction"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("networkUri")) {
      networkUri = _json["networkUri"];
    }
    if (_json.containsKey("priority")) {
      priority = _json["priority"];
    }
    if (_json.containsKey("targetServiceAccounts")) {
      targetServiceAccounts =
          (_json["targetServiceAccounts"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("targetTags")) {
      targetTags = (_json["targetTags"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (action != null) {
      _json["action"] = action;
    }
    if (direction != null) {
      _json["direction"] = direction;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (networkUri != null) {
      _json["networkUri"] = networkUri;
    }
    if (priority != null) {
      _json["priority"] = priority;
    }
    if (targetServiceAccounts != null) {
      _json["targetServiceAccounts"] = targetServiceAccounts;
    }
    if (targetTags != null) {
      _json["targetTags"] = targetTags;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// Details of the final state "forward" and associated resource.
class ForwardInfo {
  /// URI of the resource that the packet is forwarded to.
  core.String resourceUri;

  /// Target type where this packet is forwarded to.
  /// Possible string values are:
  /// - "TARGET_UNSPECIFIED" : Target not specified.
  /// - "PEERING_VPC" : Forwarded to a VPC peering network.
  /// - "VPN_GATEWAY" : Forwarded to a Cloud VPN gateway.
  /// - "INTERCONNECT" : Forwarded to an Cloud Interconnect connection.
  /// - "GKE_MASTER" : Forwarded to a Google Kubernetes Engine Container cluster
  /// master.
  /// - "IMPORTED_CUSTOM_ROUTE_NEXT_HOP" : Forwarded to the next hop of a custom
  /// route imported from a peering VPC.
  core.String target;

  ForwardInfo();

  ForwardInfo.fromJson(core.Map _json) {
    if (_json.containsKey("resourceUri")) {
      resourceUri = _json["resourceUri"];
    }
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (resourceUri != null) {
      _json["resourceUri"] = resourceUri;
    }
    if (target != null) {
      _json["target"] = target;
    }
    return _json;
  }
}

/// For display only. Metadata associated with a Compute Engine forwarding rule.
class ForwardingRuleInfo {
  /// Name of a Compute Engine forwarding rule.
  core.String displayName;

  /// Port range defined in the forwarding rule that matches the test.
  core.String matchedPortRange;

  /// Protocol defined in the forwarding rule that matches the test.
  core.String matchedProtocol;

  /// Network URI. Only valid for Internal Load Balancer.
  core.String networkUri;

  /// Target type of the forwarding rule.
  core.String target;

  /// URI of a Compute Engine forwarding rule.
  core.String uri;

  /// VIP of the forwarding rule.
  core.String vip;

  ForwardingRuleInfo();

  ForwardingRuleInfo.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("matchedPortRange")) {
      matchedPortRange = _json["matchedPortRange"];
    }
    if (_json.containsKey("matchedProtocol")) {
      matchedProtocol = _json["matchedProtocol"];
    }
    if (_json.containsKey("networkUri")) {
      networkUri = _json["networkUri"];
    }
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
    if (_json.containsKey("vip")) {
      vip = _json["vip"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (matchedPortRange != null) {
      _json["matchedPortRange"] = matchedPortRange;
    }
    if (matchedProtocol != null) {
      _json["matchedProtocol"] = matchedProtocol;
    }
    if (networkUri != null) {
      _json["networkUri"] = networkUri;
    }
    if (target != null) {
      _json["target"] = target;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    if (vip != null) {
      _json["vip"] = vip;
    }
    return _json;
  }
}

/// For display only. Metadata associated with a Compute Engine instance.
class InstanceInfo {
  /// Name of a Compute Engine instance.
  core.String displayName;

  /// External IP address of the network interface.
  core.String externalIp;

  /// Name of the network interface of a Compute Engine instance.
  core.String interface;

  /// Internal IP address of the network interface.
  core.String internalIp;

  /// Network tags configured on the instance.
  core.List<core.String> networkTags;

  /// URI of a Compute Engine network.
  core.String networkUri;

  /// Service account authorized for the instance.
  core.String serviceAccount;

  /// URI of a Compute Engine instance.
  core.String uri;

  InstanceInfo();

  InstanceInfo.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("externalIp")) {
      externalIp = _json["externalIp"];
    }
    if (_json.containsKey("interface")) {
      interface = _json["interface"];
    }
    if (_json.containsKey("internalIp")) {
      internalIp = _json["internalIp"];
    }
    if (_json.containsKey("networkTags")) {
      networkTags = (_json["networkTags"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("networkUri")) {
      networkUri = _json["networkUri"];
    }
    if (_json.containsKey("serviceAccount")) {
      serviceAccount = _json["serviceAccount"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (externalIp != null) {
      _json["externalIp"] = externalIp;
    }
    if (interface != null) {
      _json["interface"] = interface;
    }
    if (internalIp != null) {
      _json["internalIp"] = internalIp;
    }
    if (networkTags != null) {
      _json["networkTags"] = networkTags;
    }
    if (networkUri != null) {
      _json["networkUri"] = networkUri;
    }
    if (serviceAccount != null) {
      _json["serviceAccount"] = serviceAccount;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// Response for the `ListConnectivityTests` method.
class ListConnectivityTestsResponse {
  /// Page token to fetch the next set of Connectivity Tests.
  core.String nextPageToken;

  /// List of Connectivity Tests.
  core.List<ConnectivityTest> resources;

  /// Locations that could not be reached (when querying all locations with
  /// `-`).
  core.List<core.String> unreachable;

  ListConnectivityTestsResponse();

  ListConnectivityTestsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resources")) {
      resources = (_json["resources"] as core.List)
          .map<ConnectivityTest>(
              (value) => new ConnectivityTest.fromJson(value))
          .toList();
    }
    if (_json.containsKey("unreachable")) {
      unreachable = (_json["unreachable"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (resources != null) {
      _json["resources"] = resources.map((value) => (value).toJson()).toList();
    }
    if (unreachable != null) {
      _json["unreachable"] = unreachable;
    }
    return _json;
  }
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location> locations;

  /// The standard List next-page token.
  core.String nextPageToken;

  ListLocationsResponse();

  ListLocationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("locations")) {
      locations = (_json["locations"] as core.List)
          .map<Location>((value) => new Location.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (locations != null) {
      _json["locations"] = locations.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("operations")) {
      operations = (_json["operations"] as core.List)
          .map<Operation>((value) => new Operation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (operations != null) {
      _json["operations"] =
          operations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// For display only. Metadata associated with a specific load balancer backend.
class LoadBalancerBackend {
  /// Name of a Compute Engine instance or network endpoint.
  core.String displayName;

  /// A list of firewall rule URIs allowing probes from health check IP ranges.
  core.List<core.String> healthCheckAllowingFirewallRules;

  /// A list of firewall rule URIs blocking probes from health check IP ranges.
  core.List<core.String> healthCheckBlockingFirewallRules;

  /// State of the health check firewall configuration.
  /// Possible string values are:
  /// - "HEALTH_CHECK_FIREWALL_STATE_UNSPECIFIED" : State is unspecified.
  /// Default state if not populated.
  /// - "CONFIGURED" : There are configured firewall rules to allow health check
  /// probes to the backend.
  /// - "MISCONFIGURED" : There are firewall rules configured to allow partial
  /// health check ranges or block all health check ranges. If a health check
  /// probe is sent from denied IP ranges, the health check to the backend will
  /// fail. Then, the backend will be marked unhealthy and will not receive
  /// traffic sent to the load balancer.
  core.String healthCheckFirewallState;

  /// URI of a Compute Engine instance or network endpoint.
  core.String uri;

  LoadBalancerBackend();

  LoadBalancerBackend.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("healthCheckAllowingFirewallRules")) {
      healthCheckAllowingFirewallRules =
          (_json["healthCheckAllowingFirewallRules"] as core.List)
              .cast<core.String>();
    }
    if (_json.containsKey("healthCheckBlockingFirewallRules")) {
      healthCheckBlockingFirewallRules =
          (_json["healthCheckBlockingFirewallRules"] as core.List)
              .cast<core.String>();
    }
    if (_json.containsKey("healthCheckFirewallState")) {
      healthCheckFirewallState = _json["healthCheckFirewallState"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (healthCheckAllowingFirewallRules != null) {
      _json["healthCheckAllowingFirewallRules"] =
          healthCheckAllowingFirewallRules;
    }
    if (healthCheckBlockingFirewallRules != null) {
      _json["healthCheckBlockingFirewallRules"] =
          healthCheckBlockingFirewallRules;
    }
    if (healthCheckFirewallState != null) {
      _json["healthCheckFirewallState"] = healthCheckFirewallState;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// For display only. Metadata associated with a load balancer.
class LoadBalancerInfo {
  /// Type of load balancer's backend configuration.
  /// Possible string values are:
  /// - "BACKEND_TYPE_UNSPECIFIED" : Type is unspecified.
  /// - "BACKEND_SERVICE" : Backend Service as the load balancer's backend.
  /// - "TARGET_POOL" : Target Pool as the load balancer's backend.
  core.String backendType;

  /// Backend configuration URI.
  core.String backendUri;

  /// Information for the loadbalancer backends.
  core.List<LoadBalancerBackend> backends;

  /// URI of the health check for the load balancer.
  core.String healthCheckUri;

  /// Type of the load balancer.
  /// Possible string values are:
  /// - "LOAD_BALANCER_TYPE_UNSPECIFIED" : Type is unspecified.
  /// - "INTERNAL_TCP_UDP" : Internal TCP/UDP load balancer.
  /// - "NETWORK_TCP_UDP" : Network TCP/UDP load balancer.
  /// - "HTTP_PROXY" : HTTP(S) proxy load balancer.
  /// - "TCP_PROXY" : TCP proxy load balancer.
  /// - "SSL_PROXY" : SSL proxy load balancer.
  core.String loadBalancerType;

  LoadBalancerInfo();

  LoadBalancerInfo.fromJson(core.Map _json) {
    if (_json.containsKey("backendType")) {
      backendType = _json["backendType"];
    }
    if (_json.containsKey("backendUri")) {
      backendUri = _json["backendUri"];
    }
    if (_json.containsKey("backends")) {
      backends = (_json["backends"] as core.List)
          .map<LoadBalancerBackend>(
              (value) => new LoadBalancerBackend.fromJson(value))
          .toList();
    }
    if (_json.containsKey("healthCheckUri")) {
      healthCheckUri = _json["healthCheckUri"];
    }
    if (_json.containsKey("loadBalancerType")) {
      loadBalancerType = _json["loadBalancerType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (backendType != null) {
      _json["backendType"] = backendType;
    }
    if (backendUri != null) {
      _json["backendUri"] = backendUri;
    }
    if (backends != null) {
      _json["backends"] = backends.map((value) => (value).toJson()).toList();
    }
    if (healthCheckUri != null) {
      _json["healthCheckUri"] = healthCheckUri;
    }
    if (loadBalancerType != null) {
      _json["loadBalancerType"] = loadBalancerType;
    }
    return _json;
  }
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name. For
  /// example, "Tokyo".
  core.String displayName;

  /// Cross-service attributes for the location. For example
  /// {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String> labels;

  /// The canonical id for this location. For example: `"us-east1"`.
  core.String locationId;

  /// Service-specific metadata. For example the available capacity at the given
  /// location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// Resource name for the location, which may vary between implementations.
  /// For example: `"projects/example-project/locations/us-east1"`
  core.String name;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("locationId")) {
      locationId = _json["locationId"];
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (locationId != null) {
      _json["locationId"] = locationId;
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// For display only. Metadata associated with a Compute Engine network.
class NetworkInfo {
  /// Name of a Compute Engine network.
  core.String displayName;

  /// The IP range that matches the test.
  core.String matchedIpRange;

  /// URI of a Compute Engine network.
  core.String uri;

  NetworkInfo();

  NetworkInfo.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("matchedIpRange")) {
      matchedIpRange = _json["matchedIpRange"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (matchedIpRange != null) {
      _json["matchedIpRange"] = matchedIpRange;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress. If
  /// `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation. It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata. Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it. If you use the default HTTP mapping, the
  /// `name` should be a resource name ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success. If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
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

/// Metadata describing an Operation
class OperationMetadata {
  /// API version.
  core.String apiVersion;

  /// Specifies if cancellation was requested for the operation.
  core.bool cancelRequested;

  /// The time the operation was created.
  core.String createTime;

  /// The time the operation finished running.
  core.String endTime;

  /// Human-readable status of the operation, if any.
  core.String statusDetail;

  /// Target of the operation - for example
  /// projects/project-1/locations/global/connectivityTests/test-1
  core.String target;

  /// Name of the verb executed by the operation.
  core.String verb;

  OperationMetadata();

  OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("apiVersion")) {
      apiVersion = _json["apiVersion"];
    }
    if (_json.containsKey("cancelRequested")) {
      cancelRequested = _json["cancelRequested"];
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("statusDetail")) {
      statusDetail = _json["statusDetail"];
    }
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
    if (_json.containsKey("verb")) {
      verb = _json["verb"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (apiVersion != null) {
      _json["apiVersion"] = apiVersion;
    }
    if (cancelRequested != null) {
      _json["cancelRequested"] = cancelRequested;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (statusDetail != null) {
      _json["statusDetail"] = statusDetail;
    }
    if (target != null) {
      _json["target"] = target;
    }
    if (verb != null) {
      _json["verb"] = verb;
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
  core.List<core.int> get etagAsBytes {
    return convert.base64.decode(etag);
  }

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

/// The details of reachability state from the latest run.
class ReachabilityDetails {
  /// The details of a failure or a cancellation of reachability analysis.
  Status error;

  /// The overall reachability result of the test.
  /// Possible string values are:
  /// - "RESULT_UNSPECIFIED" : Result is not specified.
  /// - "REACHABLE" : Packet originating from source is expected to reach
  /// destination.
  /// - "UNREACHABLE" : Packet originating from source is expected to be dropped
  /// before reaching destination.
  /// - "AMBIGUOUS" : If the source and destination endpoint does not uniquely
  /// identify the test location in the network, and the reachability result
  /// contains multiple traces with mixed reachable and unreachable states, then
  /// this result is returned.
  /// - "UNDETERMINED" : The reachability could not be determined. Possible
  /// reasons are: * Analysis is aborted due to permission error. User does not
  /// have read permission to the projects listed in the test. * Analysis is
  /// aborted due to internal errors. * Analysis is partially complete based on
  /// configurations where the user has permission. The Final state indicates
  /// that the packet is forwarded to another network where the user has no
  /// permission to access the configurations.
  core.String result;

  /// Result may contain a list of traces if a test has multiple possible paths
  /// in the network, such as when destination endpoint is a load balancer with
  /// multiple backends.
  core.List<Trace> traces;

  /// The time the reachability state was verified.
  core.String verifyTime;

  ReachabilityDetails();

  ReachabilityDetails.fromJson(core.Map _json) {
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("result")) {
      result = _json["result"];
    }
    if (_json.containsKey("traces")) {
      traces = (_json["traces"] as core.List)
          .map<Trace>((value) => new Trace.fromJson(value))
          .toList();
    }
    if (_json.containsKey("verifyTime")) {
      verifyTime = _json["verifyTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (result != null) {
      _json["result"] = result;
    }
    if (traces != null) {
      _json["traces"] = traces.map((value) => (value).toJson()).toList();
    }
    if (verifyTime != null) {
      _json["verifyTime"] = verifyTime;
    }
    return _json;
  }
}

/// Request for the `RerunConnectivityTest` method.
class RerunConnectivityTestRequest {
  RerunConnectivityTestRequest();

  RerunConnectivityTestRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// For display only. Metadata associated with a Compute Engine route.
class RouteInfo {
  /// Destination IP range of the route.
  core.String destIpRange;

  /// Name of a Compute Engine route.
  core.String displayName;

  /// Instance tags of the route.
  core.List<core.String> instanceTags;

  /// URI of a Compute Engine network.
  core.String networkUri;

  /// Next hop of the route.
  core.String nextHop;

  /// Type of next hop.
  /// Possible string values are:
  /// - "NEXT_HOP_TYPE_UNSPECIFIED" : Unspecified type. Default value.
  /// - "NEXT_HOP_IP" : Next hop is an IP address.
  /// - "NEXT_HOP_INSTANCE" : Next hop is a Compute Engine instance.
  /// - "NEXT_HOP_NETWORK" : Next hop is a VPC network gateway.
  /// - "NEXT_HOP_PEERING" : Next hop is a peering VPC.
  /// - "NEXT_HOP_INTERCONNECT" : Next hop is an interconnect.
  /// - "NEXT_HOP_VPN_TUNNEL" : Next hop is a VPN tunnel.
  /// - "NEXT_HOP_VPN_GATEWAY" : Next hop is a VPN Gateway. This scenario only
  /// happens when tracing connectivity from an on-premises network to GCP
  /// through a VPN. The analysis simulates a packet departing from the
  /// on-premises network through a VPN tunnel and arrives at a Cloud VPN
  /// gateway.
  /// - "NEXT_HOP_INTERNET_GATEWAY" : Next hop is an internet gateway.
  /// - "NEXT_HOP_BLACKHOLE" : Next hop is blackhole; that is, the next hop
  /// either does not exist or is not running.
  /// - "NEXT_HOP_ILB" : Next hop is the forwarding rule of an Internal Load
  /// Balancer.
  core.String nextHopType;

  /// Priority of the route.
  core.int priority;

  /// Type of route.
  /// Possible string values are:
  /// - "ROUTE_TYPE_UNSPECIFIED" : Unspecified type. Default value.
  /// - "SUBNET" : Route is a subnet route automatically created by the system.
  /// - "STATIC" : Static route created by the user including the default route
  /// to the Internet.
  /// - "DYNAMIC" : Dynamic route exchanged between BGP peers.
  /// - "PEERING_SUBNET" : A subnet route received from peering network.
  /// - "PEERING_STATIC" : A static route received from peering network.
  /// - "PEERING_DYNAMIC" : A dynamic route received from peering network.
  core.String routeType;

  /// URI of a Compute Engine route. Dynamic route from cloud router does not
  /// have a URI. Advertised route from Google Cloud VPC to on-premises network
  /// also does not have a URI.
  core.String uri;

  RouteInfo();

  RouteInfo.fromJson(core.Map _json) {
    if (_json.containsKey("destIpRange")) {
      destIpRange = _json["destIpRange"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("instanceTags")) {
      instanceTags = (_json["instanceTags"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("networkUri")) {
      networkUri = _json["networkUri"];
    }
    if (_json.containsKey("nextHop")) {
      nextHop = _json["nextHop"];
    }
    if (_json.containsKey("nextHopType")) {
      nextHopType = _json["nextHopType"];
    }
    if (_json.containsKey("priority")) {
      priority = _json["priority"];
    }
    if (_json.containsKey("routeType")) {
      routeType = _json["routeType"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (destIpRange != null) {
      _json["destIpRange"] = destIpRange;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (instanceTags != null) {
      _json["instanceTags"] = instanceTags;
    }
    if (networkUri != null) {
      _json["networkUri"] = networkUri;
    }
    if (nextHop != null) {
      _json["nextHop"] = nextHop;
    }
    if (nextHopType != null) {
      _json["nextHopType"] = nextHopType;
    }
    if (priority != null) {
      _json["priority"] = priority;
    }
    if (routeType != null) {
      _json["routeType"] = routeType;
    }
    if (uri != null) {
      _json["uri"] = uri;
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

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details. You can
/// find out more about this error model and how to work with it in the [API
/// Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details. There is a common set of
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

/// A simulated forwarding path is composed of multiple steps. Each step has a
/// well-defined state and an associated configuration.
class Step {
  /// Display info of the final state "abort" and reason.
  AbortInfo abort;

  /// This is a step that leads to the final state Drop.
  core.bool causesDrop;

  /// Display info of the final state "deliver" and reason.
  DeliverInfo deliver;

  /// A description of the step. Usually this is a summary of the state.
  core.String description;

  /// Display info of the final state "drop" and reason.
  DropInfo drop;

  /// Display info of the source and destination under analysis. The endpiont
  /// info in an intermediate state may differ with the initial input, as it
  /// might be modified by state like NAT, or Connection Proxy.
  EndpointInfo endpoint;

  /// Display info of a Compute Engine firewall rule.
  FirewallInfo firewall;

  /// Display info of the final state "forward" and reason.
  ForwardInfo forward;

  /// Display info of a Compute Engine forwarding rule.
  ForwardingRuleInfo forwardingRule;

  /// Display info of a Compute Engine instance.
  InstanceInfo instance;

  /// Display info of the load balancers.
  LoadBalancerInfo loadBalancer;

  /// Display info of a GCP network.
  NetworkInfo network;

  /// Project ID that contains the configuration this step is validating.
  core.String projectId;

  /// Display info of a Compute Engine route.
  RouteInfo route;

  /// Each step is in one of the pre-defined states.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "START_FROM_INSTANCE" : Initial state: packet originating from a Compute
  /// Engine instance. An InstanceInfo will be populated with starting instance
  /// info.
  /// - "START_FROM_INTERNET" : Initial state: packet originating from Internet.
  /// The endpoint info will be populated.
  /// - "START_FROM_PRIVATE_NETWORK" : Initial state: packet originating from a
  /// VPC or on-premises network with internal source IP. If the source is a VPC
  /// network visible to the user, a NetworkInfo will be populated with details
  /// of the network.
  /// - "APPLY_INGRESS_FIREWALL_RULE" : Config checking state: verify ingress
  /// firewall rule.
  /// - "APPLY_EGRESS_FIREWALL_RULE" : Config checking state: verify egress
  /// firewall rule.
  /// - "APPLY_ROUTE" : Config checking state: verify route.
  /// - "APPLY_FORWARDING_RULE" : Config checking state: match forwarding rule.
  /// - "SPOOFING_APPROVED" : Config checking state: packet sent or received
  /// under foreign IP address and allowed.
  /// - "ARRIVE_AT_INSTANCE" : Forwarding state: arriving at a Compute Engine
  /// instance.
  /// - "ARRIVE_AT_INTERNAL_LOAD_BALANCER" : Forwarding state: arriving at a
  /// Compute Engine internal load balancer.
  /// - "ARRIVE_AT_EXTERNAL_LOAD_BALANCER" : Forwarding state: arriving at a
  /// Compute Engine external load balancer.
  /// - "ARRIVE_AT_VPN_GATEWAY" : Forwarding state: arriving at a Cloud VPN
  /// gateway.
  /// - "ARRIVE_AT_VPN_TUNNEL" : Forwarding state: arriving at a Cloud VPN
  /// tunnel.
  /// - "NAT" : Transition state: packet header translated.
  /// - "PROXY_CONNECTION" : Transition state: original connection is terminated
  /// and a new proxied connection is initiated.
  /// - "DELIVER" : Final state: packet delivered.
  /// - "DROP" : Final state: packet dropped.
  /// - "FORWARD" : Final state: packet forwarded to a network with an unknown
  /// configuration.
  /// - "ABORT" : Final state: analysis is aborted.
  /// - "VIEWER_PERMISSION_MISSING" : Special state: viewer of the test result
  /// does not have permission to see the configuration in this step.
  core.String state;

  /// Display info of a Compute Engine VPN gateway.
  VpnGatewayInfo vpnGateway;

  /// Display info of a Compute Engine VPN tunnel.
  VpnTunnelInfo vpnTunnel;

  Step();

  Step.fromJson(core.Map _json) {
    if (_json.containsKey("abort")) {
      abort = new AbortInfo.fromJson(_json["abort"]);
    }
    if (_json.containsKey("causesDrop")) {
      causesDrop = _json["causesDrop"];
    }
    if (_json.containsKey("deliver")) {
      deliver = new DeliverInfo.fromJson(_json["deliver"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("drop")) {
      drop = new DropInfo.fromJson(_json["drop"]);
    }
    if (_json.containsKey("endpoint")) {
      endpoint = new EndpointInfo.fromJson(_json["endpoint"]);
    }
    if (_json.containsKey("firewall")) {
      firewall = new FirewallInfo.fromJson(_json["firewall"]);
    }
    if (_json.containsKey("forward")) {
      forward = new ForwardInfo.fromJson(_json["forward"]);
    }
    if (_json.containsKey("forwardingRule")) {
      forwardingRule = new ForwardingRuleInfo.fromJson(_json["forwardingRule"]);
    }
    if (_json.containsKey("instance")) {
      instance = new InstanceInfo.fromJson(_json["instance"]);
    }
    if (_json.containsKey("loadBalancer")) {
      loadBalancer = new LoadBalancerInfo.fromJson(_json["loadBalancer"]);
    }
    if (_json.containsKey("network")) {
      network = new NetworkInfo.fromJson(_json["network"]);
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("route")) {
      route = new RouteInfo.fromJson(_json["route"]);
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("vpnGateway")) {
      vpnGateway = new VpnGatewayInfo.fromJson(_json["vpnGateway"]);
    }
    if (_json.containsKey("vpnTunnel")) {
      vpnTunnel = new VpnTunnelInfo.fromJson(_json["vpnTunnel"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (abort != null) {
      _json["abort"] = (abort).toJson();
    }
    if (causesDrop != null) {
      _json["causesDrop"] = causesDrop;
    }
    if (deliver != null) {
      _json["deliver"] = (deliver).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (drop != null) {
      _json["drop"] = (drop).toJson();
    }
    if (endpoint != null) {
      _json["endpoint"] = (endpoint).toJson();
    }
    if (firewall != null) {
      _json["firewall"] = (firewall).toJson();
    }
    if (forward != null) {
      _json["forward"] = (forward).toJson();
    }
    if (forwardingRule != null) {
      _json["forwardingRule"] = (forwardingRule).toJson();
    }
    if (instance != null) {
      _json["instance"] = (instance).toJson();
    }
    if (loadBalancer != null) {
      _json["loadBalancer"] = (loadBalancer).toJson();
    }
    if (network != null) {
      _json["network"] = (network).toJson();
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (route != null) {
      _json["route"] = (route).toJson();
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (vpnGateway != null) {
      _json["vpnGateway"] = (vpnGateway).toJson();
    }
    if (vpnTunnel != null) {
      _json["vpnTunnel"] = (vpnTunnel).toJson();
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

/// Trace represents one simulated packet forwarding path. - Each trace contains
/// multiple ordered steps. - Each step is in a particular state and has an
/// associated configuration. - State is categorized as a final or non-final
/// state. - Each final state has a reason associated with it. - Each trace must
/// end with a final state (the last step).
/// |---------------------Trace----------------------| Step1(State) Step2(State)
/// --- StepN(State(final))
class Trace {
  /// Derived from the source and destination endpoints definition, and
  /// validated by the data plane model. If there are multiple traces starting
  /// from different source locations, then the endpoint_info may be different
  /// between traces.
  EndpointInfo endpointInfo;

  /// A trace of a test contains multiple steps from the initial state to the
  /// final state (delivered, dropped, forwarded, or aborted). The steps are
  /// ordered by the processing sequence within the simulated network state
  /// machine. It is critical to preserve the order of the steps and avoid
  /// reordering or sorting them.
  core.List<Step> steps;

  Trace();

  Trace.fromJson(core.Map _json) {
    if (_json.containsKey("endpointInfo")) {
      endpointInfo = new EndpointInfo.fromJson(_json["endpointInfo"]);
    }
    if (_json.containsKey("steps")) {
      steps = (_json["steps"] as core.List)
          .map<Step>((value) => new Step.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endpointInfo != null) {
      _json["endpointInfo"] = (endpointInfo).toJson();
    }
    if (steps != null) {
      _json["steps"] = steps.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// For display only. Metadata associated with a Compute Engine VPN gateway.
class VpnGatewayInfo {
  /// Name of a VPN gateway.
  core.String displayName;

  /// IP address of the VPN gateway.
  core.String ipAddress;

  /// URI of a Compute Engine network where the VPN gateway is configured.
  core.String networkUri;

  /// Name of a GCP region where this VPN gateway is configured.
  core.String region;

  /// URI of a VPN gateway.
  core.String uri;

  /// A VPN tunnel that is associated with this VPN gateway. There may be
  /// multiple VPN tunnels configured on a VPN gateway, and only the one
  /// relevant to the test is displayed.
  core.String vpnTunnelUri;

  VpnGatewayInfo();

  VpnGatewayInfo.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("ipAddress")) {
      ipAddress = _json["ipAddress"];
    }
    if (_json.containsKey("networkUri")) {
      networkUri = _json["networkUri"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
    if (_json.containsKey("vpnTunnelUri")) {
      vpnTunnelUri = _json["vpnTunnelUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (ipAddress != null) {
      _json["ipAddress"] = ipAddress;
    }
    if (networkUri != null) {
      _json["networkUri"] = networkUri;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    if (vpnTunnelUri != null) {
      _json["vpnTunnelUri"] = vpnTunnelUri;
    }
    return _json;
  }
}

/// For display only. Metadata associated with a Compute Engine VPN tunnel.
class VpnTunnelInfo {
  /// Name of a VPN tunnel.
  core.String displayName;

  /// URI of a Compute Engine network where the VPN tunnel is configured.
  core.String networkUri;

  /// Name of a GCP region where this VPN tunnel is configured.
  core.String region;

  /// URI of a VPN gateway at remote end of the tunnel.
  core.String remoteGateway;

  /// Remote VPN gateway's IP address.
  core.String remoteGatewayIp;

  /// Type of the routing policy.
  /// Possible string values are:
  /// - "ROUTING_TYPE_UNSPECIFIED" : Unspecified type. Default value.
  /// - "ROUTE_BASED" : Route based VPN.
  /// - "POLICY_BASED" : Policy based routing.
  /// - "DYNAMIC" : Dynamic (BGP) routing.
  core.String routingType;

  /// URI of the VPN gateway at local end of the tunnel.
  core.String sourceGateway;

  /// Local VPN gateway's IP address.
  core.String sourceGatewayIp;

  /// URI of a VPN tunnel.
  core.String uri;

  VpnTunnelInfo();

  VpnTunnelInfo.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("networkUri")) {
      networkUri = _json["networkUri"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("remoteGateway")) {
      remoteGateway = _json["remoteGateway"];
    }
    if (_json.containsKey("remoteGatewayIp")) {
      remoteGatewayIp = _json["remoteGatewayIp"];
    }
    if (_json.containsKey("routingType")) {
      routingType = _json["routingType"];
    }
    if (_json.containsKey("sourceGateway")) {
      sourceGateway = _json["sourceGateway"];
    }
    if (_json.containsKey("sourceGatewayIp")) {
      sourceGatewayIp = _json["sourceGatewayIp"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (networkUri != null) {
      _json["networkUri"] = networkUri;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (remoteGateway != null) {
      _json["remoteGateway"] = remoteGateway;
    }
    if (remoteGatewayIp != null) {
      _json["remoteGatewayIp"] = remoteGatewayIp;
    }
    if (routingType != null) {
      _json["routingType"] = routingType;
    }
    if (sourceGateway != null) {
      _json["sourceGateway"] = sourceGateway;
    }
    if (sourceGatewayIp != null) {
      _json["sourceGatewayIp"] = sourceGatewayIp;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}
