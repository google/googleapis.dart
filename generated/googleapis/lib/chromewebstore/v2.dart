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

/// Request message for CancelSubmission.
typedef CancelSubmissionRequest = $Empty;

/// Response message for `CancelSubmission`.
typedef CancelSubmissionResponse = $Empty;

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

/// Request message for PublishItem.
class PublishItemRequest {
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

  PublishItemRequest({this.deployInfos, this.publishType, this.skipReview});

  PublishItemRequest.fromJson(core.Map json_)
    : this(
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
    final deployInfos = this.deployInfos;
    final publishType = this.publishType;
    final skipReview = this.skipReview;
    return {
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

  PublishItemResponse({this.itemId, this.name, this.state});

  PublishItemResponse.fromJson(core.Map json_)
    : this(
        itemId: json_['itemId'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final itemId = this.itemId;
    final name = this.name;
    final state = this.state;
    return {'itemId': ?itemId, 'name': ?name, 'state': ?state};
  }
}

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
