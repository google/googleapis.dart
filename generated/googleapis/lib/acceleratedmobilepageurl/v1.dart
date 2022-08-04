// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Accelerated Mobile Pages (AMP) URL API - v1
///
/// Retrieves the list of AMP URLs (and equivalent AMP Cache URLs) for a given
/// list of public URL(s).
///
/// For more information, see <https://developers.google.com/amp/cache/>
///
/// Create an instance of [AcceleratedmobilepageurlApi] to access these
/// resources:
///
/// - [AmpUrlsResource]
library acceleratedmobilepageurl.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Retrieves the list of AMP URLs (and equivalent AMP Cache URLs) for a given
/// list of public URL(s).
class AcceleratedmobilepageurlApi {
  final commons.ApiRequester _requester;

  AmpUrlsResource get ampUrls => AmpUrlsResource(_requester);

  AcceleratedmobilepageurlApi(http.Client client,
      {core.String rootUrl = 'https://acceleratedmobilepageurl.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AmpUrlsResource {
  final commons.ApiRequester _requester;

  AmpUrlsResource(commons.ApiRequester client) : _requester = client;

  /// Returns AMP URL(s) and equivalent \[AMP Cache
  /// URL(s)\](/amp/cache/overview#amp-cache-url-format).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchGetAmpUrlsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchGetAmpUrlsResponse> batchGet(
    BatchGetAmpUrlsRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/ampUrls:batchGet';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchGetAmpUrlsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// AMP URL response for a requested URL.
class AmpUrl {
  /// The AMP URL pointing to the publisher's web server.
  core.String? ampUrl;

  /// The \[AMP Cache URL\](/amp/cache/overview#amp-cache-url-format) pointing
  /// to the cached document in the Google AMP Cache.
  core.String? cdnAmpUrl;

  /// The original non-AMP URL.
  core.String? originalUrl;

  AmpUrl({
    this.ampUrl,
    this.cdnAmpUrl,
    this.originalUrl,
  });

  AmpUrl.fromJson(core.Map json_)
      : this(
          ampUrl: json_.containsKey('ampUrl')
              ? json_['ampUrl'] as core.String
              : null,
          cdnAmpUrl: json_.containsKey('cdnAmpUrl')
              ? json_['cdnAmpUrl'] as core.String
              : null,
          originalUrl: json_.containsKey('originalUrl')
              ? json_['originalUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ampUrl != null) 'ampUrl': ampUrl!,
        if (cdnAmpUrl != null) 'cdnAmpUrl': cdnAmpUrl!,
        if (originalUrl != null) 'originalUrl': originalUrl!,
      };
}

/// AMP URL Error resource for a requested URL that couldn't be found.
class AmpUrlError {
  /// The error code of an API call.
  /// Possible string values are:
  /// - "ERROR_CODE_UNSPECIFIED" : Not specified error.
  /// - "INPUT_URL_NOT_FOUND" : Indicates the requested URL is not found in the
  /// index, possibly because it's unable to be found, not able to be accessed
  /// by Googlebot, or some other error.
  /// - "NO_AMP_URL" : Indicates no AMP URL has been found that corresponds to
  /// the requested URL.
  /// - "APPLICATION_ERROR" : Indicates some kind of application error occurred
  /// at the server. Client advised to retry.
  /// - "URL_IS_VALID_AMP" : DEPRECATED: Indicates the requested URL is a valid
  /// AMP URL. This is a non-error state, should not be relied upon as a sign of
  /// success or failure. It will be removed in future versions of the API.
  /// - "URL_IS_INVALID_AMP" : Indicates that an AMP URL has been found that
  /// corresponds to the request URL, but it is not valid AMP HTML.
  core.String? errorCode;

  /// An optional descriptive error message.
  core.String? errorMessage;

  /// The original non-AMP URL.
  core.String? originalUrl;

  AmpUrlError({
    this.errorCode,
    this.errorMessage,
    this.originalUrl,
  });

  AmpUrlError.fromJson(core.Map json_)
      : this(
          errorCode: json_.containsKey('errorCode')
              ? json_['errorCode'] as core.String
              : null,
          errorMessage: json_.containsKey('errorMessage')
              ? json_['errorMessage'] as core.String
              : null,
          originalUrl: json_.containsKey('originalUrl')
              ? json_['originalUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorCode != null) 'errorCode': errorCode!,
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (originalUrl != null) 'originalUrl': originalUrl!,
      };
}

/// AMP URL request for a batch of URLs.
class BatchGetAmpUrlsRequest {
  /// The lookup_strategy being requested.
  /// Possible string values are:
  /// - "FETCH_LIVE_DOC" : FETCH_LIVE_DOC strategy involves live document fetch
  /// of URLs not found in the index. Any request URL not found in the index is
  /// crawled in realtime to validate if there is a corresponding AMP URL. This
  /// strategy has higher coverage but with extra latency introduced by realtime
  /// crawling. This is the default strategy. Applications using this strategy
  /// should set higher HTTP timeouts of the API calls.
  /// - "IN_INDEX_DOC" : IN_INDEX_DOC strategy skips fetching live documents of
  /// URL(s) not found in index. For applications which need low latency use of
  /// IN_INDEX_DOC strategy is recommended.
  core.String? lookupStrategy;

  /// List of URLs to look up for the paired AMP URLs.
  ///
  /// The URLs are case-sensitive. Up to 50 URLs per lookup (see \[Usage
  /// Limits\](/amp/cache/reference/limits)).
  core.List<core.String>? urls;

  BatchGetAmpUrlsRequest({
    this.lookupStrategy,
    this.urls,
  });

  BatchGetAmpUrlsRequest.fromJson(core.Map json_)
      : this(
          lookupStrategy: json_.containsKey('lookupStrategy')
              ? json_['lookupStrategy'] as core.String
              : null,
          urls: json_.containsKey('urls')
              ? (json_['urls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lookupStrategy != null) 'lookupStrategy': lookupStrategy!,
        if (urls != null) 'urls': urls!,
      };
}

/// Batch AMP URL response.
class BatchGetAmpUrlsResponse {
  /// For each URL in BatchAmpUrlsRequest, the URL response.
  ///
  /// The response might not be in the same order as URLs in the batch request.
  /// If BatchAmpUrlsRequest contains duplicate URLs, AmpUrl is generated only
  /// once.
  core.List<AmpUrl>? ampUrls;

  /// The errors for requested URLs that have no AMP URL.
  core.List<AmpUrlError>? urlErrors;

  BatchGetAmpUrlsResponse({
    this.ampUrls,
    this.urlErrors,
  });

  BatchGetAmpUrlsResponse.fromJson(core.Map json_)
      : this(
          ampUrls: json_.containsKey('ampUrls')
              ? (json_['ampUrls'] as core.List)
                  .map((value) => AmpUrl.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          urlErrors: json_.containsKey('urlErrors')
              ? (json_['urlErrors'] as core.List)
                  .map((value) => AmpUrlError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ampUrls != null) 'ampUrls': ampUrls!,
        if (urlErrors != null) 'urlErrors': urlErrors!,
      };
}
