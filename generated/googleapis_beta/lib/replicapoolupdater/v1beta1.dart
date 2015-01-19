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

  RollingUpdatesResourceApi get rollingUpdates => new RollingUpdatesResourceApi(_requester);

  ReplicapoolupdaterApi(http.Client client, {core.String rootUrl: "https://www.googleapis.com/", core.String servicePath: "replicapoolupdater/v1beta1/projects/"}) :
      _requester = new common_internal.ApiRequester(client, rootUrl, servicePath);
}


/** Not documented yet. */
class RollingUpdatesResourceApi {
  final common_internal.ApiRequester _requester;

  RollingUpdatesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Cancels an update. The update must be PAUSED before it can be cancelled.
   * This has no effect if the update is already CANCELLED.
   *
   * Request parameters:
   *
   * [project] - The Google Developers Console project name.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone in which the update's target resides.
   *
   * [rollingUpdate] - The name of the update.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future cancel(core.String project, core.String zone, core.String rollingUpdate) {
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
    if (rollingUpdate == null) {
      throw new core.ArgumentError("Parameter rollingUpdate is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/rollingUpdates/' + common_internal.Escaper.ecapeVariable('$rollingUpdate') + '/cancel';

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
   * Returns information about an update.
   *
   * Request parameters:
   *
   * [project] - The Google Developers Console project name.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone in which the update's target resides.
   *
   * [rollingUpdate] - The name of the update.
   *
   * Completes with a [RollingUpdate].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<RollingUpdate> get(core.String project, core.String zone, core.String rollingUpdate) {
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
    if (rollingUpdate == null) {
      throw new core.ArgumentError("Parameter rollingUpdate is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/rollingUpdates/' + common_internal.Escaper.ecapeVariable('$rollingUpdate');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RollingUpdate.fromJson(data));
  }

  /**
   * Inserts and starts a new update.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - The Google Developers Console project name.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone in which the update's target resides.
   *
   * Completes with a [InsertResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<InsertResponse> insert(RollingUpdate request, core.String project, core.String zone) {
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


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/rollingUpdates';

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
   * Lists recent updates for a given managed instance group, in reverse
   * chronological order and paginated format.
   *
   * Request parameters:
   *
   * [project] - The Google Developers Console project name.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone in which the update's target resides.
   *
   * [instanceGroupManager] - The name of the instance group manager.
   *
   * [maxResults] - Maximum count of results to be returned. Acceptable values
   * are 1 to 100, inclusive. (Default: 50)
   * Value must be between "1" and "100".
   *
   * [pageToken] - Set this to the nextPageToken value returned by a previous
   * list request to obtain the next page of results from the previous list
   * request.
   *
   * Completes with a [RollingUpdateList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<RollingUpdateList> list(core.String project, core.String zone, {core.String instanceGroupManager, core.int maxResults, core.String pageToken}) {
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
    if (instanceGroupManager != null) {
      _queryParams["instanceGroupManager"] = [instanceGroupManager];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/rollingUpdates';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RollingUpdateList.fromJson(data));
  }

  /**
   * Lists the current status for each instance within a given update.
   *
   * Request parameters:
   *
   * [project] - The Google Developers Console project name.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone in which the update's target resides.
   *
   * [rollingUpdate] - The name of the update.
   *
   * [maxResults] - Maximum count of results to be returned. Acceptable values
   * are 1 to 100, inclusive. (Default: 50)
   * Value must be between "1" and "100".
   *
   * [pageToken] - Set this to the nextPageToken value returned by a previous
   * list request to obtain the next page of results from the previous list
   * request.
   *
   * Completes with a [InstanceUpdateList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<InstanceUpdateList> listInstanceUpdates(core.String project, core.String zone, core.String rollingUpdate, {core.int maxResults, core.String pageToken}) {
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
    if (rollingUpdate == null) {
      throw new core.ArgumentError("Parameter rollingUpdate is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/rollingUpdates/' + common_internal.Escaper.ecapeVariable('$rollingUpdate') + '/instanceUpdates';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InstanceUpdateList.fromJson(data));
  }

  /**
   * Pauses the update in state from ROLLING_FORWARD or ROLLING_BACK. Has no
   * effect if invoked when the state of the update is PAUSED.
   *
   * Request parameters:
   *
   * [project] - The Google Developers Console project name.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone in which the update's target resides.
   *
   * [rollingUpdate] - The name of the update.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future pause(core.String project, core.String zone, core.String rollingUpdate) {
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
    if (rollingUpdate == null) {
      throw new core.ArgumentError("Parameter rollingUpdate is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/rollingUpdates/' + common_internal.Escaper.ecapeVariable('$rollingUpdate') + '/pause';

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
   * Continues an update in PAUSED state. Has no effect if invoked when the
   * state of the update is ROLLED_OUT.
   *
   * Request parameters:
   *
   * [project] - The Google Developers Console project name.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone in which the update's target resides.
   *
   * [rollingUpdate] - The name of the update.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future resume(core.String project, core.String zone, core.String rollingUpdate) {
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
    if (rollingUpdate == null) {
      throw new core.ArgumentError("Parameter rollingUpdate is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/rollingUpdates/' + common_internal.Escaper.ecapeVariable('$rollingUpdate') + '/resume';

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
   * Rolls back the update in state from ROLLING_FORWARD or PAUSED. Has no
   * effect if invoked when the state of the update is ROLLED_BACK.
   *
   * Request parameters:
   *
   * [project] - The Google Developers Console project name.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone in which the update's target resides.
   *
   * [rollingUpdate] - The name of the update.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future rollback(core.String project, core.String zone, core.String rollingUpdate) {
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
    if (rollingUpdate == null) {
      throw new core.ArgumentError("Parameter rollingUpdate is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/rollingUpdates/' + common_internal.Escaper.ecapeVariable('$rollingUpdate') + '/rollback';

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
  /** The name of the update. */
  core.String rollingUpdate;


  InsertResponse();

  InsertResponse.fromJson(core.Map _json) {
    if (_json.containsKey("rollingUpdate")) {
      rollingUpdate = _json["rollingUpdate"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (rollingUpdate != null) {
      _json["rollingUpdate"] = rollingUpdate;
    }
    return _json;
  }
}


/** Update of a single instance. */
class InstanceUpdate {
  /** URL of the instance being updated. */
  core.String instance;

  /**
   * Status of the instance update. Possible values are:
   * - "PENDING": The instance update is pending execution.
   * - "ROLLING_FORWARD": The instance update is going forward.
   * - "ROLLING_BACK": The instance update is being rolled back.
   * - "PAUSED": The instance update is temporarily paused (inactive).
   * - "ROLLED_OUT": The instance update is finished, the instance is running
   * the new template.
   * - "ROLLED_BACK": The instance update is finished, the instance has been
   * reverted to the previous template.
   * - "CANCELLED": The instance update is paused and no longer can be resumed,
   * undefined in which template the instance is running.
   */
  core.String status;


  InstanceUpdate();

  InstanceUpdate.fromJson(core.Map _json) {
    if (_json.containsKey("instance")) {
      instance = _json["instance"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instance != null) {
      _json["instance"] = instance;
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}


/** Response returned by ListInstanceUpdates method. */
class InstanceUpdateList {
  /** Collection of requested instance updates. */
  core.List<InstanceUpdate> items;

  /** [Output Only] Type of the resource. */
  core.String kind;

  /** A token used to continue a truncated list request. */
  core.String nextPageToken;

  /** [Output Only] The fully qualified URL for the resource. */
  core.String selfLink;


  InstanceUpdateList();

  InstanceUpdateList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new InstanceUpdate.fromJson(value)).toList();
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


/** Parameters of a canary phase. If absent, canary will NOT be performed. */
class RollingUpdatePolicyCanary {
  /**
   * Number of instances updated as a part of canary phase. If absent, the
   * default number of instances will be used.
   */
  core.int numInstances;


  RollingUpdatePolicyCanary();

  RollingUpdatePolicyCanary.fromJson(core.Map _json) {
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


/**
 * Parameters of the update process. Setting (api.field).field_number manually
 * is a workaround for b/16512602.
 */
class RollingUpdatePolicy {
  /** Parameters of a canary phase. If absent, canary will NOT be performed. */
  RollingUpdatePolicyCanary canary;

  /**
   * Maximum number of instances that can be updated simultaneously
   * (concurrently). An update of an instance starts when the instance is about
   * to be restarted and finishes after the instance has been restarted and the
   * sleep period (defined by sleepAfterInstanceRestartSec) has passed.
   */
  core.int maxNumConcurrentInstances;

  /**
   * The number of seconds to wait between when the instance has been
   * successfully updated and restarted, to when it is marked as done.
   */
  core.int sleepAfterInstanceRestartSec;


  RollingUpdatePolicy();

  RollingUpdatePolicy.fromJson(core.Map _json) {
    if (_json.containsKey("canary")) {
      canary = new RollingUpdatePolicyCanary.fromJson(_json["canary"]);
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


/**
 * Resource describing a single update (rollout) of a group of instances to the
 * given template.
 */
class RollingUpdate {
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;

  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;

  /** URL of an instance group manager being updated. */
  core.String instanceGroupManager;

  /** URL of an instance template to apply. */
  core.String instanceTemplate;

  /** [Output Only] Type of the resource. */
  core.String kind;

  /**
   * Parameters of the update process. Setting (api.field).field_number manually
   * is a workaround for b/16512602.
   */
  RollingUpdatePolicy policy;

  /**
   * [Output Only] An optional progress indicator that ranges from 0 to 100.
   * There is no requirement that this be linear or support any granularity of
   * operations. This should not be used to guess at when the update will be
   * complete. This number should be monotonically increasing as the update
   * progresses.
   */
  core.int progress;

  /** [Output Only] The fully qualified URL for the resource. */
  core.String selfLink;

  /**
   * [Output Only] Status of the update. Possible values are:
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
  core.String status;

  /**
   * [Output Only] An optional textual description of the current status of the
   * update.
   */
  core.String statusMessage;

  /**
   * [Output Only] User who requested the update, for example: user@example.com.
   */
  core.String user;


  RollingUpdate();

  RollingUpdate.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("instanceGroupManager")) {
      instanceGroupManager = _json["instanceGroupManager"];
    }
    if (_json.containsKey("instanceTemplate")) {
      instanceTemplate = _json["instanceTemplate"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("policy")) {
      policy = new RollingUpdatePolicy.fromJson(_json["policy"]);
    }
    if (_json.containsKey("progress")) {
      progress = _json["progress"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("statusMessage")) {
      statusMessage = _json["statusMessage"];
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
    if (id != null) {
      _json["id"] = id;
    }
    if (instanceGroupManager != null) {
      _json["instanceGroupManager"] = instanceGroupManager;
    }
    if (instanceTemplate != null) {
      _json["instanceTemplate"] = instanceTemplate;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    if (progress != null) {
      _json["progress"] = progress;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (statusMessage != null) {
      _json["statusMessage"] = statusMessage;
    }
    if (user != null) {
      _json["user"] = user;
    }
    return _json;
  }
}


/** Response returned by List method. */
class RollingUpdateList {
  /** Collection of requested updates. */
  core.List<RollingUpdate> items;

  /** [Output Only] Type of the resource. */
  core.String kind;

  /** A token used to continue a truncated list request. */
  core.String nextPageToken;

  /** [Output Only] The fully qualified URL for the resource. */
  core.String selfLink;


  RollingUpdateList();

  RollingUpdateList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new RollingUpdate.fromJson(value)).toList();
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


