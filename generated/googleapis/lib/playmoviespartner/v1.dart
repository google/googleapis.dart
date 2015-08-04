// This is a generated file (see the discoveryapis_generator project).

library googleapis.playmoviespartner.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client playmoviespartner/v1';

/**
 * An API providing Google Play Movies Partners a way to get the delivery status
 * of their titles.
 */
class PlaymoviespartnerApi {

  final commons.ApiRequester _requester;

  PlaymoviespartnerApi(http.Client client, {core.String rootUrl: "https://playmoviespartner.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}
