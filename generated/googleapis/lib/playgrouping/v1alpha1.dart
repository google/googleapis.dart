// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Google Play Grouping API - v1alpha1
///
/// playgrouping.googleapis.com API.
///
/// For more information, see <https://cloud.google.com/playgrouping/>
///
/// Create an instance of [PlayGroupingApi] to access these resources:
///
/// - [AppsResource]
///   - [AppsTokensResource]
///     - [AppsTokensTagsResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// playgrouping.googleapis.com API.
class PlayGroupingApi {
  final commons.ApiRequester _requester;

  AppsResource get apps => AppsResource(_requester);

  PlayGroupingApi(
    http.Client client, {
    core.String rootUrl = 'https://playgrouping.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class AppsResource {
  final commons.ApiRequester _requester;

  AppsTokensResource get tokens => AppsTokensResource(_requester);

  AppsResource(commons.ApiRequester client) : _requester = client;
}

class AppsTokensResource {
  final commons.ApiRequester _requester;

  AppsTokensTagsResource get tags => AppsTokensTagsResource(_requester);

  AppsTokensResource(commons.ApiRequester client) : _requester = client;

  /// Verify an API token by asserting the app and persona it belongs to.
  ///
  /// The verification is a protection against client-side attacks and will fail
  /// if the contents of the token don't match the provided values. A token must
  /// be verified before it can be used to manipulate user tags.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appPackage] - Required. App the token belongs to. Format:
  /// apps/{package_name}
  /// Value must have pattern `^apps/\[^/\]+$`.
  ///
  /// [token] - Required. The token to be verified. Format: tokens/{token}
  /// Value must have pattern `^tokens/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VerifyTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VerifyTokenResponse> verify(
    VerifyTokenRequest request,
    core.String appPackage,
    core.String token, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' +
        core.Uri.encodeFull('$appPackage') +
        '/' +
        core.Uri.encodeFull('$token') +
        ':verify';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return VerifyTokenResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AppsTokensTagsResource {
  final commons.ApiRequester _requester;

  AppsTokensTagsResource(commons.ApiRequester client) : _requester = client;

  /// Create or update tags for the user and app that are represented by the
  /// given token.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appPackage] - Required. App whose tags are being manipulated. Format:
  /// apps/{package_name}
  /// Value must have pattern `^apps/\[^/\]+$`.
  ///
  /// [token] - Required. Token for which the tags are being inserted or
  /// updated. Format: tokens/{token}
  /// Value must have pattern `^tokens/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreateOrUpdateTagsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreateOrUpdateTagsResponse> createOrUpdate(
    CreateOrUpdateTagsRequest request,
    core.String appPackage,
    core.String token, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' +
        core.Uri.encodeFull('$appPackage') +
        '/' +
        core.Uri.encodeFull('$token') +
        '/tags:createOrUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CreateOrUpdateTagsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Request message for CreateOrUpdateTags.
///
/// VerifyToken.
class CreateOrUpdateTagsRequest {
  /// Tags to be inserted or updated.
  core.List<Tag>? tags;

  CreateOrUpdateTagsRequest({this.tags});

  CreateOrUpdateTagsRequest.fromJson(core.Map json_)
    : this(
        tags:
            (json_['tags'] as core.List?)
                ?.map(
                  (value) => Tag.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (tags != null) 'tags': tags!,
  };
}

/// Response message for CreateOrUpdateTags.
class CreateOrUpdateTagsResponse {
  /// All requested tags are returned, including pre-existing ones.
  core.List<Tag>? tags;

  CreateOrUpdateTagsResponse({this.tags});

  CreateOrUpdateTagsResponse.fromJson(core.Map json_)
    : this(
        tags:
            (json_['tags'] as core.List?)
                ?.map(
                  (value) => Tag.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (tags != null) 'tags': tags!,
  };
}

/// A tag is associated with exactly one package name and user.
class Tag {
  /// A boolean value of the tag.
  core.bool? booleanValue;

  /// A signed 64-bit integer value of the tag.
  core.String? int64Value;

  /// Key for the tag.
  ///
  /// Required.
  core.String? key;

  /// A string value of the tag.
  core.String? stringValue;

  /// A time value of the tag.
  core.String? timeValue;

  Tag({
    this.booleanValue,
    this.int64Value,
    this.key,
    this.stringValue,
    this.timeValue,
  });

  Tag.fromJson(core.Map json_)
    : this(
        booleanValue: json_['booleanValue'] as core.bool?,
        int64Value: json_['int64Value'] as core.String?,
        key: json_['key'] as core.String?,
        stringValue: json_['stringValue'] as core.String?,
        timeValue: json_['timeValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (booleanValue != null) 'booleanValue': booleanValue!,
    if (int64Value != null) 'int64Value': int64Value!,
    if (key != null) 'key': key!,
    if (stringValue != null) 'stringValue': stringValue!,
    if (timeValue != null) 'timeValue': timeValue!,
  };
}

/// Request message for VerifyToken.
class VerifyTokenRequest {
  /// Persona represented by the token.
  ///
  /// Format: personas/{persona}
  ///
  /// Required.
  core.String? persona;

  VerifyTokenRequest({this.persona});

  VerifyTokenRequest.fromJson(core.Map json_)
    : this(persona: json_['persona'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (persona != null) 'persona': persona!,
  };
}

/// Response message for VerifyToken.
typedef VerifyTokenResponse = $Empty;
