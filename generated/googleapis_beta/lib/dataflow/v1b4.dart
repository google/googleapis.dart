library googleapis_beta.dataflow.v1b4;

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

/** Google Dataflow API. */
class DataflowApi {

  final common_internal.ApiRequester _requester;

  DataflowApi(http.Client client, {core.String rootUrl: "https://dataflow.googleapis.com/", core.String servicePath: ""}) :
      _requester = new common_internal.ApiRequester(client, rootUrl, servicePath);
}



