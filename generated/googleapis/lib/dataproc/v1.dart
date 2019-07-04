// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.dataproc.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client dataproc/v1';

/// Manages Hadoop-based clusters and jobs on Google Cloud Platform.
class DataprocApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  DataprocApi(http.Client client,
      {core.String rootUrl = "https://dataproc.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsResourceApi get locations =>
      new ProjectsLocationsResourceApi(_requester);
  ProjectsRegionsResourceApi get regions =>
      new ProjectsRegionsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsAutoscalingPoliciesResourceApi get autoscalingPolicies =>
      new ProjectsLocationsAutoscalingPoliciesResourceApi(_requester);
  ProjectsLocationsWorkflowTemplatesResourceApi get workflowTemplates =>
      new ProjectsLocationsWorkflowTemplatesResourceApi(_requester);

  ProjectsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsAutoscalingPoliciesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsAutoscalingPoliciesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the access control policy for a resource. Returns an empty policy if
  /// the resource exists and does not have a policy set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/autoscalingPolicies/[^/]+$".
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

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/autoscalingPolicies/[^/]+$".
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
  /// a NOT_FOUND error.Note: This operation is designed to be used for building
  /// permission-aware UIs and command-line tools, not for authorization
  /// checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/autoscalingPolicies/[^/]+$".
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

class ProjectsLocationsWorkflowTemplatesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkflowTemplatesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates new workflow template.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The "resource name" of the region, as described in
  /// https://cloud.google.com/apis/design/resource_names of the form
  /// projects/{project_id}/regions/{region}
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkflowTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkflowTemplate> create(
      WorkflowTemplate request, core.String parent,
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
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/workflowTemplates';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WorkflowTemplate.fromJson(data));
  }

  /// Deletes a workflow template. It does not cancel in-progress workflows.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The "resource name" of the workflow template, as
  /// described in https://cloud.google.com/apis/design/resource_names of the
  /// form
  /// projects/{project_id}/regions/{region}/workflowTemplates/{template_id}
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/workflowTemplates/[^/]+$".
  ///
  /// [version] - Optional. The version of workflow template to delete. If
  /// specified, will only delete the template if the current server version
  /// matches specified version.
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
  async.Future<Empty> delete(core.String name,
      {core.int version, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (version != null) {
      _queryParams["version"] = ["${version}"];
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

  /// Retrieves the latest workflow template.Can retrieve previously
  /// instantiated template by specifying optional version parameter.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The "resource name" of the workflow template, as
  /// described in https://cloud.google.com/apis/design/resource_names of the
  /// form
  /// projects/{project_id}/regions/{region}/workflowTemplates/{template_id}
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/workflowTemplates/[^/]+$".
  ///
  /// [version] - Optional. The version of workflow template to retrieve. Only
  /// previously instatiated versions can be retrieved.If unspecified, retrieves
  /// the current version.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkflowTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkflowTemplate> get(core.String name,
      {core.int version, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (version != null) {
      _queryParams["version"] = ["${version}"];
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
    return _response.then((data) => new WorkflowTemplate.fromJson(data));
  }

  /// Gets the access control policy for a resource. Returns an empty policy if
  /// the resource exists and does not have a policy set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/workflowTemplates/[^/]+$".
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

  /// Instantiates a template and begins execution.The returned Operation can be
  /// used to track execution of workflow by polling operations.get. The
  /// Operation will complete when entire workflow is finished.The running
  /// workflow can be aborted via operations.cancel. This will cause any
  /// inflight jobs to be cancelled and workflow-owned clusters to be
  /// deleted.The Operation.metadata will be WorkflowMetadata.On successful
  /// completion, Operation.response will be Empty.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The "resource name" of the workflow template, as
  /// described in https://cloud.google.com/apis/design/resource_names of the
  /// form
  /// projects/{project_id}/regions/{region}/workflowTemplates/{template_id}
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/workflowTemplates/[^/]+$".
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
  async.Future<Operation> instantiate(
      InstantiateWorkflowTemplateRequest request, core.String name,
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

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':instantiate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Instantiates a template and begins execution.This method is equivalent to
  /// executing the sequence CreateWorkflowTemplate,
  /// InstantiateWorkflowTemplate, DeleteWorkflowTemplate.The returned Operation
  /// can be used to track execution of workflow by polling operations.get. The
  /// Operation will complete when entire workflow is finished.The running
  /// workflow can be aborted via operations.cancel. This will cause any
  /// inflight jobs to be cancelled and workflow-owned clusters to be
  /// deleted.The Operation.metadata will be WorkflowMetadata.On successful
  /// completion, Operation.response will be Empty.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The "resource name" of the workflow template region,
  /// as described in https://cloud.google.com/apis/design/resource_names of the
  /// form projects/{project_id}/regions/{region}
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [requestId] - Optional. A tag that prevents multiple concurrent workflow
  /// instances with the same tag from running. This mitigates risk of
  /// concurrent instances started due to retries.It is recommended to always
  /// set this value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The tag must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
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
  async.Future<Operation> instantiateInline(
      WorkflowTemplate request, core.String parent,
      {core.String requestId, core.String $fields}) {
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
    if (requestId != null) {
      _queryParams["requestId"] = [requestId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/workflowTemplates:instantiateInline';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists workflows that match the specified filter in the request.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The "resource name" of the region, as described in
  /// https://cloud.google.com/apis/design/resource_names of the form
  /// projects/{project_id}/regions/{region}
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [pageToken] - Optional. The page token, returned by a previous call, to
  /// request the next page of results.
  ///
  /// [pageSize] - Optional. The maximum number of results to return in each
  /// response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkflowTemplatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkflowTemplatesResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/workflowTemplates';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListWorkflowTemplatesResponse.fromJson(data));
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/workflowTemplates/[^/]+$".
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
  /// a NOT_FOUND error.Note: This operation is designed to be used for building
  /// permission-aware UIs and command-line tools, not for authorization
  /// checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/workflowTemplates/[^/]+$".
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

  /// Updates (replaces) workflow template. The updated template must contain
  /// version that matches the current server version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The "resource name" of the template, as described in
  /// https://cloud.google.com/apis/design/resource_names of the form
  /// projects/{project_id}/regions/{region}/workflowTemplates/{template_id}
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/workflowTemplates/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkflowTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkflowTemplate> update(
      WorkflowTemplate request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WorkflowTemplate.fromJson(data));
  }
}

class ProjectsRegionsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsRegionsAutoscalingPoliciesResourceApi get autoscalingPolicies =>
      new ProjectsRegionsAutoscalingPoliciesResourceApi(_requester);
  ProjectsRegionsClustersResourceApi get clusters =>
      new ProjectsRegionsClustersResourceApi(_requester);
  ProjectsRegionsJobsResourceApi get jobs =>
      new ProjectsRegionsJobsResourceApi(_requester);
  ProjectsRegionsOperationsResourceApi get operations =>
      new ProjectsRegionsOperationsResourceApi(_requester);
  ProjectsRegionsWorkflowTemplatesResourceApi get workflowTemplates =>
      new ProjectsRegionsWorkflowTemplatesResourceApi(_requester);

  ProjectsRegionsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsRegionsAutoscalingPoliciesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsRegionsAutoscalingPoliciesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the access control policy for a resource. Returns an empty policy if
  /// the resource exists and does not have a policy set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// "^projects/[^/]+/regions/[^/]+/autoscalingPolicies/[^/]+$".
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

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// "^projects/[^/]+/regions/[^/]+/autoscalingPolicies/[^/]+$".
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
  /// a NOT_FOUND error.Note: This operation is designed to be used for building
  /// permission-aware UIs and command-line tools, not for authorization
  /// checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// "^projects/[^/]+/regions/[^/]+/autoscalingPolicies/[^/]+$".
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

class ProjectsRegionsClustersResourceApi {
  final commons.ApiRequester _requester;

  ProjectsRegionsClustersResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a cluster in a project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the cluster belongs to.
  ///
  /// [region] - Required. The Cloud Dataproc region in which to handle the
  /// request.
  ///
  /// [requestId] - Optional. A unique id used to identify the request. If the
  /// server receives two CreateClusterRequest requests with the same id, then
  /// the second request will be ignored and the first
  /// google.longrunning.Operation created and stored in the backend is
  /// returned.It is recommended to always set this value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
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
  async.Future<Operation> create(
      Cluster request, core.String projectId, core.String region,
      {core.String requestId, core.String $fields}) {
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
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (requestId != null) {
      _queryParams["requestId"] = [requestId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/regions/' +
        commons.Escaper.ecapeVariable('$region') +
        '/clusters';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Deletes a cluster in a project.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the cluster belongs to.
  ///
  /// [region] - Required. The Cloud Dataproc region in which to handle the
  /// request.
  ///
  /// [clusterName] - Required. The cluster name.
  ///
  /// [clusterUuid] - Optional. Specifying the cluster_uuid means the RPC should
  /// fail (with error NOT_FOUND) if cluster with specified UUID does not exist.
  ///
  /// [requestId] - Optional. A unique id used to identify the request. If the
  /// server receives two DeleteClusterRequest requests with the same id, then
  /// the second request will be ignored and the first
  /// google.longrunning.Operation created and stored in the backend is
  /// returned.It is recommended to always set this value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
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
  async.Future<Operation> delete(
      core.String projectId, core.String region, core.String clusterName,
      {core.String clusterUuid, core.String requestId, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (clusterName == null) {
      throw new core.ArgumentError("Parameter clusterName is required.");
    }
    if (clusterUuid != null) {
      _queryParams["clusterUuid"] = [clusterUuid];
    }
    if (requestId != null) {
      _queryParams["requestId"] = [requestId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/regions/' +
        commons.Escaper.ecapeVariable('$region') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterName');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Gets cluster diagnostic information. After the operation completes, the
  /// Operation.response field contains DiagnoseClusterOutputLocation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the cluster belongs to.
  ///
  /// [region] - Required. The Cloud Dataproc region in which to handle the
  /// request.
  ///
  /// [clusterName] - Required. The cluster name.
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
  async.Future<Operation> diagnose(DiagnoseClusterRequest request,
      core.String projectId, core.String region, core.String clusterName,
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
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (clusterName == null) {
      throw new core.ArgumentError("Parameter clusterName is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/regions/' +
        commons.Escaper.ecapeVariable('$region') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterName') +
        ':diagnose';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Gets the resource representation for a cluster in a project.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the cluster belongs to.
  ///
  /// [region] - Required. The Cloud Dataproc region in which to handle the
  /// request.
  ///
  /// [clusterName] - Required. The cluster name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Cluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Cluster> get(
      core.String projectId, core.String region, core.String clusterName,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (clusterName == null) {
      throw new core.ArgumentError("Parameter clusterName is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/regions/' +
        commons.Escaper.ecapeVariable('$region') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterName');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Cluster.fromJson(data));
  }

  /// Gets the access control policy for a resource. Returns an empty policy if
  /// the resource exists and does not have a policy set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/regions/[^/]+/clusters/[^/]+$".
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

  /// Lists all regions/{region}/clusters in a project.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the cluster belongs to.
  ///
  /// [region] - Required. The Cloud Dataproc region in which to handle the
  /// request.
  ///
  /// [pageToken] - Optional. The standard List page token.
  ///
  /// [pageSize] - Optional. The standard List page size.
  ///
  /// [filter] - Optional. A filter constraining the clusters to list. Filters
  /// are case-sensitive and have the following syntax:field = value AND field =
  /// value ...where field is one of status.state, clusterName, or labels.[KEY],
  /// and [KEY] is a label key. value can be * to match all values. status.state
  /// can be one of the following: ACTIVE, INACTIVE, CREATING, RUNNING, ERROR,
  /// DELETING, or UPDATING. ACTIVE contains the CREATING, UPDATING, and RUNNING
  /// states. INACTIVE contains the DELETING and ERROR states. clusterName is
  /// the name of the cluster provided at creation time. Only the logical AND
  /// operator is supported; space-separated items are treated as having an
  /// implicit AND operator.Example filter:status.state = ACTIVE AND clusterName
  /// = mycluster AND labels.env = staging AND labels.starred = *
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListClustersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListClustersResponse> list(
      core.String projectId, core.String region,
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

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
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

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/regions/' +
        commons.Escaper.ecapeVariable('$region') +
        '/clusters';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListClustersResponse.fromJson(data));
  }

  /// Updates a cluster in a project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project the
  /// cluster belongs to.
  ///
  /// [region] - Required. The Cloud Dataproc region in which to handle the
  /// request.
  ///
  /// [clusterName] - Required. The cluster name.
  ///
  /// [gracefulDecommissionTimeout] - Optional. Timeout for graceful YARN
  /// decomissioning. Graceful decommissioning allows removing nodes from the
  /// cluster without interrupting jobs in progress. Timeout specifies how long
  /// to wait for jobs in progress to finish before forcefully removing nodes
  /// (and potentially interrupting jobs). Default timeout is 0 (for forceful
  /// decommission), and the maximum allowed timeout is 1 day.Only supported on
  /// Dataproc image versions 1.2 and higher.
  ///
  /// [requestId] - Optional. A unique id used to identify the request. If the
  /// server receives two UpdateClusterRequest requests with the same id, then
  /// the second request will be ignored and the first
  /// google.longrunning.Operation created and stored in the backend is
  /// returned.It is recommended to always set this value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  ///
  /// [updateMask] - Required. Specifies the path, relative to Cluster, of the
  /// field to update. For example, to change the number of workers in a cluster
  /// to 5, the update_mask parameter would be specified as
  /// config.worker_config.num_instances, and the PATCH request body would
  /// specify the new value, as follows:
  /// {
  ///   "config":{
  ///     "workerConfig":{
  ///       "numInstances":"5"
  ///     }
  ///   }
  /// }
  /// Similarly, to change the number of preemptible workers in a cluster to 5,
  /// the update_mask parameter would be
  /// config.secondary_worker_config.num_instances, and the PATCH request body
  /// would be set as follows:
  /// {
  ///   "config":{
  ///     "secondaryWorkerConfig":{
  ///       "numInstances":"5"
  ///     }
  ///   }
  /// }
  /// <strong>Note:</strong> Currently, only the following fields can be
  /// updated:<table>  <tbody>  <tr>  <td><strong>Mask</strong></td>
  /// <td><strong>Purpose</strong></td>  </tr>  <tr>
  /// <td><strong><em>labels</em></strong></td>  <td>Update labels</td>  </tr>
  /// <tr>
  /// <td><strong><em>config.worker_config.num_instances</em></strong></td>
  /// <td>Resize primary worker group</td>  </tr>  <tr>
  /// <td><strong><em>config.secondary_worker_config.num_instances</em></strong></td>
  /// <td>Resize secondary worker group</td>  </tr>  </tbody>  </table>
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
  async.Future<Operation> patch(Cluster request, core.String projectId,
      core.String region, core.String clusterName,
      {core.String gracefulDecommissionTimeout,
      core.String requestId,
      core.String updateMask,
      core.String $fields}) {
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
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (clusterName == null) {
      throw new core.ArgumentError("Parameter clusterName is required.");
    }
    if (gracefulDecommissionTimeout != null) {
      _queryParams["gracefulDecommissionTimeout"] = [
        gracefulDecommissionTimeout
      ];
    }
    if (requestId != null) {
      _queryParams["requestId"] = [requestId];
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/regions/' +
        commons.Escaper.ecapeVariable('$region') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterName');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/regions/[^/]+/clusters/[^/]+$".
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
  /// a NOT_FOUND error.Note: This operation is designed to be used for building
  /// permission-aware UIs and command-line tools, not for authorization
  /// checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/regions/[^/]+/clusters/[^/]+$".
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

class ProjectsRegionsJobsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsRegionsJobsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Starts a job cancellation request. To access the job resource after
  /// cancellation, call regions/{region}/jobs.list or
  /// regions/{region}/jobs.get.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the job belongs to.
  ///
  /// [region] - Required. The Cloud Dataproc region in which to handle the
  /// request.
  ///
  /// [jobId] - Required. The job ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> cancel(CancelJobRequest request, core.String projectId,
      core.String region, core.String jobId,
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
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/regions/' +
        commons.Escaper.ecapeVariable('$region') +
        '/jobs/' +
        commons.Escaper.ecapeVariable('$jobId') +
        ':cancel';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /// Deletes the job from the project. If the job is active, the delete fails,
  /// and the response returns FAILED_PRECONDITION.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the job belongs to.
  ///
  /// [region] - Required. The Cloud Dataproc region in which to handle the
  /// request.
  ///
  /// [jobId] - Required. The job ID.
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
      core.String projectId, core.String region, core.String jobId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/regions/' +
        commons.Escaper.ecapeVariable('$region') +
        '/jobs/' +
        commons.Escaper.ecapeVariable('$jobId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets the resource representation for a job in a project.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the job belongs to.
  ///
  /// [region] - Required. The Cloud Dataproc region in which to handle the
  /// request.
  ///
  /// [jobId] - Required. The job ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> get(
      core.String projectId, core.String region, core.String jobId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/regions/' +
        commons.Escaper.ecapeVariable('$region') +
        '/jobs/' +
        commons.Escaper.ecapeVariable('$jobId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /// Gets the access control policy for a resource. Returns an empty policy if
  /// the resource exists and does not have a policy set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/regions/[^/]+/jobs/[^/]+$".
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

  /// Lists regions/{region}/jobs in a project.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the job belongs to.
  ///
  /// [region] - Required. The Cloud Dataproc region in which to handle the
  /// request.
  ///
  /// [clusterName] - Optional. If set, the returned jobs list includes only
  /// jobs that were submitted to the named cluster.
  ///
  /// [filter] - Optional. A filter constraining the jobs to list. Filters are
  /// case-sensitive and have the following syntax:field = value AND field =
  /// value ...where field is status.state or labels.[KEY], and [KEY] is a label
  /// key. value can be * to match all values. status.state can be either ACTIVE
  /// or NON_ACTIVE. Only the logical AND operator is supported; space-separated
  /// items are treated as having an implicit AND operator.Example
  /// filter:status.state = ACTIVE AND labels.env = staging AND labels.starred =
  /// *
  ///
  /// [jobStateMatcher] - Optional. Specifies enumerated categories of jobs to
  /// list. (default = match ALL jobs).If filter is provided, jobStateMatcher
  /// will be ignored.
  /// Possible string values are:
  /// - "ALL" : A ALL.
  /// - "ACTIVE" : A ACTIVE.
  /// - "NON_ACTIVE" : A NON_ACTIVE.
  ///
  /// [pageToken] - Optional. The page token, returned by a previous call, to
  /// request the next page of results.
  ///
  /// [pageSize] - Optional. The number of results to return in each response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListJobsResponse> list(core.String projectId, core.String region,
      {core.String clusterName,
      core.String filter,
      core.String jobStateMatcher,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (clusterName != null) {
      _queryParams["clusterName"] = [clusterName];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (jobStateMatcher != null) {
      _queryParams["jobStateMatcher"] = [jobStateMatcher];
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

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/regions/' +
        commons.Escaper.ecapeVariable('$region') +
        '/jobs';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListJobsResponse.fromJson(data));
  }

  /// Updates a job in a project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the job belongs to.
  ///
  /// [region] - Required. The Cloud Dataproc region in which to handle the
  /// request.
  ///
  /// [jobId] - Required. The job ID.
  ///
  /// [updateMask] - Required. Specifies the path, relative to <code>Job</code>,
  /// of the field to update. For example, to update the labels of a Job the
  /// <code>update_mask</code> parameter would be specified as
  /// <code>labels</code>, and the PATCH request body would specify the new
  /// value. <strong>Note:</strong> Currently, <code>labels</code> is the only
  /// field that can be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> patch(
      Job request, core.String projectId, core.String region, core.String jobId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/regions/' +
        commons.Escaper.ecapeVariable('$region') +
        '/jobs/' +
        commons.Escaper.ecapeVariable('$jobId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/regions/[^/]+/jobs/[^/]+$".
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

  /// Submits a job to a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform project that
  /// the job belongs to.
  ///
  /// [region] - Required. The Cloud Dataproc region in which to handle the
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> submit(
      SubmitJobRequest request, core.String projectId, core.String region,
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
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/regions/' +
        commons.Escaper.ecapeVariable('$region') +
        '/jobs:submit';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /// Returns permissions that a caller has on the specified resource. If the
  /// resource does not exist, this will return an empty set of permissions, not
  /// a NOT_FOUND error.Note: This operation is designed to be used for building
  /// permission-aware UIs and command-line tools, not for authorization
  /// checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/regions/[^/]+/jobs/[^/]+$".
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

class ProjectsRegionsOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsRegionsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation. The server
  /// makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or
  /// other methods to check whether the cancellation succeeded or whether the
  /// operation completed despite cancellation. On successful cancellation, the
  /// operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// Code.CANCELLED.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern "^projects/[^/]+/regions/[^/]+/operations/[^/]+$".
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
  async.Future<Empty> cancel(core.String name, {core.String $fields}) {
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
  /// google.rpc.Code.UNIMPLEMENTED.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern "^projects/[^/]+/regions/[^/]+/operations/[^/]+$".
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
  /// Value must have pattern "^projects/[^/]+/regions/[^/]+/operations/[^/]+$".
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

  /// Gets the access control policy for a resource. Returns an empty policy if
  /// the resource exists and does not have a policy set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/regions/[^/]+/operations/[^/]+$".
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

  /// Lists operations that match the specified filter in the request. If the
  /// server doesn't support this method, it returns UNIMPLEMENTED.NOTE: the
  /// name binding allows API services to override the binding to use different
  /// resource name schemes, such as users / * /operations. To override the
  /// binding, API services can add a binding such as "/v1/{name=users / *
  /// }/operations" to their service configuration. For backwards compatibility,
  /// the default name includes the operations collection id, however overriding
  /// users must ensure the name binding is the parent resource, without the
  /// operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern "^projects/[^/]+/regions/[^/]+/operations$".
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [filter] - The standard list filter.
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

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOperationsResponse.fromJson(data));
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/regions/[^/]+/operations/[^/]+$".
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
  /// a NOT_FOUND error.Note: This operation is designed to be used for building
  /// permission-aware UIs and command-line tools, not for authorization
  /// checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/regions/[^/]+/operations/[^/]+$".
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

class ProjectsRegionsWorkflowTemplatesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsRegionsWorkflowTemplatesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates new workflow template.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The "resource name" of the region, as described in
  /// https://cloud.google.com/apis/design/resource_names of the form
  /// projects/{project_id}/regions/{region}
  /// Value must have pattern "^projects/[^/]+/regions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkflowTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkflowTemplate> create(
      WorkflowTemplate request, core.String parent,
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
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/workflowTemplates';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WorkflowTemplate.fromJson(data));
  }

  /// Deletes a workflow template. It does not cancel in-progress workflows.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The "resource name" of the workflow template, as
  /// described in https://cloud.google.com/apis/design/resource_names of the
  /// form
  /// projects/{project_id}/regions/{region}/workflowTemplates/{template_id}
  /// Value must have pattern
  /// "^projects/[^/]+/regions/[^/]+/workflowTemplates/[^/]+$".
  ///
  /// [version] - Optional. The version of workflow template to delete. If
  /// specified, will only delete the template if the current server version
  /// matches specified version.
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
  async.Future<Empty> delete(core.String name,
      {core.int version, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (version != null) {
      _queryParams["version"] = ["${version}"];
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

  /// Retrieves the latest workflow template.Can retrieve previously
  /// instantiated template by specifying optional version parameter.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The "resource name" of the workflow template, as
  /// described in https://cloud.google.com/apis/design/resource_names of the
  /// form
  /// projects/{project_id}/regions/{region}/workflowTemplates/{template_id}
  /// Value must have pattern
  /// "^projects/[^/]+/regions/[^/]+/workflowTemplates/[^/]+$".
  ///
  /// [version] - Optional. The version of workflow template to retrieve. Only
  /// previously instatiated versions can be retrieved.If unspecified, retrieves
  /// the current version.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkflowTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkflowTemplate> get(core.String name,
      {core.int version, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (version != null) {
      _queryParams["version"] = ["${version}"];
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
    return _response.then((data) => new WorkflowTemplate.fromJson(data));
  }

  /// Gets the access control policy for a resource. Returns an empty policy if
  /// the resource exists and does not have a policy set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// "^projects/[^/]+/regions/[^/]+/workflowTemplates/[^/]+$".
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

  /// Instantiates a template and begins execution.The returned Operation can be
  /// used to track execution of workflow by polling operations.get. The
  /// Operation will complete when entire workflow is finished.The running
  /// workflow can be aborted via operations.cancel. This will cause any
  /// inflight jobs to be cancelled and workflow-owned clusters to be
  /// deleted.The Operation.metadata will be WorkflowMetadata.On successful
  /// completion, Operation.response will be Empty.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The "resource name" of the workflow template, as
  /// described in https://cloud.google.com/apis/design/resource_names of the
  /// form
  /// projects/{project_id}/regions/{region}/workflowTemplates/{template_id}
  /// Value must have pattern
  /// "^projects/[^/]+/regions/[^/]+/workflowTemplates/[^/]+$".
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
  async.Future<Operation> instantiate(
      InstantiateWorkflowTemplateRequest request, core.String name,
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

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':instantiate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Instantiates a template and begins execution.This method is equivalent to
  /// executing the sequence CreateWorkflowTemplate,
  /// InstantiateWorkflowTemplate, DeleteWorkflowTemplate.The returned Operation
  /// can be used to track execution of workflow by polling operations.get. The
  /// Operation will complete when entire workflow is finished.The running
  /// workflow can be aborted via operations.cancel. This will cause any
  /// inflight jobs to be cancelled and workflow-owned clusters to be
  /// deleted.The Operation.metadata will be WorkflowMetadata.On successful
  /// completion, Operation.response will be Empty.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The "resource name" of the workflow template region,
  /// as described in https://cloud.google.com/apis/design/resource_names of the
  /// form projects/{project_id}/regions/{region}
  /// Value must have pattern "^projects/[^/]+/regions/[^/]+$".
  ///
  /// [requestId] - Optional. A tag that prevents multiple concurrent workflow
  /// instances with the same tag from running. This mitigates risk of
  /// concurrent instances started due to retries.It is recommended to always
  /// set this value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The tag must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
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
  async.Future<Operation> instantiateInline(
      WorkflowTemplate request, core.String parent,
      {core.String requestId, core.String $fields}) {
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
    if (requestId != null) {
      _queryParams["requestId"] = [requestId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/workflowTemplates:instantiateInline';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists workflows that match the specified filter in the request.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The "resource name" of the region, as described in
  /// https://cloud.google.com/apis/design/resource_names of the form
  /// projects/{project_id}/regions/{region}
  /// Value must have pattern "^projects/[^/]+/regions/[^/]+$".
  ///
  /// [pageToken] - Optional. The page token, returned by a previous call, to
  /// request the next page of results.
  ///
  /// [pageSize] - Optional. The maximum number of results to return in each
  /// response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkflowTemplatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkflowTemplatesResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/workflowTemplates';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListWorkflowTemplatesResponse.fromJson(data));
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// "^projects/[^/]+/regions/[^/]+/workflowTemplates/[^/]+$".
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
  /// a NOT_FOUND error.Note: This operation is designed to be used for building
  /// permission-aware UIs and command-line tools, not for authorization
  /// checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// "^projects/[^/]+/regions/[^/]+/workflowTemplates/[^/]+$".
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

  /// Updates (replaces) workflow template. The updated template must contain
  /// version that matches the current server version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The "resource name" of the template, as described in
  /// https://cloud.google.com/apis/design/resource_names of the form
  /// projects/{project_id}/regions/{region}/workflowTemplates/{template_id}
  /// Value must have pattern
  /// "^projects/[^/]+/regions/[^/]+/workflowTemplates/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkflowTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkflowTemplate> update(
      WorkflowTemplate request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WorkflowTemplate.fromJson(data));
  }
}

/// Specifies the type and number of accelerator cards attached to the instances
/// of an instance. See GPUs on Compute Engine.
class AcceleratorConfig {
  /// The number of the accelerator cards of this type exposed to this instance.
  core.int acceleratorCount;

  /// Full URL, partial URI, or short name of the accelerator type resource to
  /// expose to this instance. See Compute Engine AcceleratorTypes.Examples:
  /// https://www.googleapis.com/compute/beta/projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80
  /// projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80
  /// nvidia-tesla-k80Auto Zone Exception: If you are using the Cloud Dataproc
  /// Auto Zone Placement feature, you must use the short name of the
  /// accelerator type resource, for example, nvidia-tesla-k80.
  core.String acceleratorTypeUri;

  AcceleratorConfig();

  AcceleratorConfig.fromJson(core.Map _json) {
    if (_json.containsKey("acceleratorCount")) {
      acceleratorCount = _json["acceleratorCount"];
    }
    if (_json.containsKey("acceleratorTypeUri")) {
      acceleratorTypeUri = _json["acceleratorTypeUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (acceleratorCount != null) {
      _json["acceleratorCount"] = acceleratorCount;
    }
    if (acceleratorTypeUri != null) {
      _json["acceleratorTypeUri"] = acceleratorTypeUri;
    }
    return _json;
  }
}

/// Associates members with a role.
class Binding {
  /// The condition that is associated with this binding. NOTE: An unsatisfied
  /// condition will not allow user access via current binding. Different
  /// bindings, including their conditions, are examined independently.
  Expr condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  /// members can have the following values:
  /// allUsers: A special identifier that represents anyone who is  on the
  /// internet; with or without a Google account.
  /// allAuthenticatedUsers: A special identifier that represents anyone  who is
  /// authenticated with a Google account or a service account.
  /// user:{emailid}: An email address that represents a specific Google
  /// account. For example, alice@gmail.com .
  /// serviceAccount:{emailid}: An email address that represents a service
  /// account. For example, my-other-app@appspot.gserviceaccount.com.
  /// group:{emailid}: An email address that represents a Google group.  For
  /// example, admins@example.com.
  /// domain:{domain}: The G Suite domain (primary) that represents all the
  /// users of that domain. For example, google.com or example.com.
  core.List<core.String> members;

  /// Role that is assigned to members. For example, roles/viewer, roles/editor,
  /// or roles/owner.
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

/// A request to cancel a job.
class CancelJobRequest {
  CancelJobRequest();

  CancelJobRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Describes the identifying information, config, and status of a cluster of
/// Compute Engine instances.
class Cluster {
  /// Required. The cluster name. Cluster names within a project must be unique.
  /// Names of deleted clusters can be reused.
  core.String clusterName;

  /// Output only. A cluster UUID (Unique Universal Identifier). Cloud Dataproc
  /// generates this value when it creates the cluster.
  core.String clusterUuid;

  /// Required. The cluster config. Note that Cloud Dataproc may set default
  /// values, and values may change when clusters are updated.
  ClusterConfig config;

  /// Optional. The labels to associate with this cluster. Label keys must
  /// contain 1 to 63 characters, and must conform to RFC 1035
  /// (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if
  /// present, must contain 1 to 63 characters, and must conform to RFC 1035
  /// (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be
  /// associated with a cluster.
  core.Map<core.String, core.String> labels;

  /// Contains cluster daemon metrics such as HDFS and YARN stats.Beta Feature:
  /// This report is available for testing purposes only. It may be changed
  /// before final release.
  ClusterMetrics metrics;

  /// Required. The Google Cloud Platform project ID that the cluster belongs
  /// to.
  core.String projectId;

  /// Output only. Cluster status.
  ClusterStatus status;

  /// Output only. The previous cluster status.
  core.List<ClusterStatus> statusHistory;

  Cluster();

  Cluster.fromJson(core.Map _json) {
    if (_json.containsKey("clusterName")) {
      clusterName = _json["clusterName"];
    }
    if (_json.containsKey("clusterUuid")) {
      clusterUuid = _json["clusterUuid"];
    }
    if (_json.containsKey("config")) {
      config = new ClusterConfig.fromJson(_json["config"]);
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("metrics")) {
      metrics = new ClusterMetrics.fromJson(_json["metrics"]);
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("status")) {
      status = new ClusterStatus.fromJson(_json["status"]);
    }
    if (_json.containsKey("statusHistory")) {
      statusHistory = (_json["statusHistory"] as core.List)
          .map<ClusterStatus>((value) => new ClusterStatus.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterName != null) {
      _json["clusterName"] = clusterName;
    }
    if (clusterUuid != null) {
      _json["clusterUuid"] = clusterUuid;
    }
    if (config != null) {
      _json["config"] = (config).toJson();
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (metrics != null) {
      _json["metrics"] = (metrics).toJson();
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    if (statusHistory != null) {
      _json["statusHistory"] =
          statusHistory.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The cluster config.
class ClusterConfig {
  /// Optional. A Google Cloud Storage bucket used to stage job dependencies,
  /// config files, and job driver console output. If you do not specify a
  /// staging bucket, Cloud Dataproc will determine a Cloud Storage location
  /// (US, ASIA, or EU) for your cluster's staging bucket according to the
  /// Google Compute Engine zone where your cluster is deployed, and then create
  /// and manage this project-level, per-location bucket (see Cloud Dataproc
  /// staging bucket).
  core.String configBucket;

  /// Optional. Encryption settings for the cluster.
  EncryptionConfig encryptionConfig;

  /// Optional. The shared Compute Engine config settings for all instances in a
  /// cluster.
  GceClusterConfig gceClusterConfig;

  /// Optional. Commands to execute on each node after config is completed. By
  /// default, executables are run on master and all worker nodes. You can test
  /// a node's role metadata to run an executable on a master or worker node, as
  /// shown below using curl (you can also use wget):
  /// ROLE=$(curl -H Metadata-Flavor:Google
  /// http://metadata/computeMetadata/v1/instance/attributes/dataproc-role)
  /// if [[ "${ROLE}" == 'Master' ]]; then
  ///   ... master specific actions ...
  /// else
  ///   ... worker specific actions ...
  /// fi
  core.List<NodeInitializationAction> initializationActions;

  /// Optional. The Compute Engine config settings for the master instance in a
  /// cluster.
  InstanceGroupConfig masterConfig;

  /// Optional. The Compute Engine config settings for additional worker
  /// instances in a cluster.
  InstanceGroupConfig secondaryWorkerConfig;

  /// Optional. Security settings for the cluster.
  SecurityConfig securityConfig;

  /// Optional. The config settings for software inside the cluster.
  SoftwareConfig softwareConfig;

  /// Optional. The Compute Engine config settings for worker instances in a
  /// cluster.
  InstanceGroupConfig workerConfig;

  ClusterConfig();

  ClusterConfig.fromJson(core.Map _json) {
    if (_json.containsKey("configBucket")) {
      configBucket = _json["configBucket"];
    }
    if (_json.containsKey("encryptionConfig")) {
      encryptionConfig =
          new EncryptionConfig.fromJson(_json["encryptionConfig"]);
    }
    if (_json.containsKey("gceClusterConfig")) {
      gceClusterConfig =
          new GceClusterConfig.fromJson(_json["gceClusterConfig"]);
    }
    if (_json.containsKey("initializationActions")) {
      initializationActions = (_json["initializationActions"] as core.List)
          .map<NodeInitializationAction>(
              (value) => new NodeInitializationAction.fromJson(value))
          .toList();
    }
    if (_json.containsKey("masterConfig")) {
      masterConfig = new InstanceGroupConfig.fromJson(_json["masterConfig"]);
    }
    if (_json.containsKey("secondaryWorkerConfig")) {
      secondaryWorkerConfig =
          new InstanceGroupConfig.fromJson(_json["secondaryWorkerConfig"]);
    }
    if (_json.containsKey("securityConfig")) {
      securityConfig = new SecurityConfig.fromJson(_json["securityConfig"]);
    }
    if (_json.containsKey("softwareConfig")) {
      softwareConfig = new SoftwareConfig.fromJson(_json["softwareConfig"]);
    }
    if (_json.containsKey("workerConfig")) {
      workerConfig = new InstanceGroupConfig.fromJson(_json["workerConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (configBucket != null) {
      _json["configBucket"] = configBucket;
    }
    if (encryptionConfig != null) {
      _json["encryptionConfig"] = (encryptionConfig).toJson();
    }
    if (gceClusterConfig != null) {
      _json["gceClusterConfig"] = (gceClusterConfig).toJson();
    }
    if (initializationActions != null) {
      _json["initializationActions"] =
          initializationActions.map((value) => (value).toJson()).toList();
    }
    if (masterConfig != null) {
      _json["masterConfig"] = (masterConfig).toJson();
    }
    if (secondaryWorkerConfig != null) {
      _json["secondaryWorkerConfig"] = (secondaryWorkerConfig).toJson();
    }
    if (securityConfig != null) {
      _json["securityConfig"] = (securityConfig).toJson();
    }
    if (softwareConfig != null) {
      _json["softwareConfig"] = (softwareConfig).toJson();
    }
    if (workerConfig != null) {
      _json["workerConfig"] = (workerConfig).toJson();
    }
    return _json;
  }
}

/// Contains cluster daemon metrics, such as HDFS and YARN stats.Beta Feature:
/// This report is available for testing purposes only. It may be changed before
/// final release.
class ClusterMetrics {
  /// The HDFS metrics.
  core.Map<core.String, core.String> hdfsMetrics;

  /// The YARN metrics.
  core.Map<core.String, core.String> yarnMetrics;

  ClusterMetrics();

  ClusterMetrics.fromJson(core.Map _json) {
    if (_json.containsKey("hdfsMetrics")) {
      hdfsMetrics =
          (_json["hdfsMetrics"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("yarnMetrics")) {
      yarnMetrics =
          (_json["yarnMetrics"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (hdfsMetrics != null) {
      _json["hdfsMetrics"] = hdfsMetrics;
    }
    if (yarnMetrics != null) {
      _json["yarnMetrics"] = yarnMetrics;
    }
    return _json;
  }
}

/// The cluster operation triggered by a workflow.
class ClusterOperation {
  /// Output only. Indicates the operation is done.
  core.bool done;

  /// Output only. Error, if operation failed.
  core.String error;

  /// Output only. The id of the cluster operation.
  core.String operationId;

  ClusterOperation();

  ClusterOperation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = _json["error"];
    }
    if (_json.containsKey("operationId")) {
      operationId = _json["operationId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = error;
    }
    if (operationId != null) {
      _json["operationId"] = operationId;
    }
    return _json;
  }
}

/// Metadata describing the operation.
class ClusterOperationMetadata {
  /// Output only. Name of the cluster for the operation.
  core.String clusterName;

  /// Output only. Cluster UUID for the operation.
  core.String clusterUuid;

  /// Output only. Short description of operation.
  core.String description;

  /// Output only. Labels associated with the operation
  core.Map<core.String, core.String> labels;

  /// Output only. The operation type.
  core.String operationType;

  /// Output only. Current operation status.
  ClusterOperationStatus status;

  /// Output only. The previous operation status.
  core.List<ClusterOperationStatus> statusHistory;

  /// Output only. Errors encountered during operation execution.
  core.List<core.String> warnings;

  ClusterOperationMetadata();

  ClusterOperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("clusterName")) {
      clusterName = _json["clusterName"];
    }
    if (_json.containsKey("clusterUuid")) {
      clusterUuid = _json["clusterUuid"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("operationType")) {
      operationType = _json["operationType"];
    }
    if (_json.containsKey("status")) {
      status = new ClusterOperationStatus.fromJson(_json["status"]);
    }
    if (_json.containsKey("statusHistory")) {
      statusHistory = (_json["statusHistory"] as core.List)
          .map<ClusterOperationStatus>(
              (value) => new ClusterOperationStatus.fromJson(value))
          .toList();
    }
    if (_json.containsKey("warnings")) {
      warnings = (_json["warnings"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterName != null) {
      _json["clusterName"] = clusterName;
    }
    if (clusterUuid != null) {
      _json["clusterUuid"] = clusterUuid;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (operationType != null) {
      _json["operationType"] = operationType;
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    if (statusHistory != null) {
      _json["statusHistory"] =
          statusHistory.map((value) => (value).toJson()).toList();
    }
    if (warnings != null) {
      _json["warnings"] = warnings;
    }
    return _json;
  }
}

/// The status of the operation.
class ClusterOperationStatus {
  /// Output only. A message containing any operation metadata details.
  core.String details;

  /// Output only. A message containing the detailed operation state.
  core.String innerState;

  /// Output only. A message containing the operation state.
  /// Possible string values are:
  /// - "UNKNOWN" : Unused.
  /// - "PENDING" : The operation has been created.
  /// - "RUNNING" : The operation is running.
  /// - "DONE" : The operation is done; either cancelled or completed.
  core.String state;

  /// Output only. The time this state was entered.
  core.String stateStartTime;

  ClusterOperationStatus();

  ClusterOperationStatus.fromJson(core.Map _json) {
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("innerState")) {
      innerState = _json["innerState"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("stateStartTime")) {
      stateStartTime = _json["stateStartTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (details != null) {
      _json["details"] = details;
    }
    if (innerState != null) {
      _json["innerState"] = innerState;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (stateStartTime != null) {
      _json["stateStartTime"] = stateStartTime;
    }
    return _json;
  }
}

/// A selector that chooses target cluster for jobs based on metadata.
class ClusterSelector {
  /// Required. The cluster labels. Cluster must have all labels to match.
  core.Map<core.String, core.String> clusterLabels;

  /// Optional. The zone where workflow process executes. This parameter does
  /// not affect the selection of the cluster.If unspecified, the zone of the
  /// first cluster matching the selector is used.
  core.String zone;

  ClusterSelector();

  ClusterSelector.fromJson(core.Map _json) {
    if (_json.containsKey("clusterLabels")) {
      clusterLabels =
          (_json["clusterLabels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterLabels != null) {
      _json["clusterLabels"] = clusterLabels;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// The status of a cluster and its instances.
class ClusterStatus {
  /// Output only. Optional details of cluster's state.
  core.String detail;

  /// Output only. The cluster's state.
  /// Possible string values are:
  /// - "UNKNOWN" : The cluster state is unknown.
  /// - "CREATING" : The cluster is being created and set up. It is not ready
  /// for use.
  /// - "RUNNING" : The cluster is currently running and healthy. It is ready
  /// for use.
  /// - "ERROR" : The cluster encountered an error. It is not ready for use.
  /// - "DELETING" : The cluster is being deleted. It cannot be used.
  /// - "UPDATING" : The cluster is being updated. It continues to accept and
  /// process jobs.
  core.String state;

  /// Output only. Time when this state was entered.
  core.String stateStartTime;

  /// Output only. Additional state information that includes status reported by
  /// the agent.
  /// Possible string values are:
  /// - "UNSPECIFIED" : The cluster substate is unknown.
  /// - "UNHEALTHY" : The cluster is known to be in an unhealthy state (for
  /// example, critical daemons are not running or HDFS capacity is
  /// exhausted).Applies to RUNNING state.
  /// - "STALE_STATUS" : The agent-reported status is out of date (may occur if
  /// Cloud Dataproc loses communication with Agent).Applies to RUNNING state.
  core.String substate;

  ClusterStatus();

  ClusterStatus.fromJson(core.Map _json) {
    if (_json.containsKey("detail")) {
      detail = _json["detail"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("stateStartTime")) {
      stateStartTime = _json["stateStartTime"];
    }
    if (_json.containsKey("substate")) {
      substate = _json["substate"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (detail != null) {
      _json["detail"] = detail;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (stateStartTime != null) {
      _json["stateStartTime"] = stateStartTime;
    }
    if (substate != null) {
      _json["substate"] = substate;
    }
    return _json;
  }
}

/// A request to collect cluster diagnostic information.
class DiagnoseClusterRequest {
  DiagnoseClusterRequest();

  DiagnoseClusterRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// The location of diagnostic output.
class DiagnoseClusterResults {
  /// Output only. The Cloud Storage URI of the diagnostic output. The output
  /// report is a plain text file with a summary of collected diagnostics.
  core.String outputUri;

  DiagnoseClusterResults();

  DiagnoseClusterResults.fromJson(core.Map _json) {
    if (_json.containsKey("outputUri")) {
      outputUri = _json["outputUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (outputUri != null) {
      _json["outputUri"] = outputUri;
    }
    return _json;
  }
}

/// Specifies the config of disk options for a group of VM instances.
class DiskConfig {
  /// Optional. Size in GB of the boot disk (default is 500GB).
  core.int bootDiskSizeGb;

  /// Optional. Type of the boot disk (default is "pd-standard"). Valid values:
  /// "pd-ssd" (Persistent Disk Solid State Drive) or "pd-standard" (Persistent
  /// Disk Hard Disk Drive).
  core.String bootDiskType;

  /// Optional. Number of attached SSDs, from 0 to 4 (default is 0). If SSDs are
  /// not attached, the boot disk is used to store runtime logs and HDFS
  /// (https://hadoop.apache.org/docs/r1.2.1/hdfs_user_guide.html) data. If one
  /// or more SSDs are attached, this runtime bulk data is spread across them,
  /// and the boot disk contains only basic config and installed binaries.
  core.int numLocalSsds;

  DiskConfig();

  DiskConfig.fromJson(core.Map _json) {
    if (_json.containsKey("bootDiskSizeGb")) {
      bootDiskSizeGb = _json["bootDiskSizeGb"];
    }
    if (_json.containsKey("bootDiskType")) {
      bootDiskType = _json["bootDiskType"];
    }
    if (_json.containsKey("numLocalSsds")) {
      numLocalSsds = _json["numLocalSsds"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bootDiskSizeGb != null) {
      _json["bootDiskSizeGb"] = bootDiskSizeGb;
    }
    if (bootDiskType != null) {
      _json["bootDiskType"] = bootDiskType;
    }
    if (numLocalSsds != null) {
      _json["numLocalSsds"] = numLocalSsds;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
/// service Foo {
///   rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
/// }
/// The JSON representation for Empty is empty JSON object {}.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Encryption settings for the cluster.
class EncryptionConfig {
  /// Optional. The Cloud KMS key name to use for PD disk encryption for all
  /// instances in the cluster.
  core.String gcePdKmsKeyName;

  EncryptionConfig();

  EncryptionConfig.fromJson(core.Map _json) {
    if (_json.containsKey("gcePdKmsKeyName")) {
      gcePdKmsKeyName = _json["gcePdKmsKeyName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (gcePdKmsKeyName != null) {
      _json["gcePdKmsKeyName"] = gcePdKmsKeyName;
    }
    return _json;
  }
}

/// Represents an expression text. Example:
/// title: "User account presence"
/// description: "Determines whether the request has a user account"
/// expression: "size(request.user) > 0"
class Expr {
  /// An optional description of the expression. This is a longer text which
  /// describes the expression, e.g. when hovered over it in a UI.
  core.String description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.The application context of the containing message determines which
  /// well-known feature set of CEL is supported.
  core.String expression;

  /// An optional string indicating the location of the expression for error
  /// reporting, e.g. a file name and a position in the file.
  core.String location;

  /// An optional title for the expression, i.e. a short string describing its
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

/// Common config settings for resources of Compute Engine cluster instances,
/// applicable to all instances in the cluster.
class GceClusterConfig {
  /// Optional. If true, all instances in the cluster will only have internal IP
  /// addresses. By default, clusters are not restricted to internal IP
  /// addresses, and will have ephemeral external IP addresses assigned to each
  /// instance. This internal_ip_only restriction can only be enabled for
  /// subnetwork enabled networks, and all off-cluster dependencies must be
  /// configured to be accessible without external IP addresses.
  core.bool internalIpOnly;

  /// The Compute Engine metadata entries to add to all instances (see Project
  /// and instance metadata
  /// (https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).
  core.Map<core.String, core.String> metadata;

  /// Optional. The Compute Engine network to be used for machine
  /// communications. Cannot be specified with subnetwork_uri. If neither
  /// network_uri nor subnetwork_uri is specified, the "default" network of the
  /// project is used, if it exists. Cannot be a "Custom Subnet Network" (see
  /// Using Subnetworks for more information).A full URL, partial URI, or short
  /// name are valid. Examples:
  /// https://www.googleapis.com/compute/v1/projects/[project_id]/regions/global/default
  /// projects/[project_id]/regions/global/default
  /// default
  core.String networkUri;

  /// Optional. The service account of the instances. Defaults to the default
  /// Compute Engine service account. Custom service accounts need permissions
  /// equivalent to the following IAM roles:
  /// roles/logging.logWriter
  /// roles/storage.objectAdmin(see
  /// https://cloud.google.com/compute/docs/access/service-accounts#custom_service_accounts
  /// for more information). Example:
  /// [account_id]@[project_id].iam.gserviceaccount.com
  core.String serviceAccount;

  /// Optional. The URIs of service account scopes to be included in Compute
  /// Engine instances. The following base set of scopes is always included:
  /// https://www.googleapis.com/auth/cloud.useraccounts.readonly
  /// https://www.googleapis.com/auth/devstorage.read_write
  /// https://www.googleapis.com/auth/logging.writeIf no scopes are specified,
  /// the following defaults are also provided:
  /// https://www.googleapis.com/auth/bigquery
  /// https://www.googleapis.com/auth/bigtable.admin.table
  /// https://www.googleapis.com/auth/bigtable.data
  /// https://www.googleapis.com/auth/devstorage.full_control
  core.List<core.String> serviceAccountScopes;

  /// Optional. The Compute Engine subnetwork to be used for machine
  /// communications. Cannot be specified with network_uri.A full URL, partial
  /// URI, or short name are valid. Examples:
  /// https://www.googleapis.com/compute/v1/projects/[project_id]/regions/us-east1/subnetworks/sub0
  /// projects/[project_id]/regions/us-east1/subnetworks/sub0
  /// sub0
  core.String subnetworkUri;

  /// The Compute Engine tags to add to all instances (see Tagging instances).
  core.List<core.String> tags;

  /// Optional. The zone where the Compute Engine cluster will be located. On a
  /// create request, it is required in the "global" region. If omitted in a
  /// non-global Cloud Dataproc region, the service will pick a zone in the
  /// corresponding Compute Engine region. On a get request, zone will always be
  /// present.A full URL, partial URI, or short name are valid. Examples:
  /// https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone]
  /// projects/[project_id]/zones/[zone]
  /// us-central1-f
  core.String zoneUri;

  GceClusterConfig();

  GceClusterConfig.fromJson(core.Map _json) {
    if (_json.containsKey("internalIpOnly")) {
      internalIpOnly = _json["internalIpOnly"];
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("networkUri")) {
      networkUri = _json["networkUri"];
    }
    if (_json.containsKey("serviceAccount")) {
      serviceAccount = _json["serviceAccount"];
    }
    if (_json.containsKey("serviceAccountScopes")) {
      serviceAccountScopes =
          (_json["serviceAccountScopes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("subnetworkUri")) {
      subnetworkUri = _json["subnetworkUri"];
    }
    if (_json.containsKey("tags")) {
      tags = (_json["tags"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("zoneUri")) {
      zoneUri = _json["zoneUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (internalIpOnly != null) {
      _json["internalIpOnly"] = internalIpOnly;
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (networkUri != null) {
      _json["networkUri"] = networkUri;
    }
    if (serviceAccount != null) {
      _json["serviceAccount"] = serviceAccount;
    }
    if (serviceAccountScopes != null) {
      _json["serviceAccountScopes"] = serviceAccountScopes;
    }
    if (subnetworkUri != null) {
      _json["subnetworkUri"] = subnetworkUri;
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    if (zoneUri != null) {
      _json["zoneUri"] = zoneUri;
    }
    return _json;
  }
}

/// Request message for GetIamPolicy method.
class GetIamPolicyRequest {
  GetIamPolicyRequest();

  GetIamPolicyRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// A Cloud Dataproc job for running Apache Hadoop MapReduce
/// (https://hadoop.apache.org/docs/current/hadoop-mapreduce-client/hadoop-mapreduce-client-core/MapReduceTutorial.html)
/// jobs on Apache Hadoop YARN
/// (https://hadoop.apache.org/docs/r2.7.1/hadoop-yarn/hadoop-yarn-site/YARN.html).
class HadoopJob {
  /// Optional. HCFS URIs of archives to be extracted in the working directory
  /// of Hadoop drivers and tasks. Supported file types: .jar, .tar, .tar.gz,
  /// .tgz, or .zip.
  core.List<core.String> archiveUris;

  /// Optional. The arguments to pass to the driver. Do not include arguments,
  /// such as -libjars or -Dfoo=bar, that can be set as job properties, since a
  /// collision may occur that causes an incorrect job submission.
  core.List<core.String> args;

  /// Optional. HCFS (Hadoop Compatible Filesystem) URIs of files to be copied
  /// to the working directory of Hadoop drivers and distributed tasks. Useful
  /// for naively parallel tasks.
  core.List<core.String> fileUris;

  /// Optional. Jar file URIs to add to the CLASSPATHs of the Hadoop driver and
  /// tasks.
  core.List<core.String> jarFileUris;

  /// Optional. The runtime log config for job execution.
  LoggingConfig loggingConfig;

  /// The name of the driver's main class. The jar file containing the class
  /// must be in the default CLASSPATH or specified in jar_file_uris.
  core.String mainClass;

  /// The HCFS URI of the jar file containing the main class. Examples:
  /// 'gs://foo-bucket/analytics-binaries/extract-useful-metrics-mr.jar'
  /// 'hdfs:/tmp/test-samples/custom-wordcount.jar'
  /// 'file:///home/usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar'
  core.String mainJarFileUri;

  /// Optional. A mapping of property names to values, used to configure Hadoop.
  /// Properties that conflict with values set by the Cloud Dataproc API may be
  /// overwritten. Can include properties set in /etc/hadoop/conf / * -site and
  /// classes in user code.
  core.Map<core.String, core.String> properties;

  HadoopJob();

  HadoopJob.fromJson(core.Map _json) {
    if (_json.containsKey("archiveUris")) {
      archiveUris = (_json["archiveUris"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("args")) {
      args = (_json["args"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("fileUris")) {
      fileUris = (_json["fileUris"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("jarFileUris")) {
      jarFileUris = (_json["jarFileUris"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("loggingConfig")) {
      loggingConfig = new LoggingConfig.fromJson(_json["loggingConfig"]);
    }
    if (_json.containsKey("mainClass")) {
      mainClass = _json["mainClass"];
    }
    if (_json.containsKey("mainJarFileUri")) {
      mainJarFileUri = _json["mainJarFileUri"];
    }
    if (_json.containsKey("properties")) {
      properties =
          (_json["properties"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (archiveUris != null) {
      _json["archiveUris"] = archiveUris;
    }
    if (args != null) {
      _json["args"] = args;
    }
    if (fileUris != null) {
      _json["fileUris"] = fileUris;
    }
    if (jarFileUris != null) {
      _json["jarFileUris"] = jarFileUris;
    }
    if (loggingConfig != null) {
      _json["loggingConfig"] = (loggingConfig).toJson();
    }
    if (mainClass != null) {
      _json["mainClass"] = mainClass;
    }
    if (mainJarFileUri != null) {
      _json["mainJarFileUri"] = mainJarFileUri;
    }
    if (properties != null) {
      _json["properties"] = properties;
    }
    return _json;
  }
}

/// A Cloud Dataproc job for running Apache Hive (https://hive.apache.org/)
/// queries on YARN.
class HiveJob {
  /// Optional. Whether to continue executing queries if a query fails. The
  /// default value is false. Setting to true can be useful when executing
  /// independent parallel queries.
  core.bool continueOnFailure;

  /// Optional. HCFS URIs of jar files to add to the CLASSPATH of the Hive
  /// server and Hadoop MapReduce (MR) tasks. Can contain Hive SerDes and UDFs.
  core.List<core.String> jarFileUris;

  /// Optional. A mapping of property names and values, used to configure Hive.
  /// Properties that conflict with values set by the Cloud Dataproc API may be
  /// overwritten. Can include properties set in /etc/hadoop/conf / * -site.xml,
  /// /etc/hive/conf/hive-site.xml, and classes in user code.
  core.Map<core.String, core.String> properties;

  /// The HCFS URI of the script that contains Hive queries.
  core.String queryFileUri;

  /// A list of queries.
  QueryList queryList;

  /// Optional. Mapping of query variable names to values (equivalent to the
  /// Hive command: SET name="value";).
  core.Map<core.String, core.String> scriptVariables;

  HiveJob();

  HiveJob.fromJson(core.Map _json) {
    if (_json.containsKey("continueOnFailure")) {
      continueOnFailure = _json["continueOnFailure"];
    }
    if (_json.containsKey("jarFileUris")) {
      jarFileUris = (_json["jarFileUris"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("properties")) {
      properties =
          (_json["properties"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("queryFileUri")) {
      queryFileUri = _json["queryFileUri"];
    }
    if (_json.containsKey("queryList")) {
      queryList = new QueryList.fromJson(_json["queryList"]);
    }
    if (_json.containsKey("scriptVariables")) {
      scriptVariables = (_json["scriptVariables"] as core.Map)
          .cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (continueOnFailure != null) {
      _json["continueOnFailure"] = continueOnFailure;
    }
    if (jarFileUris != null) {
      _json["jarFileUris"] = jarFileUris;
    }
    if (properties != null) {
      _json["properties"] = properties;
    }
    if (queryFileUri != null) {
      _json["queryFileUri"] = queryFileUri;
    }
    if (queryList != null) {
      _json["queryList"] = (queryList).toJson();
    }
    if (scriptVariables != null) {
      _json["scriptVariables"] = scriptVariables;
    }
    return _json;
  }
}

/// Optional. The config settings for Compute Engine resources in an instance
/// group, such as a master or worker group.
class InstanceGroupConfig {
  /// Optional. The Compute Engine accelerator configuration for these
  /// instances.Beta Feature: This feature is still under development. It may be
  /// changed before final release.
  core.List<AcceleratorConfig> accelerators;

  /// Optional. Disk option config settings.
  DiskConfig diskConfig;

  /// Optional. The Compute Engine image resource used for cluster instances. It
  /// can be specified or may be inferred from SoftwareConfig.image_version.
  core.String imageUri;

  /// Output only. The list of instance names. Cloud Dataproc derives the names
  /// from cluster_name, num_instances, and the instance group.
  core.List<core.String> instanceNames;

  /// Optional. Specifies that this instance group contains preemptible
  /// instances.
  core.bool isPreemptible;

  /// Optional. The Compute Engine machine type used for cluster instances.A
  /// full URL, partial URI, or short name are valid. Examples:
  /// https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2
  /// projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2
  /// n1-standard-2Auto Zone Exception: If you are using the Cloud Dataproc Auto
  /// Zone Placement feature, you must use the short name of the machine type
  /// resource, for example, n1-standard-2.
  core.String machineTypeUri;

  /// Output only. The config for Compute Engine Instance Group Manager that
  /// manages this group. This is only used for preemptible instance groups.
  ManagedGroupConfig managedGroupConfig;

  /// Optional. The number of VM instances in the instance group. For master
  /// instance groups, must be set to 1.
  core.int numInstances;

  InstanceGroupConfig();

  InstanceGroupConfig.fromJson(core.Map _json) {
    if (_json.containsKey("accelerators")) {
      accelerators = (_json["accelerators"] as core.List)
          .map<AcceleratorConfig>(
              (value) => new AcceleratorConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("diskConfig")) {
      diskConfig = new DiskConfig.fromJson(_json["diskConfig"]);
    }
    if (_json.containsKey("imageUri")) {
      imageUri = _json["imageUri"];
    }
    if (_json.containsKey("instanceNames")) {
      instanceNames = (_json["instanceNames"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("isPreemptible")) {
      isPreemptible = _json["isPreemptible"];
    }
    if (_json.containsKey("machineTypeUri")) {
      machineTypeUri = _json["machineTypeUri"];
    }
    if (_json.containsKey("managedGroupConfig")) {
      managedGroupConfig =
          new ManagedGroupConfig.fromJson(_json["managedGroupConfig"]);
    }
    if (_json.containsKey("numInstances")) {
      numInstances = _json["numInstances"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accelerators != null) {
      _json["accelerators"] =
          accelerators.map((value) => (value).toJson()).toList();
    }
    if (diskConfig != null) {
      _json["diskConfig"] = (diskConfig).toJson();
    }
    if (imageUri != null) {
      _json["imageUri"] = imageUri;
    }
    if (instanceNames != null) {
      _json["instanceNames"] = instanceNames;
    }
    if (isPreemptible != null) {
      _json["isPreemptible"] = isPreemptible;
    }
    if (machineTypeUri != null) {
      _json["machineTypeUri"] = machineTypeUri;
    }
    if (managedGroupConfig != null) {
      _json["managedGroupConfig"] = (managedGroupConfig).toJson();
    }
    if (numInstances != null) {
      _json["numInstances"] = numInstances;
    }
    return _json;
  }
}

/// A request to instantiate a workflow template.
class InstantiateWorkflowTemplateRequest {
  /// Optional. Map from parameter names to values that should be used for those
  /// parameters. Values may not exceed 100 characters.
  core.Map<core.String, core.String> parameters;

  /// Optional. A tag that prevents multiple concurrent workflow instances with
  /// the same tag from running. This mitigates risk of concurrent instances
  /// started due to retries.It is recommended to always set this value to a
  /// UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The tag
  /// must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  core.String requestId;

  /// Optional. The version of workflow template to instantiate. If specified,
  /// the workflow will be instantiated only if the current version of the
  /// workflow template has the supplied version.This option cannot be used to
  /// instantiate a previous version of workflow template.
  core.int version;

  InstantiateWorkflowTemplateRequest();

  InstantiateWorkflowTemplateRequest.fromJson(core.Map _json) {
    if (_json.containsKey("parameters")) {
      parameters =
          (_json["parameters"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("requestId")) {
      requestId = _json["requestId"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (parameters != null) {
      _json["parameters"] = parameters;
    }
    if (requestId != null) {
      _json["requestId"] = requestId;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// A Cloud Dataproc job resource.
class Job {
  /// Output only. If present, the location of miscellaneous control files which
  /// may be used as part of job setup and handling. If not present, control
  /// files may be placed in the same location as driver_output_uri.
  core.String driverControlFilesUri;

  /// Output only. A URI pointing to the location of the stdout of the job's
  /// driver program.
  core.String driverOutputResourceUri;

  /// Job is a Hadoop job.
  HadoopJob hadoopJob;

  /// Job is a Hive job.
  HiveJob hiveJob;

  /// Output only. A UUID that uniquely identifies a job within the project over
  /// time. This is in contrast to a user-settable reference.job_id that may be
  /// reused over time.
  core.String jobUuid;

  /// Optional. The labels to associate with this job. Label keys must contain 1
  /// to 63 characters, and must conform to RFC 1035
  /// (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if
  /// present, must contain 1 to 63 characters, and must conform to RFC 1035
  /// (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be
  /// associated with a job.
  core.Map<core.String, core.String> labels;

  /// Job is a Pig job.
  PigJob pigJob;

  /// Required. Job information, including how, when, and where to run the job.
  JobPlacement placement;

  /// Job is a Pyspark job.
  PySparkJob pysparkJob;

  /// Optional. The fully qualified reference to the job, which can be used to
  /// obtain the equivalent REST path of the job resource. If this property is
  /// not specified when a job is created, the server generates a
  /// <code>job_id</code>.
  JobReference reference;

  /// Optional. Job scheduling configuration.
  JobScheduling scheduling;

  /// Job is a Spark job.
  SparkJob sparkJob;

  /// Job is a SparkSql job.
  SparkSqlJob sparkSqlJob;

  /// Output only. The job status. Additional application-specific status
  /// information may be contained in the <code>type_job</code> and
  /// <code>yarn_applications</code> fields.
  JobStatus status;

  /// Output only. The previous job status.
  core.List<JobStatus> statusHistory;

  /// Output only. The collection of YARN applications spun up by this job.Beta
  /// Feature: This report is available for testing purposes only. It may be
  /// changed before final release.
  core.List<YarnApplication> yarnApplications;

  Job();

  Job.fromJson(core.Map _json) {
    if (_json.containsKey("driverControlFilesUri")) {
      driverControlFilesUri = _json["driverControlFilesUri"];
    }
    if (_json.containsKey("driverOutputResourceUri")) {
      driverOutputResourceUri = _json["driverOutputResourceUri"];
    }
    if (_json.containsKey("hadoopJob")) {
      hadoopJob = new HadoopJob.fromJson(_json["hadoopJob"]);
    }
    if (_json.containsKey("hiveJob")) {
      hiveJob = new HiveJob.fromJson(_json["hiveJob"]);
    }
    if (_json.containsKey("jobUuid")) {
      jobUuid = _json["jobUuid"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("pigJob")) {
      pigJob = new PigJob.fromJson(_json["pigJob"]);
    }
    if (_json.containsKey("placement")) {
      placement = new JobPlacement.fromJson(_json["placement"]);
    }
    if (_json.containsKey("pysparkJob")) {
      pysparkJob = new PySparkJob.fromJson(_json["pysparkJob"]);
    }
    if (_json.containsKey("reference")) {
      reference = new JobReference.fromJson(_json["reference"]);
    }
    if (_json.containsKey("scheduling")) {
      scheduling = new JobScheduling.fromJson(_json["scheduling"]);
    }
    if (_json.containsKey("sparkJob")) {
      sparkJob = new SparkJob.fromJson(_json["sparkJob"]);
    }
    if (_json.containsKey("sparkSqlJob")) {
      sparkSqlJob = new SparkSqlJob.fromJson(_json["sparkSqlJob"]);
    }
    if (_json.containsKey("status")) {
      status = new JobStatus.fromJson(_json["status"]);
    }
    if (_json.containsKey("statusHistory")) {
      statusHistory = (_json["statusHistory"] as core.List)
          .map<JobStatus>((value) => new JobStatus.fromJson(value))
          .toList();
    }
    if (_json.containsKey("yarnApplications")) {
      yarnApplications = (_json["yarnApplications"] as core.List)
          .map<YarnApplication>((value) => new YarnApplication.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (driverControlFilesUri != null) {
      _json["driverControlFilesUri"] = driverControlFilesUri;
    }
    if (driverOutputResourceUri != null) {
      _json["driverOutputResourceUri"] = driverOutputResourceUri;
    }
    if (hadoopJob != null) {
      _json["hadoopJob"] = (hadoopJob).toJson();
    }
    if (hiveJob != null) {
      _json["hiveJob"] = (hiveJob).toJson();
    }
    if (jobUuid != null) {
      _json["jobUuid"] = jobUuid;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (pigJob != null) {
      _json["pigJob"] = (pigJob).toJson();
    }
    if (placement != null) {
      _json["placement"] = (placement).toJson();
    }
    if (pysparkJob != null) {
      _json["pysparkJob"] = (pysparkJob).toJson();
    }
    if (reference != null) {
      _json["reference"] = (reference).toJson();
    }
    if (scheduling != null) {
      _json["scheduling"] = (scheduling).toJson();
    }
    if (sparkJob != null) {
      _json["sparkJob"] = (sparkJob).toJson();
    }
    if (sparkSqlJob != null) {
      _json["sparkSqlJob"] = (sparkSqlJob).toJson();
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    if (statusHistory != null) {
      _json["statusHistory"] =
          statusHistory.map((value) => (value).toJson()).toList();
    }
    if (yarnApplications != null) {
      _json["yarnApplications"] =
          yarnApplications.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Cloud Dataproc job config.
class JobPlacement {
  /// Required. The name of the cluster where the job will be submitted.
  core.String clusterName;

  /// Output only. A cluster UUID generated by the Cloud Dataproc service when
  /// the job is submitted.
  core.String clusterUuid;

  JobPlacement();

  JobPlacement.fromJson(core.Map _json) {
    if (_json.containsKey("clusterName")) {
      clusterName = _json["clusterName"];
    }
    if (_json.containsKey("clusterUuid")) {
      clusterUuid = _json["clusterUuid"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterName != null) {
      _json["clusterName"] = clusterName;
    }
    if (clusterUuid != null) {
      _json["clusterUuid"] = clusterUuid;
    }
    return _json;
  }
}

/// Encapsulates the full scoping used to reference a job.
class JobReference {
  /// Optional. The job ID, which must be unique within the project.The ID must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or
  /// hyphens (-). The maximum length is 100 characters.If not specified by the
  /// caller, the job ID will be provided by the server.
  core.String jobId;

  /// Required. The ID of the Google Cloud Platform project that the job belongs
  /// to.
  core.String projectId;

  JobReference();

  JobReference.fromJson(core.Map _json) {
    if (_json.containsKey("jobId")) {
      jobId = _json["jobId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (jobId != null) {
      _json["jobId"] = jobId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    return _json;
  }
}

/// Job scheduling options.
class JobScheduling {
  /// Optional. Maximum number of times per hour a driver may be restarted as a
  /// result of driver terminating with non-zero code before job is reported
  /// failed.A job may be reported as thrashing if driver exits with non-zero
  /// code 4 times within 10 minute window.Maximum value is 10.
  core.int maxFailuresPerHour;

  JobScheduling();

  JobScheduling.fromJson(core.Map _json) {
    if (_json.containsKey("maxFailuresPerHour")) {
      maxFailuresPerHour = _json["maxFailuresPerHour"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (maxFailuresPerHour != null) {
      _json["maxFailuresPerHour"] = maxFailuresPerHour;
    }
    return _json;
  }
}

/// Cloud Dataproc job status.
class JobStatus {
  /// Output only. Optional job state details, such as an error description if
  /// the state is <code>ERROR</code>.
  core.String details;

  /// Output only. A state message specifying the overall job state.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The job state is unknown.
  /// - "PENDING" : The job is pending; it has been submitted, but is not yet
  /// running.
  /// - "SETUP_DONE" : Job has been received by the service and completed
  /// initial setup; it will soon be submitted to the cluster.
  /// - "RUNNING" : The job is running on the cluster.
  /// - "CANCEL_PENDING" : A CancelJob request has been received, but is
  /// pending.
  /// - "CANCEL_STARTED" : Transient in-flight resources have been canceled, and
  /// the request to cancel the running job has been issued to the cluster.
  /// - "CANCELLED" : The job cancellation was successful.
  /// - "DONE" : The job has completed successfully.
  /// - "ERROR" : The job has completed, but encountered an error.
  /// - "ATTEMPT_FAILURE" : Job attempt has failed. The detail field contains
  /// failure details for this attempt.Applies to restartable jobs only.
  core.String state;

  /// Output only. The time when this state was entered.
  core.String stateStartTime;

  /// Output only. Additional state information, which includes status reported
  /// by the agent.
  /// Possible string values are:
  /// - "UNSPECIFIED" : The job substate is unknown.
  /// - "SUBMITTED" : The Job is submitted to the agent.Applies to RUNNING
  /// state.
  /// - "QUEUED" : The Job has been received and is awaiting execution (it may
  /// be waiting for a condition to be met). See the "details" field for the
  /// reason for the delay.Applies to RUNNING state.
  /// - "STALE_STATUS" : The agent-reported status is out of date, which may be
  /// caused by a loss of communication between the agent and Cloud Dataproc. If
  /// the agent does not send a timely update, the job will fail.Applies to
  /// RUNNING state.
  core.String substate;

  JobStatus();

  JobStatus.fromJson(core.Map _json) {
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("stateStartTime")) {
      stateStartTime = _json["stateStartTime"];
    }
    if (_json.containsKey("substate")) {
      substate = _json["substate"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (details != null) {
      _json["details"] = details;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (stateStartTime != null) {
      _json["stateStartTime"] = stateStartTime;
    }
    if (substate != null) {
      _json["substate"] = substate;
    }
    return _json;
  }
}

/// Specifies Kerberos related configuration.
class KerberosConfig {
  /// Optional. The admin server (IP or hostname) for the remote trusted realm
  /// in a cross realm trust relationship.
  core.String crossRealmTrustAdminServer;

  /// Optional. The KDC (IP or hostname) for the remote trusted realm in a cross
  /// realm trust relationship.
  core.String crossRealmTrustKdc;

  /// Optional. The remote realm the Dataproc on-cluster KDC will trust, should
  /// the user enable cross realm trust.
  core.String crossRealmTrustRealm;

  /// Optional. The Cloud Storage URI of a KMS encrypted file containing the
  /// shared password between the on-cluster Kerberos realm and the remote
  /// trusted realm, in a cross realm trust relationship.
  core.String crossRealmTrustSharedPasswordUri;

  /// Optional. Flag to indicate whether to Kerberize the cluster.
  core.bool enableKerberos;

  /// Optional. The Cloud Storage URI of a KMS encrypted file containing the
  /// master key of the KDC database.
  core.String kdcDbKeyUri;

  /// Optional. The Cloud Storage URI of a KMS encrypted file containing the
  /// password to the user provided key. For the self-signed certificate, this
  /// password is generated by Dataproc.
  core.String keyPasswordUri;

  /// Optional. The Cloud Storage URI of a KMS encrypted file containing the
  /// password to the user provided keystore. For the self-signed certificate,
  /// this password is generated by Dataproc.
  core.String keystorePasswordUri;

  /// Optional. The Cloud Storage URI of the keystore file used for SSL
  /// encryption. If not provided, Dataproc will provide a self-signed
  /// certificate.
  core.String keystoreUri;

  /// Required. The uri of the KMS key used to encrypt various sensitive files.
  core.String kmsKeyUri;

  /// Required. The Cloud Storage URI of a KMS encrypted file containing the
  /// root principal password.
  core.String rootPrincipalPasswordUri;

  /// Optional. The lifetime of the ticket granting ticket, in hours. If not
  /// specified, or user specifies 0, then default value 10 will be used.
  core.int tgtLifetimeHours;

  /// Optional. The Cloud Storage URI of a KMS encrypted file containing the
  /// password to the user provided truststore. For the self-signed certificate,
  /// this password is generated by Dataproc.
  core.String truststorePasswordUri;

  /// Optional. The Cloud Storage URI of the truststore file used for SSL
  /// encryption. If not provided, Dataproc will provide a self-signed
  /// certificate.
  core.String truststoreUri;

  KerberosConfig();

  KerberosConfig.fromJson(core.Map _json) {
    if (_json.containsKey("crossRealmTrustAdminServer")) {
      crossRealmTrustAdminServer = _json["crossRealmTrustAdminServer"];
    }
    if (_json.containsKey("crossRealmTrustKdc")) {
      crossRealmTrustKdc = _json["crossRealmTrustKdc"];
    }
    if (_json.containsKey("crossRealmTrustRealm")) {
      crossRealmTrustRealm = _json["crossRealmTrustRealm"];
    }
    if (_json.containsKey("crossRealmTrustSharedPasswordUri")) {
      crossRealmTrustSharedPasswordUri =
          _json["crossRealmTrustSharedPasswordUri"];
    }
    if (_json.containsKey("enableKerberos")) {
      enableKerberos = _json["enableKerberos"];
    }
    if (_json.containsKey("kdcDbKeyUri")) {
      kdcDbKeyUri = _json["kdcDbKeyUri"];
    }
    if (_json.containsKey("keyPasswordUri")) {
      keyPasswordUri = _json["keyPasswordUri"];
    }
    if (_json.containsKey("keystorePasswordUri")) {
      keystorePasswordUri = _json["keystorePasswordUri"];
    }
    if (_json.containsKey("keystoreUri")) {
      keystoreUri = _json["keystoreUri"];
    }
    if (_json.containsKey("kmsKeyUri")) {
      kmsKeyUri = _json["kmsKeyUri"];
    }
    if (_json.containsKey("rootPrincipalPasswordUri")) {
      rootPrincipalPasswordUri = _json["rootPrincipalPasswordUri"];
    }
    if (_json.containsKey("tgtLifetimeHours")) {
      tgtLifetimeHours = _json["tgtLifetimeHours"];
    }
    if (_json.containsKey("truststorePasswordUri")) {
      truststorePasswordUri = _json["truststorePasswordUri"];
    }
    if (_json.containsKey("truststoreUri")) {
      truststoreUri = _json["truststoreUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (crossRealmTrustAdminServer != null) {
      _json["crossRealmTrustAdminServer"] = crossRealmTrustAdminServer;
    }
    if (crossRealmTrustKdc != null) {
      _json["crossRealmTrustKdc"] = crossRealmTrustKdc;
    }
    if (crossRealmTrustRealm != null) {
      _json["crossRealmTrustRealm"] = crossRealmTrustRealm;
    }
    if (crossRealmTrustSharedPasswordUri != null) {
      _json["crossRealmTrustSharedPasswordUri"] =
          crossRealmTrustSharedPasswordUri;
    }
    if (enableKerberos != null) {
      _json["enableKerberos"] = enableKerberos;
    }
    if (kdcDbKeyUri != null) {
      _json["kdcDbKeyUri"] = kdcDbKeyUri;
    }
    if (keyPasswordUri != null) {
      _json["keyPasswordUri"] = keyPasswordUri;
    }
    if (keystorePasswordUri != null) {
      _json["keystorePasswordUri"] = keystorePasswordUri;
    }
    if (keystoreUri != null) {
      _json["keystoreUri"] = keystoreUri;
    }
    if (kmsKeyUri != null) {
      _json["kmsKeyUri"] = kmsKeyUri;
    }
    if (rootPrincipalPasswordUri != null) {
      _json["rootPrincipalPasswordUri"] = rootPrincipalPasswordUri;
    }
    if (tgtLifetimeHours != null) {
      _json["tgtLifetimeHours"] = tgtLifetimeHours;
    }
    if (truststorePasswordUri != null) {
      _json["truststorePasswordUri"] = truststorePasswordUri;
    }
    if (truststoreUri != null) {
      _json["truststoreUri"] = truststoreUri;
    }
    return _json;
  }
}

/// The list of all clusters in a project.
class ListClustersResponse {
  /// Output only. The clusters in the project.
  core.List<Cluster> clusters;

  /// Output only. This token is included in the response if there are more
  /// results to fetch. To fetch additional results, provide this value as the
  /// page_token in a subsequent ListClustersRequest.
  core.String nextPageToken;

  ListClustersResponse();

  ListClustersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("clusters")) {
      clusters = (_json["clusters"] as core.List)
          .map<Cluster>((value) => new Cluster.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusters != null) {
      _json["clusters"] = clusters.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// A list of jobs in a project.
class ListJobsResponse {
  /// Output only. Jobs list.
  core.List<Job> jobs;

  /// Optional. This token is included in the response if there are more results
  /// to fetch. To fetch additional results, provide this value as the
  /// page_token in a subsequent <code>ListJobsRequest</code>.
  core.String nextPageToken;

  ListJobsResponse();

  ListJobsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("jobs")) {
      jobs = (_json["jobs"] as core.List)
          .map<Job>((value) => new Job.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (jobs != null) {
      _json["jobs"] = jobs.map((value) => (value).toJson()).toList();
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

/// A response to a request to list workflow templates in a project.
class ListWorkflowTemplatesResponse {
  /// Output only. This token is included in the response if there are more
  /// results to fetch. To fetch additional results, provide this value as the
  /// page_token in a subsequent <code>ListWorkflowTemplatesRequest</code>.
  core.String nextPageToken;

  /// Output only. WorkflowTemplates list.
  core.List<WorkflowTemplate> templates;

  ListWorkflowTemplatesResponse();

  ListWorkflowTemplatesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("templates")) {
      templates = (_json["templates"] as core.List)
          .map<WorkflowTemplate>(
              (value) => new WorkflowTemplate.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (templates != null) {
      _json["templates"] = templates.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The runtime logging config of the job.
class LoggingConfig {
  /// The per-package log levels for the driver. This may include "root" package
  /// name to configure rootLogger. Examples:  'com.google = FATAL', 'root =
  /// INFO', 'org.apache = DEBUG'
  core.Map<core.String, core.String> driverLogLevels;

  LoggingConfig();

  LoggingConfig.fromJson(core.Map _json) {
    if (_json.containsKey("driverLogLevels")) {
      driverLogLevels = (_json["driverLogLevels"] as core.Map)
          .cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (driverLogLevels != null) {
      _json["driverLogLevels"] = driverLogLevels;
    }
    return _json;
  }
}

/// Cluster that is managed by the workflow.
class ManagedCluster {
  /// Required. The cluster name prefix. A unique cluster name will be formed by
  /// appending a random suffix.The name must contain only lower-case letters
  /// (a-z), numbers (0-9), and hyphens (-). Must begin with a letter. Cannot
  /// begin or end with hyphen. Must consist of between 2 and 35 characters.
  core.String clusterName;

  /// Required. The cluster configuration.
  ClusterConfig config;

  /// Optional. The labels to associate with this cluster.Label keys must be
  /// between 1 and 63 characters long, and must conform to the following PCRE
  /// regular expression: \p{Ll}\p{Lo}{0,62}Label values must be between 1 and
  /// 63 characters long, and must conform to the following PCRE regular
  /// expression: \p{Ll}\p{Lo}\p{N}_-{0,63}No more than 32 labels can be
  /// associated with a given cluster.
  core.Map<core.String, core.String> labels;

  ManagedCluster();

  ManagedCluster.fromJson(core.Map _json) {
    if (_json.containsKey("clusterName")) {
      clusterName = _json["clusterName"];
    }
    if (_json.containsKey("config")) {
      config = new ClusterConfig.fromJson(_json["config"]);
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterName != null) {
      _json["clusterName"] = clusterName;
    }
    if (config != null) {
      _json["config"] = (config).toJson();
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    return _json;
  }
}

/// Specifies the resources used to actively manage an instance group.
class ManagedGroupConfig {
  /// Output only. The name of the Instance Group Manager for this group.
  core.String instanceGroupManagerName;

  /// Output only. The name of the Instance Template used for the Managed
  /// Instance Group.
  core.String instanceTemplateName;

  ManagedGroupConfig();

  ManagedGroupConfig.fromJson(core.Map _json) {
    if (_json.containsKey("instanceGroupManagerName")) {
      instanceGroupManagerName = _json["instanceGroupManagerName"];
    }
    if (_json.containsKey("instanceTemplateName")) {
      instanceTemplateName = _json["instanceTemplateName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (instanceGroupManagerName != null) {
      _json["instanceGroupManagerName"] = instanceGroupManagerName;
    }
    if (instanceTemplateName != null) {
      _json["instanceTemplateName"] = instanceTemplateName;
    }
    return _json;
  }
}

/// Specifies an executable to run on a fully configured node and a timeout
/// period for executable completion.
class NodeInitializationAction {
  /// Required. Cloud Storage URI of executable file.
  core.String executableFile;

  /// Optional. Amount of time executable has to complete. Default is 10
  /// minutes. Cluster creation fails with an explanatory error message (the
  /// name of the executable that caused the error and the exceeded timeout
  /// period) if the executable is not completed at end of the timeout period.
  core.String executionTimeout;

  NodeInitializationAction();

  NodeInitializationAction.fromJson(core.Map _json) {
    if (_json.containsKey("executableFile")) {
      executableFile = _json["executableFile"];
    }
    if (_json.containsKey("executionTimeout")) {
      executionTimeout = _json["executionTimeout"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (executableFile != null) {
      _json["executableFile"] = executableFile;
    }
    if (executionTimeout != null) {
      _json["executionTimeout"] = executionTimeout;
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is false, it means the operation is still in progress. If
  /// true, the operation is completed, and either error or response is
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
  /// that originally returns it. If you use the default HTTP mapping, the name
  /// should be a resource name ending with operations/{unique_id}.
  core.String name;

  /// The normal response of the operation in case of success. If the original
  /// method returns no data on success, such as Delete, the response is
  /// google.protobuf.Empty. If the original method is standard
  /// Get/Create/Update, the response should be the resource. For other methods,
  /// the response should have the type XxxResponse, where Xxx is the original
  /// method name. For example, if the original method name is TakeSnapshot(),
  /// the inferred response type is TakeSnapshotResponse.
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

/// A job executed by the workflow.
class OrderedJob {
  /// Job is a Hadoop job.
  HadoopJob hadoopJob;

  /// Job is a Hive job.
  HiveJob hiveJob;

  /// Optional. The labels to associate with this job.Label keys must be between
  /// 1 and 63 characters long, and must conform to the following regular
  /// expression: \p{Ll}\p{Lo}{0,62}Label values must be between 1 and 63
  /// characters long, and must conform to the following regular expression:
  /// \p{Ll}\p{Lo}\p{N}_-{0,63}No more than 32 labels can be associated with a
  /// given job.
  core.Map<core.String, core.String> labels;

  /// Job is a Pig job.
  PigJob pigJob;

  /// Optional. The optional list of prerequisite job step_ids. If not
  /// specified, the job will start at the beginning of workflow.
  core.List<core.String> prerequisiteStepIds;

  /// Job is a Pyspark job.
  PySparkJob pysparkJob;

  /// Optional. Job scheduling configuration.
  JobScheduling scheduling;

  /// Job is a Spark job.
  SparkJob sparkJob;

  /// Job is a SparkSql job.
  SparkSqlJob sparkSqlJob;

  /// Required. The step id. The id must be unique among all jobs within the
  /// template.The step id is used as prefix for job id, as job
  /// goog-dataproc-workflow-step-id label, and in prerequisiteStepIds field
  /// from other steps.The id must contain only letters (a-z, A-Z), numbers
  /// (0-9), underscores (_), and hyphens (-). Cannot begin or end with
  /// underscore or hyphen. Must consist of between 3 and 50 characters.
  core.String stepId;

  OrderedJob();

  OrderedJob.fromJson(core.Map _json) {
    if (_json.containsKey("hadoopJob")) {
      hadoopJob = new HadoopJob.fromJson(_json["hadoopJob"]);
    }
    if (_json.containsKey("hiveJob")) {
      hiveJob = new HiveJob.fromJson(_json["hiveJob"]);
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("pigJob")) {
      pigJob = new PigJob.fromJson(_json["pigJob"]);
    }
    if (_json.containsKey("prerequisiteStepIds")) {
      prerequisiteStepIds =
          (_json["prerequisiteStepIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("pysparkJob")) {
      pysparkJob = new PySparkJob.fromJson(_json["pysparkJob"]);
    }
    if (_json.containsKey("scheduling")) {
      scheduling = new JobScheduling.fromJson(_json["scheduling"]);
    }
    if (_json.containsKey("sparkJob")) {
      sparkJob = new SparkJob.fromJson(_json["sparkJob"]);
    }
    if (_json.containsKey("sparkSqlJob")) {
      sparkSqlJob = new SparkSqlJob.fromJson(_json["sparkSqlJob"]);
    }
    if (_json.containsKey("stepId")) {
      stepId = _json["stepId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (hadoopJob != null) {
      _json["hadoopJob"] = (hadoopJob).toJson();
    }
    if (hiveJob != null) {
      _json["hiveJob"] = (hiveJob).toJson();
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (pigJob != null) {
      _json["pigJob"] = (pigJob).toJson();
    }
    if (prerequisiteStepIds != null) {
      _json["prerequisiteStepIds"] = prerequisiteStepIds;
    }
    if (pysparkJob != null) {
      _json["pysparkJob"] = (pysparkJob).toJson();
    }
    if (scheduling != null) {
      _json["scheduling"] = (scheduling).toJson();
    }
    if (sparkJob != null) {
      _json["sparkJob"] = (sparkJob).toJson();
    }
    if (sparkSqlJob != null) {
      _json["sparkSqlJob"] = (sparkSqlJob).toJson();
    }
    if (stepId != null) {
      _json["stepId"] = stepId;
    }
    return _json;
  }
}

/// Configuration for parameter validation.
class ParameterValidation {
  /// Validation based on regular expressions.
  RegexValidation regex;

  /// Validation based on a list of allowed values.
  ValueValidation values;

  ParameterValidation();

  ParameterValidation.fromJson(core.Map _json) {
    if (_json.containsKey("regex")) {
      regex = new RegexValidation.fromJson(_json["regex"]);
    }
    if (_json.containsKey("values")) {
      values = new ValueValidation.fromJson(_json["values"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (regex != null) {
      _json["regex"] = (regex).toJson();
    }
    if (values != null) {
      _json["values"] = (values).toJson();
    }
    return _json;
  }
}

/// A Cloud Dataproc job for running Apache Pig (https://pig.apache.org/)
/// queries on YARN.
class PigJob {
  /// Optional. Whether to continue executing queries if a query fails. The
  /// default value is false. Setting to true can be useful when executing
  /// independent parallel queries.
  core.bool continueOnFailure;

  /// Optional. HCFS URIs of jar files to add to the CLASSPATH of the Pig Client
  /// and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.
  core.List<core.String> jarFileUris;

  /// Optional. The runtime log config for job execution.
  LoggingConfig loggingConfig;

  /// Optional. A mapping of property names to values, used to configure Pig.
  /// Properties that conflict with values set by the Cloud Dataproc API may be
  /// overwritten. Can include properties set in /etc/hadoop/conf / * -site.xml,
  /// /etc/pig/conf/pig.properties, and classes in user code.
  core.Map<core.String, core.String> properties;

  /// The HCFS URI of the script that contains the Pig queries.
  core.String queryFileUri;

  /// A list of queries.
  QueryList queryList;

  /// Optional. Mapping of query variable names to values (equivalent to the Pig
  /// command: name=[value]).
  core.Map<core.String, core.String> scriptVariables;

  PigJob();

  PigJob.fromJson(core.Map _json) {
    if (_json.containsKey("continueOnFailure")) {
      continueOnFailure = _json["continueOnFailure"];
    }
    if (_json.containsKey("jarFileUris")) {
      jarFileUris = (_json["jarFileUris"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("loggingConfig")) {
      loggingConfig = new LoggingConfig.fromJson(_json["loggingConfig"]);
    }
    if (_json.containsKey("properties")) {
      properties =
          (_json["properties"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("queryFileUri")) {
      queryFileUri = _json["queryFileUri"];
    }
    if (_json.containsKey("queryList")) {
      queryList = new QueryList.fromJson(_json["queryList"]);
    }
    if (_json.containsKey("scriptVariables")) {
      scriptVariables = (_json["scriptVariables"] as core.Map)
          .cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (continueOnFailure != null) {
      _json["continueOnFailure"] = continueOnFailure;
    }
    if (jarFileUris != null) {
      _json["jarFileUris"] = jarFileUris;
    }
    if (loggingConfig != null) {
      _json["loggingConfig"] = (loggingConfig).toJson();
    }
    if (properties != null) {
      _json["properties"] = properties;
    }
    if (queryFileUri != null) {
      _json["queryFileUri"] = queryFileUri;
    }
    if (queryList != null) {
      _json["queryList"] = (queryList).toJson();
    }
    if (scriptVariables != null) {
      _json["scriptVariables"] = scriptVariables;
    }
    return _json;
  }
}

/// Defines an Identity and Access Management (IAM) policy. It is used to
/// specify access control policies for Cloud Platform resources.A Policy
/// consists of a list of bindings. A binding binds a list of members to a role,
/// where the members can be user accounts, Google groups, Google domains, and
/// service accounts. A role is a named list of permissions defined by IAM.JSON
/// Example
/// {
///   "bindings": [
///     {
///       "role": "roles/owner",
///       "members": [
///         "user:mike@example.com",
///         "group:admins@example.com",
///         "domain:google.com",
///         "serviceAccount:my-other-app@appspot.gserviceaccount.com"
///       ]
///     },
///     {
///       "role": "roles/viewer",
///       "members": ["user:sean@example.com"]
///     }
///   ]
/// }
/// YAML Example
/// bindings:
/// - members:
///   - user:mike@example.com
///   - group:admins@example.com
///   - domain:google.com
///   - serviceAccount:my-other-app@appspot.gserviceaccount.com
///   role: roles/owner
/// - members:
///   - user:sean@example.com
///   role: roles/viewer
/// For a description of IAM and its features, see the IAM developer's guide
/// (https://cloud.google.com/iam/docs).
class Policy {
  /// Associates a list of members to a role. bindings with no members will
  /// result in an error.
  core.List<Binding> bindings;

  /// etag is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other. It is
  /// strongly suggested that systems make use of the etag in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An etag is returned in the response to getIamPolicy, and
  /// systems are expected to put that etag in the request to setIamPolicy to
  /// ensure that their change will be applied to the same version of the
  /// policy.If no etag is provided in the call to setIamPolicy, then the
  /// existing policy is overwritten blindly.
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

/// A Cloud Dataproc job for running Apache PySpark
/// (https://spark.apache.org/docs/0.9.0/python-programming-guide.html)
/// applications on YARN.
class PySparkJob {
  /// Optional. HCFS URIs of archives to be extracted in the working directory
  /// of .jar, .tar, .tar.gz, .tgz, and .zip.
  core.List<core.String> archiveUris;

  /// Optional. The arguments to pass to the driver. Do not include arguments,
  /// such as --conf, that can be set as job properties, since a collision may
  /// occur that causes an incorrect job submission.
  core.List<core.String> args;

  /// Optional. HCFS URIs of files to be copied to the working directory of
  /// Python drivers and distributed tasks. Useful for naively parallel tasks.
  core.List<core.String> fileUris;

  /// Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Python
  /// driver and tasks.
  core.List<core.String> jarFileUris;

  /// Optional. The runtime log config for job execution.
  LoggingConfig loggingConfig;

  /// Required. The HCFS URI of the main Python file to use as the driver. Must
  /// be a .py file.
  core.String mainPythonFileUri;

  /// Optional. A mapping of property names to values, used to configure
  /// PySpark. Properties that conflict with values set by the Cloud Dataproc
  /// API may be overwritten. Can include properties set in
  /// /etc/spark/conf/spark-defaults.conf and classes in user code.
  core.Map<core.String, core.String> properties;

  /// Optional. HCFS file URIs of Python files to pass to the PySpark framework.
  /// Supported file types: .py, .egg, and .zip.
  core.List<core.String> pythonFileUris;

  PySparkJob();

  PySparkJob.fromJson(core.Map _json) {
    if (_json.containsKey("archiveUris")) {
      archiveUris = (_json["archiveUris"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("args")) {
      args = (_json["args"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("fileUris")) {
      fileUris = (_json["fileUris"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("jarFileUris")) {
      jarFileUris = (_json["jarFileUris"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("loggingConfig")) {
      loggingConfig = new LoggingConfig.fromJson(_json["loggingConfig"]);
    }
    if (_json.containsKey("mainPythonFileUri")) {
      mainPythonFileUri = _json["mainPythonFileUri"];
    }
    if (_json.containsKey("properties")) {
      properties =
          (_json["properties"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("pythonFileUris")) {
      pythonFileUris =
          (_json["pythonFileUris"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (archiveUris != null) {
      _json["archiveUris"] = archiveUris;
    }
    if (args != null) {
      _json["args"] = args;
    }
    if (fileUris != null) {
      _json["fileUris"] = fileUris;
    }
    if (jarFileUris != null) {
      _json["jarFileUris"] = jarFileUris;
    }
    if (loggingConfig != null) {
      _json["loggingConfig"] = (loggingConfig).toJson();
    }
    if (mainPythonFileUri != null) {
      _json["mainPythonFileUri"] = mainPythonFileUri;
    }
    if (properties != null) {
      _json["properties"] = properties;
    }
    if (pythonFileUris != null) {
      _json["pythonFileUris"] = pythonFileUris;
    }
    return _json;
  }
}

/// A list of queries to run on a cluster.
class QueryList {
  /// Required. The queries to execute. You do not need to terminate a query
  /// with a semicolon. Multiple queries can be specified in one string by
  /// separating each with a semicolon. Here is an example of an Cloud Dataproc
  /// API snippet that uses a QueryList to specify a HiveJob:
  /// "hiveJob": {
  ///   "queryList": {
  ///     "queries": [
  ///       "query1",
  ///       "query2",
  ///       "query3;query4",
  ///     ]
  ///   }
  /// }
  core.List<core.String> queries;

  QueryList();

  QueryList.fromJson(core.Map _json) {
    if (_json.containsKey("queries")) {
      queries = (_json["queries"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (queries != null) {
      _json["queries"] = queries;
    }
    return _json;
  }
}

/// Validation based on regular expressions.
class RegexValidation {
  /// Required. RE2 regular expressions used to validate the parameter's value.
  /// The value must match the regex in its entirety (substring matches are not
  /// sufficient).
  core.List<core.String> regexes;

  RegexValidation();

  RegexValidation.fromJson(core.Map _json) {
    if (_json.containsKey("regexes")) {
      regexes = (_json["regexes"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (regexes != null) {
      _json["regexes"] = regexes;
    }
    return _json;
  }
}

/// Security related configuration, including Kerberos.
class SecurityConfig {
  /// Kerberos related configuration.
  KerberosConfig kerberosConfig;

  SecurityConfig();

  SecurityConfig.fromJson(core.Map _json) {
    if (_json.containsKey("kerberosConfig")) {
      kerberosConfig = new KerberosConfig.fromJson(_json["kerberosConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kerberosConfig != null) {
      _json["kerberosConfig"] = (kerberosConfig).toJson();
    }
    return _json;
  }
}

/// Request message for SetIamPolicy method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the resource. The size of
  /// the policy is limited to a few 10s of KB. An empty policy is a valid
  /// policy but certain Cloud Platform services (such as Projects) might reject
  /// them.
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

/// Specifies the selection and config of software inside the cluster.
class SoftwareConfig {
  /// Optional. The version of software inside the cluster. It must be one of
  /// the supported Cloud Dataproc Versions, such as "1.2" (including a subminor
  /// version, such as "1.2.29"), or the "preview" version. If unspecified, it
  /// defaults to the latest Debian version.
  core.String imageVersion;

  /// The set of optional components to activate on the cluster.
  core.List<core.String> optionalComponents;

  /// Optional. The properties to set on daemon config files.Property keys are
  /// specified in prefix:property format, for example core:hadoop.tmp.dir. The
  /// following are supported prefixes and their mappings:
  /// capacity-scheduler: capacity-scheduler.xml
  /// core: core-site.xml
  /// distcp: distcp-default.xml
  /// hdfs: hdfs-site.xml
  /// hive: hive-site.xml
  /// mapred: mapred-site.xml
  /// pig: pig.properties
  /// spark: spark-defaults.conf
  /// yarn: yarn-site.xmlFor more information, see Cluster properties.
  core.Map<core.String, core.String> properties;

  SoftwareConfig();

  SoftwareConfig.fromJson(core.Map _json) {
    if (_json.containsKey("imageVersion")) {
      imageVersion = _json["imageVersion"];
    }
    if (_json.containsKey("optionalComponents")) {
      optionalComponents =
          (_json["optionalComponents"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("properties")) {
      properties =
          (_json["properties"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (imageVersion != null) {
      _json["imageVersion"] = imageVersion;
    }
    if (optionalComponents != null) {
      _json["optionalComponents"] = optionalComponents;
    }
    if (properties != null) {
      _json["properties"] = properties;
    }
    return _json;
  }
}

/// A Cloud Dataproc job for running Apache Spark (http://spark.apache.org/)
/// applications on YARN.
class SparkJob {
  /// Optional. HCFS URIs of archives to be extracted in the working directory
  /// of Spark drivers and tasks. Supported file types: .jar, .tar, .tar.gz,
  /// .tgz, and .zip.
  core.List<core.String> archiveUris;

  /// Optional. The arguments to pass to the driver. Do not include arguments,
  /// such as --conf, that can be set as job properties, since a collision may
  /// occur that causes an incorrect job submission.
  core.List<core.String> args;

  /// Optional. HCFS URIs of files to be copied to the working directory of
  /// Spark drivers and distributed tasks. Useful for naively parallel tasks.
  core.List<core.String> fileUris;

  /// Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Spark
  /// driver and tasks.
  core.List<core.String> jarFileUris;

  /// Optional. The runtime log config for job execution.
  LoggingConfig loggingConfig;

  /// The name of the driver's main class. The jar file that contains the class
  /// must be in the default CLASSPATH or specified in jar_file_uris.
  core.String mainClass;

  /// The HCFS URI of the jar file that contains the main class.
  core.String mainJarFileUri;

  /// Optional. A mapping of property names to values, used to configure Spark.
  /// Properties that conflict with values set by the Cloud Dataproc API may be
  /// overwritten. Can include properties set in
  /// /etc/spark/conf/spark-defaults.conf and classes in user code.
  core.Map<core.String, core.String> properties;

  SparkJob();

  SparkJob.fromJson(core.Map _json) {
    if (_json.containsKey("archiveUris")) {
      archiveUris = (_json["archiveUris"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("args")) {
      args = (_json["args"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("fileUris")) {
      fileUris = (_json["fileUris"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("jarFileUris")) {
      jarFileUris = (_json["jarFileUris"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("loggingConfig")) {
      loggingConfig = new LoggingConfig.fromJson(_json["loggingConfig"]);
    }
    if (_json.containsKey("mainClass")) {
      mainClass = _json["mainClass"];
    }
    if (_json.containsKey("mainJarFileUri")) {
      mainJarFileUri = _json["mainJarFileUri"];
    }
    if (_json.containsKey("properties")) {
      properties =
          (_json["properties"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (archiveUris != null) {
      _json["archiveUris"] = archiveUris;
    }
    if (args != null) {
      _json["args"] = args;
    }
    if (fileUris != null) {
      _json["fileUris"] = fileUris;
    }
    if (jarFileUris != null) {
      _json["jarFileUris"] = jarFileUris;
    }
    if (loggingConfig != null) {
      _json["loggingConfig"] = (loggingConfig).toJson();
    }
    if (mainClass != null) {
      _json["mainClass"] = mainClass;
    }
    if (mainJarFileUri != null) {
      _json["mainJarFileUri"] = mainJarFileUri;
    }
    if (properties != null) {
      _json["properties"] = properties;
    }
    return _json;
  }
}

/// A Cloud Dataproc job for running Apache Spark SQL
/// (http://spark.apache.org/sql/) queries.
class SparkSqlJob {
  /// Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
  core.List<core.String> jarFileUris;

  /// Optional. The runtime log config for job execution.
  LoggingConfig loggingConfig;

  /// Optional. A mapping of property names to values, used to configure Spark
  /// SQL's SparkConf. Properties that conflict with values set by the Cloud
  /// Dataproc API may be overwritten.
  core.Map<core.String, core.String> properties;

  /// The HCFS URI of the script that contains SQL queries.
  core.String queryFileUri;

  /// A list of queries.
  QueryList queryList;

  /// Optional. Mapping of query variable names to values (equivalent to the
  /// Spark SQL command: SET name="value";).
  core.Map<core.String, core.String> scriptVariables;

  SparkSqlJob();

  SparkSqlJob.fromJson(core.Map _json) {
    if (_json.containsKey("jarFileUris")) {
      jarFileUris = (_json["jarFileUris"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("loggingConfig")) {
      loggingConfig = new LoggingConfig.fromJson(_json["loggingConfig"]);
    }
    if (_json.containsKey("properties")) {
      properties =
          (_json["properties"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("queryFileUri")) {
      queryFileUri = _json["queryFileUri"];
    }
    if (_json.containsKey("queryList")) {
      queryList = new QueryList.fromJson(_json["queryList"]);
    }
    if (_json.containsKey("scriptVariables")) {
      scriptVariables = (_json["scriptVariables"] as core.Map)
          .cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (jarFileUris != null) {
      _json["jarFileUris"] = jarFileUris;
    }
    if (loggingConfig != null) {
      _json["loggingConfig"] = (loggingConfig).toJson();
    }
    if (properties != null) {
      _json["properties"] = properties;
    }
    if (queryFileUri != null) {
      _json["queryFileUri"] = queryFileUri;
    }
    if (queryList != null) {
      _json["queryList"] = (queryList).toJson();
    }
    if (scriptVariables != null) {
      _json["scriptVariables"] = scriptVariables;
    }
    return _json;
  }
}

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs. It is used by
/// gRPC (https://github.com/grpc). Each Status message contains three pieces of
/// data: error code, error message, and error details.You can find out more
/// about this error model and how to work with it in the API Design Guide
/// (https://cloud.google.com/apis/design/errors).
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

/// A request to submit a job.
class SubmitJobRequest {
  /// Required. The job resource.
  Job job;

  /// Optional. A unique id used to identify the request. If the server receives
  /// two SubmitJobRequest requests with the same id, then the second request
  /// will be ignored and the first Job created and stored in the backend is
  /// returned.It is recommended to always set this value to a UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  core.String requestId;

  SubmitJobRequest();

  SubmitJobRequest.fromJson(core.Map _json) {
    if (_json.containsKey("job")) {
      job = new Job.fromJson(_json["job"]);
    }
    if (_json.containsKey("requestId")) {
      requestId = _json["requestId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (job != null) {
      _json["job"] = (job).toJson();
    }
    if (requestId != null) {
      _json["requestId"] = requestId;
    }
    return _json;
  }
}

/// A configurable parameter that replaces one or more fields in the template.
/// Parameterizable fields: - Labels - File uris - Job properties - Job
/// arguments - Script variables - Main class (in HadoopJob and SparkJob) - Zone
/// (in ClusterSelector)
class TemplateParameter {
  /// Optional. Brief description of the parameter. Must not exceed 1024
  /// characters.
  core.String description;

  /// Required. Paths to all fields that the parameter replaces. A field is
  /// allowed to appear in at most one parameter's list of field paths.A field
  /// path is similar in syntax to a google.protobuf.FieldMask. For example, a
  /// field path that references the zone field of a workflow template's cluster
  /// selector would be specified as placement.clusterSelector.zone.Also, field
  /// paths can reference fields using the following syntax:
  /// Values in maps can be referenced by key:
  /// labels'key'
  /// placement.clusterSelector.clusterLabels'key'
  /// placement.managedCluster.labels'key'
  /// placement.clusterSelector.clusterLabels'key'
  /// jobs'step-id'.labels'key'
  /// Jobs in the jobs list can be referenced by step-id:
  /// jobs'step-id'.hadoopJob.mainJarFileUri
  /// jobs'step-id'.hiveJob.queryFileUri
  /// jobs'step-id'.pySparkJob.mainPythonFileUri
  /// jobs'step-id'.hadoopJob.jarFileUris0
  /// jobs'step-id'.hadoopJob.archiveUris0
  /// jobs'step-id'.hadoopJob.fileUris0
  /// jobs'step-id'.pySparkJob.pythonFileUris0
  /// Items in repeated fields can be referenced by a zero-based index:
  /// jobs'step-id'.sparkJob.args0
  /// Other examples:
  /// jobs'step-id'.hadoopJob.properties'key'
  /// jobs'step-id'.hadoopJob.args0
  /// jobs'step-id'.hiveJob.scriptVariables'key'
  /// jobs'step-id'.hadoopJob.mainJarFileUri
  /// placement.clusterSelector.zoneIt may not be possible to parameterize maps
  /// and repeated fields in their entirety since only individual map values and
  /// individual items in repeated fields can be referenced. For example, the
  /// following field paths are invalid:
  /// placement.clusterSelector.clusterLabels
  /// jobs'step-id'.sparkJob.args
  core.List<core.String> fields;

  /// Required. Parameter name. The parameter name is used as the key, and
  /// paired with the parameter value, which are passed to the template when the
  /// template is instantiated. The name must contain only capital letters
  /// (A-Z), numbers (0-9), and underscores (_), and must not start with a
  /// number. The maximum length is 40 characters.
  core.String name;

  /// Optional. Validation rules to be applied to this parameter's value.
  ParameterValidation validation;

  TemplateParameter();

  TemplateParameter.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("fields")) {
      fields = (_json["fields"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("validation")) {
      validation = new ParameterValidation.fromJson(_json["validation"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (fields != null) {
      _json["fields"] = fields;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (validation != null) {
      _json["validation"] = (validation).toJson();
    }
    return _json;
  }
}

/// Request message for TestIamPermissions method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the resource. Permissions with
  /// wildcards (such as '*' or 'storage.*') are not allowed. For more
  /// information see IAM Overview
  /// (https://cloud.google.com/iam/docs/overview#permissions).
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

/// Response message for TestIamPermissions method.
class TestIamPermissionsResponse {
  /// A subset of TestPermissionsRequest.permissions that the caller is allowed.
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

/// Validation based on a list of allowed values.
class ValueValidation {
  /// Required. List of allowed values for the parameter.
  core.List<core.String> values;

  ValueValidation();

  ValueValidation.fromJson(core.Map _json) {
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (values != null) {
      _json["values"] = values;
    }
    return _json;
  }
}

/// The workflow graph.
class WorkflowGraph {
  /// Output only. The workflow nodes.
  core.List<WorkflowNode> nodes;

  WorkflowGraph();

  WorkflowGraph.fromJson(core.Map _json) {
    if (_json.containsKey("nodes")) {
      nodes = (_json["nodes"] as core.List)
          .map<WorkflowNode>((value) => new WorkflowNode.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nodes != null) {
      _json["nodes"] = nodes.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A Cloud Dataproc workflow template resource.
class WorkflowMetadata {
  /// Output only. The name of the target cluster.
  core.String clusterName;

  /// Output only. The UUID of target cluster.
  core.String clusterUuid;

  /// Output only. The create cluster operation metadata.
  ClusterOperation createCluster;

  /// Output only. The delete cluster operation metadata.
  ClusterOperation deleteCluster;

  /// Output only. Workflow end time.
  core.String endTime;

  /// Output only. The workflow graph.
  WorkflowGraph graph;

  /// Map from parameter names to values that were used for those parameters.
  core.Map<core.String, core.String> parameters;

  /// Output only. Workflow start time.
  core.String startTime;

  /// Output only. The workflow state.
  /// Possible string values are:
  /// - "UNKNOWN" : Unused.
  /// - "PENDING" : The operation has been created.
  /// - "RUNNING" : The operation is running.
  /// - "DONE" : The operation is done; either cancelled or completed.
  core.String state;

  /// Output only. The "resource name" of the template.
  core.String template;

  /// Output only. The version of template at the time of workflow
  /// instantiation.
  core.int version;

  WorkflowMetadata();

  WorkflowMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("clusterName")) {
      clusterName = _json["clusterName"];
    }
    if (_json.containsKey("clusterUuid")) {
      clusterUuid = _json["clusterUuid"];
    }
    if (_json.containsKey("createCluster")) {
      createCluster = new ClusterOperation.fromJson(_json["createCluster"]);
    }
    if (_json.containsKey("deleteCluster")) {
      deleteCluster = new ClusterOperation.fromJson(_json["deleteCluster"]);
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("graph")) {
      graph = new WorkflowGraph.fromJson(_json["graph"]);
    }
    if (_json.containsKey("parameters")) {
      parameters =
          (_json["parameters"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("template")) {
      template = _json["template"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterName != null) {
      _json["clusterName"] = clusterName;
    }
    if (clusterUuid != null) {
      _json["clusterUuid"] = clusterUuid;
    }
    if (createCluster != null) {
      _json["createCluster"] = (createCluster).toJson();
    }
    if (deleteCluster != null) {
      _json["deleteCluster"] = (deleteCluster).toJson();
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (graph != null) {
      _json["graph"] = (graph).toJson();
    }
    if (parameters != null) {
      _json["parameters"] = parameters;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (template != null) {
      _json["template"] = template;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// The workflow node.
class WorkflowNode {
  /// Output only. The error detail.
  core.String error;

  /// Output only. The job id; populated after the node enters RUNNING state.
  core.String jobId;

  /// Output only. Node's prerequisite nodes.
  core.List<core.String> prerequisiteStepIds;

  /// Output only. The node state.
  /// Possible string values are:
  /// - "NODE_STATE_UNSPECIFIED" : State is unspecified.
  /// - "BLOCKED" : The node is awaiting prerequisite node to finish.
  /// - "RUNNABLE" : The node is runnable but not running.
  /// - "RUNNING" : The node is running.
  /// - "COMPLETED" : The node completed successfully.
  /// - "FAILED" : The node failed. A node can be marked FAILED because its
  /// ancestor or peer failed.
  core.String state;

  /// Output only. The name of the node.
  core.String stepId;

  WorkflowNode();

  WorkflowNode.fromJson(core.Map _json) {
    if (_json.containsKey("error")) {
      error = _json["error"];
    }
    if (_json.containsKey("jobId")) {
      jobId = _json["jobId"];
    }
    if (_json.containsKey("prerequisiteStepIds")) {
      prerequisiteStepIds =
          (_json["prerequisiteStepIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("stepId")) {
      stepId = _json["stepId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (error != null) {
      _json["error"] = error;
    }
    if (jobId != null) {
      _json["jobId"] = jobId;
    }
    if (prerequisiteStepIds != null) {
      _json["prerequisiteStepIds"] = prerequisiteStepIds;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (stepId != null) {
      _json["stepId"] = stepId;
    }
    return _json;
  }
}

/// A Cloud Dataproc workflow template resource.
class WorkflowTemplate {
  /// Output only. The time template was created.
  core.String createTime;

  /// Required. The template id.The id must contain only letters (a-z, A-Z),
  /// numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with
  /// underscore or hyphen. Must consist of between 3 and 50 characters.
  core.String id;

  /// Required. The Directed Acyclic Graph of Jobs to submit.
  core.List<OrderedJob> jobs;

  /// Optional. The labels to associate with this template. These labels will be
  /// propagated to all jobs and clusters created by the workflow instance.Label
  /// keys must contain 1 to 63 characters, and must conform to RFC 1035
  /// (https://www.ietf.org/rfc/rfc1035.txt).Label values may be empty, but, if
  /// present, must contain 1 to 63 characters, and must conform to RFC 1035
  /// (https://www.ietf.org/rfc/rfc1035.txt).No more than 32 labels can be
  /// associated with a template.
  core.Map<core.String, core.String> labels;

  /// Output only. The "resource name" of the template, as described in
  /// https://cloud.google.com/apis/design/resource_names of the form
  /// projects/{project_id}/regions/{region}/workflowTemplates/{template_id}
  core.String name;

  /// Optional. Template parameters whose values are substituted into the
  /// template. Values for parameters must be provided when the template is
  /// instantiated.
  core.List<TemplateParameter> parameters;

  /// Required. WorkflowTemplate scheduling information.
  WorkflowTemplatePlacement placement;

  /// Output only. The time template was last updated.
  core.String updateTime;

  /// Optional. Used to perform a consistent read-modify-write.This field should
  /// be left blank for a CreateWorkflowTemplate request. It is required for an
  /// UpdateWorkflowTemplate request, and must match the current server version.
  /// A typical update template flow would fetch the current template with a
  /// GetWorkflowTemplate request, which will return the current template with
  /// the version field filled in with the current server version. The user
  /// updates other fields in the template, then returns it as part of the
  /// UpdateWorkflowTemplate request.
  core.int version;

  WorkflowTemplate();

  WorkflowTemplate.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("jobs")) {
      jobs = (_json["jobs"] as core.List)
          .map<OrderedJob>((value) => new OrderedJob.fromJson(value))
          .toList();
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parameters")) {
      parameters = (_json["parameters"] as core.List)
          .map<TemplateParameter>(
              (value) => new TemplateParameter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("placement")) {
      placement = new WorkflowTemplatePlacement.fromJson(_json["placement"]);
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
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (jobs != null) {
      _json["jobs"] = jobs.map((value) => (value).toJson()).toList();
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (parameters != null) {
      _json["parameters"] =
          parameters.map((value) => (value).toJson()).toList();
    }
    if (placement != null) {
      _json["placement"] = (placement).toJson();
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

/// Specifies workflow execution target.Either managed_cluster or
/// cluster_selector is required.
class WorkflowTemplatePlacement {
  /// Optional. A selector that chooses target cluster for jobs based on
  /// metadata.The selector is evaluated at the time each job is submitted.
  ClusterSelector clusterSelector;

  /// Optional. A cluster that is managed by the workflow.
  ManagedCluster managedCluster;

  WorkflowTemplatePlacement();

  WorkflowTemplatePlacement.fromJson(core.Map _json) {
    if (_json.containsKey("clusterSelector")) {
      clusterSelector = new ClusterSelector.fromJson(_json["clusterSelector"]);
    }
    if (_json.containsKey("managedCluster")) {
      managedCluster = new ManagedCluster.fromJson(_json["managedCluster"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterSelector != null) {
      _json["clusterSelector"] = (clusterSelector).toJson();
    }
    if (managedCluster != null) {
      _json["managedCluster"] = (managedCluster).toJson();
    }
    return _json;
  }
}

/// A YARN application created by a job. Application information is a subset of
/// <code>org.apache.hadoop.yarn.proto.YarnProtos.ApplicationReportProto</code>.Beta
/// Feature: This report is available for testing purposes only. It may be
/// changed before final release.
class YarnApplication {
  /// Required. The application name.
  core.String name;

  /// Required. The numerical progress of the application, from 1 to 100.
  core.double progress;

  /// Required. The application state.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Status is unspecified.
  /// - "NEW" : Status is NEW.
  /// - "NEW_SAVING" : Status is NEW_SAVING.
  /// - "SUBMITTED" : Status is SUBMITTED.
  /// - "ACCEPTED" : Status is ACCEPTED.
  /// - "RUNNING" : Status is RUNNING.
  /// - "FINISHED" : Status is FINISHED.
  /// - "FAILED" : Status is FAILED.
  /// - "KILLED" : Status is KILLED.
  core.String state;

  /// Optional. The HTTP URL of the ApplicationMaster, HistoryServer, or
  /// TimelineServer that provides application-specific information. The URL
  /// uses the internal hostname, and requires a proxy server for resolution
  /// and, possibly, access.
  core.String trackingUrl;

  YarnApplication();

  YarnApplication.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("progress")) {
      progress = _json["progress"].toDouble();
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("trackingUrl")) {
      trackingUrl = _json["trackingUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (progress != null) {
      _json["progress"] = progress;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (trackingUrl != null) {
      _json["trackingUrl"] = trackingUrl;
    }
    return _json;
  }
}
