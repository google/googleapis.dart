// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.composer.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client composer/v1';

/// Manages Apache Airflow environments on Google Cloud Platform.
class ComposerApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  ComposerApi(http.Client client,
      {core.String rootUrl = "https://composer.googleapis.com/",
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

  ProjectsLocationsEnvironmentsResourceApi get environments =>
      new ProjectsLocationsEnvironmentsResourceApi(_requester);
  ProjectsLocationsImageVersionsResourceApi get imageVersions =>
      new ProjectsLocationsImageVersionsResourceApi(_requester);
  ProjectsLocationsOperationsResourceApi get operations =>
      new ProjectsLocationsOperationsResourceApi(_requester);

  ProjectsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsEnvironmentsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsEnvironmentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Create a new environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent must be of the form
  /// "projects/{projectId}/locations/{locationId}".
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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
  async.Future<Operation> create(Environment request, core.String parent,
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
        '/environments';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Delete an environment.
  ///
  /// Request parameters:
  ///
  /// [name] - The environment to delete, in the form:
  /// "projects/{projectId}/locations/{locationId}/environments/{environmentId}"
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/environments/[^/]+$".
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

  /// Get an existing environment.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the environment to get, in the form:
  /// "projects/{projectId}/locations/{locationId}/environments/{environmentId}"
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/environments/[^/]+$".
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
  async.Future<Environment> get(core.String name, {core.String $fields}) {
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
    return _response.then((data) => new Environment.fromJson(data));
  }

  /// List environments.
  ///
  /// Request parameters:
  ///
  /// [parent] - List environments in the given project and location, in the
  /// form:
  /// "projects/{projectId}/locations/{locationId}"
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [pageSize] - The maximum number of environments to return.
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
  async.Future<ListEnvironmentsResponse> list(core.String parent,
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
        '/environments';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListEnvironmentsResponse.fromJson(data));
  }

  /// Update an environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of the environment to update, in the
  /// form:
  /// "projects/{projectId}/locations/{locationId}/environments/{environmentId}"
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/environments/[^/]+$".
  ///
  /// [updateMask] - Required. A comma-separated list of paths, relative to
  /// `Environment`, of
  /// fields to update.
  /// For example, to set the version of scikit-learn to install in the
  /// environment to 0.19.0 and to remove an existing installation of
  /// numpy, the `updateMask` parameter would include the following two
  /// `paths` values: "config.softwareConfig.pypiPackages.scikit-learn" and
  /// "config.softwareConfig.pypiPackages.numpy". The included patch
  /// environment would specify the scikit-learn version as follows:
  ///
  ///     {
  ///       "config":{
  ///         "softwareConfig":{
  ///           "pypiPackages":{
  ///             "scikit-learn":"==0.19.0"
  ///           }
  ///         }
  ///       }
  ///     }
  ///
  /// Note that in the above example, any existing PyPI packages
  /// other than scikit-learn and numpy will be unaffected.
  ///
  /// Only one update type may be included in a single request's `updateMask`.
  /// For example, one cannot update both the PyPI packages and
  /// labels in the same request. However, it is possible to update multiple
  /// members of a map field simultaneously in the same request. For example,
  /// to set the labels "label1" and "label2" while clearing "label3" (assuming
  /// it already exists), one can
  /// provide the paths "labels.label1", "labels.label2", and "labels.label3"
  /// and populate the patch environment as follows:
  ///
  ///     {
  ///       "labels":{
  ///         "label1":"new-label1-value"
  ///         "label2":"new-label2-value"
  ///       }
  ///     }
  ///
  /// Note that in the above example, any existing labels that are not
  /// included in the `updateMask` will be unaffected.
  ///
  /// It is also possible to replace an entire map field by providing the
  /// map field's path in the `updateMask`. The new value of the field will
  /// be that which is provided in the patch environment. For example, to
  /// delete all pre-existing user-specified PyPI packages and
  /// install botocore at version 1.7.14, the `updateMask` would contain
  /// the path "config.softwareConfig.pypiPackages", and
  /// the patch environment would be the following:
  ///
  ///     {
  ///       "config":{
  ///         "softwareConfig":{
  ///           "pypiPackages":{
  ///             "botocore":"==1.7.14"
  ///           }
  ///         }
  ///       }
  ///     }
  ///
  /// **Note:** Only the following fields can be updated:
  ///
  ///  <table>
  ///  <tbody>
  ///  <tr>
  ///  <td><strong>Mask</strong></td>
  ///  <td><strong>Purpose</strong></td>
  ///  </tr>
  ///  <tr>
  ///  <td>config.softwareConfig.pypiPackages
  ///  </td>
  ///  <td>Replace all custom custom PyPI packages. If a replacement
  ///  package map is not included in `environment`, all custom
  /// PyPI packages are cleared. It is an error to provide both this mask and a
  ///  mask specifying an individual package.</td>
  ///  </tr>
  ///  <tr>
  ///  <td>config.softwareConfig.pypiPackages.<var>packagename</var></td>
  ///  <td>Update the custom PyPI package <var>packagename</var>,
  ///  preserving other packages. To delete the package, include it in
  ///  `updateMask`, and omit the mapping for it in
  ///  `environment.config.softwareConfig.pypiPackages`. It is an error
  ///  to provide both a mask of this form and the
  ///  "config.softwareConfig.pypiPackages" mask.</td>
  ///  </tr>
  ///  <tr>
  ///  <td>labels</td>
  ///  <td>Replace all environment labels. If a replacement labels map is not
  ///  included in `environment`, all labels are cleared. It is an error to
  ///  provide both this mask and a mask specifying one or more individual
  ///  labels.</td>
  ///  </tr>
  ///  <tr>
  ///  <td>labels.<var>labelName</var></td>
  ///  <td>Set the label named <var>labelName</var>, while preserving other
  ///  labels. To delete the label, include it in `updateMask` and omit its
  ///  mapping in `environment.labels`. It is an error to provide both a
  ///  mask of this form and the "labels" mask.</td>
  ///  </tr>
  ///  <tr>
  ///  <td>config.nodeCount</td>
  /// <td>Horizontally scale the number of nodes in the environment. An integer
  ///  greater than or equal to 3 must be provided in the `config.nodeCount`
  ///  field.
  ///  </td>
  ///  </tr>
  ///  <tr>
  ///  <td>config.softwareConfig.airflowConfigOverrides</td>
  ///  <td>Replace all Apache Airflow config overrides. If a replacement config
  ///  overrides map is not included in `environment`, all config overrides
  ///  are cleared.
  ///  It is an error to provide both this mask and a mask specifying one or
  ///  more individual config overrides.</td>
  ///  </tr>
  ///  <tr>
  /// <td>config.softwareConfig.airflowConfigOverrides.<var>section</var>-<var>name
  ///  </var></td>
  ///  <td>Override the Apache Airflow config property <var>name</var> in the
  ///  section named <var>section</var>, preserving other properties. To delete
  ///  the property override, include it in `updateMask` and omit its mapping
  ///  in `environment.config.softwareConfig.airflowConfigOverrides`.
  ///  It is an error to provide both a mask of this form and the
  ///  "config.softwareConfig.airflowConfigOverrides" mask.</td>
  ///  </tr>
  ///  <tr>
  ///  <td>config.softwareConfig.envVariables</td>
  ///  <td>Replace all environment variables. If a replacement environment
  ///  variable map is not included in `environment`, all custom environment
  ///  variables  are cleared.
  ///  It is an error to provide both this mask and a mask specifying one or
  ///  more individual environment variables.</td>
  ///  </tr>
  ///  </tbody>
  ///  </table>
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
  async.Future<Operation> patch(Environment request, core.String name,
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
}

class ProjectsLocationsImageVersionsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsImageVersionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// List ImageVersions for provided location.
  ///
  /// Request parameters:
  ///
  /// [parent] - List ImageVersions in the given project and location, in the
  /// form:
  /// "projects/{projectId}/locations/{locationId}"
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [pageSize] - The maximum number of image_versions to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListImageVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListImageVersionsResponse> list(core.String parent,
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
        '/imageVersions';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListImageVersionsResponse.fromJson(data));
  }
}

class ProjectsLocationsOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a long-running operation. This method indicates that the client is
  /// no longer interested in the operation result. It does not cancel the
  /// operation. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/operations/[^/]+$".
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

  /// Gets the latest state of a long-running operation.  Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/operations/[^/]+$".
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
  /// server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// NOTE: the `name` binding allows API services to override the binding
  /// to use different resource name schemes, such as `users / * /operations`.
  /// To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration.
  /// For backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding
  /// is the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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

/// An environment for running orchestration tasks.
class Environment {
  /// Configuration parameters for this environment.
  EnvironmentConfig config;

  /// Output only.
  /// The time at which this environment was created.
  core.String createTime;

  /// Optional. User-defined labels for this environment.
  /// The labels map can contain no more than 64 entries. Entries of the labels
  /// map are UTF8 strings that comply with the following restrictions:
  ///
  /// * Keys must conform to regexp: \p{Ll}\p{Lo}{0,62}
  /// * Values must conform to regexp:  [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// * Both keys and values are additionally constrained to be <= 128 bytes in
  /// size.
  core.Map<core.String, core.String> labels;

  /// The resource name of the environment, in the form:
  /// "projects/{projectId}/locations/{locationId}/environments/{environmentId}"
  core.String name;

  /// The current state of the environment.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the environment is unknown.
  /// - "CREATING" : The environment is in the process of being created.
  /// - "RUNNING" : The environment is currently running and healthy. It is
  /// ready for use.
  /// - "UPDATING" : The environment is being updated. It remains usable but
  /// cannot receive
  /// additional update requests or be deleted at this time.
  /// - "DELETING" : The environment is undergoing deletion. It cannot be used.
  /// - "ERROR" : The environment has encountered an error and cannot be used.
  core.String state;

  /// Output only.
  /// The time at which this environment was last modified.
  core.String updateTime;

  /// Output only.
  /// The UUID (Universally Unique IDentifier) associated with this environment.
  /// This value is generated when the environment is created.
  core.String uuid;

  Environment();

  Environment.fromJson(core.Map _json) {
    if (_json.containsKey("config")) {
      config = new EnvironmentConfig.fromJson(_json["config"]);
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
    if (_json.containsKey("uuid")) {
      uuid = _json["uuid"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (config != null) {
      _json["config"] = (config).toJson();
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    if (uuid != null) {
      _json["uuid"] = uuid;
    }
    return _json;
  }
}

/// Configuration information for an environment.
class EnvironmentConfig {
  /// Output only.
  /// The URI of the Apache Airflow Web UI hosted within this environment (see
  /// [Airflow web
  /// interface](/composer/docs/how-to/accessing/airflow-web-interface)).
  core.String airflowUri;

  /// Output only.
  /// The Cloud Storage prefix of the DAGs for this environment. Although Cloud
  /// Storage objects reside in a flat namespace, a hierarchical file tree
  /// can be simulated using "/"-delimited object name prefixes. DAG objects for
  /// this environment reside in a simulated directory with the given prefix.
  core.String dagGcsPrefix;

  /// Output only.
  /// The Kubernetes Engine cluster used to run this environment.
  core.String gkeCluster;

  /// The configuration used for the Kubernetes Engine cluster.
  NodeConfig nodeConfig;

  /// The number of nodes in the Kubernetes Engine cluster that will be
  /// used to run this environment.
  core.int nodeCount;

  /// The configuration settings for software inside the environment.
  SoftwareConfig softwareConfig;

  EnvironmentConfig();

  EnvironmentConfig.fromJson(core.Map _json) {
    if (_json.containsKey("airflowUri")) {
      airflowUri = _json["airflowUri"];
    }
    if (_json.containsKey("dagGcsPrefix")) {
      dagGcsPrefix = _json["dagGcsPrefix"];
    }
    if (_json.containsKey("gkeCluster")) {
      gkeCluster = _json["gkeCluster"];
    }
    if (_json.containsKey("nodeConfig")) {
      nodeConfig = new NodeConfig.fromJson(_json["nodeConfig"]);
    }
    if (_json.containsKey("nodeCount")) {
      nodeCount = _json["nodeCount"];
    }
    if (_json.containsKey("softwareConfig")) {
      softwareConfig = new SoftwareConfig.fromJson(_json["softwareConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (airflowUri != null) {
      _json["airflowUri"] = airflowUri;
    }
    if (dagGcsPrefix != null) {
      _json["dagGcsPrefix"] = dagGcsPrefix;
    }
    if (gkeCluster != null) {
      _json["gkeCluster"] = gkeCluster;
    }
    if (nodeConfig != null) {
      _json["nodeConfig"] = (nodeConfig).toJson();
    }
    if (nodeCount != null) {
      _json["nodeCount"] = nodeCount;
    }
    if (softwareConfig != null) {
      _json["softwareConfig"] = (softwareConfig).toJson();
    }
    return _json;
  }
}

/// ImageVersion information
class ImageVersion {
  /// The string identifier of the ImageVersion, in the form:
  /// "composer-x.y.z-airflow-a.b(.c)"
  core.String imageVersionId;

  /// Whether this is the default ImageVersion used by Composer during
  /// environment creation if no input ImageVersion is specified.
  core.bool isDefault;

  /// supported python versions
  core.List<core.String> supportedPythonVersions;

  ImageVersion();

  ImageVersion.fromJson(core.Map _json) {
    if (_json.containsKey("imageVersionId")) {
      imageVersionId = _json["imageVersionId"];
    }
    if (_json.containsKey("isDefault")) {
      isDefault = _json["isDefault"];
    }
    if (_json.containsKey("supportedPythonVersions")) {
      supportedPythonVersions =
          (_json["supportedPythonVersions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (imageVersionId != null) {
      _json["imageVersionId"] = imageVersionId;
    }
    if (isDefault != null) {
      _json["isDefault"] = isDefault;
    }
    if (supportedPythonVersions != null) {
      _json["supportedPythonVersions"] = supportedPythonVersions;
    }
    return _json;
  }
}

/// The environments in a project and location.
class ListEnvironmentsResponse {
  /// The list of environments returned by a ListEnvironmentsRequest.
  core.List<Environment> environments;

  /// The page token used to query for the next page if one exists.
  core.String nextPageToken;

  ListEnvironmentsResponse();

  ListEnvironmentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("environments")) {
      environments = (_json["environments"] as core.List)
          .map<Environment>((value) => new Environment.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (environments != null) {
      _json["environments"] =
          environments.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The ImageVersions in a project and location.
class ListImageVersionsResponse {
  /// The list of supported ImageVersions in a location.
  core.List<ImageVersion> imageVersions;

  /// The page token used to query for the next page if one exists.
  core.String nextPageToken;

  ListImageVersionsResponse();

  ListImageVersionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("imageVersions")) {
      imageVersions = (_json["imageVersions"] as core.List)
          .map<ImageVersion>((value) => new ImageVersion.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (imageVersions != null) {
      _json["imageVersions"] =
          imageVersions.map((value) => (value).toJson()).toList();
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

/// The configuration information for the Kubernetes Engine nodes running
/// the Apache Airflow software.
class NodeConfig {
  /// Optional. The disk size in GB used for node VMs. Minimum size is 20GB.
  /// If unspecified, defaults to 100GB. Cannot be updated.
  core.int diskSizeGb;

  /// Optional. The Compute Engine [zone](/compute/docs/regions-zones) in which
  /// to deploy the VMs used to run the Apache Airflow software, specified as a
  /// [relative resource
  /// name](/apis/design/resource_names#relative_resource_name). For example:
  /// "projects/{projectId}/zones/{zoneId}".
  ///
  /// This `location` must belong to the enclosing environment's project and
  /// location. If both this field and `nodeConfig.machineType` are specified,
  /// `nodeConfig.machineType` must belong to this `location`; if both are
  /// unspecified, the service will pick a zone in the Compute Engine region
  /// corresponding to the Cloud Composer location, and propagate that choice to
  /// both fields. If only one field (`location` or `nodeConfig.machineType`) is
  /// specified, the location information from the specified field will be
  /// propagated to the unspecified field.
  core.String location;

  /// Optional. The Compute Engine
  /// [machine type](/compute/docs/machine-types) used for cluster instances,
  /// specified as a
  /// [relative resource
  /// name](/apis/design/resource_names#relative_resource_name). For example:
  /// "projects/{projectId}/zones/{zoneId}/machineTypes/{machineTypeId}".
  ///
  /// The `machineType` must belong to the enclosing environment's project and
  /// location. If both this field and `nodeConfig.location` are specified,
  /// this `machineType` must belong to the `nodeConfig.location`; if both are
  /// unspecified, the service will pick a zone in the Compute Engine region
  /// corresponding to the Cloud Composer location, and propagate that choice to
  /// both fields. If exactly one of this field and `nodeConfig.location` is
  /// specified, the location information from the specified field will be
  /// propagated to the unspecified field.
  ///
  /// If this field is unspecified, the `machineTypeId` defaults
  /// to "n1-standard-1".
  core.String machineType;

  /// Optional. The Compute Engine network to be used for machine
  /// communications, specified as a
  /// [relative resource
  /// name](/apis/design/resource_names#relative_resource_name). For example:
  /// "projects/{projectId}/global/networks/{networkId}".
  ///
  /// [Shared VPC](/vpc/docs/shared-vpc) is not currently supported. The
  /// network must belong to the environment's project. If unspecified, the
  /// "default" network ID in the environment's project is used.  If a
  /// [Custom Subnet Network](/vpc/docs/vpc#vpc_networks_and_subnets)
  /// is provided, `nodeConfig.subnetwork` must also be provided.
  core.String network;

  /// Optional. The set of Google API scopes to be made available on all
  /// node VMs. If `oauth_scopes` is empty, defaults to
  /// ["https://www.googleapis.com/auth/cloud-platform"]. Cannot be updated.
  core.List<core.String> oauthScopes;

  /// Optional. The Google Cloud Platform Service Account to be used by the node
  /// VMs. If a service account is not specified, the "default" Compute Engine
  /// service account is used. Cannot be updated.
  core.String serviceAccount;

  /// Optional. The Compute Engine subnetwork to be used for machine
  /// communications, specified as a
  /// [relative resource
  /// name](/apis/design/resource_names#relative_resource_name). For example:
  /// "projects/{projectId}/regions/{regionId}/subnetworks/{subnetworkId}"
  ///
  /// If a subnetwork is provided, `nodeConfig.network` must also be provided,
  /// and the subnetwork must belong to the enclosing environment's project and
  /// location.
  core.String subnetwork;

  /// Optional. The list of instance tags applied to all node VMs. Tags are used
  /// to identify valid sources or targets for network firewalls. Each tag
  /// within
  /// the list must comply with [RFC1035](https://www.ietf.org/rfc/rfc1035.txt).
  /// Cannot be updated.
  core.List<core.String> tags;

  NodeConfig();

  NodeConfig.fromJson(core.Map _json) {
    if (_json.containsKey("diskSizeGb")) {
      diskSizeGb = _json["diskSizeGb"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("machineType")) {
      machineType = _json["machineType"];
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("oauthScopes")) {
      oauthScopes = (_json["oauthScopes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("serviceAccount")) {
      serviceAccount = _json["serviceAccount"];
    }
    if (_json.containsKey("subnetwork")) {
      subnetwork = _json["subnetwork"];
    }
    if (_json.containsKey("tags")) {
      tags = (_json["tags"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (diskSizeGb != null) {
      _json["diskSizeGb"] = diskSizeGb;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (machineType != null) {
      _json["machineType"] = machineType;
    }
    if (network != null) {
      _json["network"] = network;
    }
    if (oauthScopes != null) {
      _json["oauthScopes"] = oauthScopes;
    }
    if (serviceAccount != null) {
      _json["serviceAccount"] = serviceAccount;
    }
    if (subnetwork != null) {
      _json["subnetwork"] = subnetwork;
    }
    if (tags != null) {
      _json["tags"] = tags;
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

/// Metadata describing an operation.
class OperationMetadata {
  /// Output only.
  /// The time the operation was submitted to the server.
  core.String createTime;

  /// Output only.
  /// The time when the operation terminated, regardless of its success.
  /// This field is unset if the operation is still ongoing.
  core.String endTime;

  /// Output only.
  /// The type of operation being performed.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unused.
  /// - "CREATE" : A resource creation operation.
  /// - "DELETE" : A resource deletion operation.
  /// - "UPDATE" : A resource update operation.
  core.String operationType;

  /// Output only.
  /// The resource being operated on, as a [relative resource name](
  /// /apis/design/resource_names#relative_resource_name).
  core.String resource;

  /// Output only.
  /// The UUID of the resource being operated on.
  core.String resourceUuid;

  /// Output only.
  /// The current operation state.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unused.
  /// - "PENDING" : The operation has been created but is not yet started.
  /// - "RUNNING" : The operation is underway.
  /// - "SUCCEEDED" : The operation completed successfully.
  /// - "SUCCESSFUL"
  /// - "FAILED" : The operation is no longer running but did not succeed.
  core.String state;

  OperationMetadata();

  OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("operationType")) {
      operationType = _json["operationType"];
    }
    if (_json.containsKey("resource")) {
      resource = _json["resource"];
    }
    if (_json.containsKey("resourceUuid")) {
      resourceUuid = _json["resourceUuid"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (operationType != null) {
      _json["operationType"] = operationType;
    }
    if (resource != null) {
      _json["resource"] = resource;
    }
    if (resourceUuid != null) {
      _json["resourceUuid"] = resourceUuid;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// Specifies the selection and configuration of software inside the
/// environment.
class SoftwareConfig {
  /// Optional. Apache Airflow configuration properties to override.
  ///
  /// Property keys contain the section and property names, separated by a
  /// hyphen, for example "core-dags_are_paused_at_creation". Section names must
  /// not contain hyphens ("-"), opening square brackets ("["),  or closing
  /// square brackets ("]"). The property name must not be empty and must not
  /// contain an equals sign ("=") or semicolon (";"). Section and property
  /// names
  /// must not contain a period ("."). Apache Airflow configuration property
  /// names must be written in
  /// [snake_case](https://en.wikipedia.org/wiki/Snake_case). Property values
  /// can
  /// contain any character, and can be written in any lower/upper case format.
  ///
  /// Certain Apache Airflow configuration property values are
  /// [blacklisted](/composer/docs/how-to/managing/setting-airflow-configurations#airflow_configuration_blacklists),
  /// and cannot be overridden.
  core.Map<core.String, core.String> airflowConfigOverrides;

  /// Optional. Additional environment variables to provide to the Apache
  /// Airflow
  /// scheduler, worker, and webserver processes.
  ///
  /// Environment variable names must match the regular expression
  /// `a-zA-Z_*`. They cannot specify Apache Airflow
  /// software configuration overrides (they cannot match the regular expression
  /// `AIRFLOW__[A-Z0-9_]+__[A-Z0-9_]+`), and they cannot match any of the
  /// following reserved names:
  ///
  /// * `AIRFLOW_HOME`
  /// * `C_FORCE_ROOT`
  /// * `CONTAINER_NAME`
  /// * `DAGS_FOLDER`
  /// * `GCP_PROJECT`
  /// * `GCS_BUCKET`
  /// * `GKE_CLUSTER_NAME`
  /// * `SQL_DATABASE`
  /// * `SQL_INSTANCE`
  /// * `SQL_PASSWORD`
  /// * `SQL_PROJECT`
  /// * `SQL_REGION`
  /// * `SQL_USER`
  core.Map<core.String, core.String> envVariables;

  /// The version of the software running in the environment.
  /// This encapsulates both the version of Cloud Composer functionality and the
  /// version of Apache Airflow. It must match the regular expression
  /// `composer-([0-9]+\.[0-9]+\.[0-9]+|latest)-airflow-[0-9]+\.[0-9]+(\.[0-9]+.*)?`.
  /// When used as input, the server also checks if the provided version is
  /// supported and denies the request for an unsupported version.
  ///
  /// The Cloud Composer portion of the version is a
  /// [semantic version](https://semver.org) or `latest`. When the patch version
  /// is omitted, the current Cloud Composer patch version is selected.
  /// When `latest` is provided instead of an explicit version number,
  /// the server replaces `latest` with the current Cloud Composer version
  /// and stores that version number in the same field.
  ///
  /// The portion of the image version that follows <em>airflow-</em> is an
  /// official Apache Airflow repository
  /// [release name](https://github.com/apache/incubator-airflow/releases).
  ///
  /// See also [Version
  /// List](/composer/docs/concepts/versioning/composer-versions).
  core.String imageVersion;

  /// Optional. Custom Python Package Index (PyPI) packages to be installed in
  /// the environment.
  ///
  /// Keys refer to the lowercase package name such as "numpy"
  /// and values are the lowercase extras and version specifier such as
  /// "==1.12.0", "[devel,gcp_api]", or "[devel]>=1.8.2, <1.9.2". To specify a
  /// package without pinning it to a version specifier, use the empty string as
  /// the value.
  core.Map<core.String, core.String> pypiPackages;

  /// Optional. The major version of Python used to run the Apache Airflow
  /// scheduler, worker, and webserver processes.
  ///
  /// Can be set to '2' or '3'. If not specified, the default is '2'. Cannot be
  /// updated.
  core.String pythonVersion;

  SoftwareConfig();

  SoftwareConfig.fromJson(core.Map _json) {
    if (_json.containsKey("airflowConfigOverrides")) {
      airflowConfigOverrides = (_json["airflowConfigOverrides"] as core.Map)
          .cast<core.String, core.String>();
    }
    if (_json.containsKey("envVariables")) {
      envVariables =
          (_json["envVariables"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("imageVersion")) {
      imageVersion = _json["imageVersion"];
    }
    if (_json.containsKey("pypiPackages")) {
      pypiPackages =
          (_json["pypiPackages"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("pythonVersion")) {
      pythonVersion = _json["pythonVersion"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (airflowConfigOverrides != null) {
      _json["airflowConfigOverrides"] = airflowConfigOverrides;
    }
    if (envVariables != null) {
      _json["envVariables"] = envVariables;
    }
    if (imageVersion != null) {
      _json["imageVersion"] = imageVersion;
    }
    if (pypiPackages != null) {
      _json["pypiPackages"] = pypiPackages;
    }
    if (pythonVersion != null) {
      _json["pythonVersion"] = pythonVersion;
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
