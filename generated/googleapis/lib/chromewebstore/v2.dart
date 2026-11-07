// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

/// Chrome Web Store API - v2
///
/// The Chrome Web Store API provides access to data about apps and extensions,
/// as well as developer tools for managing them.
///
/// For more information, see <https://developer.chrome.com/docs/webstore/api>
///
/// Create an instance of [ChromewebstoreApi] to access these resources:
///
/// - [MediaResource]
/// - [PublishersResource]
///   - [PublishersItemsResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        ByteRange,
        DetailedApiRequestError,
        DownloadOptions,
        Media,
        PartialDownloadOptions,
        ResumableUploadOptions,
        UploadOptions;

/// The Chrome Web Store API provides access to data about apps and extensions,
/// as well as developer tools for managing them.
class ChromewebstoreApi {
  /// See, edit, update, or publish your Chrome Web Store extensions, themes,
  /// apps, and licences you have access to
  static const chromewebstoreScope =
      'https://www.googleapis.com/auth/chromewebstore';

  /// See and download your Chrome Web Store extensions and apps, and see
  /// licenses you have access to
  static const chromewebstoreReadonlyScope =
      'https://www.googleapis.com/auth/chromewebstore.readonly';

  final commons.ApiRequester _requester;

  MediaResource get media => MediaResource(_requester);
  PublishersResource get publishers => PublishersResource(_requester);

  ChromewebstoreApi(
    http.Client client, {
    core.String rootUrl = 'https://chromewebstore.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class MediaResource {
  final commons.ApiRequester _requester;

  MediaResource(commons.ApiRequester client) : _requester = client;

  /// Upload a new package to an existing item.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the item to upload the new package to in the
  /// form `publishers/{publisherId}/items/{itemId}`
  /// Value must have pattern `^publishers/\[^/\]+/items/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// Completes with a [UploadItemPackageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UploadItemPackageResponse> upload(
    UploadItemPackageRequest request,
    core.String name, {
    core.String? $fields,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'v2/' + core.Uri.encodeFull('$name') + ':upload';
    } else {
      url_ = '/upload/v2/' + core.Uri.encodeFull('$name') + ':upload';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: commons.UploadOptions.defaultOptions,
    );
    return UploadItemPackageResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PublishersResource {
  final commons.ApiRequester _requester;

  PublishersItemsResource get items => PublishersItemsResource(_requester);

  PublishersResource(commons.ApiRequester client) : _requester = client;
}

class PublishersItemsResource {
  final commons.ApiRequester _requester;

  PublishersItemsResource(commons.ApiRequester client) : _requester = client;

  /// Cancel the current active submission of an item if present.
  ///
  /// This can be used to cancel the review of a pending submission.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the item to cancel the submission of in the
  /// form `publishers/{publisherId}/items/{itemId}`
  /// Value must have pattern `^publishers/\[^/\]+/items/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CancelSubmissionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CancelSubmissionResponse> cancelSubmission(
    CancelSubmissionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':cancelSubmission';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CancelSubmissionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Fetch user reviews for an item.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The item resource name whose reviews are being fetched.
  /// Format: publishers/{publisher_id}/items/{item_id}
  /// Value must have pattern `^publishers/\[^/\]+/items/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter to apply to the reviews. Only equality
  /// comparison on rating is supported, e.g. `rating = 5`.
  ///
  /// [orderBy] - Optional. An optional comma-separated list of fields by which
  /// to sort the results. The default sort order is ascending (`asc`).
  /// Supported fields are: - `rating`: Supported orders are `asc` (default) and
  /// `desc`. - `create_time`: Only `desc` (most recent first) is supported;
  /// `desc` must be explicitly specified since the default is `asc`. Example:
  /// `rating desc`, `create_time desc`, or `rating desc, create_time desc`.
  ///
  /// [pageSize] - Optional. The maximum number of reviews to return. The
  /// service may return fewer than this value. If unspecified, at most 50
  /// reviews will be returned. The maximum value is 200; values above 200 will
  /// be coerced to 200.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `FetchItemReviews` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `FetchItemReviews` must
  /// match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchItemReviewsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchItemReviewsResponse> fetchReviews(
    core.String name, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':fetchReviews';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchItemReviewsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Fetch the status of an item.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the item to retrieve the status of in the form
  /// `publishers/{publisherId}/items/{itemId}`
  /// Value must have pattern `^publishers/\[^/\]+/items/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchItemStatusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchItemStatusResponse> fetchStatus(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':fetchStatus';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchItemStatusResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the RatingSummary for the publishers item.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the rating summary to retrieve. Format:
  /// publishers/{publisher}/items/{item}/ratingSummary
  /// Value must have pattern
  /// `^publishers/\[^/\]+/items/\[^/\]+/ratingSummary$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RatingSummary].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RatingSummary> getRatingSummary(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RatingSummary.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Submit the item to be published in the store.
  ///
  /// The item will be submitted for review unless `skip_review` is set to true,
  /// or the item is staged from a previous submission with `publish_type` set
  /// to `STAGED_PUBLISH`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the item in the form
  /// `publishers/{publisherId}/items/{itemId}`
  /// Value must have pattern `^publishers/\[^/\]+/items/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PublishItemResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PublishItemResponse> publish(
    PublishItemRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':publish';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PublishItemResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Query the metrics for an item.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the item to query the metrics for. Format:
  /// publishers/{publisher}/items/{item}
  /// Value must have pattern `^publishers/\[^/\]+/items/\[^/\]+$`.
  ///
  /// [dimensions] - Optional. Dimensions to slice the metrics by. At most one
  /// dimension can be specified. **Supported dimensions:** - os: The operating
  /// system of the user. - app-version: The version of the item. - country: The
  /// country of the user. - install-source: The source of the install. -
  /// install-type: The type of install (from webstore, inline, or other). -
  /// language: The language of the user. - enabled: If the item is enabled or
  /// disabled. - utm-campaign: The UTM campaign of the user. - utm-content: The
  /// UTM content of the user. - utm-medium: The UTM medium of the user. -
  /// utm-source: The UTM source of the user. - utm-term: The UTM term of the
  /// user.
  ///
  /// [metrics] - Required. The metrics to query the metric set for. **Supported
  /// metrics:** - installs: Count of item installs. - installs-7d: Count of
  /// item installs in the last 7 days. - uninstalls: Count of item uninstalls.
  /// - users: Count of daily active users of the item. - users-7d: Count of
  /// 7-day active users of the item. - impressions: Count of item impressions
  /// across the entire store front. - page-views: Count of individual views of
  /// the item's detail page.
  ///
  /// [pageSize] - Optional. The maximum number of rows to return. If
  /// unspecified, at most 100 rows will be returned. The maximum value is 1000;
  /// Values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to the request must match the call that provided the
  /// page token.
  ///
  /// [timeSpec_firstDate_day] - Day of a month. Must be from 1 to 31 and valid
  /// for the year and month, or 0 to specify a year by itself or a year and
  /// month where the day isn't significant.
  ///
  /// [timeSpec_firstDate_month] - Month of a year. Must be from 1 to 12, or 0
  /// to specify a year without a month and day.
  ///
  /// [timeSpec_firstDate_year] - Year of the date. Must be from 1 to 9999, or 0
  /// to specify a date without a year.
  ///
  /// [timeSpec_lastDate_day] - Day of a month. Must be from 1 to 31 and valid
  /// for the year and month, or 0 to specify a year by itself or a year and
  /// month where the day isn't significant.
  ///
  /// [timeSpec_lastDate_month] - Month of a year. Must be from 1 to 12, or 0 to
  /// specify a year without a month and day.
  ///
  /// [timeSpec_lastDate_year] - Year of the date. Must be from 1 to 9999, or 0
  /// to specify a date without a year.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryItemMetricsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryItemMetricsResponse> queryMetrics(
    core.String name, {
    core.List<core.String>? dimensions,
    core.List<core.String>? metrics,
    core.int? pageSize,
    core.String? pageToken,
    core.int? timeSpec_firstDate_day,
    core.int? timeSpec_firstDate_month,
    core.int? timeSpec_firstDate_year,
    core.int? timeSpec_lastDate_day,
    core.int? timeSpec_lastDate_month,
    core.int? timeSpec_lastDate_year,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'dimensions': ?dimensions,
      'metrics': ?metrics,
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'timeSpec.firstDate.day': ?timeSpec_firstDate_day == null
          ? null
          : ['${timeSpec_firstDate_day}'],
      'timeSpec.firstDate.month': ?timeSpec_firstDate_month == null
          ? null
          : ['${timeSpec_firstDate_month}'],
      'timeSpec.firstDate.year': ?timeSpec_firstDate_year == null
          ? null
          : ['${timeSpec_firstDate_year}'],
      'timeSpec.lastDate.day': ?timeSpec_lastDate_day == null
          ? null
          : ['${timeSpec_lastDate_day}'],
      'timeSpec.lastDate.month': ?timeSpec_lastDate_month == null
          ? null
          : ['${timeSpec_lastDate_month}'],
      'timeSpec.lastDate.year': ?timeSpec_lastDate_year == null
          ? null
          : ['${timeSpec_lastDate_year}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':queryMetrics';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return QueryItemMetricsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Rolls back an item's published CRX package to a specified previously
  /// published CRX package and publishes it to all users.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the item to rollback in the form
  /// `publishers/{publisherId}/items/{itemId}`
  /// Value must have pattern `^publishers/\[^/\]+/items/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RollbackItemResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RollbackItemResponse> rollback(
    RollbackItemRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':rollback';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RollbackItemResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Set a higher target deploy percentage for the item's published revision.
  ///
  /// This will be updated without the item being submitted for review. This is
  /// only available to items with over 10,000 seven-day active users.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the item to update the published revision of in
  /// the form `publishers/{publisherId}/items/{itemId}`
  /// Value must have pattern `^publishers/\[^/\]+/items/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SetPublishedDeployPercentageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SetPublishedDeployPercentageResponse>
  setPublishedDeployPercentage(
    SetPublishedDeployPercentageRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$name') + ':setPublishedDeployPercentage';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SetPublishedDeployPercentageResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Info on the author of the review.
class AuthorInfo {
  /// Display name for the author.
  core.String? displayName;

  AuthorInfo({this.displayName});

  AuthorInfo.fromJson(core.Map json_)
    : this(displayName: json_['displayName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    return {'displayName': ?displayName};
  }
}

/// Request message for CancelSubmission.
typedef CancelSubmissionRequest = $Empty;

/// Response message for `CancelSubmission`.
typedef CancelSubmissionResponse = $Empty;

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values. * A month and day, with a zero year (for example, an
/// anniversary). * A year on its own, with a zero month and a zero day. * A
/// year and month, with a zero day (for example, a credit card expiration
/// date). Related types: * google.type.TimeOfDay * google.type.DateTime *
/// google.protobuf.Timestamp
typedef Date = $Date;

/// Deployment information for a specific release channel.
///
/// Used in requests to update deployment parameters.
class DeployInfo {
  /// The current deploy percentage for the release channel (nonnegative number
  /// between 0 and 100).
  ///
  /// Required.
  core.int? deployPercentage;

  DeployInfo({this.deployPercentage});

  DeployInfo.fromJson(core.Map json_)
    : this(deployPercentage: json_['deployPercentage'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final deployPercentage = this.deployPercentage;
    return {'deployPercentage': ?deployPercentage};
  }
}

/// Deployment information for a specific release channel
class DistributionChannel {
  /// The extension version provided in the manifest of the uploaded package.
  core.String? crxVersion;

  /// The current deploy percentage for the release channel (nonnegative number
  /// between 0 and 100).
  core.int? deployPercentage;

  DistributionChannel({this.crxVersion, this.deployPercentage});

  DistributionChannel.fromJson(core.Map json_)
    : this(
        crxVersion: json_['crxVersion'] as core.String?,
        deployPercentage: json_['deployPercentage'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final crxVersion = this.crxVersion;
    final deployPercentage = this.deployPercentage;
    return {'crxVersion': ?crxVersion, 'deployPercentage': ?deployPercentage};
  }
}

/// Response message for FetchItemReviews.
class FetchItemReviewsResponse {
  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The list of reviews.
  core.List<Review>? reviews;

  FetchItemReviewsResponse({this.nextPageToken, this.reviews});

  FetchItemReviewsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        reviews: (json_['reviews'] as core.List?)
            ?.map(
              (value) =>
                  Review.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final reviews = this.reviews;
    return {'nextPageToken': ?nextPageToken, 'reviews': ?reviews};
  }
}

/// Response message for `FetchItemStatus`.
class FetchItemStatusResponse {
  /// The ID of the item.
  ///
  /// Output only.
  core.String? itemId;

  /// The state of the last async upload for an item.
  ///
  /// Only set when there has been an async upload for the item in the past 24
  /// hours.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UPLOAD_STATE_UNSPECIFIED" : The default value.
  /// - "SUCCEEDED" : The upload succeeded.
  /// - "IN_PROGRESS" : The upload is currently being processed.
  /// - "FAILED" : The upload failed.
  /// - "NOT_FOUND" : Used as the value of `lastAsyncUploadState` in a
  /// `fetchStatus` response indicating that an upload attempt was not found.
  core.String? lastAsyncUploadState;

  /// The name of the requested item.
  core.String? name;

  /// The public key of the item, which may be generated by the store.
  core.String? publicKey;

  /// Status of the current published revision of the item.
  ///
  /// Will be unset if the item is not published.
  ///
  /// Output only.
  ItemRevisionStatus? publishedItemRevisionStatus;

  /// Status of the item revision submitted to be published.
  ///
  /// Will be unset if the item has not been submitted for publishing since the
  /// last successful publish.
  ItemRevisionStatus? submittedItemRevisionStatus;

  /// If true, the item has been taken down for a policy violation.
  ///
  /// Check the developer dashboard for details.
  core.bool? takenDown;

  /// If true, the item has been warned for a policy violation and will be taken
  /// down if not resolved.
  ///
  /// Check the developer dashboard for details.
  core.bool? warned;

  FetchItemStatusResponse({
    this.itemId,
    this.lastAsyncUploadState,
    this.name,
    this.publicKey,
    this.publishedItemRevisionStatus,
    this.submittedItemRevisionStatus,
    this.takenDown,
    this.warned,
  });

  FetchItemStatusResponse.fromJson(core.Map json_)
    : this(
        itemId: json_['itemId'] as core.String?,
        lastAsyncUploadState: json_['lastAsyncUploadState'] as core.String?,
        name: json_['name'] as core.String?,
        publicKey: json_['publicKey'] as core.String?,
        publishedItemRevisionStatus:
            json_.containsKey('publishedItemRevisionStatus')
            ? ItemRevisionStatus.fromJson(
                json_['publishedItemRevisionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        submittedItemRevisionStatus:
            json_.containsKey('submittedItemRevisionStatus')
            ? ItemRevisionStatus.fromJson(
                json_['submittedItemRevisionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        takenDown: json_['takenDown'] as core.bool?,
        warned: json_['warned'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final itemId = this.itemId;
    final lastAsyncUploadState = this.lastAsyncUploadState;
    final name = this.name;
    final publicKey = this.publicKey;
    final publishedItemRevisionStatus = this.publishedItemRevisionStatus;
    final submittedItemRevisionStatus = this.submittedItemRevisionStatus;
    final takenDown = this.takenDown;
    final warned = this.warned;
    return {
      'itemId': ?itemId,
      'lastAsyncUploadState': ?lastAsyncUploadState,
      'name': ?name,
      'publicKey': ?publicKey,
      'publishedItemRevisionStatus': ?publishedItemRevisionStatus,
      'submittedItemRevisionStatus': ?submittedItemRevisionStatus,
      'takenDown': ?takenDown,
      'warned': ?warned,
    };
  }
}

/// Details on the status of an item revision.
class ItemRevisionStatus {
  /// Details on the package of the item
  core.List<DistributionChannel>? distributionChannels;

  /// Current state of the item
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ITEM_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "PENDING_REVIEW" : The item is pending review.
  /// - "STAGED" : The item has been approved and is ready to be published.
  /// - "PUBLISHED" : The item is published publicly.
  /// - "PUBLISHED_TO_TESTERS" : The item is published to trusted testers.
  /// - "REJECTED" : The item has been rejected for publishing.
  /// - "CANCELLED" : The item submission has been cancelled.
  core.String? state;

  ItemRevisionStatus({this.distributionChannels, this.state});

  ItemRevisionStatus.fromJson(core.Map json_)
    : this(
        distributionChannels: (json_['distributionChannels'] as core.List?)
            ?.map(
              (value) => DistributionChannel.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final distributionChannels = this.distributionChannels;
    final state = this.state;
    return {'distributionChannels': ?distributionChannels, 'state': ?state};
  }
}

/// A single row of metrics and dimension values.
class MetricRow {
  /// The date of the record.
  Date? date;

  /// Dimension value columns for the row.
  core.List<core.String>? dimensionValues;

  /// Metric columns for the row.
  core.List<MetricValue>? metricValues;

  MetricRow({this.date, this.dimensionValues, this.metricValues});

  MetricRow.fromJson(core.Map json_)
    : this(
        date: json_.containsKey('date')
            ? Date.fromJson(
                json_['date'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dimensionValues: (json_['dimensionValues'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        metricValues: (json_['metricValues'] as core.List?)
            ?.map(
              (value) => MetricValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final date = this.date;
    final dimensionValues = this.dimensionValues;
    final metricValues = this.metricValues;
    return {
      'date': ?date,
      'dimensionValues': ?dimensionValues,
      'metricValues': ?metricValues,
    };
  }
}

/// Represents the value of a single metric
class MetricValue {
  /// The name of the metric
  core.String? metric;

  /// The unique user count associated with the metric (if applicable).
  core.String? uniqueUserCount;

  /// The value of the metric.
  core.String? value;

  MetricValue({this.metric, this.uniqueUserCount, this.value});

  MetricValue.fromJson(core.Map json_)
    : this(
        metric: json_['metric'] as core.String?,
        uniqueUserCount: json_['uniqueUserCount'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final metric = this.metric;
    final uniqueUserCount = this.uniqueUserCount;
    final value = this.value;
    return {
      'metric': ?metric,
      'uniqueUserCount': ?uniqueUserCount,
      'value': ?value,
    };
  }
}

/// Request message for PublishItem.
class PublishItemRequest {
  /// When set to true the request will fail if there are any warnings during
  /// validation and the details will be included in the `error.details`.
  ///
  /// Otherwise warnings are treated as non-blocking and will be ignored for
  /// validation but will be included in the response for inspection. Defaults
  /// to `false` if unset.
  ///
  /// Optional.
  core.bool? blockOnWarnings;

  /// Additional deploy information including the desired initial percentage
  /// rollout.
  ///
  /// Defaults to the current value saved in the developer dashboard if unset.
  ///
  /// Optional.
  core.List<DeployInfo>? deployInfos;

  /// Use this to control if the item is published immediately on approval or
  /// staged for publishing in the future.
  ///
  /// Defaults to `DEFAULT_PUBLISH` if unset.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PUBLISH_TYPE_UNSPECIFIED" : Default value. This is the same as
  /// DEFAULT_PUBLISH.
  /// - "DEFAULT_PUBLISH" : The submission will be published immediately after
  /// being approved.
  /// - "STAGED_PUBLISH" : After approval the submission will be staged and can
  /// then be published by the developer.
  core.String? publishType;

  /// Whether to attempt to skip item review.
  ///
  /// The API will validate if the item qualifies and return a validation error
  /// if the item requires review. Defaults to `false` if unset.
  ///
  /// Optional.
  core.bool? skipReview;

  PublishItemRequest({
    this.blockOnWarnings,
    this.deployInfos,
    this.publishType,
    this.skipReview,
  });

  PublishItemRequest.fromJson(core.Map json_)
    : this(
        blockOnWarnings: json_['blockOnWarnings'] as core.bool?,
        deployInfos: (json_['deployInfos'] as core.List?)
            ?.map(
              (value) => DeployInfo.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        publishType: json_['publishType'] as core.String?,
        skipReview: json_['skipReview'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final blockOnWarnings = this.blockOnWarnings;
    final deployInfos = this.deployInfos;
    final publishType = this.publishType;
    final skipReview = this.skipReview;
    return {
      'blockOnWarnings': ?blockOnWarnings,
      'deployInfos': ?deployInfos,
      'publishType': ?publishType,
      'skipReview': ?skipReview,
    };
  }
}

/// Response message for `PublishItem`.
class PublishItemResponse {
  /// The ID of the item.
  ///
  /// Output only.
  core.String? itemId;

  /// The name of the item that was submitted
  core.String? name;

  /// The current state of the submission.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ITEM_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "PENDING_REVIEW" : The item is pending review.
  /// - "STAGED" : The item has been approved and is ready to be published.
  /// - "PUBLISHED" : The item is published publicly.
  /// - "PUBLISHED_TO_TESTERS" : The item is published to trusted testers.
  /// - "REJECTED" : The item has been rejected for publishing.
  /// - "CANCELLED" : The item submission has been cancelled.
  core.String? state;

  /// Non-blocking warnings encountered during the request.
  ///
  /// Output only.
  WarningsInfo? warningInfo;

  PublishItemResponse({this.itemId, this.name, this.state, this.warningInfo});

  PublishItemResponse.fromJson(core.Map json_)
    : this(
        itemId: json_['itemId'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        warningInfo: json_.containsKey('warningInfo')
            ? WarningsInfo.fromJson(
                json_['warningInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final itemId = this.itemId;
    final name = this.name;
    final state = this.state;
    final warningInfo = this.warningInfo;
    return {
      'itemId': ?itemId,
      'name': ?name,
      'state': ?state,
      'warningInfo': ?warningInfo,
    };
  }
}

/// Response message for QueryItemMetrics.
class QueryItemMetricsResponse {
  /// The metric rows.
  core.List<MetricRow>? metricRows;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  QueryItemMetricsResponse({this.metricRows, this.nextPageToken});

  QueryItemMetricsResponse.fromJson(core.Map json_)
    : this(
        metricRows: (json_['metricRows'] as core.List?)
            ?.map(
              (value) => MetricRow.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final metricRows = this.metricRows;
    final nextPageToken = this.nextPageToken;
    return {'metricRows': ?metricRows, 'nextPageToken': ?nextPageToken};
  }
}

/// Singleton resource for the rating summary of an item.
class RatingSummary {
  /// The number of five star ratings.
  core.String? fiveStarRatingCount;

  /// The number of four star ratings.
  core.String? fourStarRatingCount;

  /// Identifier.
  ///
  /// Item rating summary resource name Format:
  /// publishers/{publisher}/items/{item}/ratingSummary
  core.String? name;

  /// The number of ratings with a non-empty review text.
  core.String? nonEmptyReviewCount;

  /// The number of one star ratings.
  core.String? oneStarRatingCount;

  /// The rating of the item as shown on the store page, expressed as a double
  /// between 1 and 5.
  core.double? rating;

  /// The total number of ratings for the item.
  core.String? ratingCount;

  /// The number of three star ratings.
  core.String? threeStarRatingCount;

  /// The number of two star ratings.
  core.String? twoStarRatingCount;

  RatingSummary({
    this.fiveStarRatingCount,
    this.fourStarRatingCount,
    this.name,
    this.nonEmptyReviewCount,
    this.oneStarRatingCount,
    this.rating,
    this.ratingCount,
    this.threeStarRatingCount,
    this.twoStarRatingCount,
  });

  RatingSummary.fromJson(core.Map json_)
    : this(
        fiveStarRatingCount: json_['fiveStarRatingCount'] as core.String?,
        fourStarRatingCount: json_['fourStarRatingCount'] as core.String?,
        name: json_['name'] as core.String?,
        nonEmptyReviewCount: json_['nonEmptyReviewCount'] as core.String?,
        oneStarRatingCount: json_['oneStarRatingCount'] as core.String?,
        rating: (json_['rating'] as core.num?)?.toDouble(),
        ratingCount: json_['ratingCount'] as core.String?,
        threeStarRatingCount: json_['threeStarRatingCount'] as core.String?,
        twoStarRatingCount: json_['twoStarRatingCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fiveStarRatingCount = this.fiveStarRatingCount;
    final fourStarRatingCount = this.fourStarRatingCount;
    final name = this.name;
    final nonEmptyReviewCount = this.nonEmptyReviewCount;
    final oneStarRatingCount = this.oneStarRatingCount;
    final rating = this.rating;
    final ratingCount = this.ratingCount;
    final threeStarRatingCount = this.threeStarRatingCount;
    final twoStarRatingCount = this.twoStarRatingCount;
    return {
      'fiveStarRatingCount': ?fiveStarRatingCount,
      'fourStarRatingCount': ?fourStarRatingCount,
      'name': ?name,
      'nonEmptyReviewCount': ?nonEmptyReviewCount,
      'oneStarRatingCount': ?oneStarRatingCount,
      'rating': ?rating,
      'ratingCount': ?ratingCount,
      'threeStarRatingCount': ?threeStarRatingCount,
      'twoStarRatingCount': ?twoStarRatingCount,
    };
  }
}

/// A review written by a user to rate an item in the Chrome Web Store.
class Review {
  /// Info on the author of the review.
  AuthorInfo? authorInfo;

  /// Content of the review.
  core.String? comment;

  /// When the review was posted.
  ///
  /// Output only.
  core.String? createTime;

  /// The item that this review evaluates.
  ///
  /// Format: publishers/{publisher}/items/{item}
  ///
  /// Output only.
  core.String? item;

  /// Identifier.
  ///
  /// Review resource name. Format: reviews/{reviewId}
  core.String? name;

  /// Rating of the item, between 1 and 5.
  core.int? rating;

  Review({
    this.authorInfo,
    this.comment,
    this.createTime,
    this.item,
    this.name,
    this.rating,
  });

  Review.fromJson(core.Map json_)
    : this(
        authorInfo: json_.containsKey('authorInfo')
            ? AuthorInfo.fromJson(
                json_['authorInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        comment: json_['comment'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        item: json_['item'] as core.String?,
        name: json_['name'] as core.String?,
        rating: json_['rating'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authorInfo = this.authorInfo;
    final comment = this.comment;
    final createTime = this.createTime;
    final item = this.item;
    final name = this.name;
    final rating = this.rating;
    return {
      'authorInfo': ?authorInfo,
      'comment': ?comment,
      'createTime': ?createTime,
      'item': ?item,
      'name': ?name,
      'rating': ?rating,
    };
  }
}

/// Request message for RollbackItem.
class RollbackItemRequest {
  /// The new version to assign to the package being rolled back to.
  ///
  /// This effectively "rolls forward" the previous package by giving it a
  /// higher version number than the currently-published package. E.g. if the
  /// current published version is 1.1, the new version could be 1.1.1 or 1.2
  /// but not 1.0.
  ///
  /// Required.
  core.String? newVersion;

  /// The reason for the rollback that will be used for internal auditing and
  /// developer dashboard visibility.
  ///
  /// Required.
  core.String? rollbackReason;

  /// The target previously published CRX version to roll back to.
  ///
  /// If unset, defaults to the last published CRX version.
  ///
  /// Required.
  core.String? targetCrxVersion;

  /// If set, validate and dry run the request but do not actually initiate the
  /// rollback
  ///
  /// Optional.
  core.bool? validateOnly;

  RollbackItemRequest({
    this.newVersion,
    this.rollbackReason,
    this.targetCrxVersion,
    this.validateOnly,
  });

  RollbackItemRequest.fromJson(core.Map json_)
    : this(
        newVersion: json_['newVersion'] as core.String?,
        rollbackReason: json_['rollbackReason'] as core.String?,
        targetCrxVersion: json_['targetCrxVersion'] as core.String?,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final newVersion = this.newVersion;
    final rollbackReason = this.rollbackReason;
    final targetCrxVersion = this.targetCrxVersion;
    final validateOnly = this.validateOnly;
    return {
      'newVersion': ?newVersion,
      'rollbackReason': ?rollbackReason,
      'targetCrxVersion': ?targetCrxVersion,
      'validateOnly': ?validateOnly,
    };
  }
}

/// Response message for `RollbackItem`.
typedef RollbackItemResponse = $Empty;

/// Request message for SetPublishedDeployPercentage.
class SetPublishedDeployPercentageRequest {
  /// Unscaled percentage value for the publised revision (nonnegative number
  /// between 0 and 100).
  ///
  /// It must be larger than the existing target percentage.
  ///
  /// Required.
  core.int? deployPercentage;

  SetPublishedDeployPercentageRequest({this.deployPercentage});

  SetPublishedDeployPercentageRequest.fromJson(core.Map json_)
    : this(deployPercentage: json_['deployPercentage'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final deployPercentage = this.deployPercentage;
    return {'deployPercentage': ?deployPercentage};
  }
}

/// Response message for `SetPublishedDeployPercentage`.
typedef SetPublishedDeployPercentageResponse = $Empty;

/// Request message for UploadItemPackage.
typedef UploadItemPackageRequest = $Empty;

/// Response message for `UploadItemPackage`.
class UploadItemPackageResponse {
  /// The extension version provided in the manifest of the uploaded package.
  ///
  /// This will not be set if the upload is still in progress (`upload_state` is
  /// `UPLOAD_IN_PROGRESS`).
  core.String? crxVersion;

  /// The ID of the item the package was uploaded to.
  ///
  /// Output only.
  core.String? itemId;

  /// The name of the item the package was uploaded to.
  core.String? name;

  /// The state of the upload.
  ///
  /// If `upload_state` is `UPLOAD_IN_PROGRESS`, you can poll for updates using
  /// the fetchStatus method.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UPLOAD_STATE_UNSPECIFIED" : The default value.
  /// - "SUCCEEDED" : The upload succeeded.
  /// - "IN_PROGRESS" : The upload is currently being processed.
  /// - "FAILED" : The upload failed.
  /// - "NOT_FOUND" : Used as the value of `lastAsyncUploadState` in a
  /// `fetchStatus` response indicating that an upload attempt was not found.
  core.String? uploadState;

  UploadItemPackageResponse({
    this.crxVersion,
    this.itemId,
    this.name,
    this.uploadState,
  });

  UploadItemPackageResponse.fromJson(core.Map json_)
    : this(
        crxVersion: json_['crxVersion'] as core.String?,
        itemId: json_['itemId'] as core.String?,
        name: json_['name'] as core.String?,
        uploadState: json_['uploadState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final crxVersion = this.crxVersion;
    final itemId = this.itemId;
    final name = this.name;
    final uploadState = this.uploadState;
    return {
      'crxVersion': ?crxVersion,
      'itemId': ?itemId,
      'name': ?name,
      'uploadState': ?uploadState,
    };
  }
}

/// Represents a single warning encountered during the request.
class Warning {
  /// A description of the warning.
  ///
  /// Developers should use this message to understand the warning and take
  /// appropriate action to resolve the issue.
  core.String? description;

  /// The reason for the warning.
  ///
  /// This is a constant value that identifies the proximate cause of the
  /// warning.
  core.String? reason;

  Warning({this.description, this.reason});

  Warning.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        reason: json_['reason'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final reason = this.reason;
    return {'description': ?description, 'reason': ?reason};
  }
}

/// Message containing details on warnings encountered during PublishItem.
class WarningsInfo {
  /// All warnings encountered during the request.
  core.List<Warning>? warnings;

  WarningsInfo({this.warnings});

  WarningsInfo.fromJson(core.Map json_)
    : this(
        warnings: (json_['warnings'] as core.List?)
            ?.map(
              (value) => Warning.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final warnings = this.warnings;
    return {'warnings': ?warnings};
  }
}
