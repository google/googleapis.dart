// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis_beta.accesscontextmanager.v1beta;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client accesscontextmanager/v1beta';

/// An API for setting attribute based access control to requests to GCP
/// services.
class AccesscontextmanagerApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  AccessPoliciesResourceApi get accessPolicies =>
      new AccessPoliciesResourceApi(_requester);
  OperationsResourceApi get operations => new OperationsResourceApi(_requester);

  AccesscontextmanagerApi(http.Client client,
      {core.String rootUrl: "https://accesscontextmanager.googleapis.com/",
      core.String servicePath: ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class AccessPoliciesResourceApi {
  final commons.ApiRequester _requester;

  AccessPoliciesAccessLevelsResourceApi get accessLevels =>
      new AccessPoliciesAccessLevelsResourceApi(_requester);
  AccessPoliciesServicePerimetersResourceApi get servicePerimeters =>
      new AccessPoliciesServicePerimetersResourceApi(_requester);

  AccessPoliciesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Create an `AccessPolicy`. Fails if this organization already has a
  /// `AccessPolicy`. The longrunning Operation will have a successful status
  /// once the `AccessPolicy` has propagated to long-lasting storage.
  /// Syntactic and basic semantic errors will be returned in `metadata` as a
  /// BadRequest proto.
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
  async.Future<Operation> create(AccessPolicy request, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta/accessPolicies';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Delete an AccessPolicy by resource
  /// name. The longrunning Operation will have a successful status once the
  /// AccessPolicy
  /// has been removed from long-lasting storage.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for the access policy to delete.
  ///
  /// Format `accessPolicies/{policy_id}`
  /// Value must have pattern "^accessPolicies/[^/]+$".
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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
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

    _url = 'v1beta/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Get an AccessPolicy by name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for the access policy to get.
  ///
  /// Format `accessPolicies/{policy_id}`
  /// Value must have pattern "^accessPolicies/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessPolicy> get(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
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

    _url = 'v1beta/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AccessPolicy.fromJson(data));
  }

  /// List all AccessPolicies under a
  /// container.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name for the container to list AccessPolicy
  /// instances
  /// from.
  ///
  /// Format:
  /// `organizations/{org_id}`
  ///
  /// [pageToken] - Next page token for the next batch of AccessPolicy
  /// instances. Defaults to
  /// the first page of results.
  ///
  /// [pageSize] - Number of AccessPolicy instances to include in the list.
  /// Default 100.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAccessPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAccessPoliciesResponse> list(
      {core.String parent,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent != null) {
      _queryParams["parent"] = [parent];
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

    _url = 'v1beta/accessPolicies';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListAccessPoliciesResponse.fromJson(data));
  }

  /// Update an AccessPolicy. The
  /// longrunning Operation from this RPC will have a successful status once the
  /// changes to the AccessPolicy have propagated
  /// to long-lasting storage. Syntactic and basic semantic errors will be
  /// returned in `metadata` as a BadRequest proto.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the `AccessPolicy`. Format:
  /// `accessPolicies/{policy_id}`
  /// Value must have pattern "^accessPolicies/[^/]+$".
  ///
  /// [updateMask] - Required. Mask to control which fields get updated. Must be
  /// non-empty.
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
  async.Future<Operation> patch(AccessPolicy request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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

    _url = 'v1beta/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class AccessPoliciesAccessLevelsResourceApi {
  final commons.ApiRequester _requester;

  AccessPoliciesAccessLevelsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Create an Access Level. The longrunning
  /// operation from this RPC will have a successful status once the Access
  /// Level has
  /// propagated to long-lasting storage. Access Levels containing
  /// errors will result in an error response for the first error encountered.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name for the access policy which owns this
  /// Access
  /// Level.
  ///
  /// Format: `accessPolicies/{policy_id}`
  /// Value must have pattern "^accessPolicies/[^/]+$".
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
  async.Future<Operation> create(AccessLevel request, core.String parent,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/accessLevels';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Delete an Access Level by resource
  /// name. The longrunning operation from this RPC will have a successful
  /// status
  /// once the Access Level has been removed
  /// from long-lasting storage.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for the Access Level.
  ///
  /// Format:
  /// `accessPolicies/{policy_id}/accessLevels/{access_level_id}`
  /// Value must have pattern "^accessPolicies/[^/]+/accessLevels/[^/]+$".
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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
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

    _url = 'v1beta/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Get an Access Level by resource
  /// name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for the Access Level.
  ///
  /// Format:
  /// `accessPolicies/{policy_id}/accessLevels/{access_level_id}`
  /// Value must have pattern "^accessPolicies/[^/]+/accessLevels/[^/]+$".
  ///
  /// [accessLevelFormat] - Whether to return `BasicLevels` in the Cloud Common
  /// Expression
  /// Language rather than as `BasicLevels`. Defaults to AS_DEFINED, where
  /// Access Levels
  /// are returned as `BasicLevels` or `CustomLevels` based on how they were
  /// created. If set to CEL, all Access Levels are returned as
  /// `CustomLevels`. In the CEL case, `BasicLevels` are translated to
  /// equivalent
  /// `CustomLevels`.
  /// Possible string values are:
  /// - "LEVEL_FORMAT_UNSPECIFIED" : A LEVEL_FORMAT_UNSPECIFIED.
  /// - "AS_DEFINED" : A AS_DEFINED.
  /// - "CEL" : A CEL.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessLevel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessLevel> get(core.String name,
      {core.String accessLevelFormat, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (accessLevelFormat != null) {
      _queryParams["accessLevelFormat"] = [accessLevelFormat];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AccessLevel.fromJson(data));
  }

  /// List all Access Levels for an access
  /// policy.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name for the access policy to list Access
  /// Levels from.
  ///
  /// Format:
  /// `accessPolicies/{policy_id}`
  /// Value must have pattern "^accessPolicies/[^/]+$".
  ///
  /// [pageToken] - Next page token for the next batch of Access Level
  /// instances.
  /// Defaults to the first page of results.
  ///
  /// [pageSize] - Number of Access Levels to include in
  /// the list. Default 100.
  ///
  /// [accessLevelFormat] - Whether to return `BasicLevels` in the Cloud Common
  /// Expression language, as
  /// `CustomLevels`, rather than as `BasicLevels`. Defaults to returning
  /// `AccessLevels` in the format they were defined.
  /// Possible string values are:
  /// - "LEVEL_FORMAT_UNSPECIFIED" : A LEVEL_FORMAT_UNSPECIFIED.
  /// - "AS_DEFINED" : A AS_DEFINED.
  /// - "CEL" : A CEL.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAccessLevelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAccessLevelsResponse> list(core.String parent,
      {core.String pageToken,
      core.int pageSize,
      core.String accessLevelFormat,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
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
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (accessLevelFormat != null) {
      _queryParams["accessLevelFormat"] = [accessLevelFormat];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/accessLevels';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListAccessLevelsResponse.fromJson(data));
  }

  /// Update an Access Level. The longrunning
  /// operation from this RPC will have a successful status once the changes to
  /// the Access Level have propagated
  /// to long-lasting storage. Access Levels containing
  /// errors will result in an error response for the first error encountered.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for the Access Level. The `short_name`
  /// component
  /// must begin with a letter and only include alphanumeric and '_'. Format:
  /// `accessPolicies/{policy_id}/accessLevels/{short_name}`
  /// Value must have pattern "^accessPolicies/[^/]+/accessLevels/[^/]+$".
  ///
  /// [updateMask] - Required.  Mask to control which fields get updated. Must
  /// be non-empty.
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
  async.Future<Operation> patch(AccessLevel request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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

    _url = 'v1beta/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class AccessPoliciesServicePerimetersResourceApi {
  final commons.ApiRequester _requester;

  AccessPoliciesServicePerimetersResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Create an Service Perimeter. The
  /// longrunning operation from this RPC will have a successful status once the
  /// Service Perimeter has
  /// propagated to long-lasting storage. Service Perimeters containing
  /// errors will result in an error response for the first error encountered.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name for the access policy which owns this
  /// Service
  /// Perimeter.
  ///
  /// Format: `accessPolicies/{policy_id}`
  /// Value must have pattern "^accessPolicies/[^/]+$".
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
  async.Future<Operation> create(ServicePerimeter request, core.String parent,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/servicePerimeters';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Delete an Service Perimeter by resource
  /// name. The longrunning operation from this RPC will have a successful
  /// status
  /// once the Service Perimeter has been
  /// removed from long-lasting storage.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for the Service Perimeter.
  ///
  /// Format:
  /// `accessPolicies/{policy_id}/servicePerimeters/{service_perimeter_id}`
  /// Value must have pattern "^accessPolicies/[^/]+/servicePerimeters/[^/]+$".
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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
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

    _url = 'v1beta/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Get an Service Perimeter by resource
  /// name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for the Service Perimeter.
  ///
  /// Format:
  /// `accessPolicies/{policy_id}/servicePerimeters/{service_perimeters_id}`
  /// Value must have pattern "^accessPolicies/[^/]+/servicePerimeters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServicePerimeter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServicePerimeter> get(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
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

    _url = 'v1beta/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServicePerimeter.fromJson(data));
  }

  /// List all Service Perimeters for an
  /// access policy.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name for the access policy to list Service
  /// Perimeters from.
  ///
  /// Format:
  /// `accessPolicies/{policy_id}`
  /// Value must have pattern "^accessPolicies/[^/]+$".
  ///
  /// [pageToken] - Next page token for the next batch of Service Perimeter
  /// instances.
  /// Defaults to the first page of results.
  ///
  /// [pageSize] - Number of Service Perimeters to include
  /// in the list. Default 100.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServicePerimetersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServicePerimetersResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
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
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/servicePerimeters';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListServicePerimetersResponse.fromJson(data));
  }

  /// Update an Service Perimeter. The
  /// longrunning operation from this RPC will have a successful status once the
  /// changes to the Service Perimeter have
  /// propagated to long-lasting storage. Service Perimeter containing
  /// errors will result in an error response for the first error encountered.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for the ServicePerimeter.  The
  /// `short_name`
  /// component must begin with a letter and only include alphanumeric and '_'.
  /// Format: `accessPolicies/{policy_id}/servicePerimeters/{short_name}`
  /// Value must have pattern "^accessPolicies/[^/]+/servicePerimeters/[^/]+$".
  ///
  /// [updateMask] - Required. Mask to control which fields get updated. Must be
  /// non-empty.
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
  async.Future<Operation> patch(ServicePerimeter request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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

    _url = 'v1beta/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
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

    _url = 'v1beta/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

/// An `AccessLevel` is a label that can be applied to requests to GCP services,
/// along with a list of requirements necessary for the label to be applied.
class AccessLevel {
  /// A `BasicLevel` composed of `Conditions`.
  BasicLevel basic;

  /// Output only. Time the `AccessLevel` was created in UTC.
  core.String createTime;

  /// Description of the `AccessLevel` and its use. Does not affect behavior.
  core.String description;

  /// Required. Resource name for the Access Level. The `short_name` component
  /// must begin with a letter and only include alphanumeric and '_'. Format:
  /// `accessPolicies/{policy_id}/accessLevels/{short_name}`
  core.String name;

  /// Human readable title. Must be unique within the Policy.
  core.String title;

  /// Output only. Time the `AccessLevel` was updated in UTC.
  core.String updateTime;

  AccessLevel();

  AccessLevel.fromJson(core.Map _json) {
    if (_json.containsKey("basic")) {
      basic = new BasicLevel.fromJson(_json["basic"]);
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (basic != null) {
      _json["basic"] = (basic).toJson();
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// `AccessPolicy` is a container for `AccessLevels` (which define the necessary
/// attributes to use GCP services) and `ServicePerimeters` (which define
/// regions
/// of services able to freely pass data within a perimeter). An access policy
/// is
/// globally visible within an organization, and the restrictions it specifies
/// apply to all projects within an organization.
class AccessPolicy {
  /// Output only. Time the `AccessPolicy` was created in UTC.
  core.String createTime;

  /// Output only. Resource name of the `AccessPolicy`. Format:
  /// `accessPolicies/{policy_id}`
  core.String name;

  /// Required. The parent of this `AccessPolicy` in the Cloud Resource
  /// Hierarchy. Currently immutable once created. Format:
  /// `organizations/{organization_id}`
  core.String parent;

  /// Required. Human readable title. Does not affect behavior.
  core.String title;

  /// Output only. Time the `AccessPolicy` was updated in UTC.
  core.String updateTime;

  AccessPolicy();

  AccessPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parent")) {
      parent = _json["parent"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
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
    if (name != null) {
      _json["name"] = name;
    }
    if (parent != null) {
      _json["parent"] = parent;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// `BasicLevel` is an `AccessLevel` using a set of recommended features.
class BasicLevel {
  /// How the `conditions` list should be combined to determine if a request is
  /// granted this `AccessLevel`. If AND is used, each `Condition` in
  /// `conditions` must be satisfied for the `AccessLevel` to be applied. If OR
  /// is used, at least one `Condition` in `conditions` must be satisfied for
  /// the
  /// `AccessLevel` to be applied. Default behavior is AND.
  /// Possible string values are:
  /// - "AND" : All `Conditions` must be true for the `BasicLevel` to be true.
  /// - "OR" : If at least one `Condition` is true, then the `BasicLevel` is
  /// true.
  core.String combiningFunction;

  /// Required. A list of requirements for the `AccessLevel` to be granted.
  core.List<Condition> conditions;

  BasicLevel();

  BasicLevel.fromJson(core.Map _json) {
    if (_json.containsKey("combiningFunction")) {
      combiningFunction = _json["combiningFunction"];
    }
    if (_json.containsKey("conditions")) {
      conditions = (_json["conditions"] as core.List)
          .map<Condition>((value) => new Condition.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (combiningFunction != null) {
      _json["combiningFunction"] = combiningFunction;
    }
    if (conditions != null) {
      _json["conditions"] =
          conditions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A condition necessary for an `AccessLevel` to be granted. The Condition is
/// an
/// AND over its fields. So a Condition is true if: 1) the request IP is from
/// one
/// of the listed subnetworks AND 2) the originating device complies with the
/// listed device policy AND 3) all listed access levels are granted AND 4) the
/// request was sent at a time allowed by the DateTimeRestriction.
class Condition {
  /// Device specific restrictions, all restrictions must hold for the
  /// Condition to be true. If not specified, all devices are allowed.
  DevicePolicy devicePolicy;

  /// CIDR block IP subnetwork specification. May be IPv4 or IPv6. Note that for
  /// a CIDR IP address block, the specified IP address portion must be properly
  /// truncated (i.e. all the host bits must be zero) or the input is considered
  /// malformed. For example, "192.0.2.0/24" is accepted but "192.0.2.1/24" is
  /// not. Similarly, for IPv6, "2001:db8::/32" is accepted whereas
  /// "2001:db8::1/32" is not. The originating IP of a request must be in one of
  /// the listed subnets in order for this Condition to be true. If empty, all
  /// IP
  /// addresses are allowed.
  core.List<core.String> ipSubnetworks;

  /// The signed-in user originating the request must be a part of one of the
  /// provided members.
  /// Syntax:
  /// `user:{emailid}`
  /// `group:{emailid}`
  /// `serviceAccount:{emailid}`
  /// If not specified, a request may come from any user (logged in/not logged
  /// in, not present in any groups, etc.).
  core.List<core.String> members;

  /// Whether to negate the Condition. If true, the Condition becomes a NAND
  /// over
  /// its non-empty fields, each field must be false for the Condition overall
  /// to
  /// be satisfied. Defaults to false.
  core.bool negate;

  /// A list of other access levels defined in the same `Policy`, referenced by
  /// resource name. Referencing an `AccessLevel` which does not exist is an
  /// error. All access levels listed must be granted for the Condition
  /// to be true. Example:
  /// "`accessPolicies/MY_POLICY/accessLevels/LEVEL_NAME"`
  core.List<core.String> requiredAccessLevels;

  Condition();

  Condition.fromJson(core.Map _json) {
    if (_json.containsKey("devicePolicy")) {
      devicePolicy = new DevicePolicy.fromJson(_json["devicePolicy"]);
    }
    if (_json.containsKey("ipSubnetworks")) {
      ipSubnetworks = (_json["ipSubnetworks"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("members")) {
      members = (_json["members"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("negate")) {
      negate = _json["negate"];
    }
    if (_json.containsKey("requiredAccessLevels")) {
      requiredAccessLevels =
          (_json["requiredAccessLevels"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (devicePolicy != null) {
      _json["devicePolicy"] = (devicePolicy).toJson();
    }
    if (ipSubnetworks != null) {
      _json["ipSubnetworks"] = ipSubnetworks;
    }
    if (members != null) {
      _json["members"] = members;
    }
    if (negate != null) {
      _json["negate"] = negate;
    }
    if (requiredAccessLevels != null) {
      _json["requiredAccessLevels"] = requiredAccessLevels;
    }
    return _json;
  }
}

/// `DevicePolicy` specifies device specific restrictions necessary to acquire a
/// given access level. A `DevicePolicy` specifies requirements for requests
/// from
/// devices to be granted access levels, it does not do any enforcement on the
/// device. `DevicePolicy` acts as an AND over all specified fields, and each
/// repeated field is an OR over its elements. Any unset fields are ignored. For
/// example, if the proto is { os_type : DESKTOP_WINDOWS, os_type :
/// DESKTOP_LINUX, encryption_status: ENCRYPTED}, then the DevicePolicy will be
/// true for requests originating from encrypted Linux desktops and encrypted
/// Windows desktops.
class DevicePolicy {
  /// Allowed device management levels, an empty list allows all management
  /// levels.
  core.List<core.String> allowedDeviceManagementLevels;

  /// Allowed encryptions statuses, an empty list allows all statuses.
  core.List<core.String> allowedEncryptionStatuses;

  /// Allowed OS versions, an empty list allows all types and all versions.
  core.List<OsConstraint> osConstraints;

  /// Whether or not screenlock is required for the DevicePolicy to be true.
  /// Defaults to `false`.
  core.bool requireScreenlock;

  DevicePolicy();

  DevicePolicy.fromJson(core.Map _json) {
    if (_json.containsKey("allowedDeviceManagementLevels")) {
      allowedDeviceManagementLevels =
          (_json["allowedDeviceManagementLevels"] as core.List)
              .cast<core.String>();
    }
    if (_json.containsKey("allowedEncryptionStatuses")) {
      allowedEncryptionStatuses =
          (_json["allowedEncryptionStatuses"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("osConstraints")) {
      osConstraints = (_json["osConstraints"] as core.List)
          .map<OsConstraint>((value) => new OsConstraint.fromJson(value))
          .toList();
    }
    if (_json.containsKey("requireScreenlock")) {
      requireScreenlock = _json["requireScreenlock"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allowedDeviceManagementLevels != null) {
      _json["allowedDeviceManagementLevels"] = allowedDeviceManagementLevels;
    }
    if (allowedEncryptionStatuses != null) {
      _json["allowedEncryptionStatuses"] = allowedEncryptionStatuses;
    }
    if (osConstraints != null) {
      _json["osConstraints"] =
          osConstraints.map((value) => (value).toJson()).toList();
    }
    if (requireScreenlock != null) {
      _json["requireScreenlock"] = requireScreenlock;
    }
    return _json;
  }
}

/// A response to `ListAccessLevelsRequest`.
class ListAccessLevelsResponse {
  /// List of the Access Level instances.
  core.List<AccessLevel> accessLevels;

  /// The pagination token to retrieve the next page of results. If the value is
  /// empty, no further results remain.
  core.String nextPageToken;

  ListAccessLevelsResponse();

  ListAccessLevelsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("accessLevels")) {
      accessLevels = (_json["accessLevels"] as core.List)
          .map<AccessLevel>((value) => new AccessLevel.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accessLevels != null) {
      _json["accessLevels"] =
          accessLevels.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// A response to `ListAccessPoliciesRequest`.
class ListAccessPoliciesResponse {
  /// List of the AccessPolicy instances.
  core.List<AccessPolicy> accessPolicies;

  /// The pagination token to retrieve the next page of results. If the value is
  /// empty, no further results remain.
  core.String nextPageToken;

  ListAccessPoliciesResponse();

  ListAccessPoliciesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("accessPolicies")) {
      accessPolicies = (_json["accessPolicies"] as core.List)
          .map<AccessPolicy>((value) => new AccessPolicy.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accessPolicies != null) {
      _json["accessPolicies"] =
          accessPolicies.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// A response to `ListServicePerimetersRequest`.
class ListServicePerimetersResponse {
  /// The pagination token to retrieve the next page of results. If the value is
  /// empty, no further results remain.
  core.String nextPageToken;

  /// List of the Service Perimeter instances.
  core.List<ServicePerimeter> servicePerimeters;

  ListServicePerimetersResponse();

  ListServicePerimetersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("servicePerimeters")) {
      servicePerimeters = (_json["servicePerimeters"] as core.List)
          .map<ServicePerimeter>(
              (value) => new ServicePerimeter.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (servicePerimeters != null) {
      _json["servicePerimeters"] =
          servicePerimeters.map((value) => (value).toJson()).toList();
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
  /// `name` should have the format of `operations/some/unique/name`.
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

/// A restriction on the OS type and version of devices making requests.
class OsConstraint {
  /// The minimum allowed OS version. If not set, any version of this OS
  /// satisfies the constraint. Format: `"major.minor.patch"`.
  /// Examples: `"10.5.301"`, `"9.2.1"`.
  core.String minimumVersion;

  /// Required. The allowed OS type.
  /// Possible string values are:
  /// - "OS_UNSPECIFIED" : The operating system of the device is not specified
  /// or not known.
  /// - "DESKTOP_MAC" : A desktop Mac operating system.
  /// - "DESKTOP_WINDOWS" : A desktop Windows operating system.
  /// - "DESKTOP_LINUX" : A desktop Linux operating system.
  /// - "DESKTOP_CHROME_OS" : A desktop ChromeOS operating system.
  /// - "ANDROID" : An Android operating system.
  /// - "IOS" : An iOS operating system.
  core.String osType;

  OsConstraint();

  OsConstraint.fromJson(core.Map _json) {
    if (_json.containsKey("minimumVersion")) {
      minimumVersion = _json["minimumVersion"];
    }
    if (_json.containsKey("osType")) {
      osType = _json["osType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (minimumVersion != null) {
      _json["minimumVersion"] = minimumVersion;
    }
    if (osType != null) {
      _json["osType"] = osType;
    }
    return _json;
  }
}

/// `ServicePerimeter` describes a set of GCP resources which can freely import
/// and export data amongst themselves, but not export outside of the
/// `ServicePerimeter`. If a request with a source within this
/// `ServicePerimeter`
/// has a target outside of the `ServicePerimeter`, the request will be blocked.
/// Otherwise the request is allowed. There are two types of Service Perimeter -
/// Regular and Bridge. Regular Service Perimeters cannot overlap, a single GCP
/// project can only belong to a single regular Service Perimeter. Service
/// Perimeter Bridges can contain only GCP projects as members, a single GCP
/// project may belong to multiple Service Perimeter Bridges.
class ServicePerimeter {
  /// Output only. Time the `ServicePerimeter` was created in UTC.
  core.String createTime;

  /// Description of the `ServicePerimeter` and its use. Does not affect
  /// behavior.
  core.String description;

  /// Required. Resource name for the ServicePerimeter.  The `short_name`
  /// component must begin with a letter and only include alphanumeric and '_'.
  /// Format: `accessPolicies/{policy_id}/servicePerimeters/{short_name}`
  core.String name;

  /// Perimeter type indicator. A single project is
  /// allowed to be a member of single regular perimeter, but multiple service
  /// perimeter bridges. A project cannot be a included in a perimeter bridge
  /// without being included in regular perimeter. For perimeter bridges,
  /// restricted/unrestricted service lists as well as access lists must be
  /// empty.
  /// Possible string values are:
  /// - "PERIMETER_TYPE_REGULAR" : Regular Perimeter.
  /// - "PERIMETER_TYPE_BRIDGE" : Perimeter Bridge.
  core.String perimeterType;

  /// Current ServicePerimeter configuration. Specifies sets of resources,
  /// restricted/unrestricted services and access levels that determine
  /// perimeter
  /// content and boundaries.
  ServicePerimeterConfig status;

  /// Human readable title. Must be unique within the Policy.
  core.String title;

  /// Output only. Time the `ServicePerimeter` was updated in UTC.
  core.String updateTime;

  ServicePerimeter();

  ServicePerimeter.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("perimeterType")) {
      perimeterType = _json["perimeterType"];
    }
    if (_json.containsKey("status")) {
      status = new ServicePerimeterConfig.fromJson(_json["status"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
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
    if (name != null) {
      _json["name"] = name;
    }
    if (perimeterType != null) {
      _json["perimeterType"] = perimeterType;
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// `ServicePerimeterConfig` specifies a set of GCP resources that describe
/// specific Service Perimeter configuration.
class ServicePerimeterConfig {
  /// A list of `AccessLevel` resource names that allow resources within the
  /// `ServicePerimeter` to be accessed from the internet. `AccessLevels` listed
  /// must be in the same policy as this `ServicePerimeter`. Referencing a
  /// nonexistent `AccessLevel` is a syntax error. If no `AccessLevel` names are
  /// listed, resources within the perimeter can only be accessed via GCP calls
  /// with
  /// request origins within the perimeter. Example:
  /// `"accessPolicies/MY_POLICY/accessLevels/MY_LEVEL"`.
  /// For Service Perimeter Bridge, must be empty.
  core.List<core.String> accessLevels;

  /// A list of GCP resources that are inside of the service perimeter.
  /// Currently only projects are allowed. Format: `projects/{project_number}`
  core.List<core.String> resources;

  /// GCP services that are subject to the Service Perimeter restrictions. May
  /// contain a list of services or a single wildcard "*". For example, if
  /// `storage.googleapis.com` is specified, access to the storage buckets
  /// inside the perimeter must meet the perimeter's access restrictions.
  ///
  /// Wildcard means that unless explicitly specified by "unrestricted_services"
  /// list, any service is treated as restricted. One of the fields
  /// "restricted_services", "unrestricted_services" must contain a wildcard
  /// "*",
  /// otherwise the Service Perimeter specification is invalid. It also means
  /// that both field being empty is invalid as well. "restricted_services" can
  /// be empty if and only if "unrestricted_services" list contains a "*"
  /// wildcard.
  core.List<core.String> restrictedServices;

  /// GCP services that are not subject to the Service Perimeter restrictions.
  /// May contain a list of services or a single wildcard "*". For example, if
  /// `logging.googleapis.com` is unrestricted, users can access logs inside the
  /// perimeter as if the perimeter doesn't exist, and it also means VMs inside
  /// the perimeter
  /// can access logs outside the perimeter.
  ///
  /// The wildcard means that unless explicitly specified by
  /// "restricted_services" list, any service is treated as unrestricted. One of
  /// the fields "restricted_services", "unrestricted_services" must contain a
  /// wildcard "*", otherwise the Service Perimeter specification is invalid. It
  /// also means that both field being empty is invalid as well.
  /// "unrestricted_services" can be empty if and only if "restricted_services"
  /// list contains a "*" wildcard.
  core.List<core.String> unrestrictedServices;

  ServicePerimeterConfig();

  ServicePerimeterConfig.fromJson(core.Map _json) {
    if (_json.containsKey("accessLevels")) {
      accessLevels = (_json["accessLevels"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("resources")) {
      resources = (_json["resources"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("restrictedServices")) {
      restrictedServices =
          (_json["restrictedServices"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("unrestrictedServices")) {
      unrestrictedServices =
          (_json["unrestrictedServices"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accessLevels != null) {
      _json["accessLevels"] = accessLevels;
    }
    if (resources != null) {
      _json["resources"] = resources;
    }
    if (restrictedServices != null) {
      _json["restrictedServices"] = restrictedServices;
    }
    if (unrestrictedServices != null) {
      _json["unrestrictedServices"] = unrestrictedServices;
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different
/// programming environments, including REST APIs and RPC APIs. It is used by
/// [gRPC](https://github.com/grpc). The error model is designed to be:
///
/// - Simple to use and understand for most users
/// - Flexible enough to meet unexpected needs
///
/// # Overview
///
/// The `Status` message contains three pieces of data: error code, error
/// message,
/// and error details. The error code should be an enum value of
/// google.rpc.Code, but it may accept additional error codes if needed.  The
/// error message should be a developer-facing English message that helps
/// developers *understand* and *resolve* the error. If a localized user-facing
/// error message is needed, put the localized message in the error details or
/// localize it in the client. The optional error details may contain arbitrary
/// information about the error. There is a predefined set of error detail types
/// in the package `google.rpc` that can be used for common error conditions.
///
/// # Language mapping
///
/// The `Status` message is the logical representation of the error model, but
/// it
/// is not necessarily the actual wire format. When the `Status` message is
/// exposed in different client libraries and different wire protocols, it can
/// be
/// mapped differently. For example, it will likely be mapped to some exceptions
/// in Java, but more likely mapped to some error codes in C.
///
/// # Other uses
///
/// The error model and the `Status` message can be used in a variety of
/// environments, either with or without APIs, to provide a
/// consistent developer experience across different environments.
///
/// Example uses of this error model include:
///
/// - Partial errors. If a service needs to return partial errors to the client,
/// it may embed the `Status` in the normal response to indicate the partial
///     errors.
///
/// - Workflow errors. A typical workflow has multiple steps. Each step may
///     have a `Status` message for error reporting.
///
/// - Batch operations. If a client uses batch request and batch response, the
///     `Status` message should be used directly inside batch response, one for
///     each error sub-response.
///
/// - Asynchronous operations. If an API call embeds asynchronous operation
///     results in its response, the status of those operations should be
///     represented directly using the `Status` message.
///
/// - Logging. If some API errors are stored in logs, the message `Status` could
/// be used directly after any stripping needed for security/privacy reasons.
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
