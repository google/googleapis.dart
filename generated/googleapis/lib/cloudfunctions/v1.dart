// This is a generated file (see the discoveryapis_generator project).

library googleapis.cloudfunctions.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudfunctions/v1';

/**
 * API for managing lightweight user-provided functions executed in response to
 * events.
 */
class CloudfunctionsApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";


  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  CloudfunctionsApi(http.Client client, {core.String rootUrl: "https://cloudfunctions.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsResourceApi get locations => new ProjectsLocationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Get information about a location.
   *
   * Request parameters:
   *
   * [name] - Resource name for the location.
   * Value must have pattern "^projects/[^/]+/locations/[^/]+$".
   *
   * Completes with a [Location].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Location> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Location.fromJson(data));
  }

}



/** A resource that represents Google Cloud Platform location. */
class Location {
  /**
   * Cross-service attributes for the location. For example
   *
   *     {"cloud.googleapis.com/region": "us-east1"}
   */
  core.Map<core.String, core.String> labels;
  /** The canonical id for this location. For example: `"us-east1"`. */
  core.String locationId;
  /**
   * Service-specific metadata. For example the available capacity at the given
   * location.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> metadata;
  /**
   * Resource name for the location, which may vary between implementations.
   * For example: `"projects/example-project/locations/us-east1"`
   */
  core.String name;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
    if (_json.containsKey("locationId")) {
      locationId = _json["locationId"];
    }
    if (_json.containsKey("metadata")) {
      metadata = _json["metadata"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (locationId != null) {
      _json["locationId"] = locationId;
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/** Metadata describing an Operation */
class OperationMetadataV1Beta2 {
  /**
   * The original request that started the operation.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> request;
  /**
   * Target of the operation - for example
   * projects/project-1/locations/region-1/functions/function-1
   */
  core.String target;
  /**
   * Type of operation.
   * Possible string values are:
   * - "OPERATION_UNSPECIFIED" : Unknown operation type.
   * - "CREATE_FUNCTION" : Triggered by CreateFunction call
   * - "UPDATE_FUNCTION" : Triggered by UpdateFunction call
   * - "DELETE_FUNCTION" : Triggered by DeleteFunction call.
   */
  core.String type;

  OperationMetadataV1Beta2();

  OperationMetadataV1Beta2.fromJson(core.Map _json) {
    if (_json.containsKey("request")) {
      request = _json["request"];
    }
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (request != null) {
      _json["request"] = request;
    }
    if (target != null) {
      _json["target"] = target;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}
