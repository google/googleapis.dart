// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Reader Revenue Subscription Linking API - v1
///
/// readerrevenuesubscriptionlinking.googleapis.com API.
///
/// For more information, see
/// <https://developers.google.com/news/subscribe/subscription-linking/overview>
///
/// Create an instance of [SubscriptionLinkingApi] to access these resources:
///
/// - [PublicationsResource]
///   - [PublicationsReadersResource]
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

/// readerrevenuesubscriptionlinking.googleapis.com API.
class SubscriptionLinkingApi {
  final commons.ApiRequester _requester;

  PublicationsResource get publications => PublicationsResource(_requester);

  SubscriptionLinkingApi(http.Client client,
      {core.String rootUrl =
          'https://readerrevenuesubscriptionlinking.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class PublicationsResource {
  final commons.ApiRequester _requester;

  PublicationsReadersResource get readers =>
      PublicationsReadersResource(_requester);

  PublicationsResource(commons.ApiRequester client) : _requester = client;
}

class PublicationsReadersResource {
  final commons.ApiRequester _requester;

  PublicationsReadersResource(commons.ApiRequester client)
      : _requester = client;

  /// Removes a publication reader, effectively severing the association with a
  /// Google user.
  ///
  /// If `force` is set to true, any entitlements for this reader will also be
  /// deleted. (Otherwise, the request will only work if the reader has no
  /// entitlements.) - If the reader does not exist, return NOT_FOUND. - Return
  /// FAILED_PRECONDITION if the force field is false (or unset) and
  /// entitlements are present.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the reader. Format:
  /// publications/{publication_id}/readers/{ppid}
  /// Value must have pattern `^publications/\[^/\]+/readers/\[^/\]+$`.
  ///
  /// [force] - If set to true, any entitlements under the reader will also be
  /// purged.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeleteReaderResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeleteReaderResponse> delete(
    core.String name, {
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return DeleteReaderResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a reader of a publication.
  ///
  /// Returns NOT_FOUND if the reader does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the reader. Format:
  /// publications/{publication_id}/readers/{ppid}
  /// Value must have pattern `^publications/\[^/\]+/readers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Reader].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Reader> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Reader.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the reader entitlements for a publication reader.
  ///
  /// - Returns PERMISSION_DENIED if the caller does not have access. - Returns
  /// NOT_FOUND if the reader does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the reader entitlements to retrieve.
  /// Format: publications/{publication_id}/readers/{reader_id}/entitlements
  /// Value must have pattern
  /// `^publications/\[^/\]+/readers/\[^/\]+/entitlements$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReaderEntitlements].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReaderEntitlements> getEntitlements(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ReaderEntitlements.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the reader entitlements for a publication reader.
  ///
  /// The entire reader entitlements will be overwritten by the new reader
  /// entitlements in the payload, like a PUT. - Returns PERMISSION_DENIED if
  /// the caller does not have access. - Returns NOT_FOUND if the reader does
  /// not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the singleton.
  /// Value must have pattern
  /// `^publications/\[^/\]+/readers/\[^/\]+/entitlements$`.
  ///
  /// [updateMask] - Optional. The list of fields to update. Defaults to all
  /// fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReaderEntitlements].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReaderEntitlements> updateEntitlements(
    ReaderEntitlements request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ReaderEntitlements.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Response to deleting a reader of a publication.
typedef DeleteReaderResponse = $Empty;

/// A single entitlement for a publication reader
class Entitlement {
  /// The detail field can carry a description of the SKU that corresponds to
  /// what the user has been granted access to.
  ///
  /// This description, which is opaque to Google, can be displayed in the
  /// Google user subscription console for users who linked the subscription to
  /// a Google Account. Max 80 character limit.
  core.String? detail;

  /// Expiration time of the entitlement.
  ///
  /// Entitlements that have expired over 30 days will be purged. Required.
  /// LINT.IfChange(expire_time) The max expire_time is 398 days from now().
  /// LINT.ThenChange(//depot/google3/java/com/google/subscribewithgoogle/accountlinking/subscriptionlink/service/config/protoconf.pi:max_expiry_age)
  ///
  /// Required.
  core.String? expireTime;

  /// The publication's product ID that the user has access to.
  ///
  /// This is the same product ID as can be found in Schema.org markup
  /// (http://schema.org/productID). E.g. "dailybugle.com:basic"
  ///
  /// Required.
  core.String? productId;

  /// A source-specific subscription token.
  ///
  /// This is an opaque string that the publisher provides to Google. This token
  /// is opaque and has no meaning to Google.
  core.String? subscriptionToken;

  Entitlement({
    this.detail,
    this.expireTime,
    this.productId,
    this.subscriptionToken,
  });

  Entitlement.fromJson(core.Map json_)
      : this(
          detail: json_['detail'] as core.String?,
          expireTime: json_['expireTime'] as core.String?,
          productId: json_['productId'] as core.String?,
          subscriptionToken: json_['subscriptionToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detail != null) 'detail': detail!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (productId != null) 'productId': productId!,
        if (subscriptionToken != null) 'subscriptionToken': subscriptionToken!,
      };
}

/// A reader of a publication.
class Reader {
  /// Time the publication reader was created and associated with a Google user.
  ///
  /// Output only.
  core.String? createTime;

  /// The resource name of the reader.
  ///
  /// The last part of ppid in the resource name is the publisher provided id.
  ///
  /// Output only.
  core.String? name;

  Reader({
    this.createTime,
    this.name,
  });

  Reader.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
      };
}

/// A singleton containing all of a reader's entitlements for a publication.
class ReaderEntitlements {
  /// All of the entitlements for a publication reader.
  core.List<Entitlement>? entitlements;

  /// The resource name of the singleton.
  ///
  /// Output only.
  core.String? name;

  ReaderEntitlements({
    this.entitlements,
    this.name,
  });

  ReaderEntitlements.fromJson(core.Map json_)
      : this(
          entitlements: json_.containsKey('entitlements')
              ? (json_['entitlements'] as core.List)
                  .map((value) => Entitlement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entitlements != null) 'entitlements': entitlements!,
        if (name != null) 'name': name!,
      };
}
