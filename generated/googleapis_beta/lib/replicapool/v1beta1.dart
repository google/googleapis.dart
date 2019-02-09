// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis_beta.replicapool.v1beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client replicapool/v1beta1';

/// The Replica Pool API allows users to declaratively provision and manage
/// groups of Google Compute Engine instances based on a common template.
class ReplicapoolApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// View your data across Google Cloud Platform services
  static const CloudPlatformReadOnlyScope =
      "https://www.googleapis.com/auth/cloud-platform.read-only";

  /// View and manage your Google Cloud Platform management resources and
  /// deployment status information
  static const NdevCloudmanScope =
      "https://www.googleapis.com/auth/ndev.cloudman";

  /// View your Google Cloud Platform management resources and deployment status
  /// information
  static const NdevCloudmanReadonlyScope =
      "https://www.googleapis.com/auth/ndev.cloudman.readonly";

  /// View and manage replica pools
  static const ReplicapoolScope = "https://www.googleapis.com/auth/replicapool";

  /// View replica pools
  static const ReplicapoolReadonlyScope =
      "https://www.googleapis.com/auth/replicapool.readonly";

  final commons.ApiRequester _requester;

  PoolsResourceApi get pools => new PoolsResourceApi(_requester);
  ReplicasResourceApi get replicas => new ReplicasResourceApi(_requester);

  ReplicapoolApi(http.Client client,
      {core.String rootUrl = "https://www.googleapis.com/",
      core.String servicePath = "replicapool/v1beta1/projects/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class PoolsResourceApi {
  final commons.ApiRequester _requester;

  PoolsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a replica pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectName] - The project ID for this replica pool.
  ///
  /// [zone] - The zone for this replica pool.
  ///
  /// [poolName] - The name of the replica pool for this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(PoolsDeleteRequest request, core.String projectName,
      core.String zone, core.String poolName,
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
    if (projectName == null) {
      throw new core.ArgumentError("Parameter projectName is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (poolName == null) {
      throw new core.ArgumentError("Parameter poolName is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$projectName') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/pools/' +
        commons.Escaper.ecapeVariable('$poolName');

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets information about a single replica pool.
  ///
  /// Request parameters:
  ///
  /// [projectName] - The project ID for this replica pool.
  ///
  /// [zone] - The zone for this replica pool.
  ///
  /// [poolName] - The name of the replica pool for this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Pool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Pool> get(
      core.String projectName, core.String zone, core.String poolName,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectName == null) {
      throw new core.ArgumentError("Parameter projectName is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (poolName == null) {
      throw new core.ArgumentError("Parameter poolName is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$projectName') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/pools/' +
        commons.Escaper.ecapeVariable('$poolName');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Pool.fromJson(data));
  }

  /// Inserts a new replica pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectName] - The project ID for this replica pool.
  ///
  /// [zone] - The zone for this replica pool.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Pool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Pool> insert(
      Pool request, core.String projectName, core.String zone,
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
    if (projectName == null) {
      throw new core.ArgumentError("Parameter projectName is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$projectName') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/pools';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Pool.fromJson(data));
  }

  /// List all replica pools.
  ///
  /// Request parameters:
  ///
  /// [projectName] - The project ID for this request.
  ///
  /// [zone] - The zone for this replica pool.
  ///
  /// [maxResults] - Maximum count of results to be returned. Acceptable values
  /// are 0 to 100, inclusive. (Default: 50)
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Set this to the nextPageToken value returned by a previous
  /// list request to obtain the next page of results from the previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PoolsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PoolsListResponse> list(
      core.String projectName, core.String zone,
      {core.int maxResults, core.String pageToken, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectName == null) {
      throw new core.ArgumentError("Parameter projectName is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$projectName') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/pools';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new PoolsListResponse.fromJson(data));
  }

  /// Resize a pool. This is an asynchronous operation, and multiple overlapping
  /// resize requests can be made. Replica Pools will use the information from
  /// the last resize request.
  ///
  /// Request parameters:
  ///
  /// [projectName] - The project ID for this replica pool.
  ///
  /// [zone] - The zone for this replica pool.
  ///
  /// [poolName] - The name of the replica pool for this request.
  ///
  /// [numReplicas] - The desired number of replicas to resize to. If this
  /// number is larger than the existing number of replicas, new replicas will
  /// be added. If the number is smaller, then existing replicas will be
  /// deleted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Pool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Pool> resize(
      core.String projectName, core.String zone, core.String poolName,
      {core.int numReplicas, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectName == null) {
      throw new core.ArgumentError("Parameter projectName is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (poolName == null) {
      throw new core.ArgumentError("Parameter poolName is required.");
    }
    if (numReplicas != null) {
      _queryParams["numReplicas"] = ["${numReplicas}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$projectName') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/pools/' +
        commons.Escaper.ecapeVariable('$poolName') +
        '/resize';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Pool.fromJson(data));
  }

  /// Update the template used by the pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectName] - The project ID for this replica pool.
  ///
  /// [zone] - The zone for this replica pool.
  ///
  /// [poolName] - The name of the replica pool for this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future updatetemplate(Template request, core.String projectName,
      core.String zone, core.String poolName,
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
    if (projectName == null) {
      throw new core.ArgumentError("Parameter projectName is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (poolName == null) {
      throw new core.ArgumentError("Parameter poolName is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$projectName') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/pools/' +
        commons.Escaper.ecapeVariable('$poolName') +
        '/updateTemplate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }
}

class ReplicasResourceApi {
  final commons.ApiRequester _requester;

  ReplicasResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a replica from the pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectName] - The project ID for this request.
  ///
  /// [zone] - The zone where the replica lives.
  ///
  /// [poolName] - The replica pool name for this request.
  ///
  /// [replicaName] - The name of the replica for this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Replica].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Replica> delete(
      ReplicasDeleteRequest request,
      core.String projectName,
      core.String zone,
      core.String poolName,
      core.String replicaName,
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
    if (projectName == null) {
      throw new core.ArgumentError("Parameter projectName is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (poolName == null) {
      throw new core.ArgumentError("Parameter poolName is required.");
    }
    if (replicaName == null) {
      throw new core.ArgumentError("Parameter replicaName is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$projectName') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/pools/' +
        commons.Escaper.ecapeVariable('$poolName') +
        '/replicas/' +
        commons.Escaper.ecapeVariable('$replicaName');

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Replica.fromJson(data));
  }

  /// Gets information about a specific replica.
  ///
  /// Request parameters:
  ///
  /// [projectName] - The project ID for this request.
  ///
  /// [zone] - The zone where the replica lives.
  ///
  /// [poolName] - The replica pool name for this request.
  ///
  /// [replicaName] - The name of the replica for this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Replica].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Replica> get(core.String projectName, core.String zone,
      core.String poolName, core.String replicaName,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectName == null) {
      throw new core.ArgumentError("Parameter projectName is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (poolName == null) {
      throw new core.ArgumentError("Parameter poolName is required.");
    }
    if (replicaName == null) {
      throw new core.ArgumentError("Parameter replicaName is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$projectName') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/pools/' +
        commons.Escaper.ecapeVariable('$poolName') +
        '/replicas/' +
        commons.Escaper.ecapeVariable('$replicaName');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Replica.fromJson(data));
  }

  /// Lists all replicas in a pool.
  ///
  /// Request parameters:
  ///
  /// [projectName] - The project ID for this request.
  ///
  /// [zone] - The zone where the replica pool lives.
  ///
  /// [poolName] - The replica pool name for this request.
  ///
  /// [maxResults] - Maximum count of results to be returned. Acceptable values
  /// are 0 to 100, inclusive. (Default: 50)
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Set this to the nextPageToken value returned by a previous
  /// list request to obtain the next page of results from the previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReplicasListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReplicasListResponse> list(
      core.String projectName, core.String zone, core.String poolName,
      {core.int maxResults, core.String pageToken, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectName == null) {
      throw new core.ArgumentError("Parameter projectName is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (poolName == null) {
      throw new core.ArgumentError("Parameter poolName is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$projectName') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/pools/' +
        commons.Escaper.ecapeVariable('$poolName') +
        '/replicas';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ReplicasListResponse.fromJson(data));
  }

  /// Restarts a replica in a pool.
  ///
  /// Request parameters:
  ///
  /// [projectName] - The project ID for this request.
  ///
  /// [zone] - The zone where the replica lives.
  ///
  /// [poolName] - The replica pool name for this request.
  ///
  /// [replicaName] - The name of the replica for this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Replica].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Replica> restart(core.String projectName, core.String zone,
      core.String poolName, core.String replicaName,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectName == null) {
      throw new core.ArgumentError("Parameter projectName is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (poolName == null) {
      throw new core.ArgumentError("Parameter poolName is required.");
    }
    if (replicaName == null) {
      throw new core.ArgumentError("Parameter replicaName is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$projectName') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/pools/' +
        commons.Escaper.ecapeVariable('$poolName') +
        '/replicas/' +
        commons.Escaper.ecapeVariable('$replicaName') +
        '/restart';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Replica.fromJson(data));
  }
}

/// A Compute Engine network accessConfig. Identical to the accessConfig on
/// corresponding Compute Engine resource.
class AccessConfig {
  /// Name of this access configuration.
  core.String name;

  /// An external IP address associated with this instance.
  core.String natIp;

  /// Type of this access configuration file. Currently only ONE_TO_ONE_NAT is
  /// supported.
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

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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

/// An action that gets executed during initialization of the replicas.
class Action {
  /// A list of commands to run, one per line. If any command fails, the whole
  /// action is considered a failure and no further actions are run. This also
  /// marks the virtual machine or replica as a failure.
  core.List<core.String> commands;

  /// A list of environment variables to use for the commands in this action.
  core.List<EnvVariable> envVariables;

  /// If an action's commands on a particular replica do not finish in the
  /// specified timeoutMilliSeconds, the replica is considered to be in a
  /// FAILING state. No efforts are made to stop any processes that were spawned
  /// or created as the result of running the action's commands. The default is
  /// the max allowed value, 1 hour (i.e. 3600000 milliseconds).
  core.int timeoutMilliSeconds;

  Action();

  Action.fromJson(core.Map _json) {
    if (_json.containsKey("commands")) {
      commands = (_json["commands"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("envVariables")) {
      envVariables = (_json["envVariables"] as core.List)
          .map<EnvVariable>((value) => new EnvVariable.fromJson(value))
          .toList();
    }
    if (_json.containsKey("timeoutMilliSeconds")) {
      timeoutMilliSeconds = _json["timeoutMilliSeconds"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (commands != null) {
      _json["commands"] = commands;
    }
    if (envVariables != null) {
      _json["envVariables"] =
          envVariables.map((value) => (value).toJson()).toList();
    }
    if (timeoutMilliSeconds != null) {
      _json["timeoutMilliSeconds"] = timeoutMilliSeconds;
    }
    return _json;
  }
}

/// Specifies how to attach a disk to a Replica.
class DiskAttachment {
  /// The device name of this disk.
  core.String deviceName;

  /// A zero-based index to assign to this disk, where 0 is reserved for the
  /// boot disk. If not specified, this is assigned by the server.
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

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deviceName != null) {
      _json["deviceName"] = deviceName;
    }
    if (index != null) {
      _json["index"] = index;
    }
    return _json;
  }
}

/// An environment variable to set for an action.
class EnvVariable {
  /// Deprecated, do not use.
  core.bool hidden;

  /// The name of the environment variable.
  core.String name;

  /// The value of the variable.
  core.String value;

  EnvVariable();

  EnvVariable.fromJson(core.Map _json) {
    if (_json.containsKey("hidden")) {
      hidden = _json["hidden"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (hidden != null) {
      _json["hidden"] = hidden;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// A pre-existing persistent disk that will be attached to every Replica in the
/// Pool in READ_ONLY mode.
class ExistingDisk {
  /// How the disk will be attached to the Replica.
  DiskAttachment attachment;

  /// The name of the Persistent Disk resource. The Persistent Disk resource
  /// must be in the same zone as the Pool.
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

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (attachment != null) {
      _json["attachment"] = (attachment).toJson();
    }
    if (source != null) {
      _json["source"] = source;
    }
    return _json;
  }
}

class HealthCheck {
  /// How often (in seconds) to make HTTP requests for this healthcheck. The
  /// default value is 5 seconds.
  core.int checkIntervalSec;

  /// The description for this health check.
  core.String description;

  /// The number of consecutive health check requests that need to succeed
  /// before the replica is considered healthy again. The default value is 2.
  core.int healthyThreshold;

  /// The value of the host header in the HTTP health check request. If left
  /// empty (default value), the localhost IP 127.0.0.1 will be used.
  core.String host;

  /// The name of this health check.
  core.String name;

  /// The localhost request path to send this health check, in the format
  /// /path/to/use. For example, /healthcheck.
  core.String path;

  /// The TCP port for the health check requests.
  core.int port;

  /// How long (in seconds) to wait before a timeout failure for this
  /// healthcheck. The default value is 5 seconds.
  core.int timeoutSec;

  /// The number of consecutive health check requests that need to fail in order
  /// to consider the replica unhealthy. The default value is 2.
  core.int unhealthyThreshold;

  HealthCheck();

  HealthCheck.fromJson(core.Map _json) {
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
    if (_json.containsKey("name")) {
      name = _json["name"];
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

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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
    if (name != null) {
      _json["name"] = name;
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

/// A label to apply to this replica pool.
class Label {
  /// The key for this label.
  core.String key;

  /// The value of this label.
  core.String value;

  Label();

  Label.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// A Compute Engine metadata entry. Identical to the metadata on the
/// corresponding Compute Engine resource.
class Metadata {
  /// The fingerprint of the metadata. Required for updating the metadata
  /// entries for this instance.
  core.String fingerPrint;

  /// A list of metadata items.
  core.List<MetadataItem> items;

  Metadata();

  Metadata.fromJson(core.Map _json) {
    if (_json.containsKey("fingerPrint")) {
      fingerPrint = _json["fingerPrint"];
    }
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<MetadataItem>((value) => new MetadataItem.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fingerPrint != null) {
      _json["fingerPrint"] = fingerPrint;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A Compute Engine metadata item, defined as a key:value pair. Identical to
/// the metadata on the corresponding Compute Engine resource.
class MetadataItem {
  /// A metadata key.
  core.String key;

  /// A metadata value.
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

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// A Compute Engine NetworkInterface resource. Identical to the
/// NetworkInterface on the corresponding Compute Engine resource.
class NetworkInterface {
  /// An array of configurations for this interface. This specifies how this
  /// interface is configured to interact with other network services.
  core.List<AccessConfig> accessConfigs;

  /// Name the Network resource to which this interface applies.
  core.String network;

  /// An optional IPV4 internal network address to assign to the instance for
  /// this network interface.
  core.String networkIp;

  NetworkInterface();

  NetworkInterface.fromJson(core.Map _json) {
    if (_json.containsKey("accessConfigs")) {
      accessConfigs = (_json["accessConfigs"] as core.List)
          .map<AccessConfig>((value) => new AccessConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("networkIp")) {
      networkIp = _json["networkIp"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accessConfigs != null) {
      _json["accessConfigs"] =
          accessConfigs.map((value) => (value).toJson()).toList();
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

/// A Persistent Disk resource that will be created and attached to each Replica
/// in the Pool. Each Replica will have a unique persistent disk that is created
/// and attached to that Replica in READ_WRITE mode.
class NewDisk {
  /// How the disk will be attached to the Replica.
  DiskAttachment attachment;

  /// If true, then this disk will be deleted when the instance is deleted. The
  /// default value is true.
  core.bool autoDelete;

  /// If true, indicates that this is the root persistent disk.
  core.bool boot;

  /// Create the new disk using these parameters. The name of the disk will be
  /// <instance_name>-<four_random_charactersgt;.
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
      initializeParams =
          new NewDiskInitializeParams.fromJson(_json["initializeParams"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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

/// Initialization parameters for creating a new disk.
class NewDiskInitializeParams {
  /// The size of the created disk in gigabytes.
  core.String diskSizeGb;

  /// Name of the disk type resource describing which disk type to use to create
  /// the disk. For example 'pd-ssd' or 'pd-standard'. Default is 'pd-standard'
  core.String diskType;

  /// The name or fully-qualified URL of a source image to use to create this
  /// disk. If you provide a name of the source image, Replica Pool will look
  /// for an image with that name in your project. If you are specifying an
  /// image provided by Compute Engine, you will need to provide the full URL
  /// with the correct project, such as:
  /// http://www.googleapis.com/compute/v1/projects/debian-cloud/
  /// global/images/debian-wheezy-7-vYYYYMMDD
  core.String sourceImage;

  NewDiskInitializeParams();

  NewDiskInitializeParams.fromJson(core.Map _json) {
    if (_json.containsKey("diskSizeGb")) {
      diskSizeGb = _json["diskSizeGb"];
    }
    if (_json.containsKey("diskType")) {
      diskType = _json["diskType"];
    }
    if (_json.containsKey("sourceImage")) {
      sourceImage = _json["sourceImage"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (diskSizeGb != null) {
      _json["diskSizeGb"] = diskSizeGb;
    }
    if (diskType != null) {
      _json["diskType"] = diskType;
    }
    if (sourceImage != null) {
      _json["sourceImage"] = sourceImage;
    }
    return _json;
  }
}

class Pool {
  /// Whether replicas in this pool should be restarted if they experience a
  /// failure. The default value is true.
  core.bool autoRestart;

  /// The base instance name to use for the replicas in this pool. This must
  /// match the regex [a-z]([-a-z0-9]*[a-z0-9])?. If specified, the instances in
  /// this replica pool will be named in the format <base-instance-name>-<ID>.
  /// The <ID> postfix will be a four character alphanumeric identifier
  /// generated by the service.
  ///
  /// If this is not specified by the user, a random base instance name is
  /// generated by the service.
  core.String baseInstanceName;

  /// [Output Only] The current number of replicas in the pool.
  core.int currentNumReplicas;

  /// An optional description of the replica pool.
  core.String description;

  /// Deprecated. Please use template[].healthChecks instead.
  core.List<HealthCheck> healthChecks;

  /// The initial number of replicas this pool should have. You must provide a
  /// value greater than or equal to 0.
  core.int initialNumReplicas;

  /// A list of labels to attach to this replica pool and all created virtual
  /// machines in this replica pool.
  core.List<Label> labels;

  /// The name of the replica pool. Must follow the regex
  /// [a-z]([-a-z0-9]*[a-z0-9])? and be 1-28 characters long.
  core.String name;

  /// Deprecated! Use initial_num_replicas instead.
  core.int numReplicas;

  /// The list of resource views that should be updated with all the replicas
  /// that are managed by this pool.
  core.List<core.String> resourceViews;

  /// [Output Only] A self-link to the replica pool.
  core.String selfLink;

  /// Deprecated, please use target_pools instead.
  core.String targetPool;

  /// A list of target pools to update with the replicas that are managed by
  /// this pool. If specified, the replicas in this replica pool will be added
  /// to the specified target pools for load balancing purposes. The replica
  /// pool must live in the same region as the specified target pools. These
  /// values must be the target pool resource names, and not fully qualified
  /// URLs.
  core.List<core.String> targetPools;

  /// The template to use when creating replicas in this pool. This template is
  /// used during initial instance creation of the pool, when growing the pool
  /// in size, or when a replica restarts.
  Template template;

  /// Deprecated! Do not set.
  core.String type;

  Pool();

  Pool.fromJson(core.Map _json) {
    if (_json.containsKey("autoRestart")) {
      autoRestart = _json["autoRestart"];
    }
    if (_json.containsKey("baseInstanceName")) {
      baseInstanceName = _json["baseInstanceName"];
    }
    if (_json.containsKey("currentNumReplicas")) {
      currentNumReplicas = _json["currentNumReplicas"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("healthChecks")) {
      healthChecks = (_json["healthChecks"] as core.List)
          .map<HealthCheck>((value) => new HealthCheck.fromJson(value))
          .toList();
    }
    if (_json.containsKey("initialNumReplicas")) {
      initialNumReplicas = _json["initialNumReplicas"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.List)
          .map<Label>((value) => new Label.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("numReplicas")) {
      numReplicas = _json["numReplicas"];
    }
    if (_json.containsKey("resourceViews")) {
      resourceViews = (_json["resourceViews"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("targetPool")) {
      targetPool = _json["targetPool"];
    }
    if (_json.containsKey("targetPools")) {
      targetPools = (_json["targetPools"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("template")) {
      template = new Template.fromJson(_json["template"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (autoRestart != null) {
      _json["autoRestart"] = autoRestart;
    }
    if (baseInstanceName != null) {
      _json["baseInstanceName"] = baseInstanceName;
    }
    if (currentNumReplicas != null) {
      _json["currentNumReplicas"] = currentNumReplicas;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (healthChecks != null) {
      _json["healthChecks"] =
          healthChecks.map((value) => (value).toJson()).toList();
    }
    if (initialNumReplicas != null) {
      _json["initialNumReplicas"] = initialNumReplicas;
    }
    if (labels != null) {
      _json["labels"] = labels.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (numReplicas != null) {
      _json["numReplicas"] = numReplicas;
    }
    if (resourceViews != null) {
      _json["resourceViews"] = resourceViews;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (targetPool != null) {
      _json["targetPool"] = targetPool;
    }
    if (targetPools != null) {
      _json["targetPools"] = targetPools;
    }
    if (template != null) {
      _json["template"] = (template).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

class PoolsDeleteRequest {
  /// If there are instances you would like to keep, you can specify them here.
  /// These instances won't be deleted, but the associated replica objects will
  /// be removed.
  core.List<core.String> abandonInstances;

  PoolsDeleteRequest();

  PoolsDeleteRequest.fromJson(core.Map _json) {
    if (_json.containsKey("abandonInstances")) {
      abandonInstances =
          (_json["abandonInstances"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (abandonInstances != null) {
      _json["abandonInstances"] = abandonInstances;
    }
    return _json;
  }
}

class PoolsListResponse {
  core.String nextPageToken;
  core.List<Pool> resources;

  PoolsListResponse();

  PoolsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resources")) {
      resources = (_json["resources"] as core.List)
          .map<Pool>((value) => new Pool.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (resources != null) {
      _json["resources"] = resources.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// An individual Replica within a Pool. Replicas are automatically created by
/// the replica pool, using the template provided by the user. You cannot
/// directly create replicas.
class Replica {
  /// [Output Only] The name of the Replica object.
  core.String name;

  /// [Output Only] The self-link of the Replica.
  core.String selfLink;

  /// [Output Only] Last known status of the Replica.
  ReplicaStatus status;

  Replica();

  Replica.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("status")) {
      status = new ReplicaStatus.fromJson(_json["status"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    return _json;
  }
}

/// The current status of a Replica.
class ReplicaStatus {
  /// [Output Only] Human-readable details about the current state of the
  /// replica
  core.String details;

  /// [Output Only] The state of the Replica.
  core.String state;

  /// [Output Only] The template used to build the replica.
  core.String templateVersion;

  /// [Output Only] Link to the virtual machine that this Replica represents.
  core.String vmLink;

  /// [Output Only] The time that this Replica got to the RUNNING state, in RFC
  /// 3339 format. If the start time is unknown, UNKNOWN is returned.
  core.String vmStartTime;

  ReplicaStatus();

  ReplicaStatus.fromJson(core.Map _json) {
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("templateVersion")) {
      templateVersion = _json["templateVersion"];
    }
    if (_json.containsKey("vmLink")) {
      vmLink = _json["vmLink"];
    }
    if (_json.containsKey("vmStartTime")) {
      vmStartTime = _json["vmStartTime"];
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
    if (templateVersion != null) {
      _json["templateVersion"] = templateVersion;
    }
    if (vmLink != null) {
      _json["vmLink"] = vmLink;
    }
    if (vmStartTime != null) {
      _json["vmStartTime"] = vmStartTime;
    }
    return _json;
  }
}

class ReplicasDeleteRequest {
  /// Whether the instance resource represented by this replica should be
  /// deleted or abandoned. If abandoned, the replica will be deleted but the
  /// virtual machine instance will remain. By default, this is set to false and
  /// the instance will be deleted along with the replica.
  core.bool abandonInstance;

  ReplicasDeleteRequest();

  ReplicasDeleteRequest.fromJson(core.Map _json) {
    if (_json.containsKey("abandonInstance")) {
      abandonInstance = _json["abandonInstance"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (abandonInstance != null) {
      _json["abandonInstance"] = abandonInstance;
    }
    return _json;
  }
}

class ReplicasListResponse {
  core.String nextPageToken;
  core.List<Replica> resources;

  ReplicasListResponse();

  ReplicasListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resources")) {
      resources = (_json["resources"] as core.List)
          .map<Replica>((value) => new Replica.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (resources != null) {
      _json["resources"] = resources.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A Compute Engine service account, identical to the Compute Engine resource.
class ServiceAccount {
  /// The service account email address, for example:
  /// 123845678986@project.gserviceaccount.com
  core.String email;

  /// The list of OAuth2 scopes to obtain for the service account, for example:
  /// https://www.googleapis.com/auth/devstorage.full_control
  core.List<core.String> scopes;

  ServiceAccount();

  ServiceAccount.fromJson(core.Map _json) {
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("scopes")) {
      scopes = (_json["scopes"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (email != null) {
      _json["email"] = email;
    }
    if (scopes != null) {
      _json["scopes"] = scopes;
    }
    return _json;
  }
}

/// A Compute Engine Instance tag, identical to the tags on the corresponding
/// Compute Engine Instance resource.
class Tag {
  /// The fingerprint of the tag. Required for updating the list of tags.
  core.String fingerPrint;

  /// Items contained in this tag.
  core.List<core.String> items;

  Tag();

  Tag.fromJson(core.Map _json) {
    if (_json.containsKey("fingerPrint")) {
      fingerPrint = _json["fingerPrint"];
    }
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fingerPrint != null) {
      _json["fingerPrint"] = fingerPrint;
    }
    if (items != null) {
      _json["items"] = items;
    }
    return _json;
  }
}

/// The template used for creating replicas in the pool.
class Template {
  /// An action to run during initialization of your replicas. An action is run
  /// as shell commands which are executed one after the other in the same bash
  /// shell, so any state established by one command is inherited by later
  /// commands.
  Action action;

  /// A list of HTTP Health Checks to configure for this replica pool and all
  /// virtual machines in this replica pool.
  core.List<HealthCheck> healthChecks;

  /// A free-form string describing the version of this template. You can
  /// provide any versioning string you would like. For example, version1 or
  /// template-v1.
  core.String version;

  /// The virtual machine parameters to use for creating replicas. You can
  /// define settings such as the machine type and the image of replicas in this
  /// pool. This is required if replica type is SMART_VM.
  VmParams vmParams;

  Template();

  Template.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = new Action.fromJson(_json["action"]);
    }
    if (_json.containsKey("healthChecks")) {
      healthChecks = (_json["healthChecks"] as core.List)
          .map<HealthCheck>((value) => new HealthCheck.fromJson(value))
          .toList();
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
    if (_json.containsKey("vmParams")) {
      vmParams = new VmParams.fromJson(_json["vmParams"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (action != null) {
      _json["action"] = (action).toJson();
    }
    if (healthChecks != null) {
      _json["healthChecks"] =
          healthChecks.map((value) => (value).toJson()).toList();
    }
    if (version != null) {
      _json["version"] = version;
    }
    if (vmParams != null) {
      _json["vmParams"] = (vmParams).toJson();
    }
    return _json;
  }
}

/// Parameters for creating a Compute Engine Instance resource. Most fields are
/// identical to the corresponding Compute Engine resource.
class VmParams {
  /// Deprecated. Please use baseInstanceName instead.
  core.String baseInstanceName;

  /// Enables IP Forwarding, which allows this instance to receive packets
  /// destined for a different IP address, and send packets with a different
  /// source IP. See IP Forwarding for more information.
  core.bool canIpForward;

  /// An optional textual description of the instance.
  core.String description;

  /// A list of existing Persistent Disk resources to attach to each replica in
  /// the pool. Each disk will be attached in read-only mode to every replica.
  core.List<ExistingDisk> disksToAttach;

  /// A list of Disk resources to create and attach to each Replica in the Pool.
  /// Currently, you can only define one disk and it must be a root persistent
  /// disk. Note that Replica Pool will create a root persistent disk for each
  /// replica.
  core.List<NewDisk> disksToCreate;

  /// The machine type for this instance. The resource name (e.g.
  /// n1-standard-1).
  core.String machineType;

  /// The metadata key/value pairs assigned to this instance.
  Metadata metadata;

  /// A list of network interfaces for the instance. Currently only one
  /// interface is supported by Google Compute Engine, ONE_TO_ONE_NAT.
  core.List<NetworkInterface> networkInterfaces;
  core.String onHostMaintenance;

  /// A list of Service Accounts to enable for this instance.
  core.List<ServiceAccount> serviceAccounts;

  /// A list of tags to apply to the Google Compute Engine instance to identify
  /// resources.
  Tag tags;

  VmParams();

  VmParams.fromJson(core.Map _json) {
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
      disksToAttach = (_json["disksToAttach"] as core.List)
          .map<ExistingDisk>((value) => new ExistingDisk.fromJson(value))
          .toList();
    }
    if (_json.containsKey("disksToCreate")) {
      disksToCreate = (_json["disksToCreate"] as core.List)
          .map<NewDisk>((value) => new NewDisk.fromJson(value))
          .toList();
    }
    if (_json.containsKey("machineType")) {
      machineType = _json["machineType"];
    }
    if (_json.containsKey("metadata")) {
      metadata = new Metadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("networkInterfaces")) {
      networkInterfaces = (_json["networkInterfaces"] as core.List)
          .map<NetworkInterface>(
              (value) => new NetworkInterface.fromJson(value))
          .toList();
    }
    if (_json.containsKey("onHostMaintenance")) {
      onHostMaintenance = _json["onHostMaintenance"];
    }
    if (_json.containsKey("serviceAccounts")) {
      serviceAccounts = (_json["serviceAccounts"] as core.List)
          .map<ServiceAccount>((value) => new ServiceAccount.fromJson(value))
          .toList();
    }
    if (_json.containsKey("tags")) {
      tags = new Tag.fromJson(_json["tags"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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
      _json["disksToAttach"] =
          disksToAttach.map((value) => (value).toJson()).toList();
    }
    if (disksToCreate != null) {
      _json["disksToCreate"] =
          disksToCreate.map((value) => (value).toJson()).toList();
    }
    if (machineType != null) {
      _json["machineType"] = machineType;
    }
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (networkInterfaces != null) {
      _json["networkInterfaces"] =
          networkInterfaces.map((value) => (value).toJson()).toList();
    }
    if (onHostMaintenance != null) {
      _json["onHostMaintenance"] = onHostMaintenance;
    }
    if (serviceAccounts != null) {
      _json["serviceAccounts"] =
          serviceAccounts.map((value) => (value).toJson()).toList();
    }
    if (tags != null) {
      _json["tags"] = (tags).toJson();
    }
    return _json;
  }
}
