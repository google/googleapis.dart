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

  final commons.ApiRequester _requester;

  CloudfunctionsApi(http.Client client, {core.String rootUrl: "https://cloudfunctions.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
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

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
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
