// This is a generated file (see the discoveryapis_generator project).

library googleapis_beta.dataflow.v1b4;

import 'dart:core' as core;
import 'dart:collection' as collection;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:crypto/crypto.dart' as crypto;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client dataflow/v1b4';

/** Google Dataflow API. */
class DataflowApi {

  final commons.ApiRequester _requester;

  DataflowApi(http.Client client, {core.String rootUrl: "https://dataflow.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}
