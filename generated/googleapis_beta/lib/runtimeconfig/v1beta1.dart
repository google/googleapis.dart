// This is a generated file (see the discoveryapis_generator project).

library googleapis_beta.runtimeconfig.v1beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:crypto/crypto.dart' as crypto;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client runtimeconfig/v1beta1';

/**
 * Provides capabilities for dynamic configuration and coordination for
 * applications running on Google Cloud Platform.
 */
class RuntimeconfigApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

  /** Manage your Google Cloud Platform services' runtime configuration */
  static const CloudruntimeconfigScope = "https://www.googleapis.com/auth/cloudruntimeconfig";


  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  RuntimeconfigApi(http.Client client, {core.String rootUrl: "https://runtimeconfig.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsConfigsResourceApi get configs => new ProjectsConfigsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class ProjectsConfigsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsConfigsOperationsResourceApi get operations => new ProjectsConfigsOperationsResourceApi(_requester);
  ProjectsConfigsVariablesResourceApi get variables => new ProjectsConfigsVariablesResourceApi(_requester);
  ProjectsConfigsWaitersResourceApi get waiters => new ProjectsConfigsWaitersResourceApi(_requester);

  ProjectsConfigsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * CreateConfig creates a new config resource object.
   * The configuration name must be unique within project.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [parent] - The cloud project to which configuration belongs.
   * Required. Must be a valid GCP project.
   * Value must have pattern "^projects/[^/]*$".
   *
   * Completes with a [RuntimeConfig].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<RuntimeConfig> create(RuntimeConfig request, core.String parent) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/configs';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RuntimeConfig.fromJson(data));
  }

  /**
   * Deletes the config object.
   *
   * Request parameters:
   *
   * [name] - The configuration resource object to delete.
   * Required. Must be a valid GCP project.
   * Value must have pattern "^projects/[^/] * / configs/[^/]*$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets the config resource object.
   *
   * Request parameters:
   *
   * [name] - The name of the RuntimeConfig resource object to retrieve.
   * Value must have pattern "^projects/[^/] * / configs/[^/]*$".
   *
   * Completes with a [RuntimeConfig].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<RuntimeConfig> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RuntimeConfig.fromJson(data));
  }

  /**
   * Lists all the config objects within project.
   *
   * Request parameters:
   *
   * [parent] - The cloud project, whose configuration resources we want to
   * list.
   * Required. Must be a valid GCP project.
   * Value must have pattern "^projects/[^/]*$".
   *
   * [pageSize] - List pagination support.
   * The size of the page to return. We may return fewer elements.
   *
   * [pageToken] - The token for pagination.
   *
   * Completes with a [ListConfigsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListConfigsResponse> list(core.String parent, {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/configs';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListConfigsResponse.fromJson(data));
  }

  /**
   * Updates the config resource object.
   * RuntimeConfig object must already exist.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The name of the config resource to update.
   * Required. Must be a valid config resource.
   * Value must have pattern "^projects/[^/] * / configs/[^/]*$".
   *
   * Completes with a [RuntimeConfig].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<RuntimeConfig> update(RuntimeConfig request, core.String name) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RuntimeConfig.fromJson(data));
  }

}


class ProjectsConfigsOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsConfigsOperationsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Gets the latest state of a long-running operation.  Clients can use this
   * method to poll the operation result at intervals as recommended by the API
   * service.
   *
   * Request parameters:
   *
   * [name] - The name of the operation resource.
   * Value must have pattern "^projects/[^/] * / configs/[^/] * /
   * operations/.*$".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


class ProjectsConfigsVariablesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsConfigsVariablesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a variable within the given configuration.
   * Create variable will create all required intermediate path elements.
   * It is a FAILED_PRECONDITION error to create a variable with a name that is
   * a prefix of an existing variable name, or that has an existing variable
   * name as a prefix.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [parent] - The configuration parent, that will own the variable.
   * Required, must a valid configuration name within project_id.
   * Value must have pattern "^projects/[^/] * / configs/[^/]*$".
   *
   * Completes with a [Variable].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/variables';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Variable.fromJson(data));
  }

  /**
   * Deletes variable or variables.
   * If name denotes a variable, that variable is deleted. If name is a prefix
   * and recursive is true, then all variables with that prefix are deleted,
   * it's a FAILED_PRECONDITION to delete a prefix without recursive being true.
   *
   * Request parameters:
   *
   * [name] - The name of the variable to delete.
   * Value must have pattern "^projects/[^/] * / configs/[^/] * /
   * variables/.*$".
   *
   * [recursive] - If recursive is false and name is a prefix of other
   * variables, then
   * the request will fail.
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String name, {core.bool recursive}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (recursive != null) {
      _queryParams["recursive"] = ["${recursive}"];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets the variable resource object.
   *
   * Request parameters:
   *
   * [name] - What variable to return.
   * Value must have pattern "^projects/[^/] * / configs/[^/] * /
   * variables/.*$".
   *
   * Completes with a [Variable].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Variable> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Variable.fromJson(data));
  }

  /**
   * Lists variables within given RuntimeConfig object, matching optionally
   * provided filter.
   * List contains only variable metadata, but not values.
   *
   * Request parameters:
   *
   * [parent] - Which RuntimeConfig object to list for variables.
   * Value must have pattern "^projects/[^/] * / configs/[^/]*$".
   *
   * [pageSize] - List pagination support.
   * The size of the page to return. We may return fewer elements.
   *
   * [filter] - List only variables matching filter prefix exactly.
   * e.g. `projects/{project_id}/config/{config_id}/variables/{variable/id}`.
   *
   * [pageToken] - The token for pagination.
   *
   * Completes with a [ListVariablesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListVariablesResponse> list(core.String parent, {core.int pageSize, core.String filter, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/variables';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListVariablesResponse.fromJson(data));
  }

  /**
   * Updates an existing variable with a new value.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The name of the variable to update.
   * In the format of:
   * "projects/{project_id}/configs/{config_id}/variables/{variable_id}"
   * Value must have pattern "^projects/[^/] * / configs/[^/] * /
   * variables/.*$".
   *
   * Completes with a [Variable].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Variable> update(Variable request, core.String name) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Variable.fromJson(data));
  }

  /**
   * WatchVariable watches for a variable to change and then returns the new
   * value or times out.
   * If variable is deleted while being watched, VariableState will be DELETED
   * and the Value will contain the last known value.
   * If the operation deadline is set to a larger value than internal timeout
   * existing, current variable value will be returned and Variable state will
   * be VARIABLE_STATE_UNSPECIFIED.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The name of the variable to retrieve.
   * Value must have pattern "^projects/[^/] * / configs/[^/] * /
   * variables/.*$".
   *
   * Completes with a [Variable].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Variable> watch(WatchVariableRequest request, core.String name) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':watch';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Variable.fromJson(data));
  }

}


class ProjectsConfigsWaitersResourceApi {
  final commons.ApiRequester _requester;

  ProjectsConfigsWaitersResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a Waiter resource. This operation returns a long-running Operation
   * resource which can be polled for completion. However, a Waiter with the
   * given name will exist (and can be retrieved) prior to the resultant
   * Operation completing. If the resultant Operation indicates a failure, the
   * failed Waiter resource will still exist and must be deleted prior to
   * subsequent creation attempts.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [parent] - The fully-qualified name of the configuration that will own the
   * waiter.
   * Required. Must be a valid configuration name.
   * Value must have pattern "^projects/[^/] * / configs/[^/]*$".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> create(Waiter request, core.String parent) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/waiters';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Deletes the Waiter with the specified name.
   *
   * Request parameters:
   *
   * [name] - The Waiter resource to delete.
   * Value must have pattern "^projects/[^/] * / configs/[^/] * /
   * waiters/[^/]*$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets the Waiter resource with the specified name.
   *
   * Request parameters:
   *
   * [name] - The fully-qualified name of the Waiter resource object to
   * retrieve.
   * Value must have pattern "^projects/[^/] * / configs/[^/] * /
   * waiters/[^/]*$".
   *
   * Completes with a [Waiter].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Waiter> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Waiter.fromJson(data));
  }

  /**
   * List Waiters within the given RuntimeConfig resource.
   *
   * Request parameters:
   *
   * [parent] - The fully-qualified name of the configuration to list.
   * Required. Must be a valid configuration name.
   * Value must have pattern "^projects/[^/] * / configs/[^/]*$".
   *
   * [pageSize] - List pagination support.
   * The size of the page to return. We may return fewer elements.
   *
   * [pageToken] - The token for pagination.
   *
   * Completes with a [ListWaitersResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListWaitersResponse> list(core.String parent, {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/waiters';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListWaitersResponse.fromJson(data));
  }

}



/**
 * The Cardinality condition is met when the count of `Variable` resources
 * under the specified path prefix reaches the specified number.
 * For example, take the following variables in a RuntimeConfig object:
 *   /foo/variable1 = "value1"
 *   /foo/variable2 = "value2"
 *   /bar/variable3 = "value3"
 *
 * These variables would satisfy a Cardinality condition with `path` set to
 * "/foo" and `number` set to 2, but would not satisify the same condition
 * with `number` set to 3.
 */
class Cardinality {
  /**
   * The number of decendents of `path` that must exist before this condition
   * is met. Optional; defaults to 1 if not specified.
   */
  core.int number;
  /** The root of the variable subtree to monitor. Required. */
  core.String path;

  Cardinality();

  Cardinality.fromJson(core.Map _json) {
    if (_json.containsKey("number")) {
      number = _json["number"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (number != null) {
      _json["number"] = number;
    }
    if (path != null) {
      _json["path"] = path;
    }
    return _json;
  }
}

/**
 * A generic empty message that you can re-use to avoid defining duplicated
 * empty messages in your APIs. A typical example is to use it as the request
 * or the response type of an API method. For instance:
 *
 *     service Foo {
 *       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
 *     }
 *
 * The JSON representation for `Empty` is empty JSON object `{}`.
 */
class Empty {

  Empty();

  Empty.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/**
 * A condition that a Waiter resource is waiting for. The set of possible
 * conditions may expand over time.
 */
class EndCondition {
  /** The Cardinality condition type configuration. */
  Cardinality cardinality;

  EndCondition();

  EndCondition.fromJson(core.Map _json) {
    if (_json.containsKey("cardinality")) {
      cardinality = new Cardinality.fromJson(_json["cardinality"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (cardinality != null) {
      _json["cardinality"] = (cardinality).toJson();
    }
    return _json;
  }
}

/**
 * Response for the `ListConfigs()` method.
 * Order of returned configuration objects is arbitrary.
 */
class ListConfigsResponse {
  /** Found configurations in the project. */
  core.List<RuntimeConfig> configs;
  /** Pagination support. */
  core.String nextPageToken;

  ListConfigsResponse();

  ListConfigsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("configs")) {
      configs = _json["configs"].map((value) => new RuntimeConfig.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (configs != null) {
      _json["configs"] = configs.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/**
 * Response for the `ListVariables()` method.
 * Order of returned variable objects is arbitrary.
 */
class ListVariablesResponse {
  /** Pagination support. */
  core.String nextPageToken;
  /** Matched variables and their values. */
  core.List<Variable> variables;

  ListVariablesResponse();

  ListVariablesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("variables")) {
      variables = _json["variables"].map((value) => new Variable.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (variables != null) {
      _json["variables"] = variables.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * Response for the `ListWaiters()` method.
 * Order of returned waiter objects is arbitrary.
 */
class ListWaitersResponse {
  /** Pagination support. */
  core.String nextPageToken;
  /** Found waiters in the project. */
  core.List<Waiter> waiters;

  ListWaitersResponse();

  ListWaitersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("waiters")) {
      waiters = _json["waiters"].map((value) => new Waiter.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (waiters != null) {
      _json["waiters"] = waiters.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * This resource represents a long-running operation that is the result of a
 * network API call.
 */
class Operation {
  /**
   * If the value is `false`, it means the operation is still in progress.
   * If true, the operation is completed, and either `error` or `response` is
   * available.
   */
  core.bool done;
  /** The error result of the operation in case of failure. */
  Status error;
  /**
   * Service-specific metadata associated with the operation.  It typically
   * contains progress information and common metadata such as create time.
   * Some services might not provide such metadata.  Any method that returns a
   * long-running operation should document the metadata type, if any.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> metadata;
  /**
   * The server-assigned name, which is only unique within the same service that
   * originally returns it. If you use the default HTTP mapping, the
   * `name` should have the format of `operations/some/unique/name`.
   */
  core.String name;
  /**
   * The normal response of the operation in case of success.  If the original
   * method returns no data on success, such as `Delete`, the response is
   * `google.protobuf.Empty`.  If the original method is standard
   * `Get`/`Create`/`Update`, the response should be the resource.  For other
   * methods, the response should have the type `XxxResponse`, where `Xxx`
   * is the original method name.  For example, if the original method name
   * is `TakeSnapshot()`, the inferred response type is
   * `TakeSnapshotResponse`.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
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
      metadata = _json["metadata"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response = _json["response"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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

/**
 * RuntimeConfig is the primary resource in the Configuration service.
 * It consists of metadata and a hierarchy of variables.
 */
class RuntimeConfig {
  /**
   * Description of the configuration object.
   * `len(description)` must be less than 256.
   */
  core.String description;
  /**
   * The resource name of a runtime config.
   * It has the format of "projects/{project_id}/configs/{config_id}",
   * where `project_id` is a valid Google cloud project ID, and the
   * `config_id` must match RFC 1035 segment specification, and
   * `len(config_id)` must be less than 64 bytes.
   * The name is assigned by the client, but will be validated on the server
   * side to adhere to the format.
   * Name is immutable and cannot be changed.
   */
  core.String name;

  RuntimeConfig();

  RuntimeConfig.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/**
 * The `Status` type defines a logical error model that is suitable for
 * different
 * programming environments, including REST APIs and RPC APIs. It is used by
 * [gRPC](https://github.com/grpc). The error model is designed to be:
 *
 * - Simple to use and understand for most users
 * - Flexible enough to meet unexpected needs
 *
 * # Overview
 *
 * The `Status` message contains three pieces of data: error code, error
 * message,
 * and error details. The error code should be an enum value of
 * google.rpc.Code, but it may accept additional error codes if needed.  The
 * error message should be a developer-facing English message that helps
 * developers *understand* and *resolve* the error. If a localized user-facing
 * error message is needed, put the localized message in the error details or
 * localize it in the client. The optional error details may contain arbitrary
 * information about the error. There is a predefined set of error detail types
 * in the package `google.rpc` which can be used for common error conditions.
 *
 * # Language mapping
 *
 * The `Status` message is the logical representation of the error model, but it
 * is not necessarily the actual wire format. When the `Status` message is
 * exposed in different client libraries and different wire protocols, it can be
 * mapped differently. For example, it will likely be mapped to some exceptions
 * in Java, but more likely mapped to some error codes in C.
 *
 * # Other uses
 *
 * The error model and the `Status` message can be used in a variety of
 * environments, either with or without APIs, to provide a
 * consistent developer experience across different environments.
 *
 * Example uses of this error model include:
 *
 * - Partial errors. If a service needs to return partial errors to the client,
 *     it may embed the `Status` in the normal response to indicate the partial
 *     errors.
 *
 * - Workflow errors. A typical workflow has multiple steps. Each step may
 *     have a `Status` message for error reporting purpose.
 *
 * - Batch operations. If a client uses batch request and batch response, the
 *     `Status` message should be used directly inside batch response, one for
 *     each error sub-response.
 *
 * - Asynchronous operations. If an API call embeds asynchronous operation
 *     results in its response, the status of those operations should be
 *     represented directly using the `Status` message.
 *
 * - Logging. If some API errors are stored in logs, the message `Status` could
 * be used directly after any stripping needed for security/privacy reasons.
 */
class Status {
  /** The status code, which should be an enum value of google.rpc.Code. */
  core.int code;
  /**
   * A list of messages that carry the error details.  There will be a
   * common set of message types for APIs to use.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.List<core.Map<core.String, core.Object>> details;
  /**
   * A developer-facing error message, which should be in English. Any
   * user-facing error message should be localized and sent in the
   * google.rpc.Status.details field, or localized by the client.
   */
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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

/**
 * Variable message describes a single variable within a Configuration object.
 * name denotes the hierarchical variable name, e.g.
 * ports/serving_port within flags configuration object.
 * Value is an opaque string and only leaf variables can have values.
 */
class Variable {
  /**
   * Name of the variable resource.
   * It has format of
   * "projects/{project_id}/configs/{config_id}/variables/{variable_id}",
   * Where `project_id` must be a valid Google Cloud project ID, `config_id`
   * must be a valid RuntimeConfig object and `variable_id` follows Unix
   * file system file path naming.
   * `variable_id` can contain ASCII letters, numbers, slashes and dashes.
   * Slashes are used as path element separators and are not part of the
   * `variable_id` itself, so `variable_id` must contain at least one non-slash
   * character. Multiple slashes are coalesced into single slash character.
   * Each path segment should follow RFC 1035 segment specification.
   * `len(variable_id)` must be less than 256 bytes.
   * The name is assigned by the client, but will be validated on the server
   * side to adhere to the format.
   * Name is immutable and cannot be changed.
   */
  core.String name;
  /**
   * [Ouput only] The current state of the variable.
   * State denotes the outcome of the Watch call and is unset by the Get/List
   * calls.
   * Possible string values are:
   * - "VARIABLE_STATE_UNSPECIFIED" : Default variable state.
   * - "UPDATED" : Variable had been updated, while watch was executing.
   * - "DELETED" : Variable had been deleted, while watch was executing.
   */
  core.String state;
  /** [Output Only] The time of the last variable update. */
  core.String updateTime;
  /**
   * `len(value)` must be less than 4096 bytes. Empty values are also accepted.
   * value must be Base64 encoded.
   */
  core.String value;
  core.List<core.int> get valueAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(value);
  }

  void set valueAsBytes(core.List<core.int> _bytes) {
    value = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }

  Variable();

  Variable.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/**
 * A Waiter resource waits for some condition within a RuntimeConfig resource
 * to be met. For example: each node in a distributed system startup process
 * writes a value to a Variable resource indicating its readiness. A Waiter
 * configured with the proper `success` condition can be used to wait until
 * some number of nodes have checked in.
 * Once created, a Waiter resource is immutable.
 */
class Waiter {
  /**
   * The instant at which this Waiter was created. Adding the value of `timeout`
   * to this instant yields the timeout deadline for this Waiter. Output only.
   */
  core.String createTime;
  /**
   * If the value is `false`, it means the Waiter is still waiting for one of
   * its conditions to be met.
   * If true, the Waiter has finished. If the Waiter finished due to a timeout
   * or failure, `error` will be set. Output only.
   */
  core.bool done;
  /**
   * If the Waiter ended due to a failure or timeout, this value will be set.
   * Output only.
   */
  Status error;
  /**
   * The failure condition. If this condition is met, `done` will be set to
   * `true` and the `error` code will be set to ABORTED. The failure condition
   * takes precedence over the success condition. If both conditions are met, a
   * failure will be indicated. This value is optional; if no failure condition
   * is set, the only failure scenario will be a timeout. Optional.
   */
  EndCondition failure;
  /**
   * Name of the variable resource.
   * It has format of
   * "projects/{project_id}/configs/{config_id}/waiters/{waiter_id}",
   * Where `project_id` must be a valid Google Cloud project ID, `config_id`
   * must be a valid RuntimeConfig object and the `waiter_id` must match
   * RFC 1035 segment specification, and `len(waiter_id)` must be less than
   * 64 bytes.
   * The name is assigned by the client, but will be validated on the server
   * side to adhere to the format.
   * Name is immutable and cannot be changed. Required.
   */
  core.String name;
  /**
   * The success condition. If this condition is met, `done` will be set to
   * `true` and the `error` value will remain unset. The failure condition
   * takes precedence over the success condition. If both conditions are met, a
   * failure will be indicated. Required.
   */
  EndCondition success;
  /**
   * The timeout, beginning from the instant that CreateWaiter is called. If
   * this timeout elapses prior to the success or failure conditions being met,
   * the Waiter will fail and the `error` code will be set to DEADLINE_EXCEEDED.
   * Required.
   */
  core.String timeout;

  Waiter();

  Waiter.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("failure")) {
      failure = new EndCondition.fromJson(_json["failure"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("success")) {
      success = new EndCondition.fromJson(_json["success"]);
    }
    if (_json.containsKey("timeout")) {
      timeout = _json["timeout"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (failure != null) {
      _json["failure"] = (failure).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (success != null) {
      _json["success"] = (success).toJson();
    }
    if (timeout != null) {
      _json["timeout"] = timeout;
    }
    return _json;
  }
}

/** Request for the `WatchVariable()` method. */
class WatchVariableRequest {
  /**
   * If backend has a variable that has a newer value than this timestamp, then
   * request will return immediately with current value.
   * If not specified or variable has an older timestamp, will wait for the new
   * value.
   */
  core.String newerThan;

  WatchVariableRequest();

  WatchVariableRequest.fromJson(core.Map _json) {
    if (_json.containsKey("newerThan")) {
      newerThan = _json["newerThan"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (newerThan != null) {
      _json["newerThan"] = newerThan;
    }
    return _json;
  }
}
