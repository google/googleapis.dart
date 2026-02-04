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

/// Chrome Web Store API - v1.1
///
/// The Chrome Web Store API provides access to data about apps and extensions,
/// as well as developer tools for managing them.
///
/// For more information, see <https://developer.chrome.com/docs/webstore/api>
///
/// Create an instance of [ChromewebstoreApi] to access these resources:
///
/// - [ItemsResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

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

  ItemsResource get items => ItemsResource(_requester);

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

class ItemsResource {
  final commons.ApiRequester _requester;

  ItemsResource(commons.ApiRequester client) : _requester = client;

  /// Gets your own Chrome Web Store item.
  ///
  /// Request parameters:
  ///
  /// [itemId] - Unique identifier representing the Chrome App, Chrome
  /// Extension, or the Chrome Theme.
  ///
  /// [projection] - Determines which subset of the item information to return.
  /// Possible string values are:
  /// - "DRAFT" : Return information extracted from the current draft.
  /// - "PUBLISHED" : Return information extracted from the published item
  /// draft.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Item].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Item> get(
    core.String itemId, {
    core.String? projection,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'projection': ?projection == null ? null : [projection],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'chromewebstore/v1.1/items/' + commons.escapeVariable('$itemId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Item.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new item.
  ///
  /// Request parameters:
  ///
  /// [publisherEmail] - The email of the publisher who owns the items. Defaults
  /// to the caller's email address.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// Completes with a [Item].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Item> insert({
    core.String? publisherEmail,
    core.String? $fields,
    commons.Media? uploadMedia,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'publisherEmail': ?publisherEmail == null ? null : [publisherEmail],
      'fields': ?$fields == null ? null : [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'chromewebstore/v1.1/items';
    } else {
      url_ = '/upload/chromewebstore/v1.1/items';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: commons.UploadOptions.defaultOptions,
    );
    return Item.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Publishes an item.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [itemId] - The ID of the item to publish.
  ///
  /// [deployPercentage] - The deploy percentage you want to set for your item.
  /// Valid values are \[0, 100\]. If set to any number less than 100, only that
  /// many percentage of users will be allowed to get the update.
  ///
  /// [publishTarget] - Provide defined publishTarget in URL (case sensitive):
  /// publishTarget="trustedTesters" or publishTarget="default". Defaults to
  /// publishTarget="default".
  ///
  /// [reviewExemption] - Optional. The caller request to exempt the review and
  /// directly publish because the update is within the list that we can
  /// automatically validate. The API will check if the exemption can be granted
  /// using real time data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Item2].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Item2> publish(
    PublishRequest request,
    core.String itemId, {
    core.int? deployPercentage,
    core.String? publishTarget,
    core.bool? reviewExemption,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'deployPercentage': ?deployPercentage == null
          ? null
          : ['${deployPercentage}'],
      'publishTarget': ?publishTarget == null ? null : [publishTarget],
      'reviewExemption': ?reviewExemption == null
          ? null
          : ['${reviewExemption}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'chromewebstore/v1.1/items/' +
        commons.escapeVariable('$itemId') +
        '/publish';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Item2.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing item.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [itemId] - The ID of the item to upload.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// Completes with a [Item].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Item> update(
    Item request,
    core.String itemId, {
    core.String? $fields,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'chromewebstore/v1.1/items/' + commons.escapeVariable('$itemId');
    } else {
      url_ =
          '/upload/chromewebstore/v1.1/items/' +
          commons.escapeVariable('$itemId');
    }

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: commons.UploadOptions.defaultOptions,
    );
    return Item.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class Item {
  /// The CRX version of the item.
  ///
  /// If the projection is draft, then it is the draft's CRX version.
  core.String? crxVersion;

  /// Unique ID of the item.
  core.String? id;

  /// Detail human-readable status of the operation, in English only.
  ///
  /// Same error messages are displayed when you upload your app to the Chrome
  /// Web Store.
  core.List<ItemError>? itemError;

  /// Identifies this resource as an Item.
  ///
  /// Value: the fixed string "chromewebstore#item".
  core.String? kind;

  /// Public key of this item.
  core.String? publicKey;

  /// Status of the operation.
  ///
  /// Possible values are: - \"FAILURE\" - \"IN_PROGRESS\" - \"NOT_FOUND\" -
  /// \"SUCCESS\"
  core.String? uploadState;

  Item({
    this.crxVersion,
    this.id,
    this.itemError,
    this.kind,
    this.publicKey,
    this.uploadState,
  });

  Item.fromJson(core.Map json_)
    : this(
        crxVersion: json_['crxVersion'] as core.String?,
        id: json_['id'] as core.String?,
        itemError: (json_['itemError'] as core.List?)
            ?.map(
              (value) => ItemError.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        kind: json_['kind'] as core.String?,
        publicKey: json_['publicKey'] as core.String?,
        uploadState: json_['uploadState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final crxVersion = this.crxVersion;
    final id = this.id;
    final itemError = this.itemError;
    final kind = this.kind;
    final publicKey = this.publicKey;
    final uploadState = this.uploadState;
    return {
      'crxVersion': ?crxVersion,
      'id': ?id,
      'itemError': ?itemError,
      'kind': ?kind,
      'publicKey': ?publicKey,
      'uploadState': ?uploadState,
    };
  }
}

class Item2 {
  /// The ID of this item.
  core.String? itemId;

  /// Static string value is always "chromewebstore#item".
  core.String? kind;

  /// The status code of this publish operation.
  ///
  /// It may contain multiple elements from the following list: NOT_AUTHORIZED,
  /// INVALID_DEVELOPER, DEVELOPER_NO_OWNERSHIP, DEVELOPER_SUSPENDED,
  /// ITEM_NOT_FOUND, ITEM_PENDING_REVIEW, ITEM_TAKEN_DOWN, PUBLISHER_SUSPENDED.
  core.List<core.String>? status;

  /// Detailed human-comprehensible explanation of the status code above.
  core.List<core.String>? statusDetail;

  Item2({this.itemId, this.kind, this.status, this.statusDetail});

  Item2.fromJson(core.Map json_)
    : this(
        itemId: json_['item_id'] as core.String?,
        kind: json_['kind'] as core.String?,
        status: (json_['status'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        statusDetail: (json_['statusDetail'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final itemId = this.itemId;
    final kind = this.kind;
    final status = this.status;
    final statusDetail = this.statusDetail;
    return {
      'item_id': ?itemId,
      'kind': ?kind,
      'status': ?status,
      'statusDetail': ?statusDetail,
    };
  }
}

/// Error of the item
class ItemError {
  /// The error code.
  core.String? errorCode;

  /// The human-readable detail message of the error.
  core.String? errorDetail;

  ItemError({this.errorCode, this.errorDetail});

  ItemError.fromJson(core.Map json_)
    : this(
        errorCode: json_['error_code'] as core.String?,
        errorDetail: json_['error_detail'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final errorCode = this.errorCode;
    final errorDetail = this.errorDetail;
    return {'error_code': ?errorCode, 'error_detail': ?errorDetail};
  }
}

class PublishRequest {
  /// The target deploy percentage of the item.
  ///
  /// It's only useful for items with big user base.
  core.int? deployPercentage;

  /// The caller request to exempt the review and directly publish because the
  /// update is within the list that we can automatically validate.
  ///
  /// The API will check if the exemption can be granted using real time data.
  ///
  /// Optional.
  core.bool? reviewExemption;

  /// The publish target of this publish operation.
  ///
  /// This is the same as using publishTarget as a URL query parameter. The
  /// string value can either be target="trustedTesters" or target="default".
  /// The default value, if none is supplied, is target="default". Recommended
  /// usage is to use the URL query parameter to specificy the value.
  core.String? target;

  PublishRequest({this.deployPercentage, this.reviewExemption, this.target});

  PublishRequest.fromJson(core.Map json_)
    : this(
        deployPercentage: json_['deployPercentage'] as core.int?,
        reviewExemption: json_['reviewExemption'] as core.bool?,
        target: json_['target'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deployPercentage = this.deployPercentage;
    final reviewExemption = this.reviewExemption;
    final target = this.target;
    return {
      'deployPercentage': ?deployPercentage,
      'reviewExemption': ?reviewExemption,
      'target': ?target,
    };
  }
}
