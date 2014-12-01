library googleapis_beta.replicapoolupdater.v1beta1;

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
 * The Google Compute Engine Instance Group Updater API provides services for
 * updating groups of Compute Engine Instances.
 */
class ReplicapoolupdaterApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

  /** View and manage replica pools */
  static const ReplicapoolScope = "https://www.googleapis.com/auth/replicapool";

  /** View replica pools */
  static const ReplicapoolReadonlyScope = "https://www.googleapis.com/auth/replicapool.readonly";


  final common_internal.ApiRequester _requester;

  UpdatesResourceApi get updates => new UpdatesResourceApi(_requester);

  ReplicapoolupdaterApi(http.Client client) : 
      _requester = new common_internal.ApiRequester(client, "https://www.googleapis.com/", "replicapoolupdater/v1beta1/projects/");
}


/** Not documented yet. */
class UpdatesResourceApi {
  final common_internal.ApiRequester _requester;

  UpdatesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Called on the particular Update endpoint. Cancels the update in state
   * PAUSED. No-op if invoked in state CANCELLED.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   *
   * [zone] - Zone for the instance group manager.
   *
   * [instanceGroupManager] - Name of the instance group manager for this
   * request.
   *
   * [update] - Unique (in the context of a group) handle of an update.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future cancel(core.String project, core.String zone, core.String instanceGroupManager, core.String update) {
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
    if (instanceGroupManager == null) {
      throw new core.ArgumentError("Parameter instanceGroupManager is required.");
    }
    if (update == null) {
      throw new core.ArgumentError("Parameter update is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instanceGroupManagers/' + common_internal.Escaper.ecapeVariable('$instanceGroupManager') + '/updates/' + common_internal.Escaper.ecapeVariable('$update') + '/cancel';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Called on the particular Update endpoint. Returns the Update resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   *
   * [zone] - Zone for the instance group manager.
   *
   * [instanceGroupManager] - Name of the instance group manager for this
   * request.
   *
   * [update] - Unique (in the context of a group) handle of an update.
   *
   * Completes with a [Update].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Update> get(core.String project, core.String zone, core.String instanceGroupManager, core.String update) {
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
    if (instanceGroupManager == null) {
      throw new core.ArgumentError("Parameter instanceGroupManager is required.");
    }
    if (update == null) {
      throw new core.ArgumentError("Parameter update is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instanceGroupManagers/' + common_internal.Escaper.ecapeVariable('$instanceGroupManager') + '/updates/' + common_internal.Escaper.ecapeVariable('$update');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Update.fromJson(data));
  }

  /**
   * Called on the collection endpoint. Inserts the new Update resource and
   * starts the update.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   *
   * [zone] - Zone for the instance group manager.
   *
   * [instanceGroupManager] - Name of the instance group manager for this
   * request.
   *
   * Completes with a [InsertResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<InsertResponse> insert(Update request, core.String project, core.String zone, core.String instanceGroupManager) {
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
    if (instanceGroupManager == null) {
      throw new core.ArgumentError("Parameter instanceGroupManager is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instanceGroupManagers/' + common_internal.Escaper.ecapeVariable('$instanceGroupManager') + '/updates';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InsertResponse.fromJson(data));
  }

  /**
   * Called on the collection endpoint. Lists updates for a given instance
   * group, in reverse chronological order. Pagination is supported, see
   * ListRequestHeader.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   *
   * [zone] - Zone for the instance group manager.
   *
   * [instanceGroupManager] - Name of the instance group manager for this
   * request.
   *
   * [maxResults] - Maximum count of results to be returned. Acceptable values
   * are 1 to 100, inclusive. (Default: 50)
   * Value must be between "1" and "100".
   *
   * [pageToken] - Set this to the nextPageToken value returned by a previous
   * list request to obtain the next page of results from the previous list
   * request.
   *
   * Completes with a [UpdateList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<UpdateList> list(core.String project, core.String zone, core.String instanceGroupManager, {core.int maxResults, core.String pageToken}) {
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
    if (instanceGroupManager == null) {
      throw new core.ArgumentError("Parameter instanceGroupManager is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instanceGroupManagers/' + common_internal.Escaper.ecapeVariable('$instanceGroupManager') + '/updates';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new UpdateList.fromJson(data));
  }

  /**
   * Called on the particular Update endpoint. Pauses the update in state
   * ROLLING_FORWARD or ROLLING_BACK. No-op if invoked in state PAUSED.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   *
   * [zone] - Zone for the instance group manager.
   *
   * [instanceGroupManager] - Name of the instance group manager for this
   * request.
   *
   * [update] - Unique (in the context of a group) handle of an update.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future pause(core.String project, core.String zone, core.String instanceGroupManager, core.String update) {
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
    if (instanceGroupManager == null) {
      throw new core.ArgumentError("Parameter instanceGroupManager is required.");
    }
    if (update == null) {
      throw new core.ArgumentError("Parameter update is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instanceGroupManagers/' + common_internal.Escaper.ecapeVariable('$instanceGroupManager') + '/updates/' + common_internal.Escaper.ecapeVariable('$update') + '/pause';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Called on the particular Update endpoint. Rolls back the update in state
   * ROLLING_FORWARD or PAUSED. No-op if invoked in state ROLLED_BACK or
   * ROLLING_BACK.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   *
   * [zone] - Zone for the instance group manager.
   *
   * [instanceGroupManager] - Name of the instance group manager for this
   * request.
   *
   * [update] - Unique (in the context of a group) handle of an update.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future rollback(core.String project, core.String zone, core.String instanceGroupManager, core.String update) {
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
    if (instanceGroupManager == null) {
      throw new core.ArgumentError("Parameter instanceGroupManager is required.");
    }
    if (update == null) {
      throw new core.ArgumentError("Parameter update is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instanceGroupManagers/' + common_internal.Escaper.ecapeVariable('$instanceGroupManager') + '/updates/' + common_internal.Escaper.ecapeVariable('$update') + '/rollback';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Called on the particular Update endpoint. Rolls forward the update in state
   * ROLLING_BACK or PAUSED. No-op if invoked in state ROLLED_OUT or
   * ROLLING_FORWARD.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   *
   * [zone] - Zone for the instance group manager.
   *
   * [instanceGroupManager] - Name of the instance group manager for this
   * request.
   *
   * [update] - Unique (in the context of a group) handle of an update.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future rollforward(core.String project, core.String zone, core.String instanceGroupManager, core.String update) {
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
    if (instanceGroupManager == null) {
      throw new core.ArgumentError("Parameter instanceGroupManager is required.");
    }
    if (update == null) {
      throw new core.ArgumentError("Parameter update is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instanceGroupManagers/' + common_internal.Escaper.ecapeVariable('$instanceGroupManager') + '/updates/' + common_internal.Escaper.ecapeVariable('$update') + '/rollforward';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

}



/** Response returned by Insert method. */
class InsertResponse {
  /** Unique (in the context of a group) handle of an update. */
  core.String update;


  InsertResponse();

  InsertResponse.fromJson(core.Map _json) {
    if (_json.containsKey("update")) {
      update = _json["update"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (update != null) {
      _json["update"] = update;
    }
    return _json;
  }
}


/** Update of a single instance. */
class InstanceUpdate {
  /** Name of an instance. */
  core.String instanceName;

  /**
   * State of an instance update. Possible values are:
   * - "PENDING/code>": The instance update is pending execution.
   * - "ROLLING_FORWARD": The instance update is going forward.
   * - "ROLLING_BACK": The instance update being rolled back.
   * - "PAUSED": The instance update is temporarily paused (inactive).
   * - "ROLLED_OUT": The instance update is finished, the instance is running
   * the new template.
   * - "ROLLED_BACK": The instance update is finished, the instance has been
   * reverted to the previous template.
   * - "CANCELLED": The instance update is paused and no longer can be resumed,
   * undefined in which template the instance is running.
   */
  core.String state;


  InstanceUpdate();

  InstanceUpdate.fromJson(core.Map _json) {
    if (_json.containsKey("instanceName")) {
      instanceName = _json["instanceName"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instanceName != null) {
      _json["instanceName"] = instanceName;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}


/**
 * Resource describing a single update (rollout) of an instance group to the
 * given template.
 */
class Update {
  /** [Output only] The time the update was created, in RFC3339 text format. */
  core.String creationTimestamp;

  /** [Output only] Human-readable description of an update progress. */
  core.String details;

  /**
   * [Output only] Unique (in the context of a group) handle assigned to this
   * update.
   */
  core.String handle;

  /** Url of an instance template to be applied. */
  core.String instanceTemplate;

  /** [Output only] Collection of instance updates. */
  core.List<InstanceUpdate> instanceUpdates;

  /** [Output only] The resource type. Always replicapoolupdater#update. */
  core.String kind;

  /** Parameters of an update process. */
  UpdatePolicy policy;

  /** [Output only] The fully qualified URL for this resource. */
  core.String selfLink;

  /**
   * [Output only] Current state of an update. Possible values are:
   * - "ROLLING_FORWARD": The update is going forward.
   * - "ROLLING_BACK": The update is being rolled back.
   * - "PAUSED": The update is temporarily paused (inactive).
   * - "ROLLED_OUT": The update is finished, all instances have been updated
   * successfully.
   * - "ROLLED_BACK": The update is finished, all instances have been reverted
   * to the previous template.
   * - "CANCELLED": The update is paused and no longer can be resumed, undefined
   * how many instances are running in which template.
   */
  core.String state;

  /**
   * [Output only] Requested state of an update. This is the state that the
   * updater is moving towards. Acceptable values are:
   * - "ROLLED_OUT": The user has requested the update to go forward.
   * - "ROLLED_BACK": The user has requested the update to be rolled back.
   * - "PAUSED": The user has requested the update to be paused.
   *
   * - "CANCELLED": The user has requested the update to be cancelled. The
   * updater service is in the process of canceling the update.
   */
  core.String targetState;

  /**
   * [Output only] User who requested the update, for example: user@example.com.
   */
  core.String user;


  Update();

  Update.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("handle")) {
      handle = _json["handle"];
    }
    if (_json.containsKey("instanceTemplate")) {
      instanceTemplate = _json["instanceTemplate"];
    }
    if (_json.containsKey("instanceUpdates")) {
      instanceUpdates = _json["instanceUpdates"].map((value) => new InstanceUpdate.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("policy")) {
      policy = new UpdatePolicy.fromJson(_json["policy"]);
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("targetState")) {
      targetState = _json["targetState"];
    }
    if (_json.containsKey("user")) {
      user = _json["user"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (handle != null) {
      _json["handle"] = handle;
    }
    if (instanceTemplate != null) {
      _json["instanceTemplate"] = instanceTemplate;
    }
    if (instanceUpdates != null) {
      _json["instanceUpdates"] = instanceUpdates.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (targetState != null) {
      _json["targetState"] = targetState;
    }
    if (user != null) {
      _json["user"] = user;
    }
    return _json;
  }
}


/** Response returned by List method. */
class UpdateList {
  /** Collection of requested updates. */
  core.List<Update> items;

  /** A token used to continue a truncated list request. */
  core.String nextPageToken;


  UpdateList();

  UpdateList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Update.fromJson(value)).toList();
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
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/** Parameters of an update process. */
class UpdatePolicy {
  /** Parameters of a canary phase. If absent, canary will NOT be performed. */
  UpdatePolicyCanary canary;

  /**
   * Maximum number of instances that can be updated simultaneously
   * (concurrently). An update of an instance starts when the instance is about
   * to be restarted and finishes after the instance has been restarted and the
   * sleep period (defined by sleep_after_instance_restart_sec) has passed.
   */
  core.int maxNumConcurrentInstances;

  /**
   * Time period after the instance has been restarted but before marking the
   * update of this instance as done.
   */
  core.int sleepAfterInstanceRestartSec;


  UpdatePolicy();

  UpdatePolicy.fromJson(core.Map _json) {
    if (_json.containsKey("canary")) {
      canary = new UpdatePolicyCanary.fromJson(_json["canary"]);
    }
    if (_json.containsKey("maxNumConcurrentInstances")) {
      maxNumConcurrentInstances = _json["maxNumConcurrentInstances"];
    }
    if (_json.containsKey("sleepAfterInstanceRestartSec")) {
      sleepAfterInstanceRestartSec = _json["sleepAfterInstanceRestartSec"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (canary != null) {
      _json["canary"] = (canary).toJson();
    }
    if (maxNumConcurrentInstances != null) {
      _json["maxNumConcurrentInstances"] = maxNumConcurrentInstances;
    }
    if (sleepAfterInstanceRestartSec != null) {
      _json["sleepAfterInstanceRestartSec"] = sleepAfterInstanceRestartSec;
    }
    return _json;
  }
}


/** Parameters of a canary phase. */
class UpdatePolicyCanary {
  /**
   * Number of instances updated as a part of canary phase. If absent, the
   * default number of instances will be used.
   */
  core.int numInstances;


  UpdatePolicyCanary();

  UpdatePolicyCanary.fromJson(core.Map _json) {
    if (_json.containsKey("numInstances")) {
      numInstances = _json["numInstances"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (numInstances != null) {
      _json["numInstances"] = numInstances;
    }
    return _json;
  }
}


