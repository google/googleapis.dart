// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.youtubeAnalytics.v1;

import 'dart:core' as core;
import 'dart:async' as async;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client youtubeAnalytics/v1';

/// Retrieves your YouTube Analytics data.
class YoutubeAnalyticsApi {
  final commons.ApiRequester _requester;

  YoutubeAnalyticsApi(http.Client client,
      {core.String rootUrl = "https://youtubeanalytics.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}
