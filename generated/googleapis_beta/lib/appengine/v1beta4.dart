// This is a generated file (see the discoveryapis_generator project).

library googleapis_beta.appengine.v1beta4;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client appengine/v1beta4';

/**
 * The Google App Engine Admin API enables developers to provision and manage
 * their App Engine applications.
 */
class AppengineApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";


  final commons.ApiRequester _requester;

  AppsResourceApi get apps => new AppsResourceApi(_requester);

  AppengineApi(http.Client client, {core.String rootUrl: "https://appengine.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class AppsResourceApi {
  final commons.ApiRequester _requester;

  AppsModulesResourceApi get modules => new AppsModulesResourceApi(_requester);
  AppsOperationsResourceApi get operations => new AppsOperationsResourceApi(_requester);

  AppsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Gets information about an application.
   *
   * Request parameters:
   *
   * [appsId] - Part of `name`. Name of the application to get. For example:
   * "apps/myapp".
   *
   * [ensureResourcesExist] - Certain resources associated with an application
   * are created on-demand. Controls whether these resources should be created
   * when performing the `GET` operation. If specified and any resources cloud
   * not be created, the request will fail with an error code.
   *
   * Completes with a [Application].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Application> get(core.String appsId, {core.bool ensureResourcesExist}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (appsId == null) {
      throw new core.ArgumentError("Parameter appsId is required.");
    }
    if (ensureResourcesExist != null) {
      _queryParams["ensureResourcesExist"] = ["${ensureResourcesExist}"];
    }

    _url = 'v1beta4/apps/' + commons.Escaper.ecapeVariable('$appsId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Application.fromJson(data));
  }

}


class AppsModulesResourceApi {
  final commons.ApiRequester _requester;

  AppsModulesVersionsResourceApi get versions => new AppsModulesVersionsResourceApi(_requester);

  AppsModulesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes a module and all enclosed versions.
   *
   * Request parameters:
   *
   * [appsId] - Part of `name`. Name of the resource requested. For example:
   * "apps/myapp/modules/default".
   *
   * [modulesId] - Part of `name`. See documentation of `appsId`.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String appsId, core.String modulesId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (appsId == null) {
      throw new core.ArgumentError("Parameter appsId is required.");
    }
    if (modulesId == null) {
      throw new core.ArgumentError("Parameter modulesId is required.");
    }

    _url = 'v1beta4/apps/' + commons.Escaper.ecapeVariable('$appsId') + '/modules/' + commons.Escaper.ecapeVariable('$modulesId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Gets the current configuration of the module.
   *
   * Request parameters:
   *
   * [appsId] - Part of `name`. Name of the resource requested. For example:
   * "apps/myapp/modules/default".
   *
   * [modulesId] - Part of `name`. See documentation of `appsId`.
   *
   * Completes with a [Module].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Module> get(core.String appsId, core.String modulesId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (appsId == null) {
      throw new core.ArgumentError("Parameter appsId is required.");
    }
    if (modulesId == null) {
      throw new core.ArgumentError("Parameter modulesId is required.");
    }

    _url = 'v1beta4/apps/' + commons.Escaper.ecapeVariable('$appsId') + '/modules/' + commons.Escaper.ecapeVariable('$modulesId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Module.fromJson(data));
  }

  /**
   * Lists all the modules in the application.
   *
   * Request parameters:
   *
   * [appsId] - Part of `name`. Name of the resource requested. For example:
   * "apps/myapp".
   *
   * [pageSize] - Maximum results to return per page.
   *
   * [pageToken] - Continuation token for fetching the next page of results.
   *
   * Completes with a [ListModulesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListModulesResponse> list(core.String appsId, {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (appsId == null) {
      throw new core.ArgumentError("Parameter appsId is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1beta4/apps/' + commons.Escaper.ecapeVariable('$appsId') + '/modules';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListModulesResponse.fromJson(data));
  }

  /**
   * Updates the configuration of the specified module.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [appsId] - Part of `name`. Name of the resource to update. For example:
   * "apps/myapp/modules/default".
   *
   * [modulesId] - Part of `name`. See documentation of `appsId`.
   *
   * [mask] - Standard field mask for the set of fields to be updated.
   *
   * [migrateTraffic] - Whether to use Traffic Migration to shift traffic
   * gradually. Traffic can only be migrated from a single version to another
   * single version.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> patch(Module request, core.String appsId, core.String modulesId, {core.String mask, core.bool migrateTraffic}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (appsId == null) {
      throw new core.ArgumentError("Parameter appsId is required.");
    }
    if (modulesId == null) {
      throw new core.ArgumentError("Parameter modulesId is required.");
    }
    if (mask != null) {
      _queryParams["mask"] = [mask];
    }
    if (migrateTraffic != null) {
      _queryParams["migrateTraffic"] = ["${migrateTraffic}"];
    }

    _url = 'v1beta4/apps/' + commons.Escaper.ecapeVariable('$appsId') + '/modules/' + commons.Escaper.ecapeVariable('$modulesId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


class AppsModulesVersionsResourceApi {
  final commons.ApiRequester _requester;

  AppsModulesVersionsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deploys new code and resource files to a version.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [appsId] - Part of `name`. Name of the resource to update. For example:
   * "apps/myapp/modules/default".
   *
   * [modulesId] - Part of `name`. See documentation of `appsId`.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> create(Version request, core.String appsId, core.String modulesId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (appsId == null) {
      throw new core.ArgumentError("Parameter appsId is required.");
    }
    if (modulesId == null) {
      throw new core.ArgumentError("Parameter modulesId is required.");
    }

    _url = 'v1beta4/apps/' + commons.Escaper.ecapeVariable('$appsId') + '/modules/' + commons.Escaper.ecapeVariable('$modulesId') + '/versions';

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
   * Deletes an existing version.
   *
   * Request parameters:
   *
   * [appsId] - Part of `name`. Name of the resource requested. For example:
   * "apps/myapp/modules/default/versions/v1".
   *
   * [modulesId] - Part of `name`. See documentation of `appsId`.
   *
   * [versionsId] - Part of `name`. See documentation of `appsId`.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String appsId, core.String modulesId, core.String versionsId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (appsId == null) {
      throw new core.ArgumentError("Parameter appsId is required.");
    }
    if (modulesId == null) {
      throw new core.ArgumentError("Parameter modulesId is required.");
    }
    if (versionsId == null) {
      throw new core.ArgumentError("Parameter versionsId is required.");
    }

    _url = 'v1beta4/apps/' + commons.Escaper.ecapeVariable('$appsId') + '/modules/' + commons.Escaper.ecapeVariable('$modulesId') + '/versions/' + commons.Escaper.ecapeVariable('$versionsId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Gets application deployment information.
   *
   * Request parameters:
   *
   * [appsId] - Part of `name`. Name of the resource requested. For example:
   * "apps/myapp/modules/default/versions/v1".
   *
   * [modulesId] - Part of `name`. See documentation of `appsId`.
   *
   * [versionsId] - Part of `name`. See documentation of `appsId`.
   *
   * [view] - Controls the set of fields returned in the `Get` response.
   * Possible string values are:
   * - "BASIC" : A BASIC.
   * - "FULL" : A FULL.
   *
   * Completes with a [Version].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Version> get(core.String appsId, core.String modulesId, core.String versionsId, {core.String view}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (appsId == null) {
      throw new core.ArgumentError("Parameter appsId is required.");
    }
    if (modulesId == null) {
      throw new core.ArgumentError("Parameter modulesId is required.");
    }
    if (versionsId == null) {
      throw new core.ArgumentError("Parameter versionsId is required.");
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }

    _url = 'v1beta4/apps/' + commons.Escaper.ecapeVariable('$appsId') + '/modules/' + commons.Escaper.ecapeVariable('$modulesId') + '/versions/' + commons.Escaper.ecapeVariable('$versionsId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Version.fromJson(data));
  }

  /**
   * Lists the versions of a module.
   *
   * Request parameters:
   *
   * [appsId] - Part of `name`. Name of the resource requested. For example:
   * "apps/myapp/modules/default".
   *
   * [modulesId] - Part of `name`. See documentation of `appsId`.
   *
   * [view] - Controls the set of fields returned in the `List` response.
   * Possible string values are:
   * - "BASIC" : A BASIC.
   * - "FULL" : A FULL.
   *
   * [pageSize] - Maximum results to return per page.
   *
   * [pageToken] - Continuation token for fetching the next page of results.
   *
   * Completes with a [ListVersionsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListVersionsResponse> list(core.String appsId, core.String modulesId, {core.String view, core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (appsId == null) {
      throw new core.ArgumentError("Parameter appsId is required.");
    }
    if (modulesId == null) {
      throw new core.ArgumentError("Parameter modulesId is required.");
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1beta4/apps/' + commons.Escaper.ecapeVariable('$appsId') + '/modules/' + commons.Escaper.ecapeVariable('$modulesId') + '/versions';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListVersionsResponse.fromJson(data));
  }

}


class AppsOperationsResourceApi {
  final commons.ApiRequester _requester;

  AppsOperationsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Gets the latest state of a long-running operation. Clients can use this
   * method to poll the operation result at intervals as recommended by the API
   * service.
   *
   * Request parameters:
   *
   * [appsId] - Part of `name`. The name of the operation resource.
   *
   * [operationsId] - Part of `name`. See documentation of `appsId`.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> get(core.String appsId, core.String operationsId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (appsId == null) {
      throw new core.ArgumentError("Parameter appsId is required.");
    }
    if (operationsId == null) {
      throw new core.ArgumentError("Parameter operationsId is required.");
    }

    _url = 'v1beta4/apps/' + commons.Escaper.ecapeVariable('$appsId') + '/operations/' + commons.Escaper.ecapeVariable('$operationsId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Lists operations that match the specified filter in the request. If the
   * server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the
   * `name` binding below allows API services to override the binding to use
   * different resource name schemes, such as `users / * /operations`.
   *
   * Request parameters:
   *
   * [appsId] - Part of `name`. The name of the operation collection.
   *
   * [filter] - The standard list filter.
   *
   * [pageSize] - The standard list page size.
   *
   * [pageToken] - The standard list page token.
   *
   * Completes with a [ListOperationsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListOperationsResponse> list(core.String appsId, {core.String filter, core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (appsId == null) {
      throw new core.ArgumentError("Parameter appsId is required.");
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

    _url = 'v1beta4/apps/' + commons.Escaper.ecapeVariable('$appsId') + '/operations';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOperationsResponse.fromJson(data));
  }

}



/** API Serving configuration for Cloud Endpoints. */
class ApiConfigHandler {
  /**
   * For users not logged in, how to handle access to resources with required
   * login. Defaults to "redirect".
   * Possible string values are:
   * - "AUTH_FAIL_ACTION_UNSPECIFIED" : A AUTH_FAIL_ACTION_UNSPECIFIED.
   * - "AUTH_FAIL_ACTION_REDIRECT" : A AUTH_FAIL_ACTION_REDIRECT.
   * - "AUTH_FAIL_ACTION_UNAUTHORIZED" : A AUTH_FAIL_ACTION_UNAUTHORIZED.
   */
  core.String authFailAction;
  /**
   * What level of login is required to access this resource. Default is
   * "optional".
   * Possible string values are:
   * - "LOGIN_UNSPECIFIED" : A LOGIN_UNSPECIFIED.
   * - "LOGIN_OPTIONAL" : A LOGIN_OPTIONAL.
   * - "LOGIN_ADMIN" : A LOGIN_ADMIN.
   * - "LOGIN_REQUIRED" : A LOGIN_REQUIRED.
   */
  core.String login;
  /** Specifies the path to the script from the application root directory. */
  core.String script;
  /**
   * Configures whether security (HTTPS) should be enforced for this URL.
   * Possible string values are:
   * - "SECURE_UNSPECIFIED" : A SECURE_UNSPECIFIED.
   * - "SECURE_DEFAULT" : A SECURE_DEFAULT.
   * - "SECURE_NEVER" : A SECURE_NEVER.
   * - "SECURE_OPTIONAL" : A SECURE_OPTIONAL.
   * - "SECURE_ALWAYS" : A SECURE_ALWAYS.
   */
  core.String securityLevel;
  /** URL to serve the endpoint at. */
  core.String url;

  ApiConfigHandler();

  ApiConfigHandler.fromJson(core.Map _json) {
    if (_json.containsKey("authFailAction")) {
      authFailAction = _json["authFailAction"];
    }
    if (_json.containsKey("login")) {
      login = _json["login"];
    }
    if (_json.containsKey("script")) {
      script = _json["script"];
    }
    if (_json.containsKey("securityLevel")) {
      securityLevel = _json["securityLevel"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (authFailAction != null) {
      _json["authFailAction"] = authFailAction;
    }
    if (login != null) {
      _json["login"] = login;
    }
    if (script != null) {
      _json["script"] = script;
    }
    if (securityLevel != null) {
      _json["securityLevel"] = securityLevel;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/** Use Google Cloud Endpoints to handle requests. */
class ApiEndpointHandler {
  /** Specifies the path to the script from the application root directory. */
  core.String scriptPath;

  ApiEndpointHandler();

  ApiEndpointHandler.fromJson(core.Map _json) {
    if (_json.containsKey("scriptPath")) {
      scriptPath = _json["scriptPath"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (scriptPath != null) {
      _json["scriptPath"] = scriptPath;
    }
    return _json;
  }
}

/**
 * An Application contains the top-level configuration of an App Engine
 * application.
 */
class Application {
  /**
   * A Google Cloud Storage bucket which can be used for storing files
   * associated with an application. This bucket is associated with the
   * application and can be used by the gcloud deployment commands. @OutputOnly
   */
  core.String codeBucket;
  /**
   * HTTP path dispatch rules for requests to the app that do not explicitly
   * target a module or version. The rules are order-dependent.
   */
  core.List<UrlDispatchRule> dispatchRules;
  /**
   * The relative name/path of the application. Example: "myapp". @OutputOnly
   */
  core.String id;
  /**
   * The location from which the application will be run. Choices are
   * "us-central" for United States and "europe-west" for European Union.
   * Application instances will run out of data centers in the chosen location
   * and all of the application's End User Content will be stored at rest in the
   * chosen location. The default is "us-central".
   */
  core.String location;
  /**
   * The full path to the application in the API. Example: "apps/myapp".
   * @OutputOnly
   */
  core.String name;

  Application();

  Application.fromJson(core.Map _json) {
    if (_json.containsKey("codeBucket")) {
      codeBucket = _json["codeBucket"];
    }
    if (_json.containsKey("dispatchRules")) {
      dispatchRules = _json["dispatchRules"].map((value) => new UrlDispatchRule.fromJson(value)).toList();
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (codeBucket != null) {
      _json["codeBucket"] = codeBucket;
    }
    if (dispatchRules != null) {
      _json["dispatchRules"] = dispatchRules.map((value) => (value).toJson()).toList();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/**
 * Automatic scaling is the scaling policy that App Engine has used since its
 * inception. It is based on request rate, response latencies, and other
 * application metrics.
 */
class AutomaticScaling {
  /**
   * The amount of time that the
   * [Autoscaler](https://cloud.google.com/compute/docs/autoscaler/) should wait
   * between changes to the number of virtual machines. Applies only to the VM
   * runtime.
   */
  core.String coolDownPeriod;
  /** Target scaling by CPU usage. */
  CpuUtilization cpuUtilization;
  /** Target scaling by disk usage. */
  DiskUtilization diskUtilization;
  /**
   * The number of concurrent requests an automatic scaling instance can accept
   * before the scheduler spawns a new instance. Default value is chosen based
   * on the runtime.
   */
  core.int maxConcurrentRequests;
  /**
   * The maximum number of idle instances that App Engine should maintain for
   * this version.
   */
  core.int maxIdleInstances;
  /**
   * The maximum amount of time that App Engine should allow a request to wait
   * in the pending queue before starting a new instance to handle it.
   */
  core.String maxPendingLatency;
  /**
   * Max number of instances that App Engine should start to handle requests.
   */
  core.int maxTotalInstances;
  /**
   * The minimum number of idle instances that App Engine should maintain for
   * this version. Only applies to the default version of a module, since other
   * versions are not expected to receive significant traffic.
   */
  core.int minIdleInstances;
  /**
   * The minimum amount of time that App Engine should allow a request to wait
   * in the pending queue before starting a new instance to handle it.
   */
  core.String minPendingLatency;
  /** Minimum number of instances that App Engine should maintain. */
  core.int minTotalInstances;
  /** Target scaling by network usage. */
  NetworkUtilization networkUtilization;
  /** Target scaling by request utilization. */
  RequestUtilization requestUtilization;

  AutomaticScaling();

  AutomaticScaling.fromJson(core.Map _json) {
    if (_json.containsKey("coolDownPeriod")) {
      coolDownPeriod = _json["coolDownPeriod"];
    }
    if (_json.containsKey("cpuUtilization")) {
      cpuUtilization = new CpuUtilization.fromJson(_json["cpuUtilization"]);
    }
    if (_json.containsKey("diskUtilization")) {
      diskUtilization = new DiskUtilization.fromJson(_json["diskUtilization"]);
    }
    if (_json.containsKey("maxConcurrentRequests")) {
      maxConcurrentRequests = _json["maxConcurrentRequests"];
    }
    if (_json.containsKey("maxIdleInstances")) {
      maxIdleInstances = _json["maxIdleInstances"];
    }
    if (_json.containsKey("maxPendingLatency")) {
      maxPendingLatency = _json["maxPendingLatency"];
    }
    if (_json.containsKey("maxTotalInstances")) {
      maxTotalInstances = _json["maxTotalInstances"];
    }
    if (_json.containsKey("minIdleInstances")) {
      minIdleInstances = _json["minIdleInstances"];
    }
    if (_json.containsKey("minPendingLatency")) {
      minPendingLatency = _json["minPendingLatency"];
    }
    if (_json.containsKey("minTotalInstances")) {
      minTotalInstances = _json["minTotalInstances"];
    }
    if (_json.containsKey("networkUtilization")) {
      networkUtilization = new NetworkUtilization.fromJson(_json["networkUtilization"]);
    }
    if (_json.containsKey("requestUtilization")) {
      requestUtilization = new RequestUtilization.fromJson(_json["requestUtilization"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (coolDownPeriod != null) {
      _json["coolDownPeriod"] = coolDownPeriod;
    }
    if (cpuUtilization != null) {
      _json["cpuUtilization"] = (cpuUtilization).toJson();
    }
    if (diskUtilization != null) {
      _json["diskUtilization"] = (diskUtilization).toJson();
    }
    if (maxConcurrentRequests != null) {
      _json["maxConcurrentRequests"] = maxConcurrentRequests;
    }
    if (maxIdleInstances != null) {
      _json["maxIdleInstances"] = maxIdleInstances;
    }
    if (maxPendingLatency != null) {
      _json["maxPendingLatency"] = maxPendingLatency;
    }
    if (maxTotalInstances != null) {
      _json["maxTotalInstances"] = maxTotalInstances;
    }
    if (minIdleInstances != null) {
      _json["minIdleInstances"] = minIdleInstances;
    }
    if (minPendingLatency != null) {
      _json["minPendingLatency"] = minPendingLatency;
    }
    if (minTotalInstances != null) {
      _json["minTotalInstances"] = minTotalInstances;
    }
    if (networkUtilization != null) {
      _json["networkUtilization"] = (networkUtilization).toJson();
    }
    if (requestUtilization != null) {
      _json["requestUtilization"] = (requestUtilization).toJson();
    }
    return _json;
  }
}

/**
 * A module with basic scaling will create an instance when the application
 * receives a request. The instance will be turned down when the app becomes
 * idle. Basic scaling is ideal for work that is intermittent or driven by user
 * activity.
 */
class BasicScaling {
  /**
   * The instance will be shut down this amount of time after receiving its last
   * request.
   */
  core.String idleTimeout;
  /**
   * The maximum number of instances for App Engine to create for this version.
   */
  core.int maxInstances;

  BasicScaling();

  BasicScaling.fromJson(core.Map _json) {
    if (_json.containsKey("idleTimeout")) {
      idleTimeout = _json["idleTimeout"];
    }
    if (_json.containsKey("maxInstances")) {
      maxInstances = _json["maxInstances"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (idleTimeout != null) {
      _json["idleTimeout"] = idleTimeout;
    }
    if (maxInstances != null) {
      _json["maxInstances"] = maxInstances;
    }
    return _json;
  }
}

/**
 * A Docker (container) image which should be used to start the application.
 */
class ContainerInfo {
  /**
   * Reference to a hosted container image. Must be a URI to a resource in a
   * Docker repository. Must be fully qualified, including tag or digest. e.g.
   * gcr.io/my-project/image:tag or gcr.io/my-project/image@digest
   */
  core.String image;

  ContainerInfo();

  ContainerInfo.fromJson(core.Map _json) {
    if (_json.containsKey("image")) {
      image = _json["image"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (image != null) {
      _json["image"] = image;
    }
    return _json;
  }
}

/** Target scaling by CPU usage. */
class CpuUtilization {
  /** The period of time over which CPU utilization is calculated. */
  core.String aggregationWindowLength;
  /** Target (0-1) CPU utilization ratio to maintain when scaling. */
  core.double targetUtilization;

  CpuUtilization();

  CpuUtilization.fromJson(core.Map _json) {
    if (_json.containsKey("aggregationWindowLength")) {
      aggregationWindowLength = _json["aggregationWindowLength"];
    }
    if (_json.containsKey("targetUtilization")) {
      targetUtilization = _json["targetUtilization"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (aggregationWindowLength != null) {
      _json["aggregationWindowLength"] = aggregationWindowLength;
    }
    if (targetUtilization != null) {
      _json["targetUtilization"] = targetUtilization;
    }
    return _json;
  }
}

/** Code and application artifacts used to deploy a version to App Engine. */
class Deployment {
  /**
   * If supplied, a docker (container) image which should be used to start the
   * application. Only applicable to the 'vm' runtime.
   */
  ContainerInfo container;
  /**
   * A manifest of files stored in Google Cloud Storage which should be included
   * as part of this application. All files must be readable using the
   * credentials supplied with this call.
   */
  core.Map<core.String, FileInfo> files;
  /**
   * The origin of the source code for this deployment. There can be more than
   * one source reference per Version if source code is distributed among
   * multiple repositories.
   */
  core.List<SourceReference> sourceReferences;

  Deployment();

  Deployment.fromJson(core.Map _json) {
    if (_json.containsKey("container")) {
      container = new ContainerInfo.fromJson(_json["container"]);
    }
    if (_json.containsKey("files")) {
      files = commons.mapMap(_json["files"], (item) => new FileInfo.fromJson(item));
    }
    if (_json.containsKey("sourceReferences")) {
      sourceReferences = _json["sourceReferences"].map((value) => new SourceReference.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (container != null) {
      _json["container"] = (container).toJson();
    }
    if (files != null) {
      _json["files"] = commons.mapMap(files, (item) => (item).toJson());
    }
    if (sourceReferences != null) {
      _json["sourceReferences"] = sourceReferences.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Target scaling by disk usage (for VM runtimes only). */
class DiskUtilization {
  /** Target bytes per second read. */
  core.int targetReadBytesPerSec;
  /** Target ops per second read. */
  core.int targetReadOpsPerSec;
  /** Target bytes per second written. */
  core.int targetWriteBytesPerSec;
  /** Target ops per second written. */
  core.int targetWriteOpsPerSec;

  DiskUtilization();

  DiskUtilization.fromJson(core.Map _json) {
    if (_json.containsKey("targetReadBytesPerSec")) {
      targetReadBytesPerSec = _json["targetReadBytesPerSec"];
    }
    if (_json.containsKey("targetReadOpsPerSec")) {
      targetReadOpsPerSec = _json["targetReadOpsPerSec"];
    }
    if (_json.containsKey("targetWriteBytesPerSec")) {
      targetWriteBytesPerSec = _json["targetWriteBytesPerSec"];
    }
    if (_json.containsKey("targetWriteOpsPerSec")) {
      targetWriteOpsPerSec = _json["targetWriteOpsPerSec"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (targetReadBytesPerSec != null) {
      _json["targetReadBytesPerSec"] = targetReadBytesPerSec;
    }
    if (targetReadOpsPerSec != null) {
      _json["targetReadOpsPerSec"] = targetReadOpsPerSec;
    }
    if (targetWriteBytesPerSec != null) {
      _json["targetWriteBytesPerSec"] = targetWriteBytesPerSec;
    }
    if (targetWriteOpsPerSec != null) {
      _json["targetWriteOpsPerSec"] = targetWriteOpsPerSec;
    }
    return _json;
  }
}

/** A custom static error page to be served when an error occurs. */
class ErrorHandler {
  /**
   * The error condition this handler applies to.
   * Possible string values are:
   * - "ERROR_CODE_UNSPECIFIED" : A ERROR_CODE_UNSPECIFIED.
   * - "ERROR_CODE_DEFAULT" : A ERROR_CODE_DEFAULT.
   * - "ERROR_CODE_OVER_QUOTA" : A ERROR_CODE_OVER_QUOTA.
   * - "ERROR_CODE_DOS_API_DENIAL" : A ERROR_CODE_DOS_API_DENIAL.
   * - "ERROR_CODE_TIMEOUT" : A ERROR_CODE_TIMEOUT.
   */
  core.String errorCode;
  /** MIME type of file. If unspecified, "text/html" is assumed. */
  core.String mimeType;
  /** Static file content to be served for this error. */
  core.String staticFile;

  ErrorHandler();

  ErrorHandler.fromJson(core.Map _json) {
    if (_json.containsKey("errorCode")) {
      errorCode = _json["errorCode"];
    }
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
    if (_json.containsKey("staticFile")) {
      staticFile = _json["staticFile"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (errorCode != null) {
      _json["errorCode"] = errorCode;
    }
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    if (staticFile != null) {
      _json["staticFile"] = staticFile;
    }
    return _json;
  }
}

/** A single source file which is part of the application to be deployed. */
class FileInfo {
  /**
   * The MIME type of the file; if unspecified, the value from Google Cloud
   * Storage will be used.
   */
  core.String mimeType;
  /** The SHA1 (160 bits) hash of the file in hex. */
  core.String sha1Sum;
  /**
   * The URL source to use to fetch this file. Must be a URL to a resource in
   * Google Cloud Storage in the form 'http(s)://storage.googleapis.com/\/\'.
   */
  core.String sourceUrl;

  FileInfo();

  FileInfo.fromJson(core.Map _json) {
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
    if (_json.containsKey("sha1Sum")) {
      sha1Sum = _json["sha1Sum"];
    }
    if (_json.containsKey("sourceUrl")) {
      sourceUrl = _json["sourceUrl"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    if (sha1Sum != null) {
      _json["sha1Sum"] = sha1Sum;
    }
    if (sourceUrl != null) {
      _json["sourceUrl"] = sourceUrl;
    }
    return _json;
  }
}

/**
 * Configure health checking for the VM instances. Unhealthy VM instances will
 * be killed and replaced with new instances.
 */
class HealthCheck {
  /** The interval between health checks. */
  core.String checkInterval;
  /** Whether to explicitly disable health checks for this instance. */
  core.bool disableHealthCheck;
  /**
   * The number of consecutive successful health checks before receiving
   * traffic.
   */
  core.int healthyThreshold;
  /**
   * The host header to send when performing an HTTP health check (e.g.
   * myapp.appspot.com)
   */
  core.String host;
  /**
   * The number of consecutive failed health checks before an instance is
   * restarted.
   */
  core.int restartThreshold;
  /** The amount of time before the health check is considered failed. */
  core.String timeout;
  /**
   * The number of consecutive failed health checks before removing traffic.
   */
  core.int unhealthyThreshold;

  HealthCheck();

  HealthCheck.fromJson(core.Map _json) {
    if (_json.containsKey("checkInterval")) {
      checkInterval = _json["checkInterval"];
    }
    if (_json.containsKey("disableHealthCheck")) {
      disableHealthCheck = _json["disableHealthCheck"];
    }
    if (_json.containsKey("healthyThreshold")) {
      healthyThreshold = _json["healthyThreshold"];
    }
    if (_json.containsKey("host")) {
      host = _json["host"];
    }
    if (_json.containsKey("restartThreshold")) {
      restartThreshold = _json["restartThreshold"];
    }
    if (_json.containsKey("timeout")) {
      timeout = _json["timeout"];
    }
    if (_json.containsKey("unhealthyThreshold")) {
      unhealthyThreshold = _json["unhealthyThreshold"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (checkInterval != null) {
      _json["checkInterval"] = checkInterval;
    }
    if (disableHealthCheck != null) {
      _json["disableHealthCheck"] = disableHealthCheck;
    }
    if (healthyThreshold != null) {
      _json["healthyThreshold"] = healthyThreshold;
    }
    if (host != null) {
      _json["host"] = host;
    }
    if (restartThreshold != null) {
      _json["restartThreshold"] = restartThreshold;
    }
    if (timeout != null) {
      _json["timeout"] = timeout;
    }
    if (unhealthyThreshold != null) {
      _json["unhealthyThreshold"] = unhealthyThreshold;
    }
    return _json;
  }
}

/** A Python runtime third-party library required by the application. */
class Library {
  /** The name of the library, e.g. "PIL" or "django". */
  core.String name;
  /** The version of the library to select, or "latest". */
  core.String version;

  Library();

  Library.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/** Response message for `Modules.ListModules`. */
class ListModulesResponse {
  /** The modules belonging to the requested application. */
  core.List<Module> modules;
  /** Continuation token for fetching the next page of results. */
  core.String nextPageToken;

  ListModulesResponse();

  ListModulesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("modules")) {
      modules = _json["modules"].map((value) => new Module.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (modules != null) {
      _json["modules"] = modules.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/** The response message for Operations.ListOperations. */
class ListOperationsResponse {
  /** The standard List next-page token. */
  core.String nextPageToken;
  /** A list of operations that matches the specified filter in the request. */
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("operations")) {
      operations = _json["operations"].map((value) => new Operation.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (operations != null) {
      _json["operations"] = operations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Response message for `Versions.ListVersions`. */
class ListVersionsResponse {
  /** Continuation token for fetching the next page of results. */
  core.String nextPageToken;
  /** The versions belonging to the requested application module. */
  core.List<Version> versions;

  ListVersionsResponse();

  ListVersionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("versions")) {
      versions = _json["versions"].map((value) => new Version.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (versions != null) {
      _json["versions"] = versions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * A module with manual scaling runs continuously, allowing you to perform
 * complex initialization and rely on the state of its memory over time.
 */
class ManualScaling {
  /**
   * The number of instances to assign to the module at the start. This number
   * can later be altered by using the [Modules
   * API](https://cloud.google.com/appengine/docs/python/modules/functions)
   * `set_num_instances()` function.
   */
  core.int instances;

  ManualScaling();

  ManualScaling.fromJson(core.Map _json) {
    if (_json.containsKey("instances")) {
      instances = _json["instances"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instances != null) {
      _json["instances"] = instances;
    }
    return _json;
  }
}

/**
 * A module is a component of an application that provides a single service or
 * configuration. A module has a collection of versions that define a specific
 * set of code used to implement the functionality of that module.
 */
class Module {
  /**
   * The relative name/path of the module within the application. Example:
   * "default" @OutputOnly
   */
  core.String id;
  /**
   * The full path to the Module resource in the API. Example:
   * "apps/myapp/modules/default" @OutputOnly
   */
  core.String name;
  /**
   * A mapping that defines fractional HTTP traffic diversion to different
   * versions within the module.
   */
  TrafficSplit split;

  Module();

  Module.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("split")) {
      split = new TrafficSplit.fromJson(_json["split"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (split != null) {
      _json["split"] = (split).toJson();
    }
    return _json;
  }
}

/** Used to specify extra network settings (for VM runtimes only). */
class Network {
  /**
   * A list of ports (or port pairs) to forward from the VM into the app
   * container.
   */
  core.List<core.String> forwardedPorts;
  /** A tag to apply to the VM instance during creation. */
  core.String instanceTag;
  /**
   * The Google Compute Engine network where the VMs will be created. If not
   * specified, or empty, the network named "default" will be used. (The short
   * name should be specified, not the resource path.)
   */
  core.String name;

  Network();

  Network.fromJson(core.Map _json) {
    if (_json.containsKey("forwardedPorts")) {
      forwardedPorts = _json["forwardedPorts"];
    }
    if (_json.containsKey("instanceTag")) {
      instanceTag = _json["instanceTag"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (forwardedPorts != null) {
      _json["forwardedPorts"] = forwardedPorts;
    }
    if (instanceTag != null) {
      _json["instanceTag"] = instanceTag;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/** Target scaling by network usage (for VM runtimes only). */
class NetworkUtilization {
  /** Target bytes per second received. */
  core.int targetReceivedBytesPerSec;
  /** Target packets per second received. */
  core.int targetReceivedPacketsPerSec;
  /** Target bytes per second sent. */
  core.int targetSentBytesPerSec;
  /** Target packets per second sent. */
  core.int targetSentPacketsPerSec;

  NetworkUtilization();

  NetworkUtilization.fromJson(core.Map _json) {
    if (_json.containsKey("targetReceivedBytesPerSec")) {
      targetReceivedBytesPerSec = _json["targetReceivedBytesPerSec"];
    }
    if (_json.containsKey("targetReceivedPacketsPerSec")) {
      targetReceivedPacketsPerSec = _json["targetReceivedPacketsPerSec"];
    }
    if (_json.containsKey("targetSentBytesPerSec")) {
      targetSentBytesPerSec = _json["targetSentBytesPerSec"];
    }
    if (_json.containsKey("targetSentPacketsPerSec")) {
      targetSentPacketsPerSec = _json["targetSentPacketsPerSec"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (targetReceivedBytesPerSec != null) {
      _json["targetReceivedBytesPerSec"] = targetReceivedBytesPerSec;
    }
    if (targetReceivedPacketsPerSec != null) {
      _json["targetReceivedPacketsPerSec"] = targetReceivedPacketsPerSec;
    }
    if (targetSentBytesPerSec != null) {
      _json["targetSentBytesPerSec"] = targetSentBytesPerSec;
    }
    if (targetSentPacketsPerSec != null) {
      _json["targetSentPacketsPerSec"] = targetSentPacketsPerSec;
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
   * If the value is `false`, it means the operation is still in progress. If
   * true, the operation is completed, and either `error` or `response` is
   * available.
   */
  core.bool done;
  /** The error result of the operation in case of failure. */
  Status error;
  /**
   * Service-specific metadata associated with the operation. It typically
   * contains progress information and common metadata such as create time. Some
   * services might not provide such metadata. Any method that returns a
   * long-running operation should document the metadata type, if any.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> metadata;
  /**
   * The server-assigned name, which is only unique within the same service that
   * originally returns it. If you use the default HTTP mapping above, the
   * `name` should have the format of `operations/some/unique/name`.
   */
  core.String name;
  /**
   * The normal response of the operation in case of success. If the original
   * method returns no data on success, such as `Delete`, the response is
   * `google.protobuf.Empty`. If the original method is standard
   * `Get`/`Create`/`Update`, the response should be the resource. For other
   * methods, the response should have the type `XxxResponse`, where `Xxx` is
   * the original method name. For example, if the original method name is
   * `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
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

/** Metadata for the given google.longrunning.Operation. */
class OperationMetadata {
  /**
   * Timestamp that this operation was completed. (Not present if the operation
   * is still in progress.) @OutputOnly
   */
  core.String endTime;
  /** Timestamp that this operation was received. @OutputOnly */
  core.String insertTime;
  /**
   * API method name that initiated the operation. Example:
   * "google.appengine.v1beta4.Version.CreateVersion". @OutputOnly
   */
  core.String method;
  /**
   * The type of the operation (deprecated, use method field instead). Example:
   * "create_version". @OutputOnly
   */
  core.String operationType;
  /**
   * Resource that this operation is acting on. Example:
   * "apps/myapp/modules/default". @OutputOnly
   */
  core.String target;
  /** The user who requested this operation. @OutputOnly */
  core.String user;

  OperationMetadata();

  OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("insertTime")) {
      insertTime = _json["insertTime"];
    }
    if (_json.containsKey("method")) {
      method = _json["method"];
    }
    if (_json.containsKey("operationType")) {
      operationType = _json["operationType"];
    }
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
    if (_json.containsKey("user")) {
      user = _json["user"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (insertTime != null) {
      _json["insertTime"] = insertTime;
    }
    if (method != null) {
      _json["method"] = method;
    }
    if (operationType != null) {
      _json["operationType"] = operationType;
    }
    if (target != null) {
      _json["target"] = target;
    }
    if (user != null) {
      _json["user"] = user;
    }
    return _json;
  }
}

/** Target scaling by request utilization (for VM runtimes only). */
class RequestUtilization {
  /** Target number of concurrent requests. */
  core.int targetConcurrentRequests;
  /** Target requests per second. */
  core.int targetRequestCountPerSec;

  RequestUtilization();

  RequestUtilization.fromJson(core.Map _json) {
    if (_json.containsKey("targetConcurrentRequests")) {
      targetConcurrentRequests = _json["targetConcurrentRequests"];
    }
    if (_json.containsKey("targetRequestCountPerSec")) {
      targetRequestCountPerSec = _json["targetRequestCountPerSec"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (targetConcurrentRequests != null) {
      _json["targetConcurrentRequests"] = targetConcurrentRequests;
    }
    if (targetRequestCountPerSec != null) {
      _json["targetRequestCountPerSec"] = targetRequestCountPerSec;
    }
    return _json;
  }
}

/** Used to specify how many machine resources an app version needs. */
class Resources {
  /** How many CPU cores an app version needs. */
  core.double cpu;
  /** How much disk size, in GB, an app version needs. */
  core.double diskGb;
  /** How much memory, in GB, an app version needs. */
  core.double memoryGb;

  Resources();

  Resources.fromJson(core.Map _json) {
    if (_json.containsKey("cpu")) {
      cpu = _json["cpu"];
    }
    if (_json.containsKey("diskGb")) {
      diskGb = _json["diskGb"];
    }
    if (_json.containsKey("memoryGb")) {
      memoryGb = _json["memoryGb"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (cpu != null) {
      _json["cpu"] = cpu;
    }
    if (diskGb != null) {
      _json["diskGb"] = diskGb;
    }
    if (memoryGb != null) {
      _json["memoryGb"] = memoryGb;
    }
    return _json;
  }
}

/** Executes a script to handle the request that matches the URL pattern. */
class ScriptHandler {
  /** Specifies the path to the script from the application root directory. */
  core.String scriptPath;

  ScriptHandler();

  ScriptHandler.fromJson(core.Map _json) {
    if (_json.containsKey("scriptPath")) {
      scriptPath = _json["scriptPath"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (scriptPath != null) {
      _json["scriptPath"] = scriptPath;
    }
    return _json;
  }
}

/**
 * A reference to a particular snapshot of the source tree used to build and
 * deploy the application.
 */
class SourceReference {
  /**
   * Optional. A URI string identifying the repository. Example:
   * "https://source.developers.google.com/p/app-123/r/default"
   */
  core.String repository;
  /**
   * The canonical (and persistent) identifier of the deployed revision, i.e.
   * any kind of aliases including tags or branch names are not allowed. Example
   * (git): "2198322f89e0bb2e25021667c2ed489d1fd34e6b"
   */
  core.String revisionId;

  SourceReference();

  SourceReference.fromJson(core.Map _json) {
    if (_json.containsKey("repository")) {
      repository = _json["repository"];
    }
    if (_json.containsKey("revisionId")) {
      revisionId = _json["revisionId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (repository != null) {
      _json["repository"] = repository;
    }
    if (revisionId != null) {
      _json["revisionId"] = revisionId;
    }
    return _json;
  }
}

/**
 * Files served directly to the user for a given URL, such as images, CSS
 * stylesheets, or JavaScript source files. Static directory handlers make it
 * easy to serve the entire contents of a directory as static files.
 */
class StaticDirectoryHandler {
  /**
   * By default, files declared in static file handlers are uploaded as static
   * data and are only served to end users, they cannot be read by an
   * application. If this field is set to true, the files are also uploaded as
   * code data so your application can read them. Both uploads are charged
   * against your code and static data storage resource quotas.
   */
  core.bool applicationReadable;
  /**
   * The path to the directory containing the static files, from the application
   * root directory. Everything after the end of the matched url pattern is
   * appended to static_dir to form the full path to the requested file.
   */
  core.String directory;
  /**
   * The length of time a static file served by this handler ought to be cached
   * by web proxies and browsers.
   */
  core.String expiration;
  /** HTTP headers to use for all responses from these URLs. */
  core.Map<core.String, core.String> httpHeaders;
  /**
   * If specified, all files served by this handler will be served using the
   * specified MIME type. If not specified, the MIME type for a file will be
   * derived from the file's filename extension.
   */
  core.String mimeType;
  /**
   * If true, this UrlMap entry does not match the request unless the file
   * referenced by the handler also exists. If no such file exists, processing
   * will continue with the next UrlMap that matches the requested URL.
   */
  core.bool requireMatchingFile;

  StaticDirectoryHandler();

  StaticDirectoryHandler.fromJson(core.Map _json) {
    if (_json.containsKey("applicationReadable")) {
      applicationReadable = _json["applicationReadable"];
    }
    if (_json.containsKey("directory")) {
      directory = _json["directory"];
    }
    if (_json.containsKey("expiration")) {
      expiration = _json["expiration"];
    }
    if (_json.containsKey("httpHeaders")) {
      httpHeaders = _json["httpHeaders"];
    }
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
    if (_json.containsKey("requireMatchingFile")) {
      requireMatchingFile = _json["requireMatchingFile"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (applicationReadable != null) {
      _json["applicationReadable"] = applicationReadable;
    }
    if (directory != null) {
      _json["directory"] = directory;
    }
    if (expiration != null) {
      _json["expiration"] = expiration;
    }
    if (httpHeaders != null) {
      _json["httpHeaders"] = httpHeaders;
    }
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    if (requireMatchingFile != null) {
      _json["requireMatchingFile"] = requireMatchingFile;
    }
    return _json;
  }
}

/**
 * Files served directly to the user for a given URL, such as images, CSS
 * stylesheets, or JavaScript source files. Static file handlers describe which
 * files in the application directory are static files, and which URLs serve
 * them.
 */
class StaticFilesHandler {
  /**
   * By default, files declared in static file handlers are uploaded as static
   * data and are only served to end users, they cannot be read by an
   * application. If this field is set to true, the files are also uploaded as
   * code data so your application can read them. Both uploads are charged
   * against your code and static data storage resource quotas.
   */
  core.bool applicationReadable;
  /**
   * The length of time a static file served by this handler ought to be cached
   * by web proxies and browsers.
   */
  core.String expiration;
  /** HTTP headers to use for all responses from these URLs. */
  core.Map<core.String, core.String> httpHeaders;
  /**
   * If specified, all files served by this handler will be served using the
   * specified MIME type. If not specified, the MIME type for a file will be
   * derived from the file's filename extension.
   */
  core.String mimeType;
  /**
   * The path to the static files matched by the URL pattern, from the
   * application root directory. The path can refer to text matched in groupings
   * in the URL pattern.
   */
  core.String path;
  /**
   * If true, this UrlMap entry does not match the request unless the file
   * referenced by the handler also exists. If no such file exists, processing
   * will continue with the next UrlMap that matches the requested URL.
   */
  core.bool requireMatchingFile;
  /**
   * A regular expression that matches the file paths for all files that will be
   * referenced by this handler.
   */
  core.String uploadPathRegex;

  StaticFilesHandler();

  StaticFilesHandler.fromJson(core.Map _json) {
    if (_json.containsKey("applicationReadable")) {
      applicationReadable = _json["applicationReadable"];
    }
    if (_json.containsKey("expiration")) {
      expiration = _json["expiration"];
    }
    if (_json.containsKey("httpHeaders")) {
      httpHeaders = _json["httpHeaders"];
    }
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("requireMatchingFile")) {
      requireMatchingFile = _json["requireMatchingFile"];
    }
    if (_json.containsKey("uploadPathRegex")) {
      uploadPathRegex = _json["uploadPathRegex"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (applicationReadable != null) {
      _json["applicationReadable"] = applicationReadable;
    }
    if (expiration != null) {
      _json["expiration"] = expiration;
    }
    if (httpHeaders != null) {
      _json["httpHeaders"] = httpHeaders;
    }
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (requireMatchingFile != null) {
      _json["requireMatchingFile"] = requireMatchingFile;
    }
    if (uploadPathRegex != null) {
      _json["uploadPathRegex"] = uploadPathRegex;
    }
    return _json;
  }
}

/**
 * The `Status` type defines a logical error model that is suitable for
 * different programming environments, including REST APIs and RPC APIs. It is
 * used by [gRPC](https://github.com/grpc). The error model is designed to be: -
 * Simple to use and understand for most users - Flexible enough to meet
 * unexpected needs # Overview The `Status` message contains three pieces of
 * data: error code, error message, and error details. The error code should be
 * an enum value of google.rpc.Code, but it may accept additional error codes if
 * needed. The error message should be a developer-facing English message that
 * helps developers *understand* and *resolve* the error. If a localized
 * user-facing error message is needed, put the localized message in the error
 * details or localize it in the client. The optional error details may contain
 * arbitrary information about the error. There is a predefined set of error
 * detail types in the package `google.rpc` which can be used for common error
 * conditions. # Language mapping The `Status` message is the logical
 * representation of the error model, but it is not necessarily the actual wire
 * format. When the `Status` message is exposed in different client libraries
 * and different wire protocols, it can be mapped differently. For example, it
 * will likely be mapped to some exceptions in Java, but more likely mapped to
 * some error codes in C. # Other uses The error model and the `Status` message
 * can be used in a variety of environments, either with or without APIs, to
 * provide a consistent developer experience across different environments.
 * Example uses of this error model include: - Partial errors. If a service
 * needs to return partial errors to the client, it may embed the `Status` in
 * the normal response to indicate the partial errors. - Workflow errors. A
 * typical workflow has multiple steps. Each step may have a `Status` message
 * for error reporting purpose. - Batch operations. If a client uses batch
 * request and batch response, the `Status` message should be used directly
 * inside batch response, one for each error sub-response. - Asynchronous
 * operations. If an API call embeds asynchronous operation results in its
 * response, the status of those operations should be represented directly using
 * the `Status` message. - Logging. If some API errors are stored in logs, the
 * message `Status` could be used directly after any stripping needed for
 * security/privacy reasons.
 */
class Status {
  /** The status code, which should be an enum value of google.rpc.Code. */
  core.int code;
  /**
   * A list of messages that carry the error details. There will be a common set
   * of message types for APIs to use.
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
 * Configuration for traffic splitting for versions within a single module.
 * Traffic splitting allows traffic directed to the module to be assigned to one
 * of several versions in a fractional way, enabling experiments and canarying
 * new builds, for example.
 */
class TrafficSplit {
  /**
   * Mapping from module version IDs within the module to fractional (0.000, 1]
   * allocations of traffic for that version. Each version may only be specified
   * once, but some versions in the module may not have any traffic allocation.
   * Modules that have traffic allocated in this field may not be deleted until
   * the module is deleted, or their traffic allocation is removed. Allocations
   * must sum to 1. Supports precision up to two decimal places for IP-based
   * splits and up to three decimal places for cookie-based splits.
   */
  core.Map<core.String, core.double> allocations;
  /**
   * Which mechanism should be used as a selector when choosing a version to
   * send a request to. The traffic selection algorithm will be stable for
   * either type until allocations are changed.
   * Possible string values are:
   * - "UNSPECIFIED" : A UNSPECIFIED.
   * - "COOKIE" : A COOKIE.
   * - "IP" : A IP.
   */
  core.String shardBy;

  TrafficSplit();

  TrafficSplit.fromJson(core.Map _json) {
    if (_json.containsKey("allocations")) {
      allocations = _json["allocations"];
    }
    if (_json.containsKey("shardBy")) {
      shardBy = _json["shardBy"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (allocations != null) {
      _json["allocations"] = allocations;
    }
    if (shardBy != null) {
      _json["shardBy"] = shardBy;
    }
    return _json;
  }
}

/** Rules to match an HTTP request and dispatch that request to a module. */
class UrlDispatchRule {
  /**
   * The domain name to match on. Supports '*' (glob) wildcarding on the
   * left-hand side of a '.'. If empty, all domains will be matched (the same as
   * '*').
   */
  core.String domain;
  /**
   * The resource id of a Module in this application that should service the
   * matched request. The Module must already exist. Example: "default".
   */
  core.String module;
  /**
   * The pathname within the host. This must start with a '/'. A single '*'
   * (glob) can be included at the end of the path. The sum of the lengths of
   * the domain and path may not exceed 100 characters.
   */
  core.String path;

  UrlDispatchRule();

  UrlDispatchRule.fromJson(core.Map _json) {
    if (_json.containsKey("domain")) {
      domain = _json["domain"];
    }
    if (_json.containsKey("module")) {
      module = _json["module"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (domain != null) {
      _json["domain"] = domain;
    }
    if (module != null) {
      _json["module"] = module;
    }
    if (path != null) {
      _json["path"] = path;
    }
    return _json;
  }
}

/**
 * A URL pattern and description of how it should be handled. App Engine can
 * handle URLs by executing application code, or by serving static files
 * uploaded with the code, such as images, CSS or JavaScript.
 */
class UrlMap {
  /** Use API Endpoints to handle requests. */
  ApiEndpointHandler apiEndpoint;
  /**
   * For users not logged in, how to handle access to resources with required
   * login. Defaults to "redirect".
   * Possible string values are:
   * - "AUTH_FAIL_ACTION_UNSPECIFIED" : A AUTH_FAIL_ACTION_UNSPECIFIED.
   * - "AUTH_FAIL_ACTION_REDIRECT" : A AUTH_FAIL_ACTION_REDIRECT.
   * - "AUTH_FAIL_ACTION_UNAUTHORIZED" : A AUTH_FAIL_ACTION_UNAUTHORIZED.
   */
  core.String authFailAction;
  /**
   * What level of login is required to access this resource.
   * Possible string values are:
   * - "LOGIN_UNSPECIFIED" : A LOGIN_UNSPECIFIED.
   * - "LOGIN_OPTIONAL" : A LOGIN_OPTIONAL.
   * - "LOGIN_ADMIN" : A LOGIN_ADMIN.
   * - "LOGIN_REQUIRED" : A LOGIN_REQUIRED.
   */
  core.String login;
  /**
   * `30x` code to use when performing redirects for the `secure` field. A `302`
   * is used by default.
   * Possible string values are:
   * - "REDIRECT_HTTP_RESPONSE_CODE_UNSPECIFIED" : A
   * REDIRECT_HTTP_RESPONSE_CODE_UNSPECIFIED.
   * - "REDIRECT_HTTP_RESPONSE_CODE_301" : A REDIRECT_HTTP_RESPONSE_CODE_301.
   * - "REDIRECT_HTTP_RESPONSE_CODE_302" : A REDIRECT_HTTP_RESPONSE_CODE_302.
   * - "REDIRECT_HTTP_RESPONSE_CODE_303" : A REDIRECT_HTTP_RESPONSE_CODE_303.
   * - "REDIRECT_HTTP_RESPONSE_CODE_307" : A REDIRECT_HTTP_RESPONSE_CODE_307.
   */
  core.String redirectHttpResponseCode;
  /** Executes a script to handle the request that matches the URL pattern. */
  ScriptHandler script;
  /**
   * Configures whether security (HTTPS) should be enforced for this URL.
   * Possible string values are:
   * - "SECURE_UNSPECIFIED" : A SECURE_UNSPECIFIED.
   * - "SECURE_DEFAULT" : A SECURE_DEFAULT.
   * - "SECURE_NEVER" : A SECURE_NEVER.
   * - "SECURE_OPTIONAL" : A SECURE_OPTIONAL.
   * - "SECURE_ALWAYS" : A SECURE_ALWAYS.
   */
  core.String securityLevel;
  /**
   * Serves the entire contents of a directory as static files. This attribute
   * is deprecated. You can mimic the behavior of static directories using
   * static files.
   */
  StaticDirectoryHandler staticDirectory;
  /** Returns the contents of a file, such as an image, as the response. */
  StaticFilesHandler staticFiles;
  /**
   * A URL prefix. This value uses regular expression syntax (and so regexp
   * special characters must be escaped), but it should not contain groupings.
   * All URLs that begin with this prefix are handled by this handler, using the
   * portion of the URL after the prefix as part of the file path. This is
   * always required.
   */
  core.String urlRegex;

  UrlMap();

  UrlMap.fromJson(core.Map _json) {
    if (_json.containsKey("apiEndpoint")) {
      apiEndpoint = new ApiEndpointHandler.fromJson(_json["apiEndpoint"]);
    }
    if (_json.containsKey("authFailAction")) {
      authFailAction = _json["authFailAction"];
    }
    if (_json.containsKey("login")) {
      login = _json["login"];
    }
    if (_json.containsKey("redirectHttpResponseCode")) {
      redirectHttpResponseCode = _json["redirectHttpResponseCode"];
    }
    if (_json.containsKey("script")) {
      script = new ScriptHandler.fromJson(_json["script"]);
    }
    if (_json.containsKey("securityLevel")) {
      securityLevel = _json["securityLevel"];
    }
    if (_json.containsKey("staticDirectory")) {
      staticDirectory = new StaticDirectoryHandler.fromJson(_json["staticDirectory"]);
    }
    if (_json.containsKey("staticFiles")) {
      staticFiles = new StaticFilesHandler.fromJson(_json["staticFiles"]);
    }
    if (_json.containsKey("urlRegex")) {
      urlRegex = _json["urlRegex"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (apiEndpoint != null) {
      _json["apiEndpoint"] = (apiEndpoint).toJson();
    }
    if (authFailAction != null) {
      _json["authFailAction"] = authFailAction;
    }
    if (login != null) {
      _json["login"] = login;
    }
    if (redirectHttpResponseCode != null) {
      _json["redirectHttpResponseCode"] = redirectHttpResponseCode;
    }
    if (script != null) {
      _json["script"] = (script).toJson();
    }
    if (securityLevel != null) {
      _json["securityLevel"] = securityLevel;
    }
    if (staticDirectory != null) {
      _json["staticDirectory"] = (staticDirectory).toJson();
    }
    if (staticFiles != null) {
      _json["staticFiles"] = (staticFiles).toJson();
    }
    if (urlRegex != null) {
      _json["urlRegex"] = urlRegex;
    }
    return _json;
  }
}

/**
 * A Version is a specific set of source code and configuration files deployed
 * to a module.
 */
class Version {
  /**
   * Serving configuration for Google Cloud Endpoints. Only returned in `GET`
   * requests if `view=FULL` is set. May only be set on create requests; once
   * created, is immutable.
   */
  ApiConfigHandler apiConfig;
  /**
   * Automatic scaling is the scaling policy that App Engine has used since its
   * inception. It is based on request rate, response latencies, and other
   * application metrics.
   */
  AutomaticScaling automaticScaling;
  /**
   * A module with basic scaling will create an instance when the application
   * receives a request. The instance will be turned down when the app becomes
   * idle. Basic scaling is ideal for work that is intermittent or driven by
   * user activity.
   */
  BasicScaling basicScaling;
  /** Beta settings supplied to the application via metadata. */
  core.Map<core.String, core.String> betaSettings;
  /**
   * Creation time of this version. This will be between the start and end times
   * of the operation that creates this version. @OutputOnly
   */
  core.String creationTime;
  /**
   * The length of time a static file served by a static file handler ought to
   * be cached by web proxies and browsers, if the handler does not specify its
   * own expiration. Only returned in `GET` requests if `view=FULL` is set. May
   * only be set on create requests; once created, is immutable.
   */
  core.String defaultExpiration;
  /** The email address of the user who created this version. @OutputOnly */
  core.String deployer;
  /**
   * Code and application artifacts that make up this version. Only returned in
   * `GET` requests if `view=FULL` is set. May only be set on create requests;
   * once created, is immutable.
   */
  Deployment deployment;
  /**
   * The App Engine execution environment to use for this version. Default: "1"
   */
  core.String env;
  /**
   * Environment variables made available to the application. Only returned in
   * `GET` requests if `view=FULL` is set. May only be set on create requests;
   * once created, is immutable.
   */
  core.Map<core.String, core.String> envVariables;
  /**
   * Custom static error pages instead of these generic error pages, (limit 10
   * KB/page) Only returned in `GET` requests if `view=FULL` is set. May only be
   * set on create requests; once created, is immutable.
   */
  core.List<ErrorHandler> errorHandlers;
  /**
   * An ordered list of URL Matching patterns that should be applied to incoming
   * requests. The first matching URL consumes the request, and subsequent
   * handlers are not attempted. Only returned in `GET` requests if `view=FULL`
   * is set. May only be set on create requests; once created, is immutable.
   */
  core.List<UrlMap> handlers;
  /**
   * Configure health checking for the VM instances. Unhealthy VM instances will
   * be stopped and replaced with new instances. Only returned in `GET` requests
   * if `view=FULL` is set. May only be set on create requests; once created, is
   * immutable.
   */
  HealthCheck healthCheck;
  /**
   * The relative name/path of the Version within the module. Example: "v1".
   * Version specifiers can contain lowercase letters, digits, and hyphens. It
   * cannot begin with the prefix `ah-` and the names `default` and `latest` are
   * reserved and cannot be used.
   */
  core.String id;
  /**
   * Before an application can receive email or XMPP messages, the application
   * must be configured to enable the service.
   */
  core.List<core.String> inboundServices;
  /**
   * The frontend instance class to use to run this app. Valid values are `[F1,
   * F2, F4, F4_1G]`. Default: "F1"
   */
  core.String instanceClass;
  /**
   * Configuration for Python runtime third-party libraries required by the
   * application. Only returned in `GET` requests if `view=FULL` is set. May
   * only be set on create requests; once created, is immutable.
   */
  core.List<Library> libraries;
  /**
   * A module with manual scaling runs continuously, allowing you to perform
   * complex initialization and rely on the state of its memory over time.
   */
  ManualScaling manualScaling;
  /**
   * The full path to the Version resource in the API. Example:
   * "apps/myapp/modules/default/versions/v1". @OutputOnly
   */
  core.String name;
  /** Used to specify extra network settings (for VM runtimes only). */
  Network network;
  /**
   * Go only. Files that match this pattern will not be built into the app. May
   * only be set on create requests.
   */
  core.String nobuildFilesRegex;
  /**
   * Used to specify how many machine resources an app version needs (for VM
   * runtimes only).
   */
  Resources resources;
  /** The desired runtime. Values can include python27, java7, go, etc. */
  core.String runtime;
  /**
   * The current serving status of this version. Only `SERVING` versions will
   * have instances created or billed for. If this field is unset when a version
   * is created, `SERVING` status will be assumed. It is an error to explicitly
   * set this field to `SERVING_STATUS_UNSPECIFIED`.
   * Possible string values are:
   * - "SERVING_STATUS_UNSPECIFIED" : A SERVING_STATUS_UNSPECIFIED.
   * - "SERVING" : A SERVING.
   * - "STOPPED" : A STOPPED.
   */
  core.String servingStatus;
  /** If true, multiple requests can be dispatched to the app at once. */
  core.bool threadsafe;
  /** Whether to deploy this app in a VM container. */
  core.bool vm;

  Version();

  Version.fromJson(core.Map _json) {
    if (_json.containsKey("apiConfig")) {
      apiConfig = new ApiConfigHandler.fromJson(_json["apiConfig"]);
    }
    if (_json.containsKey("automaticScaling")) {
      automaticScaling = new AutomaticScaling.fromJson(_json["automaticScaling"]);
    }
    if (_json.containsKey("basicScaling")) {
      basicScaling = new BasicScaling.fromJson(_json["basicScaling"]);
    }
    if (_json.containsKey("betaSettings")) {
      betaSettings = _json["betaSettings"];
    }
    if (_json.containsKey("creationTime")) {
      creationTime = _json["creationTime"];
    }
    if (_json.containsKey("defaultExpiration")) {
      defaultExpiration = _json["defaultExpiration"];
    }
    if (_json.containsKey("deployer")) {
      deployer = _json["deployer"];
    }
    if (_json.containsKey("deployment")) {
      deployment = new Deployment.fromJson(_json["deployment"]);
    }
    if (_json.containsKey("env")) {
      env = _json["env"];
    }
    if (_json.containsKey("envVariables")) {
      envVariables = _json["envVariables"];
    }
    if (_json.containsKey("errorHandlers")) {
      errorHandlers = _json["errorHandlers"].map((value) => new ErrorHandler.fromJson(value)).toList();
    }
    if (_json.containsKey("handlers")) {
      handlers = _json["handlers"].map((value) => new UrlMap.fromJson(value)).toList();
    }
    if (_json.containsKey("healthCheck")) {
      healthCheck = new HealthCheck.fromJson(_json["healthCheck"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("inboundServices")) {
      inboundServices = _json["inboundServices"];
    }
    if (_json.containsKey("instanceClass")) {
      instanceClass = _json["instanceClass"];
    }
    if (_json.containsKey("libraries")) {
      libraries = _json["libraries"].map((value) => new Library.fromJson(value)).toList();
    }
    if (_json.containsKey("manualScaling")) {
      manualScaling = new ManualScaling.fromJson(_json["manualScaling"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("network")) {
      network = new Network.fromJson(_json["network"]);
    }
    if (_json.containsKey("nobuildFilesRegex")) {
      nobuildFilesRegex = _json["nobuildFilesRegex"];
    }
    if (_json.containsKey("resources")) {
      resources = new Resources.fromJson(_json["resources"]);
    }
    if (_json.containsKey("runtime")) {
      runtime = _json["runtime"];
    }
    if (_json.containsKey("servingStatus")) {
      servingStatus = _json["servingStatus"];
    }
    if (_json.containsKey("threadsafe")) {
      threadsafe = _json["threadsafe"];
    }
    if (_json.containsKey("vm")) {
      vm = _json["vm"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (apiConfig != null) {
      _json["apiConfig"] = (apiConfig).toJson();
    }
    if (automaticScaling != null) {
      _json["automaticScaling"] = (automaticScaling).toJson();
    }
    if (basicScaling != null) {
      _json["basicScaling"] = (basicScaling).toJson();
    }
    if (betaSettings != null) {
      _json["betaSettings"] = betaSettings;
    }
    if (creationTime != null) {
      _json["creationTime"] = creationTime;
    }
    if (defaultExpiration != null) {
      _json["defaultExpiration"] = defaultExpiration;
    }
    if (deployer != null) {
      _json["deployer"] = deployer;
    }
    if (deployment != null) {
      _json["deployment"] = (deployment).toJson();
    }
    if (env != null) {
      _json["env"] = env;
    }
    if (envVariables != null) {
      _json["envVariables"] = envVariables;
    }
    if (errorHandlers != null) {
      _json["errorHandlers"] = errorHandlers.map((value) => (value).toJson()).toList();
    }
    if (handlers != null) {
      _json["handlers"] = handlers.map((value) => (value).toJson()).toList();
    }
    if (healthCheck != null) {
      _json["healthCheck"] = (healthCheck).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (inboundServices != null) {
      _json["inboundServices"] = inboundServices;
    }
    if (instanceClass != null) {
      _json["instanceClass"] = instanceClass;
    }
    if (libraries != null) {
      _json["libraries"] = libraries.map((value) => (value).toJson()).toList();
    }
    if (manualScaling != null) {
      _json["manualScaling"] = (manualScaling).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (network != null) {
      _json["network"] = (network).toJson();
    }
    if (nobuildFilesRegex != null) {
      _json["nobuildFilesRegex"] = nobuildFilesRegex;
    }
    if (resources != null) {
      _json["resources"] = (resources).toJson();
    }
    if (runtime != null) {
      _json["runtime"] = runtime;
    }
    if (servingStatus != null) {
      _json["servingStatus"] = servingStatus;
    }
    if (threadsafe != null) {
      _json["threadsafe"] = threadsafe;
    }
    if (vm != null) {
      _json["vm"] = vm;
    }
    return _json;
  }
}
