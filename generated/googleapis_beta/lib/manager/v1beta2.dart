library googleapis_beta.manager.v1beta2;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import "package:crypto/crypto.dart" as crypto;
import 'package:http/http.dart' as http;
import '../src/common_internal.dart' as common_internal;
import '../common/common.dart' as common;

export '../common/common.dart' show ApiRequestError;
export '../common/common.dart' show DetailedApiRequestError;

/**
 * The Deployment Manager API allows users to declaratively configure, deploy
 * and run complex solutions on the Google Cloud Platform.
 */
class ManagerApi {
  /** View and manage your applications deployed on Google App Engine */
  static const AppengineAdminScope = "https://www.googleapis.com/auth/appengine.admin";

  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

  /** View and manage your Google Compute Engine resources */
  static const ComputeScope = "https://www.googleapis.com/auth/compute";

  /** Manage your data in Google Cloud Storage */
  static const DevstorageReadWriteScope = "https://www.googleapis.com/auth/devstorage.read_write";

  /**
   * View and manage your Google Cloud Platform management resources and
   * deployment status information
   */
  static const NdevCloudmanScope = "https://www.googleapis.com/auth/ndev.cloudman";

  /**
   * View your Google Cloud Platform management resources and deployment status
   * information
   */
  static const NdevCloudmanReadonlyScope = "https://www.googleapis.com/auth/ndev.cloudman.readonly";


  final common_internal.ApiRequester _requester;

  DeploymentsResourceApi get deployments => new DeploymentsResourceApi(_requester);
  TemplatesResourceApi get templates => new TemplatesResourceApi(_requester);

  ManagerApi(http.Client client) : 
      _requester = new common_internal.ApiRequester(client, "https://www.googleapis.com/", "/manager/v1beta2/projects/");
}


/** Not documented yet. */
class DeploymentsResourceApi {
  final common_internal.ApiRequester _requester;

  DeploymentsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Not documented yet.
   *
   * Request parameters:
   *
   * [projectId] - null
   *
   * [region] - null
   *
   * [deploymentName] - null
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String projectId, core.String region, core.String deploymentName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (deploymentName == null) {
      throw new core.ArgumentError("Parameter deploymentName is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/deployments/' + common_internal.Escaper.ecapeVariable('$deploymentName');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Not documented yet.
   *
   * Request parameters:
   *
   * [projectId] - null
   *
   * [region] - null
   *
   * [deploymentName] - null
   *
   * Completes with a [Deployment].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Deployment> get(core.String projectId, core.String region, core.String deploymentName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (deploymentName == null) {
      throw new core.ArgumentError("Parameter deploymentName is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/deployments/' + common_internal.Escaper.ecapeVariable('$deploymentName');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Deployment.fromJson(data));
  }

  /**
   * Not documented yet.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - null
   *
   * [region] - null
   *
   * Completes with a [Deployment].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Deployment> insert(Deployment request, core.String projectId, core.String region) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/deployments';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Deployment.fromJson(data));
  }

  /**
   * Not documented yet.
   *
   * Request parameters:
   *
   * [projectId] - null
   *
   * [region] - null
   *
   * [maxResults] - Maximum count of results to be returned. Acceptable values
   * are 0 to 100, inclusive. (Default: 50)
   * Value must be between "0" and "100".
   *
   * [pageToken] - Specifies a nextPageToken returned by a previous list
   * request. This token can be used to request the next page of results from a
   * previous list request.
   *
   * Completes with a [DeploymentsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<DeploymentsListResponse> list(core.String projectId, core.String region, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/deployments';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DeploymentsListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class TemplatesResourceApi {
  final common_internal.ApiRequester _requester;

  TemplatesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Not documented yet.
   *
   * Request parameters:
   *
   * [projectId] - null
   *
   * [templateName] - null
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String projectId, core.String templateName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (templateName == null) {
      throw new core.ArgumentError("Parameter templateName is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/templates/' + common_internal.Escaper.ecapeVariable('$templateName');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Not documented yet.
   *
   * Request parameters:
   *
   * [projectId] - null
   *
   * [templateName] - null
   *
   * Completes with a [Template].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Template> get(core.String projectId, core.String templateName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (templateName == null) {
      throw new core.ArgumentError("Parameter templateName is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/templates/' + common_internal.Escaper.ecapeVariable('$templateName');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Template.fromJson(data));
  }

  /**
   * Not documented yet.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - null
   *
   * Completes with a [Template].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Template> insert(Template request, core.String projectId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/templates';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Template.fromJson(data));
  }

  /**
   * Not documented yet.
   *
   * Request parameters:
   *
   * [projectId] - null
   *
   * [maxResults] - Maximum count of results to be returned. Acceptable values
   * are 0 to 100, inclusive. (Default: 50)
   * Value must be between "0" and "100".
   *
   * [pageToken] - Specifies a nextPageToken returned by a previous list
   * request. This token can be used to request the next page of results from a
   * previous list request.
   *
   * Completes with a [TemplatesListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<TemplatesListResponse> list(core.String projectId, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/templates';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TemplatesListResponse.fromJson(data));
  }

}



/**
 * A Compute Engine network accessConfig. Identical to the accessConfig on
 * corresponding Compute Engine resource.
 */
class AccessConfig {
  /** Name of this access configuration. */
  core.String name;

  /** An external IP address associated with this instance. */
  core.String natIp;

  /**
   * Type of this access configuration file. (Currently only ONE_TO_ONE_NAT is
   * legal.)
   */
  core.String type;


  AccessConfig();

  AccessConfig.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("natIp")) {
      natIp = _json["natIp"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    if (natIp != null) {
      _json["natIp"] = natIp;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/**
 * An Action encapsulates a set of commands as a single runnable module with
 * additional information needed during run-time.
 */
class Action {
  /** A list of commands to run sequentially for this action. */
  core.List<core.String> commands;

  /** The timeout in milliseconds for this action to run. */
  core.int timeoutMs;


  Action();

  Action.fromJson(core.Map _json) {
    if (_json.containsKey("commands")) {
      commands = _json["commands"];
    }
    if (_json.containsKey("timeoutMs")) {
      timeoutMs = _json["timeoutMs"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (commands != null) {
      _json["commands"] = commands;
    }
    if (timeoutMs != null) {
      _json["timeoutMs"] = timeoutMs;
    }
    return _json;
  }
}


/** An allowed port resource. */
class AllowedRule {
  /** ?tcp?, ?udp? or ?icmp? */
  core.String IPProtocol;

  /**
   * List of ports or port ranges (Example inputs include: ["22"], [?33?,
   * "12345-12349"].
   */
  core.List<core.String> ports;


  AllowedRule();

  AllowedRule.fromJson(core.Map _json) {
    if (_json.containsKey("IPProtocol")) {
      IPProtocol = _json["IPProtocol"];
    }
    if (_json.containsKey("ports")) {
      ports = _json["ports"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (IPProtocol != null) {
      _json["IPProtocol"] = IPProtocol;
    }
    if (ports != null) {
      _json["ports"] = ports;
    }
    return _json;
  }
}


/** Not documented yet. */
class AutoscalingModule {
  /** Not documented yet. */
  core.int coolDownPeriodSec;

  /** Not documented yet. */
  core.String description;

  /** Not documented yet. */
  core.int maxNumReplicas;

  /** Not documented yet. */
  core.int minNumReplicas;

  /** Not documented yet. */
  core.String signalType;

  /** Not documented yet. */
  core.String targetModule;

  /** target_utilization should be in range [0,1]. */
  core.double targetUtilization;


  AutoscalingModule();

  AutoscalingModule.fromJson(core.Map _json) {
    if (_json.containsKey("coolDownPeriodSec")) {
      coolDownPeriodSec = _json["coolDownPeriodSec"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("maxNumReplicas")) {
      maxNumReplicas = _json["maxNumReplicas"];
    }
    if (_json.containsKey("minNumReplicas")) {
      minNumReplicas = _json["minNumReplicas"];
    }
    if (_json.containsKey("signalType")) {
      signalType = _json["signalType"];
    }
    if (_json.containsKey("targetModule")) {
      targetModule = _json["targetModule"];
    }
    if (_json.containsKey("targetUtilization")) {
      targetUtilization = _json["targetUtilization"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (coolDownPeriodSec != null) {
      _json["coolDownPeriodSec"] = coolDownPeriodSec;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (maxNumReplicas != null) {
      _json["maxNumReplicas"] = maxNumReplicas;
    }
    if (minNumReplicas != null) {
      _json["minNumReplicas"] = minNumReplicas;
    }
    if (signalType != null) {
      _json["signalType"] = signalType;
    }
    if (targetModule != null) {
      _json["targetModule"] = targetModule;
    }
    if (targetUtilization != null) {
      _json["targetUtilization"] = targetUtilization;
    }
    return _json;
  }
}


/** Not documented yet. */
class AutoscalingModuleStatus {
  /** [Output Only] The URL of the corresponding Autoscaling configuration. */
  core.String autoscalingConfigUrl;


  AutoscalingModuleStatus();

  AutoscalingModuleStatus.fromJson(core.Map _json) {
    if (_json.containsKey("autoscalingConfigUrl")) {
      autoscalingConfigUrl = _json["autoscalingConfigUrl"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (autoscalingConfigUrl != null) {
      _json["autoscalingConfigUrl"] = autoscalingConfigUrl;
    }
    return _json;
  }
}


/** [Output Only] The current state of a replica or module. */
class DeployState {
  /** [Output Only] Human readable details about the current state. */
  core.String details;

  /**
   * [Output Only] The status of the deployment. Possible values include:
   * - UNKNOWN
   * - DEPLOYING
   * - DEPLOYED
   * - DEPLOYMENT_FAILED
   * - DELETING
   * - DELETED
   * - DELETE_FAILED
   */
  core.String status;


  DeployState();

  DeployState.fromJson(core.Map _json) {
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (details != null) {
      _json["details"] = details;
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}


/** A deployment represents a physical instantiation of a Template. */
class Deployment {
  /** [Output Only] The time when this deployment was created. */
  core.String creationDate;

  /** A user-supplied description of this Deployment. */
  core.String description;

  /** [Output Only] List of status for the modules in this deployment. */
  core.Map<core.String, ModuleStatus> modules;

  /**
   * Name of this deployment. The name must conform to the following regular
   * expression: [a-zA-Z0-9-_]{1,64}
   */
  core.String name;

  /**
   * The set of parameter overrides to apply to the corresponding Template
   * before deploying.
   */
  core.List<ParamOverride> overrides;

  /** [Output Only] Current status of this deployment. */
  DeployState state;

  /** The name of the Template on which this deployment is based. */
  core.String templateName;


  Deployment();

  Deployment.fromJson(core.Map _json) {
    if (_json.containsKey("creationDate")) {
      creationDate = _json["creationDate"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("modules")) {
      modules = common_internal.mapMap(_json["modules"], (item) => new ModuleStatus.fromJson(item));
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("overrides")) {
      overrides = _json["overrides"].map((value) => new ParamOverride.fromJson(value)).toList();
    }
    if (_json.containsKey("state")) {
      state = new DeployState.fromJson(_json["state"]);
    }
    if (_json.containsKey("templateName")) {
      templateName = _json["templateName"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationDate != null) {
      _json["creationDate"] = creationDate;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (modules != null) {
      _json["modules"] = common_internal.mapMap(modules, (item) => (item).toJson());
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (overrides != null) {
      _json["overrides"] = overrides.map((value) => (value).toJson()).toList();
    }
    if (state != null) {
      _json["state"] = (state).toJson();
    }
    if (templateName != null) {
      _json["templateName"] = templateName;
    }
    return _json;
  }
}


/** Not documented yet. */
class DeploymentsListResponse {
  /** Not documented yet. */
  core.String nextPageToken;

  /** Not documented yet. */
  core.List<Deployment> resources;


  DeploymentsListResponse();

  DeploymentsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resources")) {
      resources = _json["resources"].map((value) => new Deployment.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (resources != null) {
      _json["resources"] = resources.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** How to attach a disk to a Replica. */
class DiskAttachment {
  /** The device name of this disk. */
  core.String deviceName;

  /**
   * A zero-based index to assign to this disk, where 0 is reserved for the boot
   * disk. If not specified, this is assigned by the server.
   */
  core.int index;


  DiskAttachment();

  DiskAttachment.fromJson(core.Map _json) {
    if (_json.containsKey("deviceName")) {
      deviceName = _json["deviceName"];
    }
    if (_json.containsKey("index")) {
      index = _json["index"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (deviceName != null) {
      _json["deviceName"] = deviceName;
    }
    if (index != null) {
      _json["index"] = index;
    }
    return _json;
  }
}


/** An environment variable. */
class EnvVariable {
  /** Whether this variable is hidden or visible. */
  core.bool hidden;

  /** Value of the environment variable. */
  core.String value;


  EnvVariable();

  EnvVariable.fromJson(core.Map _json) {
    if (_json.containsKey("hidden")) {
      hidden = _json["hidden"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (hidden != null) {
      _json["hidden"] = hidden;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/**
 * A pre-existing persistent disk that will be attached to every Replica in the
 * Pool.
 */
class ExistingDisk {
  /** Optional. How the disk will be attached to the Replica. */
  DiskAttachment attachment;

  /**
   * The fully-qualified URL of the Persistent Disk resource. It must be in the
   * same zone as the Pool.
   */
  core.String source;


  ExistingDisk();

  ExistingDisk.fromJson(core.Map _json) {
    if (_json.containsKey("attachment")) {
      attachment = new DiskAttachment.fromJson(_json["attachment"]);
    }
    if (_json.containsKey("source")) {
      source = _json["source"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (attachment != null) {
      _json["attachment"] = (attachment).toJson();
    }
    if (source != null) {
      _json["source"] = source;
    }
    return _json;
  }
}


/** A Firewall resource */
class FirewallModule {
  /** The allowed ports or port ranges. */
  core.List<AllowedRule> allowed;

  /** The description of the firewall (optional) */
  core.String description;

  /**
   * The NetworkModule to which this firewall should apply. If not specified, or
   * if specified as 'default', this firewall will be applied to the 'default'
   * network.
   */
  core.String network;

  /**
   * Source IP ranges to apply this firewall to, see the GCE Spec for details on
   * syntax
   */
  core.List<core.String> sourceRanges;

  /**
   * Source Tags to apply this firewall to, see the GCE Spec for details on
   * syntax
   */
  core.List<core.String> sourceTags;

  /**
   * Target Tags to apply this firewall to, see the GCE Spec for details on
   * syntax
   */
  core.List<core.String> targetTags;


  FirewallModule();

  FirewallModule.fromJson(core.Map _json) {
    if (_json.containsKey("allowed")) {
      allowed = _json["allowed"].map((value) => new AllowedRule.fromJson(value)).toList();
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("sourceRanges")) {
      sourceRanges = _json["sourceRanges"];
    }
    if (_json.containsKey("sourceTags")) {
      sourceTags = _json["sourceTags"];
    }
    if (_json.containsKey("targetTags")) {
      targetTags = _json["targetTags"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (allowed != null) {
      _json["allowed"] = allowed.map((value) => (value).toJson()).toList();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (network != null) {
      _json["network"] = network;
    }
    if (sourceRanges != null) {
      _json["sourceRanges"] = sourceRanges;
    }
    if (sourceTags != null) {
      _json["sourceTags"] = sourceTags;
    }
    if (targetTags != null) {
      _json["targetTags"] = targetTags;
    }
    return _json;
  }
}


/** Not documented yet. */
class FirewallModuleStatus {
  /** [Output Only] The URL of the corresponding Firewall resource. */
  core.String firewallUrl;


  FirewallModuleStatus();

  FirewallModuleStatus.fromJson(core.Map _json) {
    if (_json.containsKey("firewallUrl")) {
      firewallUrl = _json["firewallUrl"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (firewallUrl != null) {
      _json["firewallUrl"] = firewallUrl;
    }
    return _json;
  }
}


/** Not documented yet. */
class HealthCheckModule {
  /** Not documented yet. */
  core.int checkIntervalSec;

  /** Not documented yet. */
  core.String description;

  /** Not documented yet. */
  core.int healthyThreshold;

  /** Not documented yet. */
  core.String host;

  /** Not documented yet. */
  core.String path;

  /** Not documented yet. */
  core.int port;

  /** Not documented yet. */
  core.int timeoutSec;

  /** Not documented yet. */
  core.int unhealthyThreshold;


  HealthCheckModule();

  HealthCheckModule.fromJson(core.Map _json) {
    if (_json.containsKey("checkIntervalSec")) {
      checkIntervalSec = _json["checkIntervalSec"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("healthyThreshold")) {
      healthyThreshold = _json["healthyThreshold"];
    }
    if (_json.containsKey("host")) {
      host = _json["host"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("port")) {
      port = _json["port"];
    }
    if (_json.containsKey("timeoutSec")) {
      timeoutSec = _json["timeoutSec"];
    }
    if (_json.containsKey("unhealthyThreshold")) {
      unhealthyThreshold = _json["unhealthyThreshold"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (checkIntervalSec != null) {
      _json["checkIntervalSec"] = checkIntervalSec;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (healthyThreshold != null) {
      _json["healthyThreshold"] = healthyThreshold;
    }
    if (host != null) {
      _json["host"] = host;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (port != null) {
      _json["port"] = port;
    }
    if (timeoutSec != null) {
      _json["timeoutSec"] = timeoutSec;
    }
    if (unhealthyThreshold != null) {
      _json["unhealthyThreshold"] = unhealthyThreshold;
    }
    return _json;
  }
}


/** Not documented yet. */
class HealthCheckModuleStatus {
  /** [Output Only] The HealthCheck URL. */
  core.String healthCheckUrl;


  HealthCheckModuleStatus();

  HealthCheckModuleStatus.fromJson(core.Map _json) {
    if (_json.containsKey("healthCheckUrl")) {
      healthCheckUrl = _json["healthCheckUrl"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (healthCheckUrl != null) {
      _json["healthCheckUrl"] = healthCheckUrl;
    }
    return _json;
  }
}


/** Not documented yet. */
class LbModule {
  /** Not documented yet. */
  core.String description;

  /** Not documented yet. */
  core.List<core.String> healthChecks;

  /** Not documented yet. */
  core.String ipAddress;

  /** Not documented yet. */
  core.String ipProtocol;

  /** Not documented yet. */
  core.String portRange;

  /** Not documented yet. */
  core.String sessionAffinity;

  /** Not documented yet. */
  core.List<core.String> targetModules;


  LbModule();

  LbModule.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("healthChecks")) {
      healthChecks = _json["healthChecks"];
    }
    if (_json.containsKey("ipAddress")) {
      ipAddress = _json["ipAddress"];
    }
    if (_json.containsKey("ipProtocol")) {
      ipProtocol = _json["ipProtocol"];
    }
    if (_json.containsKey("portRange")) {
      portRange = _json["portRange"];
    }
    if (_json.containsKey("sessionAffinity")) {
      sessionAffinity = _json["sessionAffinity"];
    }
    if (_json.containsKey("targetModules")) {
      targetModules = _json["targetModules"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (healthChecks != null) {
      _json["healthChecks"] = healthChecks;
    }
    if (ipAddress != null) {
      _json["ipAddress"] = ipAddress;
    }
    if (ipProtocol != null) {
      _json["ipProtocol"] = ipProtocol;
    }
    if (portRange != null) {
      _json["portRange"] = portRange;
    }
    if (sessionAffinity != null) {
      _json["sessionAffinity"] = sessionAffinity;
    }
    if (targetModules != null) {
      _json["targetModules"] = targetModules;
    }
    return _json;
  }
}


/** Not documented yet. */
class LbModuleStatus {
  /** [Output Only] The URL of the corresponding ForwardingRule in GCE. */
  core.String forwardingRuleUrl;

  /** [Output Only] The URL of the corresponding TargetPool resource in GCE. */
  core.String targetPoolUrl;


  LbModuleStatus();

  LbModuleStatus.fromJson(core.Map _json) {
    if (_json.containsKey("forwardingRuleUrl")) {
      forwardingRuleUrl = _json["forwardingRuleUrl"];
    }
    if (_json.containsKey("targetPoolUrl")) {
      targetPoolUrl = _json["targetPoolUrl"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (forwardingRuleUrl != null) {
      _json["forwardingRuleUrl"] = forwardingRuleUrl;
    }
    if (targetPoolUrl != null) {
      _json["targetPoolUrl"] = targetPoolUrl;
    }
    return _json;
  }
}


/**
 * A Compute Engine metadata entry. Identical to the metadata on the
 * corresponding Compute Engine resource.
 */
class Metadata {
  /** The fingerprint of the metadata. */
  core.String fingerPrint;

  /** A list of metadata items. */
  core.List<MetadataItem> items;


  Metadata();

  Metadata.fromJson(core.Map _json) {
    if (_json.containsKey("fingerPrint")) {
      fingerPrint = _json["fingerPrint"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new MetadataItem.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fingerPrint != null) {
      _json["fingerPrint"] = fingerPrint;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/**
 * A Compute Engine metadata item, defined as a key:value pair. Identical to the
 * metadata on the corresponding Compute Engine resource.
 */
class MetadataItem {
  /** A metadata key. */
  core.String key;

  /** A metadata value. */
  core.String value;


  MetadataItem();

  MetadataItem.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/**
 * A module in a configuration. A module represents a single homogeneous,
 * possibly replicated task.
 */
class Module {
  /** Not documented yet. */
  AutoscalingModule autoscalingModule;

  /** Not documented yet. */
  FirewallModule firewallModule;

  /** Not documented yet. */
  HealthCheckModule healthCheckModule;

  /** Not documented yet. */
  LbModule lbModule;

  /** Not documented yet. */
  NetworkModule networkModule;

  /** Not documented yet. */
  ReplicaPoolModule replicaPoolModule;

  /**
   * The type of this module. Valid values ("AUTOSCALING", "FIREWALL",
   * "HEALTH_CHECK", "LOAD_BALANCING", "NETWORK", "REPLICA_POOL")
   */
  core.String type;


  Module();

  Module.fromJson(core.Map _json) {
    if (_json.containsKey("autoscalingModule")) {
      autoscalingModule = new AutoscalingModule.fromJson(_json["autoscalingModule"]);
    }
    if (_json.containsKey("firewallModule")) {
      firewallModule = new FirewallModule.fromJson(_json["firewallModule"]);
    }
    if (_json.containsKey("healthCheckModule")) {
      healthCheckModule = new HealthCheckModule.fromJson(_json["healthCheckModule"]);
    }
    if (_json.containsKey("lbModule")) {
      lbModule = new LbModule.fromJson(_json["lbModule"]);
    }
    if (_json.containsKey("networkModule")) {
      networkModule = new NetworkModule.fromJson(_json["networkModule"]);
    }
    if (_json.containsKey("replicaPoolModule")) {
      replicaPoolModule = new ReplicaPoolModule.fromJson(_json["replicaPoolModule"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (autoscalingModule != null) {
      _json["autoscalingModule"] = (autoscalingModule).toJson();
    }
    if (firewallModule != null) {
      _json["firewallModule"] = (firewallModule).toJson();
    }
    if (healthCheckModule != null) {
      _json["healthCheckModule"] = (healthCheckModule).toJson();
    }
    if (lbModule != null) {
      _json["lbModule"] = (lbModule).toJson();
    }
    if (networkModule != null) {
      _json["networkModule"] = (networkModule).toJson();
    }
    if (replicaPoolModule != null) {
      _json["replicaPoolModule"] = (replicaPoolModule).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** [Output Only] Aggregate status for a module. */
class ModuleStatus {
  /**
   * [Output Only] The status of the AutoscalingModule, set for type
   * AUTOSCALING.
   */
  AutoscalingModuleStatus autoscalingModuleStatus;

  /** [Output Only] The status of the FirewallModule, set for type FIREWALL. */
  FirewallModuleStatus firewallModuleStatus;

  /**
   * [Output Only] The status of the HealthCheckModule, set for type
   * HEALTH_CHECK.
   */
  HealthCheckModuleStatus healthCheckModuleStatus;

  /** [Output Only] The status of the LbModule, set for type LOAD_BALANCING. */
  LbModuleStatus lbModuleStatus;

  /** [Output Only] The status of the NetworkModule, set for type NETWORK. */
  NetworkModuleStatus networkModuleStatus;

  /** [Output Only] The status of the ReplicaPoolModule, set for type VM. */
  ReplicaPoolModuleStatus replicaPoolModuleStatus;

  /** [Output Only] The current state of the module. */
  DeployState state;

  /** [Output Only] The type of the module. */
  core.String type;


  ModuleStatus();

  ModuleStatus.fromJson(core.Map _json) {
    if (_json.containsKey("autoscalingModuleStatus")) {
      autoscalingModuleStatus = new AutoscalingModuleStatus.fromJson(_json["autoscalingModuleStatus"]);
    }
    if (_json.containsKey("firewallModuleStatus")) {
      firewallModuleStatus = new FirewallModuleStatus.fromJson(_json["firewallModuleStatus"]);
    }
    if (_json.containsKey("healthCheckModuleStatus")) {
      healthCheckModuleStatus = new HealthCheckModuleStatus.fromJson(_json["healthCheckModuleStatus"]);
    }
    if (_json.containsKey("lbModuleStatus")) {
      lbModuleStatus = new LbModuleStatus.fromJson(_json["lbModuleStatus"]);
    }
    if (_json.containsKey("networkModuleStatus")) {
      networkModuleStatus = new NetworkModuleStatus.fromJson(_json["networkModuleStatus"]);
    }
    if (_json.containsKey("replicaPoolModuleStatus")) {
      replicaPoolModuleStatus = new ReplicaPoolModuleStatus.fromJson(_json["replicaPoolModuleStatus"]);
    }
    if (_json.containsKey("state")) {
      state = new DeployState.fromJson(_json["state"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (autoscalingModuleStatus != null) {
      _json["autoscalingModuleStatus"] = (autoscalingModuleStatus).toJson();
    }
    if (firewallModuleStatus != null) {
      _json["firewallModuleStatus"] = (firewallModuleStatus).toJson();
    }
    if (healthCheckModuleStatus != null) {
      _json["healthCheckModuleStatus"] = (healthCheckModuleStatus).toJson();
    }
    if (lbModuleStatus != null) {
      _json["lbModuleStatus"] = (lbModuleStatus).toJson();
    }
    if (networkModuleStatus != null) {
      _json["networkModuleStatus"] = (networkModuleStatus).toJson();
    }
    if (replicaPoolModuleStatus != null) {
      _json["replicaPoolModuleStatus"] = (replicaPoolModuleStatus).toJson();
    }
    if (state != null) {
      _json["state"] = (state).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/**
 * A Compute Engine NetworkInterface resource. Identical to the NetworkInterface
 * on the corresponding Compute Engine resource.
 */
class NetworkInterface {
  /**
   * An array of configurations for this interface. This specifies how this
   * interface is configured to interact with other network services
   */
  core.List<AccessConfig> accessConfigs;

  /** Name of the interface. */
  core.String name;

  /**
   * The name of the NetworkModule to which this interface applies. If not
   * specified, or specified as 'default', this will use the 'default' network.
   */
  core.String network;

  /**
   * An optional IPV4 internal network address to assign to the instance for
   * this network interface.
   */
  core.String networkIp;


  NetworkInterface();

  NetworkInterface.fromJson(core.Map _json) {
    if (_json.containsKey("accessConfigs")) {
      accessConfigs = _json["accessConfigs"].map((value) => new AccessConfig.fromJson(value)).toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("networkIp")) {
      networkIp = _json["networkIp"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accessConfigs != null) {
      _json["accessConfigs"] = accessConfigs.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (network != null) {
      _json["network"] = network;
    }
    if (networkIp != null) {
      _json["networkIp"] = networkIp;
    }
    return _json;
  }
}


/** Not documented yet. */
class NetworkModule {
  /**
   * Required; The range of internal addresses that are legal on this network.
   * This range is a CIDR specification, for example: 192.168.0.0/16.
   */
  core.String IPv4Range;

  /** The description of the network. */
  core.String description;

  /**
   * An optional address that is used for default routing to other networks.
   * This must be within the range specified by IPv4Range, and is typicall the
   * first usable address in that range. If not specified, the default value is
   * the first usable address in IPv4Range.
   */
  core.String gatewayIPv4;


  NetworkModule();

  NetworkModule.fromJson(core.Map _json) {
    if (_json.containsKey("IPv4Range")) {
      IPv4Range = _json["IPv4Range"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("gatewayIPv4")) {
      gatewayIPv4 = _json["gatewayIPv4"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (IPv4Range != null) {
      _json["IPv4Range"] = IPv4Range;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (gatewayIPv4 != null) {
      _json["gatewayIPv4"] = gatewayIPv4;
    }
    return _json;
  }
}


/** Not documented yet. */
class NetworkModuleStatus {
  /** [Output Only] The URL of the corresponding Network resource. */
  core.String networkUrl;


  NetworkModuleStatus();

  NetworkModuleStatus.fromJson(core.Map _json) {
    if (_json.containsKey("networkUrl")) {
      networkUrl = _json["networkUrl"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (networkUrl != null) {
      _json["networkUrl"] = networkUrl;
    }
    return _json;
  }
}


/**
 * A Persistent Disk resource that will be created and attached to each Replica
 * in the Pool. Each Replica will have a unique persistent disk that is created
 * and attached to that Replica.
 */
class NewDisk {
  /** How the disk will be attached to the Replica. */
  DiskAttachment attachment;

  /** If true, then this disk will be deleted when the instance is deleted. */
  core.bool autoDelete;

  /** If true, indicates that this is the root persistent disk. */
  core.bool boot;

  /**
   * Create the new disk using these parameters. The name of the disk will be
   * <instance_name>-<five_random_charactersgt;.
   */
  NewDiskInitializeParams initializeParams;


  NewDisk();

  NewDisk.fromJson(core.Map _json) {
    if (_json.containsKey("attachment")) {
      attachment = new DiskAttachment.fromJson(_json["attachment"]);
    }
    if (_json.containsKey("autoDelete")) {
      autoDelete = _json["autoDelete"];
    }
    if (_json.containsKey("boot")) {
      boot = _json["boot"];
    }
    if (_json.containsKey("initializeParams")) {
      initializeParams = new NewDiskInitializeParams.fromJson(_json["initializeParams"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (attachment != null) {
      _json["attachment"] = (attachment).toJson();
    }
    if (autoDelete != null) {
      _json["autoDelete"] = autoDelete;
    }
    if (boot != null) {
      _json["boot"] = boot;
    }
    if (initializeParams != null) {
      _json["initializeParams"] = (initializeParams).toJson();
    }
    return _json;
  }
}


/** Initialization parameters for creating a new disk. */
class NewDiskInitializeParams {
  /** The size of the created disk in gigabytes. */
  core.String diskSizeGb;

  /** The fully-qualified URL of a source image to use to create this disk. */
  core.String sourceImage;


  NewDiskInitializeParams();

  NewDiskInitializeParams.fromJson(core.Map _json) {
    if (_json.containsKey("diskSizeGb")) {
      diskSizeGb = _json["diskSizeGb"];
    }
    if (_json.containsKey("sourceImage")) {
      sourceImage = _json["sourceImage"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (diskSizeGb != null) {
      _json["diskSizeGb"] = diskSizeGb;
    }
    if (sourceImage != null) {
      _json["sourceImage"] = sourceImage;
    }
    return _json;
  }
}


/**
 * A specification for overriding parameters in a Template that corresponds to
 * the Deployment.
 */
class ParamOverride {
  /**
   * A JSON Path expression that specifies which parameter should be overridden.
   */
  core.String path;

  /** The new value to assign to the overridden parameter. */
  core.String value;


  ParamOverride();

  ParamOverride.fromJson(core.Map _json) {
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (path != null) {
      _json["path"] = path;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/** Not documented yet. */
class ReplicaPoolModule {
  /** A list of environment variables. */
  core.Map<core.String, EnvVariable> envVariables;

  /** The Health Checks to configure for the ReplicaPoolModule */
  core.List<core.String> healthChecks;

  /** Number of replicas in this module. */
  core.int numReplicas;

  /** Information for a ReplicaPoolModule. */
  ReplicaPoolParams replicaPoolParams;

  /**
   * [Output Only] The name of the Resource View associated with a
   * ReplicaPoolModule. This field will be generated by the service.
   */
  core.String resourceView;


  ReplicaPoolModule();

  ReplicaPoolModule.fromJson(core.Map _json) {
    if (_json.containsKey("envVariables")) {
      envVariables = common_internal.mapMap(_json["envVariables"], (item) => new EnvVariable.fromJson(item));
    }
    if (_json.containsKey("healthChecks")) {
      healthChecks = _json["healthChecks"];
    }
    if (_json.containsKey("numReplicas")) {
      numReplicas = _json["numReplicas"];
    }
    if (_json.containsKey("replicaPoolParams")) {
      replicaPoolParams = new ReplicaPoolParams.fromJson(_json["replicaPoolParams"]);
    }
    if (_json.containsKey("resourceView")) {
      resourceView = _json["resourceView"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (envVariables != null) {
      _json["envVariables"] = common_internal.mapMap(envVariables, (item) => (item).toJson());
    }
    if (healthChecks != null) {
      _json["healthChecks"] = healthChecks;
    }
    if (numReplicas != null) {
      _json["numReplicas"] = numReplicas;
    }
    if (replicaPoolParams != null) {
      _json["replicaPoolParams"] = (replicaPoolParams).toJson();
    }
    if (resourceView != null) {
      _json["resourceView"] = resourceView;
    }
    return _json;
  }
}


/** Not documented yet. */
class ReplicaPoolModuleStatus {
  /** [Output Only] The URL of the associated ReplicaPool resource. */
  core.String replicaPoolUrl;

  /**
   * [Output Only] The URL of the Resource Group associated with this
   * ReplicaPool.
   */
  core.String resourceViewUrl;


  ReplicaPoolModuleStatus();

  ReplicaPoolModuleStatus.fromJson(core.Map _json) {
    if (_json.containsKey("replicaPoolUrl")) {
      replicaPoolUrl = _json["replicaPoolUrl"];
    }
    if (_json.containsKey("resourceViewUrl")) {
      resourceViewUrl = _json["resourceViewUrl"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (replicaPoolUrl != null) {
      _json["replicaPoolUrl"] = replicaPoolUrl;
    }
    if (resourceViewUrl != null) {
      _json["resourceViewUrl"] = resourceViewUrl;
    }
    return _json;
  }
}


/**
 * Configuration information for a ReplicaPools resource. Specifying an item
 * within will determine the ReplicaPools API version used for a
 * ReplicaPoolModule. Only one may be specified.
 */
class ReplicaPoolParams {
  /** ReplicaPoolParams specifications for use with ReplicaPools v1beta1. */
  ReplicaPoolParamsV1Beta1 v1beta1;


  ReplicaPoolParams();

  ReplicaPoolParams.fromJson(core.Map _json) {
    if (_json.containsKey("v1beta1")) {
      v1beta1 = new ReplicaPoolParamsV1Beta1.fromJson(_json["v1beta1"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (v1beta1 != null) {
      _json["v1beta1"] = (v1beta1).toJson();
    }
    return _json;
  }
}


/**
 * Configuration information for a ReplicaPools v1beta1 API resource. Directly
 * maps to ReplicaPool InitTemplate.
 */
class ReplicaPoolParamsV1Beta1 {
  /**
   * Whether these replicas should be restarted if they experience a failure.
   * The default value is true.
   */
  core.bool autoRestart;

  /** The base name for instances within this ReplicaPool. */
  core.String baseInstanceName;

  /** Enables IP Forwarding */
  core.bool canIpForward;

  /** An optional textual description of the resource. */
  core.String description;

  /**
   * A list of existing Persistent Disk resources to attach to each replica in
   * the pool. Each disk will be attached in read-only mode to every replica.
   */
  core.List<ExistingDisk> disksToAttach;

  /**
   * A list of Disk resources to create and attach to each Replica in the Pool.
   * Currently, you can only define one disk and it must be a root persistent
   * disk. Note that Replica Pool will create a root persistent disk for each
   * replica.
   */
  core.List<NewDisk> disksToCreate;

  /**
   * Name of the Action to be run during initialization of a ReplicaPoolModule.
   */
  core.String initAction;

  /**
   * The machine type for this instance. Either a complete URL, or the resource
   * name (e.g. n1-standard-1).
   */
  core.String machineType;

  /** The metadata key/value pairs assigned to this instance. */
  Metadata metadata;

  /**
   * A list of network interfaces for the instance. Currently only one interface
   * is supported by Google Compute Engine.
   */
  core.List<NetworkInterface> networkInterfaces;

  /** Not documented yet. */
  core.String onHostMaintenance;

  /** A list of Service Accounts to enable for this instance. */
  core.List<ServiceAccount> serviceAccounts;

  /**
   * A list of tags to apply to the Google Compute Engine instance to identify
   * resources.
   */
  Tag tags;

  /** The zone for this ReplicaPool. */
  core.String zone;


  ReplicaPoolParamsV1Beta1();

  ReplicaPoolParamsV1Beta1.fromJson(core.Map _json) {
    if (_json.containsKey("autoRestart")) {
      autoRestart = _json["autoRestart"];
    }
    if (_json.containsKey("baseInstanceName")) {
      baseInstanceName = _json["baseInstanceName"];
    }
    if (_json.containsKey("canIpForward")) {
      canIpForward = _json["canIpForward"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("disksToAttach")) {
      disksToAttach = _json["disksToAttach"].map((value) => new ExistingDisk.fromJson(value)).toList();
    }
    if (_json.containsKey("disksToCreate")) {
      disksToCreate = _json["disksToCreate"].map((value) => new NewDisk.fromJson(value)).toList();
    }
    if (_json.containsKey("initAction")) {
      initAction = _json["initAction"];
    }
    if (_json.containsKey("machineType")) {
      machineType = _json["machineType"];
    }
    if (_json.containsKey("metadata")) {
      metadata = new Metadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("networkInterfaces")) {
      networkInterfaces = _json["networkInterfaces"].map((value) => new NetworkInterface.fromJson(value)).toList();
    }
    if (_json.containsKey("onHostMaintenance")) {
      onHostMaintenance = _json["onHostMaintenance"];
    }
    if (_json.containsKey("serviceAccounts")) {
      serviceAccounts = _json["serviceAccounts"].map((value) => new ServiceAccount.fromJson(value)).toList();
    }
    if (_json.containsKey("tags")) {
      tags = new Tag.fromJson(_json["tags"]);
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (autoRestart != null) {
      _json["autoRestart"] = autoRestart;
    }
    if (baseInstanceName != null) {
      _json["baseInstanceName"] = baseInstanceName;
    }
    if (canIpForward != null) {
      _json["canIpForward"] = canIpForward;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (disksToAttach != null) {
      _json["disksToAttach"] = disksToAttach.map((value) => (value).toJson()).toList();
    }
    if (disksToCreate != null) {
      _json["disksToCreate"] = disksToCreate.map((value) => (value).toJson()).toList();
    }
    if (initAction != null) {
      _json["initAction"] = initAction;
    }
    if (machineType != null) {
      _json["machineType"] = machineType;
    }
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (networkInterfaces != null) {
      _json["networkInterfaces"] = networkInterfaces.map((value) => (value).toJson()).toList();
    }
    if (onHostMaintenance != null) {
      _json["onHostMaintenance"] = onHostMaintenance;
    }
    if (serviceAccounts != null) {
      _json["serviceAccounts"] = serviceAccounts.map((value) => (value).toJson()).toList();
    }
    if (tags != null) {
      _json["tags"] = (tags).toJson();
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}


/**
 * A Compute Engine service account, identical to the Compute Engine resource.
 */
class ServiceAccount {
  /** Service account email address. */
  core.String email;

  /** List of OAuth2 scopes to obtain for the service account. */
  core.List<core.String> scopes;


  ServiceAccount();

  ServiceAccount.fromJson(core.Map _json) {
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("scopes")) {
      scopes = _json["scopes"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (email != null) {
      _json["email"] = email;
    }
    if (scopes != null) {
      _json["scopes"] = scopes;
    }
    return _json;
  }
}


/**
 * A Compute Engine Instance tag, identical to the tags on the corresponding
 * Compute Engine Instance resource.
 */
class Tag {
  /** The fingerprint of the tag. */
  core.String fingerPrint;

  /** Items contained in this tag. */
  core.List<core.String> items;


  Tag();

  Tag.fromJson(core.Map _json) {
    if (_json.containsKey("fingerPrint")) {
      fingerPrint = _json["fingerPrint"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fingerPrint != null) {
      _json["fingerPrint"] = fingerPrint;
    }
    if (items != null) {
      _json["items"] = items;
    }
    return _json;
  }
}


/** A Template represents a complete configuration for a Deployment. */
class Template {
  /** Action definitions for use in Module intents in this Template. */
  core.Map<core.String, Action> actions;

  /** A user-supplied description of this Template. */
  core.String description;

  /** A list of modules for this Template. */
  core.Map<core.String, Module> modules;

  /**
   * Name of this Template. The name must conform to the expression:
   * [a-zA-Z0-9-_]{1,64}
   */
  core.String name;


  Template();

  Template.fromJson(core.Map _json) {
    if (_json.containsKey("actions")) {
      actions = common_internal.mapMap(_json["actions"], (item) => new Action.fromJson(item));
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("modules")) {
      modules = common_internal.mapMap(_json["modules"], (item) => new Module.fromJson(item));
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (actions != null) {
      _json["actions"] = common_internal.mapMap(actions, (item) => (item).toJson());
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (modules != null) {
      _json["modules"] = common_internal.mapMap(modules, (item) => (item).toJson());
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}


/** Not documented yet. */
class TemplatesListResponse {
  /** Not documented yet. */
  core.String nextPageToken;

  /** Not documented yet. */
  core.List<Template> resources;


  TemplatesListResponse();

  TemplatesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resources")) {
      resources = _json["resources"].map((value) => new Template.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (resources != null) {
      _json["resources"] = resources.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


