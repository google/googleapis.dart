// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis_beta.binaryauthorization.v1beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client binaryauthorization/v1beta1';

/// The management interface for Binary Authorization, a system providing policy
/// control for images deployed to Kubernetes Engine clusters.
class BinaryauthorizationApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  BinaryauthorizationApi(http.Client client,
      {core.String rootUrl = "https://binaryauthorization.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAttestorsResourceApi get attestors =>
      new ProjectsAttestorsResourceApi(_requester);
  ProjectsPolicyResourceApi get policy =>
      new ProjectsPolicyResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;

  /// A policy specifies the attestors that must attest to
  /// a container image, before the project is allowed to deploy that
  /// image. There is at most one policy per project. All image admission
  /// requests are permitted if a project has no policy.
  ///
  /// Gets the policy for this project. Returns a default
  /// policy if the project does not have one.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the policy to retrieve,
  /// in the format `projects / * /policy`.
  /// Value must have pattern "^projects/[^/]+/policy$".
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
  async.Future<Policy> getPolicy(core.String name, {core.String $fields}) {
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
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Creates or updates a project's policy, and returns a copy of the
  /// new policy. A policy is always updated as a whole, to avoid race
  /// conditions with concurrent policy enforcement (or management!)
  /// requests. Returns NOT_FOUND if the project does not exist,
  /// INVALID_ARGUMENT
  /// if the request is malformed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name, in the format `projects / *
  /// /policy`. There is
  /// at most one policy per project.
  /// Value must have pattern "^projects/[^/]+/policy$".
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
  async.Future<Policy> updatePolicy(Policy request, core.String name,
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

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }
}

class ProjectsAttestorsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAttestorsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates an attestor, and returns a copy of the new
  /// attestor. Returns NOT_FOUND if the project does not exist,
  /// INVALID_ARGUMENT if the request is malformed, ALREADY_EXISTS if the
  /// attestor already exists.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of this attestor.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [attestorId] - Required. The attestors ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Attestor].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Attestor> create(Attestor request, core.String parent,
      {core.String attestorId, core.String $fields}) {
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
    if (attestorId != null) {
      _queryParams["attestorId"] = [attestorId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/attestors';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Attestor.fromJson(data));
  }

  /// Deletes an attestor. Returns NOT_FOUND if the
  /// attestor does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the attestors to delete, in the format
  /// `projects / * /attestors / * `.
  /// Value must have pattern "^projects/[^/]+/attestors/[^/]+$".
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets an attestor.
  /// Returns NOT_FOUND if the attestor does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the attestor to retrieve, in the format
  /// `projects / * /attestors / * `.
  /// Value must have pattern "^projects/[^/]+/attestors/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Attestor].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Attestor> get(core.String name, {core.String $fields}) {
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
    return _response.then((data) => new Attestor.fromJson(data));
  }

  /// Gets the access control policy for a resource.
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/attestors/[^/]+$".
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned.
  /// Acceptable values are 0 and 1.
  /// If the value is 0, or the field is omitted, policy format version 1 will
  /// be
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IamPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IamPolicy> getIamPolicy(core.String resource,
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new IamPolicy.fromJson(data));
  }

  /// Lists attestors.
  /// Returns INVALID_ARGUMENT if the project does not exist.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the project associated with the
  /// attestors, in the format `projects / * `.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically,
  /// this is the value of ListAttestorsResponse.next_page_token returned
  /// from the previous call to the `ListAttestors` method.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If
  /// unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAttestorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAttestorsResponse> list(core.String parent,
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/attestors';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListAttestorsResponse.fromJson(data));
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/attestors/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IamPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IamPolicy> setIamPolicy(
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new IamPolicy.fromJson(data));
  }

  /// Returns permissions that a caller has on the specified resource.
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.
  ///
  /// Note: This operation is designed to be used for building permission-aware
  /// UIs and command-line tools, not for authorization checking. This operation
  /// may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/attestors/[^/]+$".
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

    _url = 'v1beta1/' +
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

  /// Updates an attestor.
  /// Returns NOT_FOUND if the attestor does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name, in the format:
  /// `projects / * /attestors / * `. This field may not be updated.
  /// Value must have pattern "^projects/[^/]+/attestors/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Attestor].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Attestor> update(Attestor request, core.String name,
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

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Attestor.fromJson(data));
  }
}

class ProjectsPolicyResourceApi {
  final commons.ApiRequester _requester;

  ProjectsPolicyResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the access control policy for a resource.
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/policy$".
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned.
  /// Acceptable values are 0 and 1.
  /// If the value is 0, or the field is omitted, policy format version 1 will
  /// be
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IamPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IamPolicy> getIamPolicy(core.String resource,
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new IamPolicy.fromJson(data));
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/policy$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IamPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IamPolicy> setIamPolicy(
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new IamPolicy.fromJson(data));
  }

  /// Returns permissions that a caller has on the specified resource.
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.
  ///
  /// Note: This operation is designed to be used for building permission-aware
  /// UIs and command-line tools, not for authorization checking. This operation
  /// may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/policy$".
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

    _url = 'v1beta1/' +
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

/// An admission rule specifies either that all container images
/// used in a pod creation request must be attested to by one or more
/// attestors, that all pod creations will be allowed, or that all
/// pod creations will be denied.
///
/// Images matching an admission whitelist pattern
/// are exempted from admission rules and will never block a pod creation.
class AdmissionRule {
  /// Required. The action when a pod creation is denied by the admission rule.
  /// Possible string values are:
  /// - "ENFORCEMENT_MODE_UNSPECIFIED" : Do not use.
  /// - "ENFORCED_BLOCK_AND_AUDIT_LOG" : Enforce the admission rule by blocking
  /// the pod creation.
  /// - "DRYRUN_AUDIT_LOG_ONLY" : Dryrun mode: Audit logging only.  This will
  /// allow the pod creation as if
  /// the admission request had specified break-glass.
  core.String enforcementMode;

  /// Required. How this admission rule will be evaluated.
  /// Possible string values are:
  /// - "EVALUATION_MODE_UNSPECIFIED" : Do not use.
  /// - "ALWAYS_ALLOW" : This rule allows all all pod creations.
  /// - "REQUIRE_ATTESTATION" : This rule allows a pod creation if all the
  /// attestors listed in
  /// 'require_attestations_by' have valid attestations for all of the
  /// images in the pod spec.
  /// - "ALWAYS_DENY" : This rule denies all pod creations.
  core.String evaluationMode;

  /// Optional. The resource names of the attestors that must attest to
  /// a container image, in the format `projects / * /attestors / * `. Each
  /// attestor must exist before a policy can reference it.  To add an attestor
  /// to a policy the principal issuing the policy change request must be able
  /// to read the attestor resource.
  ///
  /// Note: this field must be non-empty when the evaluation_mode field
  /// specifies
  /// REQUIRE_ATTESTATION, otherwise it must be empty.
  core.List<core.String> requireAttestationsBy;

  AdmissionRule();

  AdmissionRule.fromJson(core.Map _json) {
    if (_json.containsKey("enforcementMode")) {
      enforcementMode = _json["enforcementMode"];
    }
    if (_json.containsKey("evaluationMode")) {
      evaluationMode = _json["evaluationMode"];
    }
    if (_json.containsKey("requireAttestationsBy")) {
      requireAttestationsBy =
          (_json["requireAttestationsBy"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enforcementMode != null) {
      _json["enforcementMode"] = enforcementMode;
    }
    if (evaluationMode != null) {
      _json["evaluationMode"] = evaluationMode;
    }
    if (requireAttestationsBy != null) {
      _json["requireAttestationsBy"] = requireAttestationsBy;
    }
    return _json;
  }
}

/// An admission whitelist pattern exempts images
/// from checks by admission rules.
class AdmissionWhitelistPattern {
  /// An image name pattern to whitelist, in the form `registry/path/to/image`.
  /// This supports a trailing `*` as a wildcard, but this is allowed only in
  /// text after the `registry/` part.
  core.String namePattern;

  AdmissionWhitelistPattern();

  AdmissionWhitelistPattern.fromJson(core.Map _json) {
    if (_json.containsKey("namePattern")) {
      namePattern = _json["namePattern"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (namePattern != null) {
      _json["namePattern"] = namePattern;
    }
    return _json;
  }
}

/// An attestor that attests to container image
/// artifacts. An existing attestor cannot be modified except where
/// indicated.
class Attestor {
  /// Optional. A descriptive comment.  This field may be updated.
  /// The field may be displayed in chooser dialogs.
  core.String description;

  /// Required. The resource name, in the format:
  /// `projects / * /attestors / * `. This field may not be updated.
  core.String name;

  /// Output only. Time when the attestor was last updated.
  core.String updateTime;

  /// A Drydock ATTESTATION_AUTHORITY Note, created by the user.
  UserOwnedDrydockNote userOwnedDrydockNote;

  Attestor();

  Attestor.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
    if (_json.containsKey("userOwnedDrydockNote")) {
      userOwnedDrydockNote =
          new UserOwnedDrydockNote.fromJson(_json["userOwnedDrydockNote"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    if (userOwnedDrydockNote != null) {
      _json["userOwnedDrydockNote"] = (userOwnedDrydockNote).toJson();
    }
    return _json;
  }
}

/// An attestor public key that will be used to verify
/// attestations signed by this attestor.
class AttestorPublicKey {
  /// ASCII-armored representation of a PGP public key, as the entire output by
  /// the command `gpg --export --armor foo@example.com` (either LF or CRLF
  /// line endings).
  /// When using this field, `id` should be left blank.  The BinAuthz API
  /// handlers will calculate the ID and fill it in automatically.  BinAuthz
  /// computes this ID as the OpenPGP RFC4880 V4 fingerprint, represented as
  /// upper-case hex.  If `id` is provided by the caller, it will be
  /// overwritten by the API-calculated ID.
  core.String asciiArmoredPgpPublicKey;

  /// Optional. A descriptive comment. This field may be updated.
  core.String comment;

  /// The ID of this public key.
  /// Signatures verified by BinAuthz must include the ID of the public key that
  /// can be used to verify them, and that ID must match the contents of this
  /// field exactly.
  /// Additional restrictions on this field can be imposed based on which public
  /// key type is encapsulated. See the documentation on `public_key` cases
  /// below
  /// for details.
  core.String id;

  /// A raw PKIX SubjectPublicKeyInfo format public key.
  ///
  /// NOTE: `id` may be explicitly provided by the caller when using this
  /// type of public key, but it MUST be a valid RFC3986 URI. If `id` is left
  /// blank, a default one will be computed based on the digest of the DER
  /// encoding of the public key.
  PkixPublicKey pkixPublicKey;

  AttestorPublicKey();

  AttestorPublicKey.fromJson(core.Map _json) {
    if (_json.containsKey("asciiArmoredPgpPublicKey")) {
      asciiArmoredPgpPublicKey = _json["asciiArmoredPgpPublicKey"];
    }
    if (_json.containsKey("comment")) {
      comment = _json["comment"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("pkixPublicKey")) {
      pkixPublicKey = new PkixPublicKey.fromJson(_json["pkixPublicKey"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (asciiArmoredPgpPublicKey != null) {
      _json["asciiArmoredPgpPublicKey"] = asciiArmoredPgpPublicKey;
    }
    if (comment != null) {
      _json["comment"] = comment;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (pkixPublicKey != null) {
      _json["pkixPublicKey"] = (pkixPublicKey).toJson();
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
class IamPolicy {
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

  IamPolicy();

  IamPolicy.fromJson(core.Map _json) {
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

/// Response message for BinauthzManagementService.ListAttestors.
class ListAttestorsResponse {
  /// The list of attestors.
  core.List<Attestor> attestors;

  /// A token to retrieve the next page of results. Pass this value in the
  /// ListAttestorsRequest.page_token field in the subsequent call to the
  /// `ListAttestors` method to retrieve the next page of results.
  core.String nextPageToken;

  ListAttestorsResponse();

  ListAttestorsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("attestors")) {
      attestors = (_json["attestors"] as core.List)
          .map<Attestor>((value) => new Attestor.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (attestors != null) {
      _json["attestors"] = attestors.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// A public key in the PkixPublicKey format (see
/// https://tools.ietf.org/html/rfc5280#section-4.1.2.7 for details).
/// Public keys of this type are typically textually encoded using the PEM
/// format.
class PkixPublicKey {
  /// A PEM-encoded public key, as described in
  /// https://tools.ietf.org/html/rfc7468#section-13
  core.String publicKeyPem;

  /// The signature algorithm used to verify a message against a signature using
  /// this key.
  /// These signature algorithm must match the structure and any object
  /// identifiers encoded in `public_key_pem` (i.e. this algorithm must match
  /// that of the public key).
  /// Possible string values are:
  /// - "SIGNATURE_ALGORITHM_UNSPECIFIED" : Not specified.
  /// - "RSA_PSS_2048_SHA256" : RSASSA-PSS 2048 bit key with a SHA256 digest.
  /// - "RSA_PSS_3072_SHA256" : RSASSA-PSS 3072 bit key with a SHA256 digest.
  /// - "RSA_PSS_4096_SHA256" : RSASSA-PSS 4096 bit key with a SHA256 digest.
  /// - "RSA_PSS_4096_SHA512" : RSASSA-PSS 4096 bit key with a SHA512 digest.
  /// - "RSA_SIGN_PKCS1_2048_SHA256" : RSASSA-PKCS1-v1_5 with a 2048 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_3072_SHA256" : RSASSA-PKCS1-v1_5 with a 3072 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_4096_SHA256" : RSASSA-PKCS1-v1_5 with a 4096 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_4096_SHA512" : RSASSA-PKCS1-v1_5 with a 4096 bit key and
  /// a SHA512 digest.
  /// - "ECDSA_P256_SHA256" : ECDSA on the NIST P-256 curve with a SHA256
  /// digest.
  /// - "ECDSA_P384_SHA384" : ECDSA on the NIST P-384 curve with a SHA384
  /// digest.
  /// - "ECDSA_P521_SHA512" : ECDSA on the NIST P-521 curve with a SHA512
  /// digest.
  core.String signatureAlgorithm;

  PkixPublicKey();

  PkixPublicKey.fromJson(core.Map _json) {
    if (_json.containsKey("publicKeyPem")) {
      publicKeyPem = _json["publicKeyPem"];
    }
    if (_json.containsKey("signatureAlgorithm")) {
      signatureAlgorithm = _json["signatureAlgorithm"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (publicKeyPem != null) {
      _json["publicKeyPem"] = publicKeyPem;
    }
    if (signatureAlgorithm != null) {
      _json["signatureAlgorithm"] = signatureAlgorithm;
    }
    return _json;
  }
}

/// A policy for container image binary authorization.
class Policy {
  /// Optional. Admission policy whitelisting. A matching admission request will
  /// always be permitted. This feature is typically used to exclude Google or
  /// third-party infrastructure images from Binary Authorization policies.
  core.List<AdmissionWhitelistPattern> admissionWhitelistPatterns;

  /// Optional. Per-cluster admission rules. Cluster spec format:
  /// `location.clusterId`. There can be at most one admission rule per cluster
  /// spec.
  /// A `location` is either a compute zone (e.g. us-central1-a) or a region
  /// (e.g. us-central1).
  /// For `clusterId` syntax restrictions see
  /// https://cloud.google.com/container-engine/reference/rest/v1/projects.zones.clusters.
  core.Map<core.String, AdmissionRule> clusterAdmissionRules;

  /// Required. Default admission rule for a cluster without a per-cluster, per-
  /// kubernetes-service-account, or per-istio-service-identity admission rule.
  AdmissionRule defaultAdmissionRule;

  /// Optional. A descriptive comment.
  core.String description;

  /// Optional. Controls the evaluation of a Google-maintained global admission
  /// policy for common system-level images. Images not covered by the global
  /// policy will be subject to the project admission policy. This setting
  /// has no effect when specified inside a global admission policy.
  /// Possible string values are:
  /// - "GLOBAL_POLICY_EVALUATION_MODE_UNSPECIFIED" : Not specified: DISABLE is
  /// assumed.
  /// - "ENABLE" : Enables global policy evaluation.
  /// - "DISABLE" : Disables global policy evaluation.
  core.String globalPolicyEvaluationMode;

  /// Output only. The resource name, in the format `projects / * /policy`.
  /// There is
  /// at most one policy per project.
  core.String name;

  /// Output only. Time when the policy was last updated.
  core.String updateTime;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("admissionWhitelistPatterns")) {
      admissionWhitelistPatterns =
          (_json["admissionWhitelistPatterns"] as core.List)
              .map<AdmissionWhitelistPattern>(
                  (value) => new AdmissionWhitelistPattern.fromJson(value))
              .toList();
    }
    if (_json.containsKey("clusterAdmissionRules")) {
      clusterAdmissionRules = commons.mapMap<core.Map, AdmissionRule>(
          _json["clusterAdmissionRules"].cast<core.String, core.Map>(),
          (core.Map item) => new AdmissionRule.fromJson(item));
    }
    if (_json.containsKey("defaultAdmissionRule")) {
      defaultAdmissionRule =
          new AdmissionRule.fromJson(_json["defaultAdmissionRule"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("globalPolicyEvaluationMode")) {
      globalPolicyEvaluationMode = _json["globalPolicyEvaluationMode"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (admissionWhitelistPatterns != null) {
      _json["admissionWhitelistPatterns"] =
          admissionWhitelistPatterns.map((value) => (value).toJson()).toList();
    }
    if (clusterAdmissionRules != null) {
      _json["clusterAdmissionRules"] =
          commons.mapMap<AdmissionRule, core.Map<core.String, core.Object>>(
              clusterAdmissionRules, (AdmissionRule item) => (item).toJson());
    }
    if (defaultAdmissionRule != null) {
      _json["defaultAdmissionRule"] = (defaultAdmissionRule).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (globalPolicyEvaluationMode != null) {
      _json["globalPolicyEvaluationMode"] = globalPolicyEvaluationMode;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
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
  IamPolicy policy;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("policy")) {
      policy = new IamPolicy.fromJson(_json["policy"]);
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

/// An user owned drydock note references a Drydock
/// ATTESTATION_AUTHORITY Note created by the user.
class UserOwnedDrydockNote {
  /// Output only. This field will contain the service account email address
  /// that this Attestor will use as the principal when querying Container
  /// Analysis. Attestor administrators must grant this service account the
  /// IAM role needed to read attestations from the note_reference in
  /// Container Analysis (`containeranalysis.notes.occurrences.viewer`).
  ///
  /// This email address is fixed for the lifetime of the Attestor, but callers
  /// should not make any other assumptions about the service account email;
  /// future versions may use an email based on a different naming pattern.
  core.String delegationServiceAccountEmail;

  /// Required. The Drydock resource name of a ATTESTATION_AUTHORITY Note,
  /// created by the user, in the format: `projects / * /notes / * ` (or the
  /// legacy
  /// `providers / * /notes / * `). This field may not be updated.
  ///
  /// An attestation by this attestor is stored as a Drydock
  /// ATTESTATION_AUTHORITY Occurrence that names a container image and that
  /// links to this Note. Drydock is an external dependency.
  core.String noteReference;

  /// Optional. Public keys that verify attestations signed by this
  /// attestor.  This field may be updated.
  ///
  /// If this field is non-empty, one of the specified public keys must
  /// verify that an attestation was signed by this attestor for the
  /// image specified in the admission request.
  ///
  /// If this field is empty, this attestor always returns that no
  /// valid attestations exist.
  core.List<AttestorPublicKey> publicKeys;

  UserOwnedDrydockNote();

  UserOwnedDrydockNote.fromJson(core.Map _json) {
    if (_json.containsKey("delegationServiceAccountEmail")) {
      delegationServiceAccountEmail = _json["delegationServiceAccountEmail"];
    }
    if (_json.containsKey("noteReference")) {
      noteReference = _json["noteReference"];
    }
    if (_json.containsKey("publicKeys")) {
      publicKeys = (_json["publicKeys"] as core.List)
          .map<AttestorPublicKey>(
              (value) => new AttestorPublicKey.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (delegationServiceAccountEmail != null) {
      _json["delegationServiceAccountEmail"] = delegationServiceAccountEmail;
    }
    if (noteReference != null) {
      _json["noteReference"] = noteReference;
    }
    if (publicKeys != null) {
      _json["publicKeys"] =
          publicKeys.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}
