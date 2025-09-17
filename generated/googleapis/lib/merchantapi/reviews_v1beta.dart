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

/// Merchant API - reviews_v1beta
///
/// Programmatically manage your Merchant Center Accounts.
///
/// For more information, see <https://developers.google.com/merchant/api>
///
/// Create an instance of [MerchantApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsMerchantReviewsResource]
///   - [AccountsProductReviewsResource]
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

/// Programmatically manage your Merchant Center Accounts.
class MerchantApi {
  /// Manage your product listings and accounts for Google Shopping
  static const contentScope = 'https://www.googleapis.com/auth/content';

  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);

  MerchantApi(
    http.Client client, {
    core.String rootUrl = 'https://merchantapi.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsMerchantReviewsResource get merchantReviews =>
      AccountsMerchantReviewsResource(_requester);
  AccountsProductReviewsResource get productReviews =>
      AccountsProductReviewsResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsMerchantReviewsResource {
  final commons.ApiRequester _requester;

  AccountsMerchantReviewsResource(commons.ApiRequester client)
    : _requester = client;

  /// Deletes merchant review.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The ID of the merchant review. Format:
  /// accounts/{account}/merchantReviews/{merchantReview}
  /// Value must have pattern `^accounts/\[^/\]+/merchantReviews/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'reviews/v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a merchant review.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The ID of the merchant review. Format:
  /// accounts/{account}/merchantReviews/{merchantReview}
  /// Value must have pattern `^accounts/\[^/\]+/merchantReviews/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MerchantReview].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MerchantReview> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'reviews/v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return MerchantReview.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Inserts a review for your Merchant Center account.
  ///
  /// If the review already exists, then the review is replaced with the new
  /// instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account where the merchant review will be
  /// inserted. Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [dataSource] - Required. The data source of the
  /// [merchantreview](https://support.google.com/merchants/answer/7045996?sjid=5253581244217581976-EU)
  /// Format: `accounts/{account}/dataSources/{datasource}`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MerchantReview].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MerchantReview> insert(
    MerchantReview request,
    core.String parent, {
    core.String? dataSource,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (dataSource != null) 'dataSource': [dataSource],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'reviews/v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/merchantReviews:insert';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return MerchantReview.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists merchant reviews.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account to list merchant reviews for. Format:
  /// accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of merchant reviews to return.
  /// The service can return fewer than this value. The maximum value is 1000;
  /// values above 1000 are coerced to 1000. If unspecified, the maximum number
  /// of reviews is returned.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListMerchantReviews` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListMerchantReviews`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMerchantReviewsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMerchantReviewsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'reviews/v1beta/' + core.Uri.encodeFull('$parent') + '/merchantReviews';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMerchantReviewsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsProductReviewsResource {
  final commons.ApiRequester _requester;

  AccountsProductReviewsResource(commons.ApiRequester client)
    : _requester = client;

  /// Deletes a product review.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The ID of the Product review. Format:
  /// accounts/{account}/productReviews/{productReview}
  /// Value must have pattern `^accounts/\[^/\]+/productReviews/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'reviews/v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a product review.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The ID of the merchant review. Format:
  /// accounts/{account}/productReviews/{productReview}
  /// Value must have pattern `^accounts/\[^/\]+/productReviews/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductReview].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductReview> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'reviews/v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ProductReview.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Inserts a product review.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account where the product review will be
  /// inserted. Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [dataSource] - Required. Format:
  /// `accounts/{account}/dataSources/{datasource}`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductReview].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductReview> insert(
    ProductReview request,
    core.String parent, {
    core.String? dataSource,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (dataSource != null) 'dataSource': [dataSource],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'reviews/v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/productReviews:insert';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ProductReview.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists product reviews.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account to list product reviews for. Format:
  /// accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of products to return. The
  /// service may return fewer than this value.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListProductReviews` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListProductReviews`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProductReviewsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProductReviewsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'reviews/v1beta/' + core.Uri.encodeFull('$parent') + '/productReviews';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListProductReviewsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// A message that represents custom attributes.
///
/// Exactly one of `value` or `group_values` must not be empty.
class CustomAttribute {
  /// Subattributes within this attribute group.
  ///
  /// If `group_values` is not empty, `value` must be empty.
  core.List<CustomAttribute>? groupValues;

  /// The name of the attribute.
  core.String? name;

  /// The value of the attribute.
  ///
  /// If `value` is not empty, `group_values` must be empty.
  core.String? value;

  CustomAttribute({this.groupValues, this.name, this.value});

  CustomAttribute.fromJson(core.Map json_)
    : this(
        groupValues:
            (json_['groupValues'] as core.List?)
                ?.map(
                  (value) => CustomAttribute.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (groupValues != null) 'groupValues': groupValues!,
    if (name != null) 'name': name!,
    if (value != null) 'value': value!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Response message for the `ListMerchantsReview` method.
class ListMerchantReviewsResponse {
  /// The merchant review.
  core.List<MerchantReview>? merchantReviews;

  /// The token to retrieve the next page of results.
  core.String? nextPageToken;

  ListMerchantReviewsResponse({this.merchantReviews, this.nextPageToken});

  ListMerchantReviewsResponse.fromJson(core.Map json_)
    : this(
        merchantReviews:
            (json_['merchantReviews'] as core.List?)
                ?.map(
                  (value) => MerchantReview.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (merchantReviews != null) 'merchantReviews': merchantReviews!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// response message for the ListProductReviews method.
class ListProductReviewsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The product review.
  core.List<ProductReview>? productReviews;

  ListProductReviewsResponse({this.nextPageToken, this.productReviews});

  ListProductReviewsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        productReviews:
            (json_['productReviews'] as core.List?)
                ?.map(
                  (value) => ProductReview.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (productReviews != null) 'productReviews': productReviews!,
  };
}

/// A review for a merchant.
///
/// For more information, see
/// [Introduction to Merchant Review Feeds](https://developers.google.com/merchant-review-feeds)
class MerchantReview {
  /// A list of custom (merchant-provided) attributes.
  ///
  /// It can also be used for submitting any attribute of the data specification
  /// in its generic form (for example, `{ "name": "size type", "value":
  /// "regular" }`). This is useful for submitting attributes not explicitly
  /// exposed by the API, such as experimental attributes. Maximum allowed
  /// number of characters for each custom attribute is 10240 (represents sum of
  /// characters for name and value). Maximum 2500 custom attributes can be set
  /// per product, with total size of 102.4kB. Underscores in custom attribute
  /// names are replaced by spaces upon insertion.
  ///
  /// Optional.
  core.List<CustomAttribute>? customAttributes;

  /// The primary data source of the merchant review.
  ///
  /// Output only.
  core.String? dataSource;

  /// A list of merchant review attributes.
  ///
  /// Optional.
  MerchantReviewAttributes? merchantReviewAttributes;

  /// The user provided merchant review ID to uniquely identify the merchant
  /// review.
  ///
  /// Required.
  core.String? merchantReviewId;

  /// The status of a merchant review, data validation issues, that is,
  /// information about a merchant review computed asynchronously.
  ///
  /// Output only.
  MerchantReviewStatus? merchantReviewStatus;

  /// Identifier.
  ///
  /// The name of the merchant review. Format:
  /// `"{merchantreview.name=accounts/{account}/merchantReviews/{merchantReview}}"`
  core.String? name;

  MerchantReview({
    this.customAttributes,
    this.dataSource,
    this.merchantReviewAttributes,
    this.merchantReviewId,
    this.merchantReviewStatus,
    this.name,
  });

  MerchantReview.fromJson(core.Map json_)
    : this(
        customAttributes:
            (json_['customAttributes'] as core.List?)
                ?.map(
                  (value) => CustomAttribute.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        dataSource: json_['dataSource'] as core.String?,
        merchantReviewAttributes:
            json_.containsKey('merchantReviewAttributes')
                ? MerchantReviewAttributes.fromJson(
                  json_['merchantReviewAttributes']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        merchantReviewId: json_['merchantReviewId'] as core.String?,
        merchantReviewStatus:
            json_.containsKey('merchantReviewStatus')
                ? MerchantReviewStatus.fromJson(
                  json_['merchantReviewStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customAttributes != null) 'customAttributes': customAttributes!,
    if (dataSource != null) 'dataSource': dataSource!,
    if (merchantReviewAttributes != null)
      'merchantReviewAttributes': merchantReviewAttributes!,
    if (merchantReviewId != null) 'merchantReviewId': merchantReviewId!,
    if (merchantReviewStatus != null)
      'merchantReviewStatus': merchantReviewStatus!,
    if (name != null) 'name': name!,
  };
}

/// Attributes.
class MerchantReviewAttributes {
  /// The method used to collect the review.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "COLLECTION_METHOD_UNSPECIFIED" : Collection method unspecified.
  /// - "MERCHANT_UNSOLICITED" : The user was not responding to a specific
  /// solicitation when they submitted the review.
  /// - "POINT_OF_SALE" : The user submitted the review in response to a
  /// solicitation when the user placed an order.
  /// - "AFTER_FULFILLMENT" : The user submitted the review in response to a
  /// solicitation after fulfillment of the user's order.
  core.String? collectionMethod;

  /// This should be any freeform text provided by the user and should not be
  /// truncated.
  ///
  /// If multiple responses to different questions are provided, all responses
  /// should be included, with the minimal context for the responses to make
  /// sense. Context should not be provided if questions were left unanswered.
  ///
  /// Required.
  core.String? content;

  /// Set to true if the reviewer should remain anonymous.
  ///
  /// Optional.
  core.bool? isAnonymous;

  /// The maximum possible number for the rating.
  ///
  /// The value of the max rating must be greater than the value of the min
  /// rating.
  ///
  /// Optional.
  core.String? maxRating;

  /// Human-readable display name for the merchant.
  ///
  /// Optional.
  core.String? merchantDisplayName;

  /// Must be unique and stable across all requests.
  ///
  /// In other words, if a request today and another 90 days ago refer to the
  /// same merchant, they must have the same id.
  ///
  /// Required.
  core.String? merchantId;

  /// URL to the merchant's main website.
  ///
  /// Do not use a redirect URL for this value. In other words, the value should
  /// point directly to the merchant's site.
  ///
  /// Optional.
  core.String? merchantLink;

  /// URL to the landing page that hosts the reviews for this merchant.
  ///
  /// Do not use a redirect URL.
  ///
  /// Optional.
  core.String? merchantRatingLink;

  /// The minimum possible number for the rating.
  ///
  /// This should be the worst possible rating and should not be a value for no
  /// rating.
  ///
  /// Optional.
  core.String? minRating;

  /// The reviewer's overall rating of the merchant.
  ///
  /// Optional.
  core.double? rating;

  /// The country where the reviewer made the order defined by ISO 3166-1
  /// Alpha-2 Country Code.
  ///
  /// Optional.
  core.String? reviewCountry;

  /// The language of the review defined by BCP-47 language code.
  ///
  /// Optional.
  core.String? reviewLanguage;

  /// The timestamp indicating when the review was written.
  ///
  /// Required.
  core.String? reviewTime;

  /// A permanent, unique identifier for the author of the review in the
  /// publisher's system.
  ///
  /// Optional.
  core.String? reviewerId;

  /// Display name of the review author.
  ///
  /// Optional.
  core.String? reviewerUsername;

  /// The title of the review.
  ///
  /// Optional.
  core.String? title;

  MerchantReviewAttributes({
    this.collectionMethod,
    this.content,
    this.isAnonymous,
    this.maxRating,
    this.merchantDisplayName,
    this.merchantId,
    this.merchantLink,
    this.merchantRatingLink,
    this.minRating,
    this.rating,
    this.reviewCountry,
    this.reviewLanguage,
    this.reviewTime,
    this.reviewerId,
    this.reviewerUsername,
    this.title,
  });

  MerchantReviewAttributes.fromJson(core.Map json_)
    : this(
        collectionMethod: json_['collectionMethod'] as core.String?,
        content: json_['content'] as core.String?,
        isAnonymous: json_['isAnonymous'] as core.bool?,
        maxRating: json_['maxRating'] as core.String?,
        merchantDisplayName: json_['merchantDisplayName'] as core.String?,
        merchantId: json_['merchantId'] as core.String?,
        merchantLink: json_['merchantLink'] as core.String?,
        merchantRatingLink: json_['merchantRatingLink'] as core.String?,
        minRating: json_['minRating'] as core.String?,
        rating: (json_['rating'] as core.num?)?.toDouble(),
        reviewCountry: json_['reviewCountry'] as core.String?,
        reviewLanguage: json_['reviewLanguage'] as core.String?,
        reviewTime: json_['reviewTime'] as core.String?,
        reviewerId: json_['reviewerId'] as core.String?,
        reviewerUsername: json_['reviewerUsername'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (collectionMethod != null) 'collectionMethod': collectionMethod!,
    if (content != null) 'content': content!,
    if (isAnonymous != null) 'isAnonymous': isAnonymous!,
    if (maxRating != null) 'maxRating': maxRating!,
    if (merchantDisplayName != null)
      'merchantDisplayName': merchantDisplayName!,
    if (merchantId != null) 'merchantId': merchantId!,
    if (merchantLink != null) 'merchantLink': merchantLink!,
    if (merchantRatingLink != null) 'merchantRatingLink': merchantRatingLink!,
    if (minRating != null) 'minRating': minRating!,
    if (rating != null) 'rating': rating!,
    if (reviewCountry != null) 'reviewCountry': reviewCountry!,
    if (reviewLanguage != null) 'reviewLanguage': reviewLanguage!,
    if (reviewTime != null) 'reviewTime': reviewTime!,
    if (reviewerId != null) 'reviewerId': reviewerId!,
    if (reviewerUsername != null) 'reviewerUsername': reviewerUsername!,
    if (title != null) 'title': title!,
  };
}

/// The destination status of the merchant review status.
typedef MerchantReviewDestinationStatus = $ReviewDestinationStatus;

/// The ItemLevelIssue of the merchant review status.
class MerchantReviewItemLevelIssue {
  /// The attribute's name, if the issue is caused by a single attribute.
  ///
  /// Output only.
  core.String? attribute;

  /// The error code of the issue.
  ///
  /// Output only.
  core.String? code;

  /// A short issue description in English.
  ///
  /// Output only.
  core.String? description;

  /// A detailed issue description in English.
  ///
  /// Output only.
  core.String? detail;

  /// The URL of a web page to help with resolving this issue.
  ///
  /// Output only.
  core.String? documentation;

  /// The reporting context the issue applies to.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "REPORTING_CONTEXT_ENUM_UNSPECIFIED" : Not specified.
  /// - "SHOPPING_ADS" :
  /// [Shopping ads](https://support.google.com/merchants/answer/6149970).
  /// - "DISCOVERY_ADS" : Deprecated: Use `DEMAND_GEN_ADS` instead.
  /// [Discovery and Demand Gen ads](https://support.google.com/merchants/answer/13389785).
  /// - "DEMAND_GEN_ADS" :
  /// [Demand Gen ads](https://support.google.com/merchants/answer/13389785).
  /// - "DEMAND_GEN_ADS_DISCOVER_SURFACE" :
  /// [Demand Gen ads on Discover surface](https://support.google.com/merchants/answer/13389785).
  /// - "VIDEO_ADS" :
  /// [Video ads](https://support.google.com/google-ads/answer/6340491).
  /// - "DISPLAY_ADS" :
  /// [Display ads](https://support.google.com/merchants/answer/6069387).
  /// - "LOCAL_INVENTORY_ADS" :
  /// [Local inventory ads](https://support.google.com/merchants/answer/3271956).
  /// - "VEHICLE_INVENTORY_ADS" :
  /// [Vehicle inventory ads](https://support.google.com/merchants/answer/11544533).
  /// - "FREE_LISTINGS" :
  /// [Free product listings](https://support.google.com/merchants/answer/9199328).
  /// - "FREE_LOCAL_LISTINGS" :
  /// [Free local product listings](https://support.google.com/merchants/answer/9825611).
  /// - "FREE_LOCAL_VEHICLE_LISTINGS" :
  /// [Free local vehicle listings](https://support.google.com/merchants/answer/11544533).
  /// - "YOUTUBE_AFFILIATE" :
  /// [Youtube Affiliate](https://support.google.com/youtube/answer/13376398).
  /// - "YOUTUBE_SHOPPING" :
  /// [YouTube Shopping](https://support.google.com/merchants/answer/13478370).
  /// - "CLOUD_RETAIL" :
  /// [Cloud retail](https://cloud.google.com/solutions/retail).
  /// - "LOCAL_CLOUD_RETAIL" :
  /// [Local cloud retail](https://cloud.google.com/solutions/retail).
  /// - "PRODUCT_REVIEWS" :
  /// [Product Reviews](https://support.google.com/merchants/answer/14620732).
  /// - "MERCHANT_REVIEWS" :
  /// [Merchant Reviews](https://developers.google.com/merchant-review-feeds).
  /// - "YOUTUBE_CHECKOUT" : YouTube Checkout .
  core.String? reportingContext;

  /// Whether the issue can be resolved by the merchant.
  ///
  /// Output only.
  core.String? resolution;

  /// How this issue affects serving of the merchant review.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Not specified.
  /// - "NOT_IMPACTED" : This issue represents a warning and does not have a
  /// direct affect on the merchant review.
  /// - "DISAPPROVED" : Issue disapproves the merchant review.
  core.String? severity;

  MerchantReviewItemLevelIssue({
    this.attribute,
    this.code,
    this.description,
    this.detail,
    this.documentation,
    this.reportingContext,
    this.resolution,
    this.severity,
  });

  MerchantReviewItemLevelIssue.fromJson(core.Map json_)
    : this(
        attribute: json_['attribute'] as core.String?,
        code: json_['code'] as core.String?,
        description: json_['description'] as core.String?,
        detail: json_['detail'] as core.String?,
        documentation: json_['documentation'] as core.String?,
        reportingContext: json_['reportingContext'] as core.String?,
        resolution: json_['resolution'] as core.String?,
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attribute != null) 'attribute': attribute!,
    if (code != null) 'code': code!,
    if (description != null) 'description': description!,
    if (detail != null) 'detail': detail!,
    if (documentation != null) 'documentation': documentation!,
    if (reportingContext != null) 'reportingContext': reportingContext!,
    if (resolution != null) 'resolution': resolution!,
    if (severity != null) 'severity': severity!,
  };
}

/// The status of a merchant review, data validation issues, that is,
/// information about a merchant review computed asynchronously.
class MerchantReviewStatus {
  /// Date on which the item has been created, in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format.
  ///
  /// Output only.
  core.String? createTime;

  /// The intended destinations for the merchant review.
  ///
  /// Output only.
  core.List<MerchantReviewDestinationStatus>? destinationStatuses;

  /// A list of all issues associated with the merchant review.
  ///
  /// Output only.
  core.List<MerchantReviewItemLevelIssue>? itemLevelIssues;

  /// Date on which the item has been last updated, in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format.
  ///
  /// Output only.
  core.String? lastUpdateTime;

  MerchantReviewStatus({
    this.createTime,
    this.destinationStatuses,
    this.itemLevelIssues,
    this.lastUpdateTime,
  });

  MerchantReviewStatus.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        destinationStatuses:
            (json_['destinationStatuses'] as core.List?)
                ?.map(
                  (value) => MerchantReviewDestinationStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        itemLevelIssues:
            (json_['itemLevelIssues'] as core.List?)
                ?.map(
                  (value) => MerchantReviewItemLevelIssue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        lastUpdateTime: json_['lastUpdateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (destinationStatuses != null)
      'destinationStatuses': destinationStatuses!,
    if (itemLevelIssues != null) 'itemLevelIssues': itemLevelIssues!,
    if (lastUpdateTime != null) 'lastUpdateTime': lastUpdateTime!,
  };
}

/// A review for a product.
///
/// For more information, see
/// [Introduction to Product Review Feeds](https://developers.google.com/product-review-feeds)
class ProductReview {
  /// A list of custom (merchant-provided) attributes.
  ///
  /// Optional.
  core.List<CustomAttribute>? customAttributes;

  /// The primary data source of the product review.
  ///
  /// Output only.
  core.String? dataSource;

  /// Identifier.
  ///
  /// The name of the product review. Format:
  /// `"{productreview.name=accounts/{account}/productReviews/{productReview}}"`
  core.String? name;

  /// A list of product review attributes.
  ///
  /// Optional.
  ProductReviewAttributes? productReviewAttributes;

  /// The permanent, unique identifier for the product review in the publisher’s
  /// system.
  ///
  /// Required.
  core.String? productReviewId;

  /// The status of a product review, data validation issues, that is,
  /// information about a product review computed asynchronously.
  ///
  /// Output only.
  ProductReviewStatus? productReviewStatus;

  ProductReview({
    this.customAttributes,
    this.dataSource,
    this.name,
    this.productReviewAttributes,
    this.productReviewId,
    this.productReviewStatus,
  });

  ProductReview.fromJson(core.Map json_)
    : this(
        customAttributes:
            (json_['customAttributes'] as core.List?)
                ?.map(
                  (value) => CustomAttribute.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        dataSource: json_['dataSource'] as core.String?,
        name: json_['name'] as core.String?,
        productReviewAttributes:
            json_.containsKey('productReviewAttributes')
                ? ProductReviewAttributes.fromJson(
                  json_['productReviewAttributes']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        productReviewId: json_['productReviewId'] as core.String?,
        productReviewStatus:
            json_.containsKey('productReviewStatus')
                ? ProductReviewStatus.fromJson(
                  json_['productReviewStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customAttributes != null) 'customAttributes': customAttributes!,
    if (dataSource != null) 'dataSource': dataSource!,
    if (name != null) 'name': name!,
    if (productReviewAttributes != null)
      'productReviewAttributes': productReviewAttributes!,
    if (productReviewId != null) 'productReviewId': productReviewId!,
    if (productReviewStatus != null)
      'productReviewStatus': productReviewStatus!,
  };
}

/// Attributes.
class ProductReviewAttributes {
  /// The name of the aggregator of the product reviews.
  ///
  /// A publisher may use a reviews aggregator to manage reviews and provide the
  /// feeds. This element indicates the use of an aggregator and contains
  /// information about the aggregator.
  ///
  /// Optional.
  core.String? aggregatorName;

  /// Contains ASINs (Amazon Standard Identification Numbers) associated with a
  /// product.
  ///
  /// Optional.
  core.List<core.String>? asins;

  /// Contains brand names associated with a product.
  ///
  /// Optional.
  core.List<core.String>? brands;

  /// The method used to collect the review.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "COLLECTION_METHOD_UNSPECIFIED" : Collection method unspecified.
  /// - "UNSOLICITED" : The user was not responding to a specific solicitation
  /// when they submitted the review.
  /// - "POST_FULFILLMENT" : The user submitted the review in response to a
  /// solicitation after fulfillment of the user's order.
  core.String? collectionMethod;

  /// Contains the disadvantages based on the opinion of the reviewer.
  ///
  /// Omit boilerplate text like "con:" unless it was written by the reviewer.
  ///
  /// Optional.
  core.List<core.String>? cons;

  /// The content of the review.
  ///
  /// If empty, the content might still get populated from pros and cons.
  ///
  /// Optional.
  core.String? content;

  /// Contains GTINs (global trade item numbers) associated with a product.
  ///
  /// Sub-types of GTINs (e.g. UPC, EAN, ISBN, JAN) are supported.
  ///
  /// Optional.
  core.List<core.String>? gtins;

  /// Indicates whether the review is incentivized.
  ///
  /// Optional.
  core.bool? isIncentivizedReview;

  /// Indicates whether the review is marked as spam in the publisher's system.
  ///
  /// Optional.
  core.bool? isSpam;

  /// Indicates whether the reviewer's purchase is verified.
  ///
  /// Optional.
  core.bool? isVerifiedPurchase;

  /// The maximum possible number for the rating.
  ///
  /// The value of the max rating must be greater than the value of the min
  /// attribute.
  ///
  /// Optional.
  core.String? maxRating;

  /// Contains the ratings associated with the review.
  ///
  /// The minimum possible number for the rating. This should be the worst
  /// possible rating and should not be a value for no rating.
  ///
  /// Optional.
  core.String? minRating;

  /// Contains MPNs (manufacturer part numbers) associated with a product.
  ///
  /// Optional.
  core.List<core.String>? mpns;

  /// The URI of the product.
  ///
  /// This URI can have the same value as the `review_link` element, if the
  /// review URI and the product URI are the same.
  ///
  /// Optional.
  core.List<core.String>? productLinks;

  /// Descriptive name of a product.
  ///
  /// Optional.
  core.List<core.String>? productNames;

  /// Contains the advantages based on the opinion of the reviewer.
  ///
  /// Omit boilerplate text like "pro:" unless it was written by the reviewer.
  ///
  /// Optional.
  core.List<core.String>? pros;

  /// A link to the company favicon of the publisher.
  ///
  /// The image dimensions should be favicon size: 16x16 pixels. The image
  /// format should be GIF, JPG or PNG.
  ///
  /// Optional.
  core.String? publisherFavicon;

  /// The name of the publisher of the product reviews.
  ///
  /// The information about the publisher, which may be a retailer,
  /// manufacturer, reviews service company, or any entity that publishes
  /// product reviews.
  ///
  /// Optional.
  core.String? publisherName;

  /// The reviewer's overall rating of the product.
  ///
  /// Optional.
  core.double? rating;

  /// The country of the review defined by ISO 3166-1 Alpha-2 Country Code.
  ///
  /// Optional.
  core.String? reviewCountry;

  /// The language of the review defined by BCP-47 language code.
  ///
  /// Optional.
  core.String? reviewLanguage;

  /// The URI of the review landing page.
  ///
  /// Optional.
  ReviewLink? reviewLink;

  /// The timestamp indicating when the review was written.
  ///
  /// Required.
  core.String? reviewTime;

  /// The author of the product review.
  ///
  /// A permanent, unique identifier for the author of the review in the
  /// publisher's system.
  ///
  /// Optional.
  core.String? reviewerId;

  /// A URI to an image of the reviewed product created by the review author.
  ///
  /// The URI does not have to end with an image file extension.
  ///
  /// Optional.
  core.List<core.String>? reviewerImageLinks;

  /// Set to true if the reviewer should remain anonymous.
  ///
  /// Optional.
  core.bool? reviewerIsAnonymous;

  /// The name of the reviewer of the product review.
  ///
  /// Optional.
  core.String? reviewerUsername;

  /// Contains SKUs (stock keeping units) associated with a product.
  ///
  /// Often this matches the product Offer Id in the product feed.
  ///
  /// Optional.
  core.List<core.String>? skus;

  /// The name of the subclient of the product reviews.
  ///
  /// The subclient is an identifier of the product review source. It should be
  /// equivalent to the directory provided in the file data source path.
  ///
  /// Optional.
  core.String? subclientName;

  /// The title of the review.
  ///
  /// Optional.
  core.String? title;

  /// A permanent, unique identifier for the transaction associated with the
  /// review in the publisher's system.
  ///
  /// This ID can be used to indicate that multiple reviews are associated with
  /// the same transaction.
  ///
  /// Optional.
  core.String? transactionId;

  ProductReviewAttributes({
    this.aggregatorName,
    this.asins,
    this.brands,
    this.collectionMethod,
    this.cons,
    this.content,
    this.gtins,
    this.isIncentivizedReview,
    this.isSpam,
    this.isVerifiedPurchase,
    this.maxRating,
    this.minRating,
    this.mpns,
    this.productLinks,
    this.productNames,
    this.pros,
    this.publisherFavicon,
    this.publisherName,
    this.rating,
    this.reviewCountry,
    this.reviewLanguage,
    this.reviewLink,
    this.reviewTime,
    this.reviewerId,
    this.reviewerImageLinks,
    this.reviewerIsAnonymous,
    this.reviewerUsername,
    this.skus,
    this.subclientName,
    this.title,
    this.transactionId,
  });

  ProductReviewAttributes.fromJson(core.Map json_)
    : this(
        aggregatorName: json_['aggregatorName'] as core.String?,
        asins:
            (json_['asins'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        brands:
            (json_['brands'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        collectionMethod: json_['collectionMethod'] as core.String?,
        cons:
            (json_['cons'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        content: json_['content'] as core.String?,
        gtins:
            (json_['gtins'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        isIncentivizedReview: json_['isIncentivizedReview'] as core.bool?,
        isSpam: json_['isSpam'] as core.bool?,
        isVerifiedPurchase: json_['isVerifiedPurchase'] as core.bool?,
        maxRating: json_['maxRating'] as core.String?,
        minRating: json_['minRating'] as core.String?,
        mpns:
            (json_['mpns'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        productLinks:
            (json_['productLinks'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        productNames:
            (json_['productNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        pros:
            (json_['pros'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        publisherFavicon: json_['publisherFavicon'] as core.String?,
        publisherName: json_['publisherName'] as core.String?,
        rating: (json_['rating'] as core.num?)?.toDouble(),
        reviewCountry: json_['reviewCountry'] as core.String?,
        reviewLanguage: json_['reviewLanguage'] as core.String?,
        reviewLink:
            json_.containsKey('reviewLink')
                ? ReviewLink.fromJson(
                  json_['reviewLink'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        reviewTime: json_['reviewTime'] as core.String?,
        reviewerId: json_['reviewerId'] as core.String?,
        reviewerImageLinks:
            (json_['reviewerImageLinks'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        reviewerIsAnonymous: json_['reviewerIsAnonymous'] as core.bool?,
        reviewerUsername: json_['reviewerUsername'] as core.String?,
        skus:
            (json_['skus'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        subclientName: json_['subclientName'] as core.String?,
        title: json_['title'] as core.String?,
        transactionId: json_['transactionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregatorName != null) 'aggregatorName': aggregatorName!,
    if (asins != null) 'asins': asins!,
    if (brands != null) 'brands': brands!,
    if (collectionMethod != null) 'collectionMethod': collectionMethod!,
    if (cons != null) 'cons': cons!,
    if (content != null) 'content': content!,
    if (gtins != null) 'gtins': gtins!,
    if (isIncentivizedReview != null)
      'isIncentivizedReview': isIncentivizedReview!,
    if (isSpam != null) 'isSpam': isSpam!,
    if (isVerifiedPurchase != null) 'isVerifiedPurchase': isVerifiedPurchase!,
    if (maxRating != null) 'maxRating': maxRating!,
    if (minRating != null) 'minRating': minRating!,
    if (mpns != null) 'mpns': mpns!,
    if (productLinks != null) 'productLinks': productLinks!,
    if (productNames != null) 'productNames': productNames!,
    if (pros != null) 'pros': pros!,
    if (publisherFavicon != null) 'publisherFavicon': publisherFavicon!,
    if (publisherName != null) 'publisherName': publisherName!,
    if (rating != null) 'rating': rating!,
    if (reviewCountry != null) 'reviewCountry': reviewCountry!,
    if (reviewLanguage != null) 'reviewLanguage': reviewLanguage!,
    if (reviewLink != null) 'reviewLink': reviewLink!,
    if (reviewTime != null) 'reviewTime': reviewTime!,
    if (reviewerId != null) 'reviewerId': reviewerId!,
    if (reviewerImageLinks != null) 'reviewerImageLinks': reviewerImageLinks!,
    if (reviewerIsAnonymous != null)
      'reviewerIsAnonymous': reviewerIsAnonymous!,
    if (reviewerUsername != null) 'reviewerUsername': reviewerUsername!,
    if (skus != null) 'skus': skus!,
    if (subclientName != null) 'subclientName': subclientName!,
    if (title != null) 'title': title!,
    if (transactionId != null) 'transactionId': transactionId!,
  };
}

/// The destination status of the product review status.
typedef ProductReviewDestinationStatus = $ReviewDestinationStatus;

/// The ItemLevelIssue of the product review status.
class ProductReviewItemLevelIssue {
  /// The attribute's name, if the issue is caused by a single attribute.
  ///
  /// Output only.
  core.String? attribute;

  /// The error code of the issue.
  ///
  /// Output only.
  core.String? code;

  /// A short issue description in English.
  ///
  /// Output only.
  core.String? description;

  /// A detailed issue description in English.
  ///
  /// Output only.
  core.String? detail;

  /// The URL of a web page to help with resolving this issue.
  ///
  /// Output only.
  core.String? documentation;

  /// The reporting context the issue applies to.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "REPORTING_CONTEXT_ENUM_UNSPECIFIED" : Not specified.
  /// - "SHOPPING_ADS" :
  /// [Shopping ads](https://support.google.com/merchants/answer/6149970).
  /// - "DISCOVERY_ADS" : Deprecated: Use `DEMAND_GEN_ADS` instead.
  /// [Discovery and Demand Gen ads](https://support.google.com/merchants/answer/13389785).
  /// - "DEMAND_GEN_ADS" :
  /// [Demand Gen ads](https://support.google.com/merchants/answer/13389785).
  /// - "DEMAND_GEN_ADS_DISCOVER_SURFACE" :
  /// [Demand Gen ads on Discover surface](https://support.google.com/merchants/answer/13389785).
  /// - "VIDEO_ADS" :
  /// [Video ads](https://support.google.com/google-ads/answer/6340491).
  /// - "DISPLAY_ADS" :
  /// [Display ads](https://support.google.com/merchants/answer/6069387).
  /// - "LOCAL_INVENTORY_ADS" :
  /// [Local inventory ads](https://support.google.com/merchants/answer/3271956).
  /// - "VEHICLE_INVENTORY_ADS" :
  /// [Vehicle inventory ads](https://support.google.com/merchants/answer/11544533).
  /// - "FREE_LISTINGS" :
  /// [Free product listings](https://support.google.com/merchants/answer/9199328).
  /// - "FREE_LOCAL_LISTINGS" :
  /// [Free local product listings](https://support.google.com/merchants/answer/9825611).
  /// - "FREE_LOCAL_VEHICLE_LISTINGS" :
  /// [Free local vehicle listings](https://support.google.com/merchants/answer/11544533).
  /// - "YOUTUBE_AFFILIATE" :
  /// [Youtube Affiliate](https://support.google.com/youtube/answer/13376398).
  /// - "YOUTUBE_SHOPPING" :
  /// [YouTube Shopping](https://support.google.com/merchants/answer/13478370).
  /// - "CLOUD_RETAIL" :
  /// [Cloud retail](https://cloud.google.com/solutions/retail).
  /// - "LOCAL_CLOUD_RETAIL" :
  /// [Local cloud retail](https://cloud.google.com/solutions/retail).
  /// - "PRODUCT_REVIEWS" :
  /// [Product Reviews](https://support.google.com/merchants/answer/14620732).
  /// - "MERCHANT_REVIEWS" :
  /// [Merchant Reviews](https://developers.google.com/merchant-review-feeds).
  /// - "YOUTUBE_CHECKOUT" : YouTube Checkout .
  core.String? reportingContext;

  /// Whether the issue can be resolved by the merchant.
  ///
  /// Output only.
  core.String? resolution;

  /// How this issue affects serving of the product review.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Not specified.
  /// - "NOT_IMPACTED" : This issue represents a warning and does not have a
  /// direct affect on the product review.
  /// - "DISAPPROVED" : Issue disapproves the product review.
  core.String? severity;

  ProductReviewItemLevelIssue({
    this.attribute,
    this.code,
    this.description,
    this.detail,
    this.documentation,
    this.reportingContext,
    this.resolution,
    this.severity,
  });

  ProductReviewItemLevelIssue.fromJson(core.Map json_)
    : this(
        attribute: json_['attribute'] as core.String?,
        code: json_['code'] as core.String?,
        description: json_['description'] as core.String?,
        detail: json_['detail'] as core.String?,
        documentation: json_['documentation'] as core.String?,
        reportingContext: json_['reportingContext'] as core.String?,
        resolution: json_['resolution'] as core.String?,
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attribute != null) 'attribute': attribute!,
    if (code != null) 'code': code!,
    if (description != null) 'description': description!,
    if (detail != null) 'detail': detail!,
    if (documentation != null) 'documentation': documentation!,
    if (reportingContext != null) 'reportingContext': reportingContext!,
    if (resolution != null) 'resolution': resolution!,
    if (severity != null) 'severity': severity!,
  };
}

/// Product review status.
class ProductReviewStatus {
  /// Date on which the item has been created, in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format.
  ///
  /// Output only.
  core.String? createTime;

  /// The intended destinations for the product review.
  ///
  /// Output only.
  core.List<ProductReviewDestinationStatus>? destinationStatuses;

  /// A list of all issues associated with the product review.
  ///
  /// Output only.
  core.List<ProductReviewItemLevelIssue>? itemLevelIssues;

  /// Date on which the item has been last updated, in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format.
  ///
  /// Output only.
  core.String? lastUpdateTime;

  ProductReviewStatus({
    this.createTime,
    this.destinationStatuses,
    this.itemLevelIssues,
    this.lastUpdateTime,
  });

  ProductReviewStatus.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        destinationStatuses:
            (json_['destinationStatuses'] as core.List?)
                ?.map(
                  (value) => ProductReviewDestinationStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        itemLevelIssues:
            (json_['itemLevelIssues'] as core.List?)
                ?.map(
                  (value) => ProductReviewItemLevelIssue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        lastUpdateTime: json_['lastUpdateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (destinationStatuses != null)
      'destinationStatuses': destinationStatuses!,
    if (itemLevelIssues != null) 'itemLevelIssues': itemLevelIssues!,
    if (lastUpdateTime != null) 'lastUpdateTime': lastUpdateTime!,
  };
}

/// The URI of the review landing page.
class ReviewLink {
  /// The URI of the review landing page.
  ///
  /// For example: `http://www.example.com/review_5.html`.
  ///
  /// Optional.
  core.String? link;

  /// Type of the review URI.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Type unspecified.
  /// - "SINGLETON" : The review page contains only this single review.
  /// - "GROUP" : The review page contains a group of reviews including this
  /// review.
  core.String? type;

  ReviewLink({this.link, this.type});

  ReviewLink.fromJson(core.Map json_)
    : this(
        link: json_['link'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (link != null) 'link': link!,
    if (type != null) 'type': type!,
  };
}
