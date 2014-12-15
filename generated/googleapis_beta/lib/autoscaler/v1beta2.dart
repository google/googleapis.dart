library googleapis_beta.autoscaler.v1beta2;

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
 * The Google Compute Engine Autoscaler API provides autoscaling for groups of
 * Cloud VMs.
 */
class AutoscalerApi {
  /** View and manage your Google Compute Engine resources */
  static const ComputeScope = "https://www.googleapis.com/auth/compute";

  /** View your Google Compute Engine resources */
  static const ComputeReadonlyScope = "https://www.googleapis.com/auth/compute.readonly";


  final common_internal.ApiRequester _requester;

  AutoscalersResourceApi get autoscalers => new AutoscalersResourceApi(_requester);
  ZoneOperationsResourceApi get zoneOperations => new ZoneOperationsResourceApi(_requester);
  ZonesResourceApi get zones => new ZonesResourceApi(_requester);

  AutoscalerApi(http.Client client, {core.String rootUrl: "https://www.googleapis.com/", core.String servicePath: "autoscaler/v1beta2/"}) :
      _requester = new common_internal.ApiRequester(client, rootUrl, servicePath);
}


/** Not documented yet. */
class AutoscalersResourceApi {
  final common_internal.ApiRequester _requester;

  AutoscalersResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified Autoscaler resource.
   *
   * Request parameters:
   *
   * [project] - Project ID of Autoscaler resource.
   *
   * [zone] - Zone name of Autoscaler resource.
   *
   * [autoscaler] - Name of the Autoscaler resource.
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String zone, core.String autoscaler) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (autoscaler == null) {
      throw new core.ArgumentError("Parameter autoscaler is required.");
    }


    _url = 'projects/' + common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/autoscalers/' + common_internal.Escaper.ecapeVariable('$autoscaler');

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
   * Gets the specified Autoscaler resource.
   *
   * Request parameters:
   *
   * [project] - Project ID of Autoscaler resource.
   *
   * [zone] - Zone name of Autoscaler resource.
   *
   * [autoscaler] - Name of the Autoscaler resource.
   *
   * Completes with a [Autoscaler].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Autoscaler> get(core.String project, core.String zone, core.String autoscaler) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (autoscaler == null) {
      throw new core.ArgumentError("Parameter autoscaler is required.");
    }


    _url = 'projects/' + common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/autoscalers/' + common_internal.Escaper.ecapeVariable('$autoscaler');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Autoscaler.fromJson(data));
  }

  /**
   * Adds new Autoscaler resource.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID of Autoscaler resource.
   *
   * [zone] - Zone name of Autoscaler resource.
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> insert(Autoscaler request, core.String project, core.String zone) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }


    _url = 'projects/' + common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/autoscalers';

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
   * Lists all Autoscaler resources in this zone.
   *
   * Request parameters:
   *
   * [project] - Project ID of Autoscaler resource.
   *
   * [zone] - Zone name of Autoscaler resource.
   *
   * [filter] - null
   *
   * [maxResults] - null
   * Value must be between "0" and "500".
   *
   * [pageToken] - null
   *
   * Completes with a [AutoscalerListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AutoscalerListResponse> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = 'projects/' + common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/autoscalers';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AutoscalerListResponse.fromJson(data));
  }

  /**
   * Update the entire content of the Autoscaler resource. This method supports
   * patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID of Autoscaler resource.
   *
   * [zone] - Zone name of Autoscaler resource.
   *
   * [autoscaler] - Name of the Autoscaler resource.
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> patch(Autoscaler request, core.String project, core.String zone, core.String autoscaler) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (autoscaler == null) {
      throw new core.ArgumentError("Parameter autoscaler is required.");
    }


    _url = 'projects/' + common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/autoscalers/' + common_internal.Escaper.ecapeVariable('$autoscaler');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Update the entire content of the Autoscaler resource.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID of Autoscaler resource.
   *
   * [zone] - Zone name of Autoscaler resource.
   *
   * [autoscaler] - Name of the Autoscaler resource.
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> update(Autoscaler request, core.String project, core.String zone, core.String autoscaler) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (autoscaler == null) {
      throw new core.ArgumentError("Parameter autoscaler is required.");
    }


    _url = 'projects/' + common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/autoscalers/' + common_internal.Escaper.ecapeVariable('$autoscaler');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


/** Not documented yet. */
class ZoneOperationsResourceApi {
  final common_internal.ApiRequester _requester;

  ZoneOperationsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified zone-specific operation resource.
   *
   * Request parameters:
   *
   * [project] - null
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - null
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [operation] - null
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String project, core.String zone, core.String operation) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (operation == null) {
      throw new core.ArgumentError("Parameter operation is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/operations/' + common_internal.Escaper.ecapeVariable('$operation');

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
   * Retrieves the specified zone-specific operation resource.
   *
   * Request parameters:
   *
   * [project] - null
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - null
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [operation] - null
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> get(core.String project, core.String zone, core.String operation) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (operation == null) {
      throw new core.ArgumentError("Parameter operation is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/operations/' + common_internal.Escaper.ecapeVariable('$operation');

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
   * Retrieves the list of operation resources contained within the specified
   * zone.
   *
   * Request parameters:
   *
   * [project] - null
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - null
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - null
   *
   * [maxResults] - null
   * Value must be between "0" and "500".
   *
   * [pageToken] - null
   *
   * Completes with a [OperationList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<OperationList> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/operations';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new OperationList.fromJson(data));
  }

}


/** Not documented yet. */
class ZonesResourceApi {
  final common_internal.ApiRequester _requester;

  ZonesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Not documented yet.
   *
   * Request parameters:
   *
   * [project] - null
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - null
   *
   * [maxResults] - null
   * Value must be between "0" and "500".
   *
   * [pageToken] - null
   *
   * Completes with a [ZoneList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ZoneList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ZoneList.fromJson(data));
  }

}



/** Cloud Autoscaler resource. */
class Autoscaler {
  /** Configuration parameters for autoscaling algorithm. */
  AutoscalingPolicy autoscalingPolicy;

  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;

  /**
   * An optional textual description of the resource provided by the client.
   */
  core.String description;

  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;

  /** Type of resource. */
  core.String kind;

  /** Name of the Autoscaler resource. Must be unique per project and zone. */
  core.String name;

  /** [Output Only] A self-link to the Autoscaler configuration resource. */
  core.String selfLink;

  /**
   * URL to the entity which will be autoscaled. Currently the only supported
   * value is ReplicaPool?s URL. Note: it is illegal to specify multiple
   * Autoscalers for the same target.
   */
  core.String target;


  Autoscaler();

  Autoscaler.fromJson(core.Map _json) {
    if (_json.containsKey("autoscalingPolicy")) {
      autoscalingPolicy = new AutoscalingPolicy.fromJson(_json["autoscalingPolicy"]);
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (autoscalingPolicy != null) {
      _json["autoscalingPolicy"] = (autoscalingPolicy).toJson();
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (target != null) {
      _json["target"] = target;
    }
    return _json;
  }
}


/** Not documented yet. */
class AutoscalerListResponse {
  /** Autoscaler resources. */
  core.List<Autoscaler> items;

  /** Type of resource. */
  core.String kind;

  /** [Output only] A token used to continue a truncated list request. */
  core.String nextPageToken;


  AutoscalerListResponse();

  AutoscalerListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Autoscaler.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/** Cloud Autoscaler policy. */
class AutoscalingPolicy {
  /**
   * The number of seconds that the Autoscaler should wait between two
   * succeeding changes to the number of virtual machines. You should define an
   * interval that is at least as long as the initialization time of a virtual
   * machine and the time it may take for replica pool to create the virtual
   * machine. The default is 60 seconds.
   */
  core.int coolDownPeriodSec;

  /**
   * Exactly one utilization policy should be provided. Configuration parameters
   * of CPU based autoscaling policy.
   */
  AutoscalingPolicyCpuUtilization cpuUtilization;

  /** Configuration parameters of autoscaling based on custom metric. */
  core.List<AutoscalingPolicyCustomMetricUtilization> customMetricUtilizations;

  /** Configuration parameters of autoscaling based on load balancer. */
  AutoscalingPolicyLoadBalancingUtilization loadBalancingUtilization;

  /** The maximum number of replicas that the Autoscaler can scale up to. */
  core.int maxNumReplicas;

  /** The minimum number of replicas that the Autoscaler can scale down to. */
  core.int minNumReplicas;


  AutoscalingPolicy();

  AutoscalingPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("coolDownPeriodSec")) {
      coolDownPeriodSec = _json["coolDownPeriodSec"];
    }
    if (_json.containsKey("cpuUtilization")) {
      cpuUtilization = new AutoscalingPolicyCpuUtilization.fromJson(_json["cpuUtilization"]);
    }
    if (_json.containsKey("customMetricUtilizations")) {
      customMetricUtilizations = _json["customMetricUtilizations"].map((value) => new AutoscalingPolicyCustomMetricUtilization.fromJson(value)).toList();
    }
    if (_json.containsKey("loadBalancingUtilization")) {
      loadBalancingUtilization = new AutoscalingPolicyLoadBalancingUtilization.fromJson(_json["loadBalancingUtilization"]);
    }
    if (_json.containsKey("maxNumReplicas")) {
      maxNumReplicas = _json["maxNumReplicas"];
    }
    if (_json.containsKey("minNumReplicas")) {
      minNumReplicas = _json["minNumReplicas"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (coolDownPeriodSec != null) {
      _json["coolDownPeriodSec"] = coolDownPeriodSec;
    }
    if (cpuUtilization != null) {
      _json["cpuUtilization"] = (cpuUtilization).toJson();
    }
    if (customMetricUtilizations != null) {
      _json["customMetricUtilizations"] = customMetricUtilizations.map((value) => (value).toJson()).toList();
    }
    if (loadBalancingUtilization != null) {
      _json["loadBalancingUtilization"] = (loadBalancingUtilization).toJson();
    }
    if (maxNumReplicas != null) {
      _json["maxNumReplicas"] = maxNumReplicas;
    }
    if (minNumReplicas != null) {
      _json["minNumReplicas"] = minNumReplicas;
    }
    return _json;
  }
}


/** CPU utilization policy. */
class AutoscalingPolicyCpuUtilization {
  /**
   * The target utilization that the Autoscaler should maintain. It is
   * represented as a fraction of used cores. For example: 6 cores used in
   * 8-core VM are represented here as 0.75. Must be a float value between (0,
   * 1]. If not defined, the default is 0.8.
   */
  core.double utilizationTarget;


  AutoscalingPolicyCpuUtilization();

  AutoscalingPolicyCpuUtilization.fromJson(core.Map _json) {
    if (_json.containsKey("utilizationTarget")) {
      utilizationTarget = _json["utilizationTarget"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (utilizationTarget != null) {
      _json["utilizationTarget"] = utilizationTarget;
    }
    return _json;
  }
}


/** Custom utilization metric policy. */
class AutoscalingPolicyCustomMetricUtilization {
  /**
   * Identifier of the metric. It should be a Cloud Monitoring metric. The
   * metric can not have negative values. The metric should be an utilization
   * metric (increasing number of VMs handling requests x times should reduce
   * average value of the metric roughly x times). For example you could use:
   * compute.googleapis.com/instance/network/received_bytes_count.
   */
  core.String metric;

  /**
   * Target value of the metric which Autoscaler should maintain. Must be a
   * positive value.
   */
  core.double utilizationTarget;

  /** Defines type in which utilization_target is expressed. */
  core.String utilizationTargetType;


  AutoscalingPolicyCustomMetricUtilization();

  AutoscalingPolicyCustomMetricUtilization.fromJson(core.Map _json) {
    if (_json.containsKey("metric")) {
      metric = _json["metric"];
    }
    if (_json.containsKey("utilizationTarget")) {
      utilizationTarget = _json["utilizationTarget"];
    }
    if (_json.containsKey("utilizationTargetType")) {
      utilizationTargetType = _json["utilizationTargetType"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (metric != null) {
      _json["metric"] = metric;
    }
    if (utilizationTarget != null) {
      _json["utilizationTarget"] = utilizationTarget;
    }
    if (utilizationTargetType != null) {
      _json["utilizationTargetType"] = utilizationTargetType;
    }
    return _json;
  }
}


/** Load balancing utilization policy. */
class AutoscalingPolicyLoadBalancingUtilization {
  /**
   * Fraction of backend capacity utilization (set in HTTP load balancing
   * configuration) that Autoscaler should maintain. Must be a positive float
   * value. If not defined, the default is 0.8. For example if your
   * maxRatePerInstance capacity (in HTTP Load Balancing configuration) is set
   * at 10 and you would like to keep number of instances such that each
   * instance receives 7 QPS on average, set this to 0.7.
   */
  core.double utilizationTarget;


  AutoscalingPolicyLoadBalancingUtilization();

  AutoscalingPolicyLoadBalancingUtilization.fromJson(core.Map _json) {
    if (_json.containsKey("utilizationTarget")) {
      utilizationTarget = _json["utilizationTarget"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (utilizationTarget != null) {
      _json["utilizationTarget"] = utilizationTarget;
    }
    return _json;
  }
}


/** Not documented yet. */
class DeprecationStatus {
  /** Not documented yet. */
  core.String deleted;

  /** Not documented yet. */
  core.String deprecated;

  /** Not documented yet. */
  core.String obsolete;

  /** Not documented yet. */
  core.String replacement;

  /** Not documented yet. */
  core.String state;


  DeprecationStatus();

  DeprecationStatus.fromJson(core.Map _json) {
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("deprecated")) {
      deprecated = _json["deprecated"];
    }
    if (_json.containsKey("obsolete")) {
      obsolete = _json["obsolete"];
    }
    if (_json.containsKey("replacement")) {
      replacement = _json["replacement"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (deprecated != null) {
      _json["deprecated"] = deprecated;
    }
    if (obsolete != null) {
      _json["obsolete"] = obsolete;
    }
    if (replacement != null) {
      _json["replacement"] = replacement;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}


/** Not documented yet. */
class OperationErrorErrors {
  /** Not documented yet. */
  core.String code;

  /** Not documented yet. */
  core.String location;

  /** Not documented yet. */
  core.String message;


  OperationErrorErrors();

  OperationErrorErrors.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
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
    if (location != null) {
      _json["location"] = location;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}


/** Not documented yet. */
class OperationError {
  /** Not documented yet. */
  core.List<OperationErrorErrors> errors;


  OperationError();

  OperationError.fromJson(core.Map _json) {
    if (_json.containsKey("errors")) {
      errors = _json["errors"].map((value) => new OperationErrorErrors.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (errors != null) {
      _json["errors"] = errors.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class OperationWarningsData {
  /** Not documented yet. */
  core.String key;

  /** Not documented yet. */
  core.String value;


  OperationWarningsData();

  OperationWarningsData.fromJson(core.Map _json) {
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


/** Not documented yet. */
class OperationWarnings {
  /** Not documented yet. */
  core.String code;

  /** Not documented yet. */
  core.List<OperationWarningsData> data;

  /** Not documented yet. */
  core.String message;


  OperationWarnings();

  OperationWarnings.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new OperationWarningsData.fromJson(value)).toList();
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
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}


/** Not documented yet. */
class Operation {
  /** Not documented yet. */
  core.String clientOperationId;

  /** Not documented yet. */
  core.String creationTimestamp;

  /** Not documented yet. */
  core.String endTime;

  /** Not documented yet. */
  OperationError error;

  /** Not documented yet. */
  core.String httpErrorMessage;

  /** Not documented yet. */
  core.int httpErrorStatusCode;

  /** Not documented yet. */
  core.String id;

  /** Not documented yet. */
  core.String insertTime;

  /**
   * [Output Only] Type of the resource. Always kind#operation for Operation
   * resources.
   */
  core.String kind;

  /** Not documented yet. */
  core.String name;

  /** Not documented yet. */
  core.String operationType;

  /** Not documented yet. */
  core.int progress;

  /** Not documented yet. */
  core.String region;

  /** Not documented yet. */
  core.String selfLink;

  /** Not documented yet. */
  core.String startTime;

  /** Not documented yet. */
  core.String status;

  /** Not documented yet. */
  core.String statusMessage;

  /** Not documented yet. */
  core.String targetId;

  /** Not documented yet. */
  core.String targetLink;

  /** Not documented yet. */
  core.String user;

  /** Not documented yet. */
  core.List<OperationWarnings> warnings;

  /** Not documented yet. */
  core.String zone;


  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("clientOperationId")) {
      clientOperationId = _json["clientOperationId"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("error")) {
      error = new OperationError.fromJson(_json["error"]);
    }
    if (_json.containsKey("httpErrorMessage")) {
      httpErrorMessage = _json["httpErrorMessage"];
    }
    if (_json.containsKey("httpErrorStatusCode")) {
      httpErrorStatusCode = _json["httpErrorStatusCode"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("insertTime")) {
      insertTime = _json["insertTime"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("operationType")) {
      operationType = _json["operationType"];
    }
    if (_json.containsKey("progress")) {
      progress = _json["progress"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("statusMessage")) {
      statusMessage = _json["statusMessage"];
    }
    if (_json.containsKey("targetId")) {
      targetId = _json["targetId"];
    }
    if (_json.containsKey("targetLink")) {
      targetLink = _json["targetLink"];
    }
    if (_json.containsKey("user")) {
      user = _json["user"];
    }
    if (_json.containsKey("warnings")) {
      warnings = _json["warnings"].map((value) => new OperationWarnings.fromJson(value)).toList();
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (clientOperationId != null) {
      _json["clientOperationId"] = clientOperationId;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (httpErrorMessage != null) {
      _json["httpErrorMessage"] = httpErrorMessage;
    }
    if (httpErrorStatusCode != null) {
      _json["httpErrorStatusCode"] = httpErrorStatusCode;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (insertTime != null) {
      _json["insertTime"] = insertTime;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (operationType != null) {
      _json["operationType"] = operationType;
    }
    if (progress != null) {
      _json["progress"] = progress;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (statusMessage != null) {
      _json["statusMessage"] = statusMessage;
    }
    if (targetId != null) {
      _json["targetId"] = targetId;
    }
    if (targetLink != null) {
      _json["targetLink"] = targetLink;
    }
    if (user != null) {
      _json["user"] = user;
    }
    if (warnings != null) {
      _json["warnings"] = warnings.map((value) => (value).toJson()).toList();
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}


/** Not documented yet. */
class OperationList {
  /** Not documented yet. */
  core.String id;

  /** Not documented yet. */
  core.List<Operation> items;

  /** Type of resource. Always compute#operations for Operations resource. */
  core.String kind;

  /** Not documented yet. */
  core.String nextPageToken;

  /** Not documented yet. */
  core.String selfLink;


  OperationList();

  OperationList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Operation.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Not documented yet. */
class ZoneMaintenanceWindows {
  /** Not documented yet. */
  core.String beginTime;

  /** Not documented yet. */
  core.String description;

  /** Not documented yet. */
  core.String endTime;

  /** Not documented yet. */
  core.String name;


  ZoneMaintenanceWindows();

  ZoneMaintenanceWindows.fromJson(core.Map _json) {
    if (_json.containsKey("beginTime")) {
      beginTime = _json["beginTime"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (beginTime != null) {
      _json["beginTime"] = beginTime;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}


/** Not documented yet. */
class Zone {
  /** Not documented yet. */
  core.String creationTimestamp;

  /** Not documented yet. */
  DeprecationStatus deprecated;

  /** Not documented yet. */
  core.String description;

  /** Not documented yet. */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** Not documented yet. */
  core.List<ZoneMaintenanceWindows> maintenanceWindows;

  /** Not documented yet. */
  core.String name;

  /** Not documented yet. */
  core.String region;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** Not documented yet. */
  core.String status;


  Zone();

  Zone.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("deprecated")) {
      deprecated = new DeprecationStatus.fromJson(_json["deprecated"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("maintenanceWindows")) {
      maintenanceWindows = _json["maintenanceWindows"].map((value) => new ZoneMaintenanceWindows.fromJson(value)).toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (deprecated != null) {
      _json["deprecated"] = (deprecated).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (maintenanceWindows != null) {
      _json["maintenanceWindows"] = maintenanceWindows.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}


/** Not documented yet. */
class ZoneList {
  /** Not documented yet. */
  core.String id;

  /** Not documented yet. */
  core.List<Zone> items;

  /** Type of resource. */
  core.String kind;

  /** Not documented yet. */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  ZoneList();

  ZoneList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Zone.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


