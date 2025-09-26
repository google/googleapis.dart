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

/// Payments Reseller Subscription API - v1
///
/// For more information, see
/// <https://developers.google.com/payments/reseller/subscription/>
///
/// Create an instance of [PaymentsResellerSubscriptionApi] to access these
/// resources:
///
/// - [PartnersResource]
///   - [PartnersProductsResource]
///   - [PartnersPromotionsResource]
///   - [PartnersSubscriptionsResource]
///   - [PartnersUserSessionsResource]
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

class PaymentsResellerSubscriptionApi {
  /// See and/or control the devices that you selected
  static const sdmServiceScope = 'https://www.googleapis.com/auth/sdm.service';

  final commons.ApiRequester _requester;

  PartnersResource get partners => PartnersResource(_requester);

  PaymentsResellerSubscriptionApi(
    http.Client client, {
    core.String rootUrl =
        'https://paymentsresellersubscription.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class PartnersResource {
  final commons.ApiRequester _requester;

  PartnersProductsResource get products => PartnersProductsResource(_requester);
  PartnersPromotionsResource get promotions =>
      PartnersPromotionsResource(_requester);
  PartnersSubscriptionsResource get subscriptions =>
      PartnersSubscriptionsResource(_requester);
  PartnersUserSessionsResource get userSessions =>
      PartnersUserSessionsResource(_requester);

  PartnersResource(commons.ApiRequester client) : _requester = client;
}

class PartnersProductsResource {
  final commons.ApiRequester _requester;

  PartnersProductsResource(commons.ApiRequester client) : _requester = client;

  /// Currently, it doesn't support **YouTube** products.
  ///
  /// Retrieves the products that can be resold by the partner. It should be
  /// autenticated with a service account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, the partner that can resell. Format:
  /// partners/{partner}
  /// Value must have pattern `^partners/\[^/\]+$`.
  ///
  /// [filter] - Optional. Specifies the filters for the product results. The
  /// syntax is defined in https://google.aip.dev/160 with the following
  /// caveats: 1. Only the following features are supported: - Logical operator
  /// `AND` - Comparison operator `=` (no wildcards `*`) - Traversal operator
  /// `.` - Has operator `:` (no wildcards `*`) 2. Only the following fields are
  /// supported: - `regionCodes` - `youtubePayload.partnerEligibilityId` -
  /// `youtubePayload.postalCode` 3. Unless explicitly mentioned above, other
  /// features are not supported. Example: `regionCodes:US AND
  /// youtubePayload.postalCode=94043 AND
  /// youtubePayload.partnerEligibilityId=eligibility-id`
  ///
  /// [pageSize] - Optional. The maximum number of products to return. The
  /// service may return fewer than this value. If unspecified, at most 50
  /// products will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListProducts` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListProducts` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProductsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/products';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListProductsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PartnersPromotionsResource {
  final commons.ApiRequester _requester;

  PartnersPromotionsResource(commons.ApiRequester client) : _requester = client;

  /// Currently, it is only enabeld for **YouTube**.
  ///
  /// Finds eligible promotions for the current user. The API requires user
  /// authorization via OAuth. The bare minimum oauth scope `openid` is
  /// sufficient, which will skip the consent screen.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, the partner that can resell. Format:
  /// partners/{partner}
  /// Value must have pattern `^partners/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FindEligiblePromotionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FindEligiblePromotionsResponse> findEligible(
    FindEligiblePromotionsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/promotions:findEligible';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FindEligiblePromotionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Currently, it doesn't support **YouTube** promotions.
  ///
  /// Retrieves the promotions, such as free trial, that can be used by the
  /// partner. It should be autenticated with a service account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, the partner that can resell. Format:
  /// partners/{partner}
  /// Value must have pattern `^partners/\[^/\]+$`.
  ///
  /// [filter] - Optional. Specifies the filters for the promotion results. The
  /// syntax is defined in https://google.aip.dev/160 with the following
  /// caveats: 1. Only the following features are supported: - Logical operator
  /// `AND` - Comparison operator `=` (no wildcards `*`) - Traversal operator
  /// `.` - Has operator `:` (no wildcards `*`) 2. Only the following fields are
  /// supported: - `applicableProducts` - `regionCodes` -
  /// `youtubePayload.partnerEligibilityId` - `youtubePayload.postalCode` 3.
  /// Unless explicitly mentioned above, other features are not supported.
  /// Example: `applicableProducts:partners/partner1/products/product1 AND
  /// regionCodes:US AND youtubePayload.postalCode=94043 AND
  /// youtubePayload.partnerEligibilityId=eligibility-id`
  ///
  /// [pageSize] - Optional. The maximum number of promotions to return. The
  /// service may return fewer than this value. If unspecified, at most 50
  /// products will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListPromotions` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListPromotions` must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPromotionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPromotionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/promotions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPromotionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PartnersSubscriptionsResource {
  final commons.ApiRequester _requester;

  PartnersSubscriptionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Cancels a subscription service either immediately or by the end of the
  /// current billing cycle for their customers.
  ///
  /// It should be called directly by the partner using service accounts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subscription resource to be cancelled.
  /// It will have the format of
  /// "partners/{partner_id}/subscriptions/{subscription_id}"
  /// Value must have pattern `^partners/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CancelSubscriptionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CancelSubscriptionResponse> cancel(
    CancelSubscriptionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CancelSubscriptionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Used by partners to create a subscription for their customers.
  ///
  /// The created subscription is associated with the end user inferred from the
  /// end user credentials. This API must be authorized by the end user using
  /// OAuth.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, which is the identifier of
  /// the partner. It will have the format of "partners/{partner_id}".
  /// Value must have pattern `^partners/\[^/\]+$`.
  ///
  /// [subscriptionId] - Required. Identifies the subscription resource on the
  /// Partner side. The value is restricted to 63 ASCII characters at the
  /// maximum. If a subscription was previously created with the same
  /// subscription_id, we will directly return that one.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> create(
    Subscription request,
    core.String parent, {
    core.String? subscriptionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (subscriptionId != null) 'subscriptionId': [subscriptionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/subscriptions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Subscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Entitles a previously provisioned subscription to the current end user.
  ///
  /// The end user identity is inferred from the authorized credential of the
  /// request. This API must be authorized by the end user using OAuth.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subscription resource that is entitled
  /// to the current end user. It will have the format of
  /// "partners/{partner_id}/subscriptions/{subscription_id}"
  /// Value must have pattern `^partners/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EntitleSubscriptionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EntitleSubscriptionResponse> entitle(
    EntitleSubscriptionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':entitle';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EntitleSubscriptionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// \[Opt-in only\] Most partners should be on auto-extend by default.
  ///
  /// Extends a subscription service for their customers on an ongoing basis for
  /// the subscription to remain active and renewable. It should be called
  /// directly by the partner using service accounts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subscription resource to be extended.
  /// It will have the format of
  /// "partners/{partner_id}/subscriptions/{subscription_id}".
  /// Value must have pattern `^partners/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExtendSubscriptionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExtendSubscriptionResponse> extend(
    ExtendSubscriptionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':extend';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ExtendSubscriptionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a subscription by id.
  ///
  /// It should be called directly by the partner using service accounts.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subscription resource to retrieve. It
  /// will have the format of
  /// "partners/{partner_id}/subscriptions/{subscription_id}"
  /// Value must have pattern `^partners/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> get(
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
    return Subscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Used by partners to provision a subscription for their customers.
  ///
  /// This creates a subscription without associating it with the end user
  /// account. EntitleSubscription must be called separately using OAuth in
  /// order for the end user account to be associated with the subscription. It
  /// should be called directly by the partner using service accounts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, which is the identifier of
  /// the partner. It will have the format of "partners/{partner_id}".
  /// Value must have pattern `^partners/\[^/\]+$`.
  ///
  /// [subscriptionId] - Required. Identifies the subscription resource on the
  /// Partner side. The value is restricted to 63 ASCII characters at the
  /// maximum. If a subscription was previously created with the same
  /// subscription_id, we will directly return that one.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> provision(
    Subscription request,
    core.String parent, {
    core.String? subscriptionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (subscriptionId != null) 'subscriptionId': [subscriptionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/subscriptions:provision';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Subscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Resumes a suspended subscription.
  ///
  /// The new billing cycle will start at the time of the request. It should be
  /// called directly by the partner using service accounts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subscription resource to be resumed. It
  /// will have the format of
  /// "partners/{partner_id}/subscriptions/{subscription_id}"
  /// Value must have pattern `^partners/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResumeSubscriptionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResumeSubscriptionResponse> resume(
    ResumeSubscriptionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':resume';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ResumeSubscriptionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Suspends a subscription.
  ///
  /// Contract terms may dictate if a prorated refund will be issued upon
  /// suspension. It should be called directly by the partner using service
  /// accounts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subscription resource to be suspended.
  /// It will have the format of
  /// "partners/{partner_id}/subscriptions/{subscription_id}"
  /// Value must have pattern `^partners/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SuspendSubscriptionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SuspendSubscriptionResponse> suspend(
    SuspendSubscriptionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':suspend';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SuspendSubscriptionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Currently, it is used by **Google One, Play Pass** partners.
  ///
  /// Revokes the pending cancellation of a subscription, which is currently in
  /// `STATE_CANCEL_AT_END_OF_CYCLE` state. If the subscription is already
  /// cancelled, the request will fail. It should be called directly by the
  /// partner using service accounts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subscription resource whose pending
  /// cancellation needs to be undone. It will have the format of
  /// "partners/{partner_id}/subscriptions/{subscription_id}"
  /// Value must have pattern `^partners/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UndoCancelSubscriptionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UndoCancelSubscriptionResponse> undoCancel(
    UndoCancelSubscriptionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':undoCancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UndoCancelSubscriptionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PartnersUserSessionsResource {
  final commons.ApiRequester _requester;

  PartnersUserSessionsResource(commons.ApiRequester client)
    : _requester = client;

  /// This API replaces user authorized OAuth consent based APIs (Create,
  /// Entitle).
  ///
  /// Issues a timed session token for the given user intent. You can use the
  /// session token to redirect the user to Google to finish the signup flow.
  /// You can re-generate new session token repeatedly for the same request if
  /// necessary, regardless of the previous tokens being expired or not. By
  /// default, the session token is valid for 1 hour.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, the partner that can resell. Format:
  /// partners/{partner}
  /// Value must have pattern `^partners/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateUserSessionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateUserSessionResponse> generate(
    GenerateUserSessionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/userSessions:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenerateUserSessionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Describes the amount unit including the currency code.
class Amount {
  /// Amount in micros (1_000_000 micros = 1 currency unit)
  ///
  /// Required.
  core.String? amountMicros;

  /// Currency codes in accordance with \[ISO-4217 Currency
  /// Codes\](https://en.wikipedia.org/wiki/ISO_4217).
  ///
  /// For example, USD.
  ///
  /// Required.
  core.String? currencyCode;

  Amount({this.amountMicros, this.currencyCode});

  Amount.fromJson(core.Map json_)
    : this(
        amountMicros: json_['amountMicros'] as core.String?,
        currencyCode: json_['currencyCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (amountMicros != null) 'amountMicros': amountMicros!,
    if (currencyCode != null) 'currencyCode': currencyCode!,
  };
}

/// Request to cancel a subscription.
class CancelSubscriptionRequest {
  /// If true, Google will cancel the subscription immediately, and may or may
  /// not (based on the contract) issue a prorated refund for the remainder of
  /// the billing cycle.
  ///
  /// Otherwise, Google defers the cancelation at renewal_time, and will not
  /// issue a refund. - YouTube subscriptions must use this option currently.
  /// However, the user will still have access to the subscription until the end
  /// of the billing cycle.
  ///
  /// Optional.
  core.bool? cancelImmediately;

  /// Specifies the reason for the cancellation.
  /// Possible string values are:
  /// - "CANCELLATION_REASON_UNSPECIFIED" : Reason is unspecified. Should not be
  /// used.
  /// - "CANCELLATION_REASON_FRAUD" : Fraudualant transaction.
  /// - "CANCELLATION_REASON_REMORSE" : Buyer's remorse.
  /// - "CANCELLATION_REASON_ACCIDENTAL_PURCHASE" : Accidential purchase.
  /// - "CANCELLATION_REASON_PAST_DUE" : Payment is past due.
  /// - "CANCELLATION_REASON_ACCOUNT_CLOSED" : Used for notification only, do
  /// not use in Cancel API. User account closed.
  /// - "CANCELLATION_REASON_UPGRADE_DOWNGRADE" : Used for notification only, do
  /// not use in Cancel API. Cancellation due to upgrade or downgrade.
  /// - "CANCELLATION_REASON_USER_DELINQUENCY" : Cancellation due to user
  /// delinquency
  /// - "CANCELLATION_REASON_SYSTEM_ERROR" : Used for notification only, do not
  /// use in Cancel API. Cancellation due to an unrecoverable system error.
  /// - "CANCELLATION_REASON_SYSTEM_CANCEL" : Used for notification only, do not
  /// use in Cancel API. The subscription is cancelled by Google automatically
  /// since it is no longer valid.
  /// - "CANCELLATION_REASON_OTHER" : Other reason.
  core.String? cancellationReason;

  CancelSubscriptionRequest({this.cancelImmediately, this.cancellationReason});

  CancelSubscriptionRequest.fromJson(core.Map json_)
    : this(
        cancelImmediately: json_['cancelImmediately'] as core.bool?,
        cancellationReason: json_['cancellationReason'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cancelImmediately != null) 'cancelImmediately': cancelImmediately!,
    if (cancellationReason != null) 'cancellationReason': cancellationReason!,
  };
}

/// Response that contains the cancelled subscription resource.
class CancelSubscriptionResponse {
  /// The cancelled subscription resource.
  Subscription? subscription;

  CancelSubscriptionResponse({this.subscription});

  CancelSubscriptionResponse.fromJson(core.Map json_)
    : this(
        subscription:
            json_.containsKey('subscription')
                ? Subscription.fromJson(
                  json_['subscription'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (subscription != null) 'subscription': subscription!,
  };
}

/// Intent message for creating a Subscription resource.
class CreateSubscriptionIntent {
  /// The parent resource name, which is the identifier of the partner.
  ///
  /// Required.
  core.String? parent;

  /// The Subscription to be created.
  ///
  /// Required.
  Subscription? subscription;

  /// Identifies the subscription resource on the Partner side.
  ///
  /// The value is restricted to 63 ASCII characters at the maximum. If a
  /// subscription was previously created with the same subscription_id, we will
  /// directly return that one.
  ///
  /// Required.
  core.String? subscriptionId;

  CreateSubscriptionIntent({
    this.parent,
    this.subscription,
    this.subscriptionId,
  });

  CreateSubscriptionIntent.fromJson(core.Map json_)
    : this(
        parent: json_['parent'] as core.String?,
        subscription:
            json_.containsKey('subscription')
                ? Subscription.fromJson(
                  json_['subscription'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        subscriptionId: json_['subscriptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (parent != null) 'parent': parent!,
    if (subscription != null) 'subscription': subscription!,
    if (subscriptionId != null) 'subscriptionId': subscriptionId!,
  };
}

/// Describes the length of a period of a time.
class Duration {
  /// number of duration units to be included.
  core.int? count;

  /// The unit used for the duration
  /// Possible string values are:
  /// - "UNIT_UNSPECIFIED" : Default value, reserved as an invalid or an
  /// unexpected value.
  /// - "MONTH" : Unit of a calendar month.
  /// - "DAY" : Unit of a day.
  /// - "HOUR" : Unit of an hour. It is used for testing.
  core.String? unit;

  Duration({this.count, this.unit});

  Duration.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.int?,
        unit: json_['unit'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (count != null) 'count': count!,
    if (unit != null) 'unit': unit!,
  };
}

/// Intent for entitling the previously provisioned subscription to an end user.
class EntitleSubscriptionIntent {
  /// The name of the subscription resource that is entitled to the current end
  /// user.
  ///
  /// It is in the format of
  /// "partners/{partner_id}/subscriptions/{subscriptionId}".
  ///
  /// Required.
  core.String? name;

  EntitleSubscriptionIntent({this.name});

  EntitleSubscriptionIntent.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
  };
}

/// Partner request for entitling the previously provisioned subscription to an
/// end user.
///
/// The end user identity is inferred from the request OAuth context.
class EntitleSubscriptionRequest {
  /// The line items to be entitled.
  ///
  /// If unspecified, all line items will be entitled.
  ///
  /// Optional.
  core.List<EntitleSubscriptionRequestLineItemEntitlementDetails>?
  lineItemEntitlementDetails;

  EntitleSubscriptionRequest({this.lineItemEntitlementDetails});

  EntitleSubscriptionRequest.fromJson(core.Map json_)
    : this(
        lineItemEntitlementDetails:
            (json_['lineItemEntitlementDetails'] as core.List?)
                ?.map(
                  (value) =>
                      EntitleSubscriptionRequestLineItemEntitlementDetails.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (lineItemEntitlementDetails != null)
      'lineItemEntitlementDetails': lineItemEntitlementDetails!,
  };
}

/// The details of the line item to be entitled.
class EntitleSubscriptionRequestLineItemEntitlementDetails {
  /// The index of the line item to be entitled.
  ///
  /// Required.
  core.int? lineItemIndex;

  /// Only applicable if the line item corresponds to a hard bundle.
  ///
  /// Product resource names that identify the bundle elements to be entitled in
  /// the line item. If unspecified, all bundle elements will be entitled. The
  /// format is 'partners/{partner_id}/products/{product_id}'.
  ///
  /// Optional.
  core.List<core.String>? products;

  EntitleSubscriptionRequestLineItemEntitlementDetails({
    this.lineItemIndex,
    this.products,
  });

  EntitleSubscriptionRequestLineItemEntitlementDetails.fromJson(core.Map json_)
    : this(
        lineItemIndex: json_['lineItemIndex'] as core.int?,
        products:
            (json_['products'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (lineItemIndex != null) 'lineItemIndex': lineItemIndex!,
    if (products != null) 'products': products!,
  };
}

/// Response that contains the entitled subscription resource.
class EntitleSubscriptionResponse {
  /// The subscription that has user linked to it.
  Subscription? subscription;

  EntitleSubscriptionResponse({this.subscription});

  EntitleSubscriptionResponse.fromJson(core.Map json_)
    : this(
        subscription:
            json_.containsKey('subscription')
                ? Subscription.fromJson(
                  json_['subscription'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (subscription != null) 'subscription': subscription!,
  };
}

/// Request message for extending a Subscription resource.
///
/// A new recurrence will be made based on the subscription schedule defined by
/// the original product.
class ExtendSubscriptionRequest {
  /// Specifies details of the extension.
  ///
  /// Currently, the duration of the extension must be exactly one billing cycle
  /// of the original subscription.
  ///
  /// Required.
  Extension? extension;

  /// Restricted to 36 ASCII characters.
  ///
  /// A random UUID is recommended. The idempotency key for the request. The ID
  /// generation logic is controlled by the partner. request_id should be the
  /// same as on retries of the same request. A different request_id must be
  /// used for a extension of a different cycle.
  ///
  /// Required.
  core.String? requestId;

  ExtendSubscriptionRequest({this.extension, this.requestId});

  ExtendSubscriptionRequest.fromJson(core.Map json_)
    : this(
        extension:
            json_.containsKey('extension')
                ? Extension.fromJson(
                  json_['extension'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestId: json_['requestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (extension != null) 'extension': extension!,
    if (requestId != null) 'requestId': requestId!,
  };
}

/// Response that contains the timestamps after the extension.
class ExtendSubscriptionResponse {
  /// The time at which the subscription is expected to be extended, in ISO 8061
  /// format.
  ///
  /// UTC timezone. Example, "cycleEndTime":"2019-08-31T17:28:54.564Z"
  core.String? cycleEndTime;

  /// End of the free trial period, in ISO 8061 format.
  ///
  /// UTC timezone. Example, "freeTrialEndTime":"2019-08-31T17:28:54.564Z" This
  /// time will be set the same as initial subscription creation time if no free
  /// trial period is offered to the partner.
  core.String? freeTrialEndTime;

  /// The time at which the subscription is expected to be renewed by Google - a
  /// new charge will be incurred and the service entitlement will be renewed.
  ///
  /// A non-immediate cancellation will take place at this time too, before
  /// which, the service entitlement for the end user will remain valid. UTC
  /// timezone in ISO 8061 format. For example: "2019-08-31T17:28:54.564Z"
  ///
  /// Output only.
  core.String? renewalTime;

  ExtendSubscriptionResponse({
    this.cycleEndTime,
    this.freeTrialEndTime,
    this.renewalTime,
  });

  ExtendSubscriptionResponse.fromJson(core.Map json_)
    : this(
        cycleEndTime: json_['cycleEndTime'] as core.String?,
        freeTrialEndTime: json_['freeTrialEndTime'] as core.String?,
        renewalTime: json_['renewalTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cycleEndTime != null) 'cycleEndTime': cycleEndTime!,
    if (freeTrialEndTime != null) 'freeTrialEndTime': freeTrialEndTime!,
    if (renewalTime != null) 'renewalTime': renewalTime!,
  };
}

/// Describes the details of an extension request.
class Extension {
  /// Specifies the period of access the subscription should grant.
  ///
  /// Required.
  Duration? duration;

  /// Identifier of the end-user in partner’s system.
  ///
  /// Required.
  core.String? partnerUserToken;

  Extension({this.duration, this.partnerUserToken});

  Extension.fromJson(core.Map json_)
    : this(
        duration:
            json_.containsKey('duration')
                ? Duration.fromJson(
                  json_['duration'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        partnerUserToken: json_['partnerUserToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (duration != null) 'duration': duration!,
    if (partnerUserToken != null) 'partnerUserToken': partnerUserToken!,
  };
}

/// Request to find eligible promotions for the current user.
class FindEligiblePromotionsRequest {
  /// Specifies the filters for the promotion results.
  ///
  /// The syntax is defined in https://google.aip.dev/160 with the following
  /// caveats: 1. Only the following features are supported: - Logical operator
  /// `AND` - Comparison operator `=` (no wildcards `*`) - Traversal operator
  /// `.` - Has operator `:` (no wildcards `*`) 2. Only the following fields are
  /// supported: - `applicableProducts` - `regionCodes` -
  /// `youtubePayload.partnerEligibilityId` - `youtubePayload.postalCode` 3.
  /// Unless explicitly mentioned above, other features are not supported.
  /// Example: `applicableProducts:partners/partner1/products/product1 AND
  /// regionCodes:US AND youtubePayload.postalCode=94043 AND
  /// youtubePayload.partnerEligibilityId=eligibility-id`
  ///
  /// Optional.
  core.String? filter;

  /// The maximum number of promotions to return.
  ///
  /// The service may return fewer than this value. If unspecified, at most 50
  /// products will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// Optional.
  core.int? pageSize;

  /// A page token, received from a previous `ListPromotions` call.
  ///
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListPromotions` must match the call that provided
  /// the page token.
  ///
  /// Optional.
  core.String? pageToken;

  FindEligiblePromotionsRequest({this.filter, this.pageSize, this.pageToken});

  FindEligiblePromotionsRequest.fromJson(core.Map json_)
    : this(
        filter: json_['filter'] as core.String?,
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (filter != null) 'filter': filter!,
    if (pageSize != null) 'pageSize': pageSize!,
    if (pageToken != null) 'pageToken': pageToken!,
  };
}

/// Response containing the found promotions for the current user.
class FindEligiblePromotionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  /// The promotions for the current user.
  core.List<Promotion>? promotions;

  FindEligiblePromotionsResponse({this.nextPageToken, this.promotions});

  FindEligiblePromotionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        promotions:
            (json_['promotions'] as core.List?)
                ?.map(
                  (value) => Promotion.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (promotions != null) 'promotions': promotions!,
  };
}

/// Details for a subscriptiin line item with finite billing cycles.
class FiniteBillingCycleDetails {
  /// The number of a subscription line item billing cycles after which billing
  /// will stop automatically.
  ///
  /// Required.
  core.String? billingCycleCountLimit;

  FiniteBillingCycleDetails({this.billingCycleCountLimit});

  FiniteBillingCycleDetails.fromJson(core.Map json_)
    : this(
        billingCycleCountLimit: json_['billingCycleCountLimit'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (billingCycleCountLimit != null)
      'billingCycleCountLimit': billingCycleCountLimit!,
  };
}

/// Request to generate a user session.
class GenerateUserSessionRequest {
  /// The user intent to generate the user session.
  IntentPayload? intentPayload;

  GenerateUserSessionRequest({this.intentPayload});

  GenerateUserSessionRequest.fromJson(core.Map json_)
    : this(
        intentPayload:
            json_.containsKey('intentPayload')
                ? IntentPayload.fromJson(
                  json_['intentPayload'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (intentPayload != null) 'intentPayload': intentPayload!,
  };
}

/// Response that contains the details for generated user session.
class GenerateUserSessionResponse {
  /// The generated user session.
  ///
  /// The token size is proportional to the size of the intent payload.
  UserSession? userSession;

  GenerateUserSessionResponse({this.userSession});

  GenerateUserSessionResponse.fromJson(core.Map json_)
    : this(
        userSession:
            json_.containsKey('userSession')
                ? UserSession.fromJson(
                  json_['userSession'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (userSession != null) 'userSession': userSession!,
  };
}

/// Payload specific for Google Home products.
class GoogleHomePayload {
  /// This identifies whether the subscription is attached to a Google Home
  /// structure.
  ///
  /// Output only.
  core.bool? attachedToGoogleStructure;

  /// Structure identifier on Google side.
  ///
  /// Optional.
  core.String? googleStructureId;

  /// This identifies the structure ID on partner side that the subscription
  /// should be applied to.
  ///
  /// Only required when the partner requires structure mapping.
  ///
  /// Optional.
  core.String? partnerStructureId;

  GoogleHomePayload({
    this.attachedToGoogleStructure,
    this.googleStructureId,
    this.partnerStructureId,
  });

  GoogleHomePayload.fromJson(core.Map json_)
    : this(
        attachedToGoogleStructure:
            json_['attachedToGoogleStructure'] as core.bool?,
        googleStructureId: json_['googleStructureId'] as core.String?,
        partnerStructureId: json_['partnerStructureId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attachedToGoogleStructure != null)
      'attachedToGoogleStructure': attachedToGoogleStructure!,
    if (googleStructureId != null) 'googleStructureId': googleStructureId!,
    if (partnerStructureId != null) 'partnerStructureId': partnerStructureId!,
  };
}

/// Payload specific to Google One products.
class GoogleOnePayload {
  /// Campaign attributed to sales of this subscription.
  core.List<core.String>? campaigns;

  /// The type of offering the subscription was sold by the partner.
  ///
  /// e.g. VAS.
  /// Possible string values are:
  /// - "OFFERING_UNSPECIFIED" : The type of partner offering is unspecified.
  /// - "OFFERING_VAS_BUNDLE" : Google One product purchased as a Value added
  /// service in addition to existing partner's products. Customer pays
  /// additional amount for Google One product.
  /// - "OFFERING_VAS_STANDALONE" : Google One product purchased by itself by
  /// customer as a value add service. Customer pays additional amount for
  /// Google One product.
  /// - "OFFERING_HARD_BUNDLE" : Product purchased as part of a hard bundle
  /// where Google One was included with the bundle. Google One pricing is
  /// included in the bundle.
  /// - "OFFERING_SOFT_BUNDLE" : Purchased as part of a bundle where Google One
  /// was provided as an option. Google One pricing is included in the bundle.
  core.String? offering;

  /// The type of sales channel through which the subscription was sold.
  /// Possible string values are:
  /// - "CHANNEL_UNSPECIFIED" : The channel type is unspecified.
  /// - "CHANNEL_RETAIL" : Sold at store.
  /// - "CHANNEL_ONLINE_WEB" : Sold through partner website.
  /// - "CHANNEL_ONLINE_ANDROID_APP" : Sold through partner android app.
  /// - "CHANNEL_ONLINE_IOS_APP" : Sold through partner iOS app.
  core.String? salesChannel;

  /// The identifier for the partner store where the subscription was sold.
  core.String? storeId;

  GoogleOnePayload({
    this.campaigns,
    this.offering,
    this.salesChannel,
    this.storeId,
  });

  GoogleOnePayload.fromJson(core.Map json_)
    : this(
        campaigns:
            (json_['campaigns'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        offering: json_['offering'] as core.String?,
        salesChannel: json_['salesChannel'] as core.String?,
        storeId: json_['storeId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (campaigns != null) 'campaigns': campaigns!,
    if (offering != null) 'offering': offering!,
    if (salesChannel != null) 'salesChannel': salesChannel!,
    if (storeId != null) 'storeId': storeId!,
  };
}

/// Localized variant of a text in a particular language.
typedef GoogleTypeLocalizedText = $GoogleTypeLocalizedText;

/// The payload that describes the user intent.
class IntentPayload {
  /// The request to create a subscription.
  CreateSubscriptionIntent? createIntent;

  /// The request to entitle a subscription.
  EntitleSubscriptionIntent? entitleIntent;

  IntentPayload({this.createIntent, this.entitleIntent});

  IntentPayload.fromJson(core.Map json_)
    : this(
        createIntent:
            json_.containsKey('createIntent')
                ? CreateSubscriptionIntent.fromJson(
                  json_['createIntent'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        entitleIntent:
            json_.containsKey('entitleIntent')
                ? EntitleSubscriptionIntent.fromJson(
                  json_['entitleIntent'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createIntent != null) 'createIntent': createIntent!,
    if (entitleIntent != null) 'entitleIntent': entitleIntent!,
  };
}

/// Response that contains the products.
class ListProductsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  /// The products for the specified partner.
  core.List<Product>? products;

  ListProductsResponse({this.nextPageToken, this.products});

  ListProductsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        products:
            (json_['products'] as core.List?)
                ?.map(
                  (value) => Product.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (products != null) 'products': products!,
  };
}

/// Response that contains the promotions.
class ListPromotionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  /// The promotions for the specified partner.
  core.List<Promotion>? promotions;

  ListPromotionsResponse({this.nextPageToken, this.promotions});

  ListPromotionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        promotions:
            (json_['promotions'] as core.List?)
                ?.map(
                  (value) => Promotion.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (promotions != null) 'promotions': promotions!,
  };
}

/// Describes a location of an end user.
class Location {
  /// The postal code this location refers to.
  ///
  /// Ex. "94043"
  core.String? postalCode;

  /// 2-letter ISO region code for current content region.
  ///
  /// Ex. “US” Please refers to: https://en.wikipedia.org/wiki/ISO_3166-1
  core.String? regionCode;

  Location({this.postalCode, this.regionCode});

  Location.fromJson(core.Map json_)
    : this(
        postalCode: json_['postalCode'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (postalCode != null) 'postalCode': postalCode!,
    if (regionCode != null) 'regionCode': regionCode!,
  };
}

/// A Product resource that defines a subscription service that can be resold.
class Product {
  /// Specifies the details for a bundle product.
  ///
  /// Output only.
  ProductBundleDetails? bundleDetails;

  /// Details for a subscription line item with finite billing cycles.
  ///
  /// If unset, the line item will be charged indefinitely.
  ///
  /// Optional.
  FiniteBillingCycleDetails? finiteBillingCycleDetails;

  /// Identifier.
  ///
  /// Response only. Resource name of the product. It will have the format of
  /// "partners/{partner_id}/products/{product_id}"
  core.String? name;

  /// Price configs for the product in the available regions.
  ///
  /// Output only.
  core.List<ProductPriceConfig>? priceConfigs;

  /// Specifies the type of the product.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PRODUCT_TYPE_UNSPECIFIED" : Unspecified. It's reserved as an unexpected
  /// value, should not be used.
  /// - "PRODUCT_TYPE_SUBSCRIPTION" : The product is a subscription.
  /// - "PRODUCT_TYPE_BUNDLE_SUBSCRIPTION" : The product is a bundled
  /// subscription plan, which includes multiple subscription elements.
  core.String? productType;

  /// 2-letter ISO region code where the product is available in.
  ///
  /// Ex. "US" Please refers to: https://en.wikipedia.org/wiki/ISO_3166-1
  ///
  /// Output only.
  core.List<core.String>? regionCodes;

  /// Specifies the length of the billing cycle of the subscription.
  ///
  /// Output only.
  Duration? subscriptionBillingCycleDuration;

  /// Localized human readable name of the product.
  ///
  /// Output only.
  core.List<GoogleTypeLocalizedText>? titles;

  Product({
    this.bundleDetails,
    this.finiteBillingCycleDetails,
    this.name,
    this.priceConfigs,
    this.productType,
    this.regionCodes,
    this.subscriptionBillingCycleDuration,
    this.titles,
  });

  Product.fromJson(core.Map json_)
    : this(
        bundleDetails:
            json_.containsKey('bundleDetails')
                ? ProductBundleDetails.fromJson(
                  json_['bundleDetails'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        finiteBillingCycleDetails:
            json_.containsKey('finiteBillingCycleDetails')
                ? FiniteBillingCycleDetails.fromJson(
                  json_['finiteBillingCycleDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        priceConfigs:
            (json_['priceConfigs'] as core.List?)
                ?.map(
                  (value) => ProductPriceConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        productType: json_['productType'] as core.String?,
        regionCodes:
            (json_['regionCodes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        subscriptionBillingCycleDuration:
            json_.containsKey('subscriptionBillingCycleDuration')
                ? Duration.fromJson(
                  json_['subscriptionBillingCycleDuration']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        titles:
            (json_['titles'] as core.List?)
                ?.map(
                  (value) => GoogleTypeLocalizedText.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bundleDetails != null) 'bundleDetails': bundleDetails!,
    if (finiteBillingCycleDetails != null)
      'finiteBillingCycleDetails': finiteBillingCycleDetails!,
    if (name != null) 'name': name!,
    if (priceConfigs != null) 'priceConfigs': priceConfigs!,
    if (productType != null) 'productType': productType!,
    if (regionCodes != null) 'regionCodes': regionCodes!,
    if (subscriptionBillingCycleDuration != null)
      'subscriptionBillingCycleDuration': subscriptionBillingCycleDuration!,
    if (titles != null) 'titles': titles!,
  };
}

/// Details for a bundle product.
class ProductBundleDetails {
  /// The individual products that are included in the bundle.
  core.List<ProductBundleDetailsBundleElement>? bundleElements;

  /// The entitlement mode of the bundle product.
  /// Possible string values are:
  /// - "ENTITLEMENT_MODE_UNSPECIFIED" : Unspecified. It's reserved as an
  /// unexpected value, should not be used.
  /// - "ENTITLEMENT_MODE_FULL" : All the bundle elements must be fully
  /// activated in a single request.
  /// - "ENTITLEMENT_MODE_INCREMENTAL" : The bundle elements could be
  /// incrementally activated.
  core.String? entitlementMode;

  ProductBundleDetails({this.bundleElements, this.entitlementMode});

  ProductBundleDetails.fromJson(core.Map json_)
    : this(
        bundleElements:
            (json_['bundleElements'] as core.List?)
                ?.map(
                  (value) => ProductBundleDetailsBundleElement.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        entitlementMode: json_['entitlementMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bundleElements != null) 'bundleElements': bundleElements!,
    if (entitlementMode != null) 'entitlementMode': entitlementMode!,
  };
}

/// The individual product that is included in the bundle.
class ProductBundleDetailsBundleElement {
  /// Product resource name that identifies the bundle element.
  ///
  /// The format is 'partners/{partner_id}/products/{product_id}'.
  ///
  /// Required. Output only.
  core.String? product;

  ProductBundleDetailsBundleElement({this.product});

  ProductBundleDetailsBundleElement.fromJson(core.Map json_)
    : this(product: json_['product'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (product != null) 'product': product!,
  };
}

/// Specifies product specific payload.
class ProductPayload {
  /// Payload specific to Google Home products.
  GoogleHomePayload? googleHomePayload;

  /// Product-specific payloads.
  ///
  /// Payload specific to Google One products.
  GoogleOnePayload? googleOnePayload;

  /// Payload specific to Youtube products.
  YoutubePayload? youtubePayload;

  ProductPayload({
    this.googleHomePayload,
    this.googleOnePayload,
    this.youtubePayload,
  });

  ProductPayload.fromJson(core.Map json_)
    : this(
        googleHomePayload:
            json_.containsKey('googleHomePayload')
                ? GoogleHomePayload.fromJson(
                  json_['googleHomePayload']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        googleOnePayload:
            json_.containsKey('googleOnePayload')
                ? GoogleOnePayload.fromJson(
                  json_['googleOnePayload']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        youtubePayload:
            json_.containsKey('youtubePayload')
                ? YoutubePayload.fromJson(
                  json_['youtubePayload']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (googleHomePayload != null) 'googleHomePayload': googleHomePayload!,
    if (googleOnePayload != null) 'googleOnePayload': googleOnePayload!,
    if (youtubePayload != null) 'youtubePayload': youtubePayload!,
  };
}

/// Configs the prices in an available region.
class ProductPriceConfig {
  /// The price in the region.
  ///
  /// Output only.
  Amount? amount;

  /// 2-letter ISO region code where the product is available in.
  ///
  /// Ex. "US".
  ///
  /// Output only.
  core.String? regionCode;

  ProductPriceConfig({this.amount, this.regionCode});

  ProductPriceConfig.fromJson(core.Map json_)
    : this(
        amount:
            json_.containsKey('amount')
                ? Amount.fromJson(
                  json_['amount'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (amount != null) 'amount': amount!,
    if (regionCode != null) 'regionCode': regionCode!,
  };
}

/// A Promotion resource that defines a promotion for a subscription that can be
/// resold.
class Promotion {
  /// The product ids this promotion can be applied to.
  ///
  /// Output only.
  core.List<core.String>? applicableProducts;

  /// Specifies the end time (exclusive) of the period that the promotion is
  /// available in.
  ///
  /// If unset, the promotion is available indefinitely.
  ///
  /// Optional.
  core.String? endTime;

  /// Specifies the duration of the free trial of the subscription when
  /// promotion_type is PROMOTION_TYPE_FREE_TRIAL
  ///
  /// Optional.
  Duration? freeTrialDuration;

  /// Specifies the introductory pricing details when the promotion_type is
  /// PROMOTION_TYPE_INTRODUCTORY_PRICING.
  ///
  /// Optional.
  PromotionIntroductoryPricingDetails? introductoryPricingDetails;

  /// Identifier.
  ///
  /// Response only. Resource name of the subscription promotion. It will have
  /// the format of "partners/{partner_id}/promotion/{promotion_id}"
  core.String? name;

  /// Specifies the type of the promotion.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PROMOTION_TYPE_UNSPECIFIED" : The promotion type is unspecified.
  /// - "PROMOTION_TYPE_FREE_TRIAL" : The promotion is a free trial.
  /// - "PROMOTION_TYPE_INTRODUCTORY_PRICING" : The promotion is a reduced
  /// introductory pricing.
  core.String? promotionType;

  /// 2-letter ISO region code where the promotion is available in.
  ///
  /// Ex. "US" Please refers to: https://en.wikipedia.org/wiki/ISO_3166-1
  ///
  /// Output only.
  core.List<core.String>? regionCodes;

  /// Specifies the start time (inclusive) of the period that the promotion is
  /// available in.
  ///
  /// Optional.
  core.String? startTime;

  /// Localized human readable name of the promotion.
  ///
  /// Output only.
  core.List<GoogleTypeLocalizedText>? titles;

  Promotion({
    this.applicableProducts,
    this.endTime,
    this.freeTrialDuration,
    this.introductoryPricingDetails,
    this.name,
    this.promotionType,
    this.regionCodes,
    this.startTime,
    this.titles,
  });

  Promotion.fromJson(core.Map json_)
    : this(
        applicableProducts:
            (json_['applicableProducts'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        endTime: json_['endTime'] as core.String?,
        freeTrialDuration:
            json_.containsKey('freeTrialDuration')
                ? Duration.fromJson(
                  json_['freeTrialDuration']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        introductoryPricingDetails:
            json_.containsKey('introductoryPricingDetails')
                ? PromotionIntroductoryPricingDetails.fromJson(
                  json_['introductoryPricingDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        promotionType: json_['promotionType'] as core.String?,
        regionCodes:
            (json_['regionCodes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        startTime: json_['startTime'] as core.String?,
        titles:
            (json_['titles'] as core.List?)
                ?.map(
                  (value) => GoogleTypeLocalizedText.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (applicableProducts != null) 'applicableProducts': applicableProducts!,
    if (endTime != null) 'endTime': endTime!,
    if (freeTrialDuration != null) 'freeTrialDuration': freeTrialDuration!,
    if (introductoryPricingDetails != null)
      'introductoryPricingDetails': introductoryPricingDetails!,
    if (name != null) 'name': name!,
    if (promotionType != null) 'promotionType': promotionType!,
    if (regionCodes != null) 'regionCodes': regionCodes!,
    if (startTime != null) 'startTime': startTime!,
    if (titles != null) 'titles': titles!,
  };
}

/// The details of a introductory pricing promotion.
class PromotionIntroductoryPricingDetails {
  /// Specifies the introductory pricing periods.
  ///
  /// Output only.
  core.List<PromotionIntroductoryPricingDetailsIntroductoryPricingSpec>?
  introductoryPricingSpecs;

  PromotionIntroductoryPricingDetails({this.introductoryPricingSpecs});

  PromotionIntroductoryPricingDetails.fromJson(core.Map json_)
    : this(
        introductoryPricingSpecs:
            (json_['introductoryPricingSpecs'] as core.List?)
                ?.map(
                  (value) =>
                      PromotionIntroductoryPricingDetailsIntroductoryPricingSpec.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (introductoryPricingSpecs != null)
      'introductoryPricingSpecs': introductoryPricingSpecs!,
  };
}

/// The duration of an introductory pricing promotion.
class PromotionIntroductoryPricingDetailsIntroductoryPricingSpec {
  /// The discount amount.
  ///
  /// The value is positive.
  ///
  /// Output only.
  Amount? discountAmount;

  /// The discount percentage in micros.
  ///
  /// For example, 50,000 represents 5%.
  ///
  /// Output only.
  core.String? discountRatioMicros;

  /// The duration of an introductory offer in billing cycles.
  ///
  /// Output only.
  core.int? recurrenceCount;

  /// 2-letter ISO region code where the product is available in.
  ///
  /// Ex. "US".
  ///
  /// Output only.
  core.String? regionCode;

  PromotionIntroductoryPricingDetailsIntroductoryPricingSpec({
    this.discountAmount,
    this.discountRatioMicros,
    this.recurrenceCount,
    this.regionCode,
  });

  PromotionIntroductoryPricingDetailsIntroductoryPricingSpec.fromJson(
    core.Map json_,
  ) : this(
        discountAmount:
            json_.containsKey('discountAmount')
                ? Amount.fromJson(
                  json_['discountAmount']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        discountRatioMicros: json_['discountRatioMicros'] as core.String?,
        recurrenceCount: json_['recurrenceCount'] as core.int?,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (discountAmount != null) 'discountAmount': discountAmount!,
    if (discountRatioMicros != null)
      'discountRatioMicros': discountRatioMicros!,
    if (recurrenceCount != null) 'recurrenceCount': recurrenceCount!,
    if (regionCode != null) 'regionCode': regionCode!,
  };
}

/// Request to resume a suspended subscription.
typedef ResumeSubscriptionRequest = $Empty;

/// Response that contains the resumed subscription.
class ResumeSubscriptionResponse {
  /// The resumed subscription resource.
  Subscription? subscription;

  ResumeSubscriptionResponse({this.subscription});

  ResumeSubscriptionResponse.fromJson(core.Map json_)
    : this(
        subscription:
            json_.containsKey('subscription')
                ? Subscription.fromJson(
                  json_['subscription'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (subscription != null) 'subscription': subscription!,
  };
}

/// A description of what time period or moment in time the product or service
/// is being delivered over.
class ServicePeriod {
  /// The end time of the service period.
  ///
  /// Time is exclusive.
  ///
  /// Optional.
  core.String? endTime;

  /// The start time of the service period.
  ///
  /// Time is inclusive.
  ///
  /// Required.
  core.String? startTime;

  ServicePeriod({this.endTime, this.startTime});

  ServicePeriod.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endTime != null) 'endTime': endTime!,
    if (startTime != null) 'startTime': startTime!,
  };
}

/// A subscription serves as a central billing entity between an external
/// partner and Google.
///
/// The underlying Google services rely on the subscription state to grant or
/// revoke the user's service entitlement. It's important to note that the
/// subscription state may not always perfectly align with the user's service
/// entitlement. For example, some Google services may continue providing access
/// to the user until the current billing cycle ends, even if the subscription
/// has been immediately canceled. However, other services may not do the same.
/// To fully understand the specific details, please consult the relevant
/// contract or product policy.
class Subscription {
  /// Describes the details of a cancelled subscription.
  ///
  /// Only applicable to subscription of state `STATE_CANCELLED`.
  ///
  /// Output only.
  SubscriptionCancellationDetails? cancellationDetails;

  /// System generated timestamp when the subscription is created.
  ///
  /// UTC timezone.
  ///
  /// Output only.
  core.String? createTime;

  /// The time at which the subscription is expected to be extended, in ISO 8061
  /// format.
  ///
  /// UTC timezone. For example: "2019-08-31T17:28:54.564Z"
  ///
  /// Output only.
  core.String? cycleEndTime;

  /// Indicates if the subscription is entitled to the end user.
  ///
  /// Output only.
  core.bool? endUserEntitled;

  /// End of the free trial period, in ISO 8061 format.
  ///
  /// For example, "2019-08-31T17:28:54.564Z". It will be set the same as
  /// createTime if no free trial promotion is specified.
  ///
  /// Output only.
  core.String? freeTrialEndTime;

  /// The line items of the subscription.
  ///
  /// Required.
  core.List<SubscriptionLineItem>? lineItems;

  /// Describes the details of the migrated subscription.
  ///
  /// Only populated if this subscription is migrated from another system.
  ///
  /// Output only.
  SubscriptionMigrationDetails? migrationDetails;

  /// Identifier.
  ///
  /// Resource name of the subscription. It will have the format of
  /// "partners/{partner_id}/subscriptions/{subscription_id}". This is available
  /// for authorizeAddon, but otherwise is response only.
  core.String? name;

  /// Identifier of the end-user in partner’s system.
  ///
  /// The value is restricted to 63 ASCII characters at the maximum.
  ///
  /// Required.
  core.String? partnerUserToken;

  /// Describes the processing state of the subscription.
  ///
  /// See more details at \[the lifecycle of a
  /// subscription\](/payments/reseller/subscription/reference/index/Receive.Notifications#payments-subscription-lifecycle).
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PROCESSING_STATE_UNSPECIFIED" : The processing state is unspecified.
  /// - "PROCESSING_STATE_CANCELLING" : The subscription is being cancelled.
  /// - "PROCESSING_STATE_RECURRING" : The subscription is recurring.
  core.String? processingState;

  /// Deprecated: consider using `line_items` as the input.
  ///
  /// Required. Resource name that identifies the purchased products. The format
  /// will be 'partners/{partner_id}/products/{product_id}'.
  ///
  /// Optional.
  core.List<core.String>? products;

  /// Subscription-level promotions.
  ///
  /// Only free trial is supported on this level. It determines the first
  /// renewal time of the subscription to be the end of the free trial period.
  /// Specify the promotion resource name only when used as input.
  ///
  /// Optional.
  core.List<SubscriptionPromotionSpec>? promotionSpecs;

  /// Deprecated: consider using the top-level `promotion_specs` as the input.
  ///
  /// Optional. Resource name that identifies one or more promotions that can be
  /// applied on the product. A typical promotion for a subscription is Free
  /// trial. The format will be
  /// 'partners/{partner_id}/promotions/{promotion_id}'.
  ///
  /// Optional.
  core.List<core.String>? promotions;

  /// The timestamp when the user transaction was made with the Partner.
  ///
  /// Specify for the case of "bundle with choice", and it must be before the
  /// provision_time (when the user makes a selection).
  ///
  /// Optional.
  core.String? purchaseTime;

  /// The place where partners should redirect the end-user to after creation.
  ///
  /// This field might also be populated when creation failed. However, Partners
  /// should always prepare a default URL to redirect the user in case this
  /// field is empty.
  ///
  /// Output only.
  core.String? redirectUri;

  /// The time at which the subscription is expected to be renewed by Google - a
  /// new charge will be incurred and the service entitlement will be renewed.
  ///
  /// A non-immediate cancellation will take place at this time too, before
  /// which, the service entitlement for the end user will remain valid. UTC
  /// timezone in ISO 8061 format. For example: "2019-08-31T17:28:54.564Z"
  ///
  /// Output only.
  core.String? renewalTime;

  /// The location that the service is provided as indicated by the partner.
  ///
  /// Required.
  Location? serviceLocation;

  /// Describes the state of the subscription.
  ///
  /// See more details at \[the lifecycle of a
  /// subscription\](/payments/reseller/subscription/reference/index/Receive.Notifications#payments-subscription-lifecycle).
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unspecified.
  /// - "STATE_CREATED" : The subscription is created, a state before it is
  /// moved to STATE_ACTIVE.
  /// - "STATE_ACTIVE" : The subscription is active.
  /// - "STATE_CANCELLED" : The subscription is cancelled. This is the final
  /// state of the subscription, as it can no longer be modified or reactivated.
  /// - "STATE_IN_GRACE_PERIOD" : The subscription is in grace period. It can
  /// happen: 1) in manual extend mode, the subscription is not extended by the
  /// partner at the end of current cycle. 2) for outbound authorization enabled
  /// partners, a renewal purchase order is rejected.
  /// - "STATE_CANCEL_AT_END_OF_CYCLE" : The subscription is waiting to be
  /// cancelled by the next recurrence cycle.
  /// - "STATE_SUSPENDED" : The subscription is suspended.
  core.String? state;

  /// System generated timestamp when the subscription is most recently updated.
  ///
  /// UTC timezone.
  ///
  /// Output only.
  core.String? updateTime;

  /// Details about the previous subscription that this new subscription
  /// upgrades/downgrades from.
  ///
  /// Only populated if this subscription is an upgrade/downgrade from another
  /// subscription.
  ///
  /// Optional.
  SubscriptionUpgradeDowngradeDetails? upgradeDowngradeDetails;

  Subscription({
    this.cancellationDetails,
    this.createTime,
    this.cycleEndTime,
    this.endUserEntitled,
    this.freeTrialEndTime,
    this.lineItems,
    this.migrationDetails,
    this.name,
    this.partnerUserToken,
    this.processingState,
    this.products,
    this.promotionSpecs,
    this.promotions,
    this.purchaseTime,
    this.redirectUri,
    this.renewalTime,
    this.serviceLocation,
    this.state,
    this.updateTime,
    this.upgradeDowngradeDetails,
  });

  Subscription.fromJson(core.Map json_)
    : this(
        cancellationDetails:
            json_.containsKey('cancellationDetails')
                ? SubscriptionCancellationDetails.fromJson(
                  json_['cancellationDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        cycleEndTime: json_['cycleEndTime'] as core.String?,
        endUserEntitled: json_['endUserEntitled'] as core.bool?,
        freeTrialEndTime: json_['freeTrialEndTime'] as core.String?,
        lineItems:
            (json_['lineItems'] as core.List?)
                ?.map(
                  (value) => SubscriptionLineItem.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        migrationDetails:
            json_.containsKey('migrationDetails')
                ? SubscriptionMigrationDetails.fromJson(
                  json_['migrationDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        partnerUserToken: json_['partnerUserToken'] as core.String?,
        processingState: json_['processingState'] as core.String?,
        products:
            (json_['products'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        promotionSpecs:
            (json_['promotionSpecs'] as core.List?)
                ?.map(
                  (value) => SubscriptionPromotionSpec.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        promotions:
            (json_['promotions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        purchaseTime: json_['purchaseTime'] as core.String?,
        redirectUri: json_['redirectUri'] as core.String?,
        renewalTime: json_['renewalTime'] as core.String?,
        serviceLocation:
            json_.containsKey('serviceLocation')
                ? Location.fromJson(
                  json_['serviceLocation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        upgradeDowngradeDetails:
            json_.containsKey('upgradeDowngradeDetails')
                ? SubscriptionUpgradeDowngradeDetails.fromJson(
                  json_['upgradeDowngradeDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cancellationDetails != null)
      'cancellationDetails': cancellationDetails!,
    if (createTime != null) 'createTime': createTime!,
    if (cycleEndTime != null) 'cycleEndTime': cycleEndTime!,
    if (endUserEntitled != null) 'endUserEntitled': endUserEntitled!,
    if (freeTrialEndTime != null) 'freeTrialEndTime': freeTrialEndTime!,
    if (lineItems != null) 'lineItems': lineItems!,
    if (migrationDetails != null) 'migrationDetails': migrationDetails!,
    if (name != null) 'name': name!,
    if (partnerUserToken != null) 'partnerUserToken': partnerUserToken!,
    if (processingState != null) 'processingState': processingState!,
    if (products != null) 'products': products!,
    if (promotionSpecs != null) 'promotionSpecs': promotionSpecs!,
    if (promotions != null) 'promotions': promotions!,
    if (purchaseTime != null) 'purchaseTime': purchaseTime!,
    if (redirectUri != null) 'redirectUri': redirectUri!,
    if (renewalTime != null) 'renewalTime': renewalTime!,
    if (serviceLocation != null) 'serviceLocation': serviceLocation!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (upgradeDowngradeDetails != null)
      'upgradeDowngradeDetails': upgradeDowngradeDetails!,
  };
}

/// Describes the details of a cancelled or cancelling subscription.
class SubscriptionCancellationDetails {
  /// The reason of the cancellation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CANCELLATION_REASON_UNSPECIFIED" : Reason is unspecified. Should not be
  /// used.
  /// - "CANCELLATION_REASON_FRAUD" : Fraudualant transaction.
  /// - "CANCELLATION_REASON_REMORSE" : Buyer's remorse.
  /// - "CANCELLATION_REASON_ACCIDENTAL_PURCHASE" : Accidential purchase.
  /// - "CANCELLATION_REASON_PAST_DUE" : Payment is past due.
  /// - "CANCELLATION_REASON_ACCOUNT_CLOSED" : Used for notification only, do
  /// not use in Cancel API. User account closed.
  /// - "CANCELLATION_REASON_UPGRADE_DOWNGRADE" : Used for notification only, do
  /// not use in Cancel API. Cancellation due to upgrade or downgrade.
  /// - "CANCELLATION_REASON_USER_DELINQUENCY" : Cancellation due to user
  /// delinquency
  /// - "CANCELLATION_REASON_SYSTEM_ERROR" : Used for notification only, do not
  /// use in Cancel API. Cancellation due to an unrecoverable system error.
  /// - "CANCELLATION_REASON_SYSTEM_CANCEL" : Used for notification only, do not
  /// use in Cancel API. The subscription is cancelled by Google automatically
  /// since it is no longer valid.
  /// - "CANCELLATION_REASON_OTHER" : Other reason.
  core.String? reason;

  SubscriptionCancellationDetails({this.reason});

  SubscriptionCancellationDetails.fromJson(core.Map json_)
    : this(reason: json_['reason'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (reason != null) 'reason': reason!,
  };
}

/// Individual line item definition of a subscription.
class SubscriptionLineItem {
  /// The price of the product/service in this line item.
  ///
  /// The amount could be the wholesale price, or it can include a cost of sale
  /// based on the contract.
  ///
  /// Output only.
  Amount? amount;

  /// The bundle details for the line item.
  ///
  /// Only populated if the line item corresponds to a hard bundle.
  ///
  /// Output only.
  SubscriptionLineItemBundleDetails? bundleDetails;

  /// Description of this line item.
  ///
  /// Output only.
  core.String? description;

  /// Details for a subscription line item with finite billing cycles.
  ///
  /// If unset, the line item will be charged indefinitely. Used only with
  /// LINE_ITEM_RECURRENCE_TYPE_PERIODIC.
  ///
  /// Optional.
  FiniteBillingCycleDetails? finiteBillingCycleDetails;

  /// The free trial end time will be populated after the line item is
  /// successfully processed.
  ///
  /// End time of the line item free trial period, in ISO 8061 format. For
  /// example, "2019-08-31T17:28:54.564Z". It will be set the same as createTime
  /// if no free trial promotion is specified.
  ///
  /// Output only.
  core.String? lineItemFreeTrialEndTime;

  /// A unique index of the subscription line item.
  ///
  /// Output only.
  core.int? lineItemIndex;

  /// The promotions applied on the line item.
  ///
  /// It can be: - an introductory pricing promotion. - a free trial promotion.
  /// This feature is not enabled. If used, the request will be rejected. When
  /// used as input in Create or Provision API, specify its resource name only.
  ///
  /// Optional.
  core.List<SubscriptionPromotionSpec>? lineItemPromotionSpecs;

  /// Details only set for a ONE_TIME recurrence line item.
  ///
  /// Output only.
  SubscriptionLineItemOneTimeRecurrenceDetails? oneTimeRecurrenceDetails;

  /// Product resource name that identifies one the line item The format is
  /// 'partners/{partner_id}/products/{product_id}'.
  ///
  /// Required.
  core.String? product;

  /// Product specific payload for this line item.
  ///
  /// Optional.
  ProductPayload? productPayload;

  /// The recurrence type of the line item.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LINE_ITEM_RECURRENCE_TYPE_UNSPECIFIED" : The line item recurrence type
  /// is unspecified.
  /// - "LINE_ITEM_RECURRENCE_TYPE_PERIODIC" : The line item recurs
  /// periodically.
  /// - "LINE_ITEM_RECURRENCE_TYPE_ONE_TIME" : The line item does not recur in
  /// the future.
  core.String? recurrenceType;

  /// The state of the line item.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LINE_ITEM_STATE_UNSPECIFIED" : Unspecified state.
  /// - "LINE_ITEM_STATE_ACTIVE" : The line item is in ACTIVE state. If the
  /// subscription is cancelled or suspended, the line item will not be charged
  /// even if the line item is active.
  /// - "LINE_ITEM_STATE_INACTIVE" : The line item is in INACTIVE state.
  /// - "LINE_ITEM_STATE_NEW" : The line item is new, and is not activated or
  /// charged yet.
  /// - "LINE_ITEM_STATE_ACTIVATING" : The line item is being activated in order
  /// to be charged. If a free trial applies to the line item, the line item is
  /// pending a prorated charge at the end of the free trial period, as
  /// indicated by `line_item_free_trial_end_time`.
  /// - "LINE_ITEM_STATE_DEACTIVATING" : The line item is being deactivated, and
  /// a prorated refund in being processed.
  /// - "LINE_ITEM_STATE_WAITING_TO_DEACTIVATE" : The line item is scheduled to
  /// be deactivated at the end of the current cycle.
  /// - "LINE_ITEM_STATE_OFF_CYCLE_CHARGING" : Line item is being charged
  /// off-cycle.
  core.String? state;

  SubscriptionLineItem({
    this.amount,
    this.bundleDetails,
    this.description,
    this.finiteBillingCycleDetails,
    this.lineItemFreeTrialEndTime,
    this.lineItemIndex,
    this.lineItemPromotionSpecs,
    this.oneTimeRecurrenceDetails,
    this.product,
    this.productPayload,
    this.recurrenceType,
    this.state,
  });

  SubscriptionLineItem.fromJson(core.Map json_)
    : this(
        amount:
            json_.containsKey('amount')
                ? Amount.fromJson(
                  json_['amount'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        bundleDetails:
            json_.containsKey('bundleDetails')
                ? SubscriptionLineItemBundleDetails.fromJson(
                  json_['bundleDetails'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        finiteBillingCycleDetails:
            json_.containsKey('finiteBillingCycleDetails')
                ? FiniteBillingCycleDetails.fromJson(
                  json_['finiteBillingCycleDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        lineItemFreeTrialEndTime:
            json_['lineItemFreeTrialEndTime'] as core.String?,
        lineItemIndex: json_['lineItemIndex'] as core.int?,
        lineItemPromotionSpecs:
            (json_['lineItemPromotionSpecs'] as core.List?)
                ?.map(
                  (value) => SubscriptionPromotionSpec.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        oneTimeRecurrenceDetails:
            json_.containsKey('oneTimeRecurrenceDetails')
                ? SubscriptionLineItemOneTimeRecurrenceDetails.fromJson(
                  json_['oneTimeRecurrenceDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        product: json_['product'] as core.String?,
        productPayload:
            json_.containsKey('productPayload')
                ? ProductPayload.fromJson(
                  json_['productPayload']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        recurrenceType: json_['recurrenceType'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (amount != null) 'amount': amount!,
    if (bundleDetails != null) 'bundleDetails': bundleDetails!,
    if (description != null) 'description': description!,
    if (finiteBillingCycleDetails != null)
      'finiteBillingCycleDetails': finiteBillingCycleDetails!,
    if (lineItemFreeTrialEndTime != null)
      'lineItemFreeTrialEndTime': lineItemFreeTrialEndTime!,
    if (lineItemIndex != null) 'lineItemIndex': lineItemIndex!,
    if (lineItemPromotionSpecs != null)
      'lineItemPromotionSpecs': lineItemPromotionSpecs!,
    if (oneTimeRecurrenceDetails != null)
      'oneTimeRecurrenceDetails': oneTimeRecurrenceDetails!,
    if (product != null) 'product': product!,
    if (productPayload != null) 'productPayload': productPayload!,
    if (recurrenceType != null) 'recurrenceType': recurrenceType!,
    if (state != null) 'state': state!,
  };
}

/// The bundle details for a line item corresponding to a hard bundle.
class SubscriptionLineItemBundleDetails {
  /// The details for each element in the hard bundle.
  ///
  /// Output only.
  core.List<SubscriptionLineItemBundleDetailsBundleElementDetails>?
  bundleElementDetails;

  SubscriptionLineItemBundleDetails({this.bundleElementDetails});

  SubscriptionLineItemBundleDetails.fromJson(core.Map json_)
    : this(
        bundleElementDetails:
            (json_['bundleElementDetails'] as core.List?)
                ?.map(
                  (value) =>
                      SubscriptionLineItemBundleDetailsBundleElementDetails.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bundleElementDetails != null)
      'bundleElementDetails': bundleElementDetails!,
  };
}

/// The details for an element in the hard bundle.
class SubscriptionLineItemBundleDetailsBundleElementDetails {
  /// Product resource name that identifies the bundle element.
  ///
  /// The format is 'partners/{partner_id}/products/{product_id}'.
  ///
  /// Output only.
  core.String? product;

  /// The time when this product is linked to an end user.
  ///
  /// Output only.
  core.String? userAccountLinkedTime;

  SubscriptionLineItemBundleDetailsBundleElementDetails({
    this.product,
    this.userAccountLinkedTime,
  });

  SubscriptionLineItemBundleDetailsBundleElementDetails.fromJson(core.Map json_)
    : this(
        product: json_['product'] as core.String?,
        userAccountLinkedTime: json_['userAccountLinkedTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (product != null) 'product': product!,
    if (userAccountLinkedTime != null)
      'userAccountLinkedTime': userAccountLinkedTime!,
  };
}

/// Details for a ONE_TIME recurrence line item.
class SubscriptionLineItemOneTimeRecurrenceDetails {
  /// The service period of the ONE_TIME line item.
  ///
  /// Output only.
  ServicePeriod? servicePeriod;

  SubscriptionLineItemOneTimeRecurrenceDetails({this.servicePeriod});

  SubscriptionLineItemOneTimeRecurrenceDetails.fromJson(core.Map json_)
    : this(
        servicePeriod:
            json_.containsKey('servicePeriod')
                ? ServicePeriod.fromJson(
                  json_['servicePeriod'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (servicePeriod != null) 'servicePeriod': servicePeriod!,
  };
}

/// Describes the details of the migrated subscription.
class SubscriptionMigrationDetails {
  /// The migrated subscription id in the legacy system.
  ///
  /// Output only.
  core.String? migratedSubscriptionId;

  SubscriptionMigrationDetails({this.migratedSubscriptionId});

  SubscriptionMigrationDetails.fromJson(core.Map json_)
    : this(
        migratedSubscriptionId: json_['migratedSubscriptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (migratedSubscriptionId != null)
      'migratedSubscriptionId': migratedSubscriptionId!,
  };
}

/// Describes the spec for one promotion.
class SubscriptionPromotionSpec {
  /// The duration of the free trial if the promotion is of type FREE_TRIAL.
  ///
  /// Output only.
  Duration? freeTrialDuration;

  /// The details of the introductory pricing spec if the promotion is of type
  /// INTRODUCTORY_PRICING.
  ///
  /// Output only.
  PromotionIntroductoryPricingDetails? introductoryPricingDetails;

  /// Promotion resource name that identifies a promotion.
  ///
  /// The format is 'partners/{partner_id}/promotions/{promotion_id}'.
  ///
  /// Required.
  core.String? promotion;

  /// The type of the promotion for the spec.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PROMOTION_TYPE_UNSPECIFIED" : The promotion type is unspecified.
  /// - "PROMOTION_TYPE_FREE_TRIAL" : The promotion is a free trial.
  /// - "PROMOTION_TYPE_INTRODUCTORY_PRICING" : The promotion is a reduced
  /// introductory pricing.
  core.String? type;

  SubscriptionPromotionSpec({
    this.freeTrialDuration,
    this.introductoryPricingDetails,
    this.promotion,
    this.type,
  });

  SubscriptionPromotionSpec.fromJson(core.Map json_)
    : this(
        freeTrialDuration:
            json_.containsKey('freeTrialDuration')
                ? Duration.fromJson(
                  json_['freeTrialDuration']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        introductoryPricingDetails:
            json_.containsKey('introductoryPricingDetails')
                ? PromotionIntroductoryPricingDetails.fromJson(
                  json_['introductoryPricingDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        promotion: json_['promotion'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (freeTrialDuration != null) 'freeTrialDuration': freeTrialDuration!,
    if (introductoryPricingDetails != null)
      'introductoryPricingDetails': introductoryPricingDetails!,
    if (promotion != null) 'promotion': promotion!,
    if (type != null) 'type': type!,
  };
}

/// Details about the previous subscription that this new subscription
/// upgrades/downgrades from.
class SubscriptionUpgradeDowngradeDetails {
  /// Specifies the billing cycle spec for the new upgraded/downgraded
  /// subscription.
  ///
  /// Required.
  /// Possible string values are:
  /// - "BILLING_CYCLE_SPEC_UNSPECIFIED" : Billing cycle spec is not specified.
  /// - "BILLING_CYCLE_SPEC_ALIGN_WITH_PREVIOUS_SUBSCRIPTION" : The billing
  /// cycle of the new subscription starts immediately but aligns with the
  /// previous subscription it upgrades or downgrades from. First cycle of the
  /// new subscription will be prorated.
  /// - "BILLING_CYCLE_SPEC_START_IMMEDIATELY" : The billing cycle of the new
  /// subscription starts immediately.
  /// - "BILLING_CYCLE_SPEC_DEFERRED_TO_NEXT_RECURRENCE" : The billing cycle
  /// starts at the end of the previous subscription's billing cycle and aligns
  /// with the previous subscription's billing cycle.
  core.String? billingCycleSpec;

  /// The previous subscription id to be replaced.
  ///
  /// The format can be one of the following: 1. `subscription_id`: the old
  /// subscription id under the same partner_id. 2.
  /// `partners/{partner_id}/subscriptions/{subscription_id}`. A different
  /// partner_id is allowed. But they must be under the same partner group.
  ///
  /// Required.
  core.String? previousSubscriptionId;

  SubscriptionUpgradeDowngradeDetails({
    this.billingCycleSpec,
    this.previousSubscriptionId,
  });

  SubscriptionUpgradeDowngradeDetails.fromJson(core.Map json_)
    : this(
        billingCycleSpec: json_['billingCycleSpec'] as core.String?,
        previousSubscriptionId: json_['previousSubscriptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (billingCycleSpec != null) 'billingCycleSpec': billingCycleSpec!,
    if (previousSubscriptionId != null)
      'previousSubscriptionId': previousSubscriptionId!,
  };
}

/// Request to suspend a subscription.
typedef SuspendSubscriptionRequest = $Empty;

/// Response that contains the suspended subscription.
class SuspendSubscriptionResponse {
  /// The suspended subscription resource.
  Subscription? subscription;

  SuspendSubscriptionResponse({this.subscription});

  SuspendSubscriptionResponse.fromJson(core.Map json_)
    : this(
        subscription:
            json_.containsKey('subscription')
                ? Subscription.fromJson(
                  json_['subscription'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (subscription != null) 'subscription': subscription!,
  };
}

/// Request to revoke a cancellation request.
typedef UndoCancelSubscriptionRequest = $Empty;

/// Response that contains the updated subscription resource.
class UndoCancelSubscriptionResponse {
  /// The updated subscription resource.
  Subscription? subscription;

  UndoCancelSubscriptionResponse({this.subscription});

  UndoCancelSubscriptionResponse.fromJson(core.Map json_)
    : this(
        subscription:
            json_.containsKey('subscription')
                ? Subscription.fromJson(
                  json_['subscription'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (subscription != null) 'subscription': subscription!,
  };
}

/// A user session contains a short-lived token that includes information
/// required to interact with Google Payments Reseller Platform using the
/// following web endpoints.
///
/// - A user session token should be generated dynamically for an authenticated
/// user. You should refrain from sharing a token directly with a user in an
/// unauthenticated context, such as SMS, or email. - You can re-generate new
/// session tokens repeatedly for same `generate` request if necessary,
/// regardless of the previous tokens being expired or not. You don't need to
/// worry about multiple sessions resulting in duplicate fulfillments as
/// guaranteed by the same subscription id. Please refer to the \[Google Managed
/// Signup\](/payments/reseller/subscription/reference/index/User.Signup.Integration/Google.Managed.Signup)
/// documentation for additional integration details.
class UserSession {
  /// The time at which the user session expires.
  ///
  /// Output only.
  core.String? expireTime;

  /// The encrypted token of the user session, including the information of the
  /// user's intent and request.
  ///
  /// This token should be provided when redirecting the user to Google.
  ///
  /// Output only.
  core.String? token;

  UserSession({this.expireTime, this.token});

  UserSession.fromJson(core.Map json_)
    : this(
        expireTime: json_['expireTime'] as core.String?,
        token: json_['token'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (expireTime != null) 'expireTime': expireTime!,
    if (token != null) 'token': token!,
  };
}

/// Payload specific to Youtube products.
class YoutubePayload {
  /// The access expiration time for this line item.
  ///
  /// Output only.
  core.String? accessEndTime;

  /// The list of eligibility_ids which are applicable for the line item.
  core.List<core.String>? partnerEligibilityIds;

  /// Specifies the plan type offered to the end user by the partner.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PARTNER_PLAN_TYPE_UNSPECIFIED" : Unspecified. Should not use, reserved
  /// as an invalid value.
  /// - "PARTNER_PLAN_TYPE_STANDALONE" : This item is offered as a standalone
  /// product to the user.
  /// - "PARTNER_PLAN_TYPE_HARD_BUNDLE" : This item is bundled with another
  /// partner offering, the item is provisioned at purchase time.
  /// - "PARTNER_PLAN_TYPE_SOFT_BUNDLE" : This item is bundled with another
  /// partner offering, the item is provisioned after puchase, when the user
  /// opts in this Google service.
  core.String? partnerPlanType;

  YoutubePayload({
    this.accessEndTime,
    this.partnerEligibilityIds,
    this.partnerPlanType,
  });

  YoutubePayload.fromJson(core.Map json_)
    : this(
        accessEndTime: json_['accessEndTime'] as core.String?,
        partnerEligibilityIds:
            (json_['partnerEligibilityIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        partnerPlanType: json_['partnerPlanType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accessEndTime != null) 'accessEndTime': accessEndTime!,
    if (partnerEligibilityIds != null)
      'partnerEligibilityIds': partnerEligibilityIds!,
    if (partnerPlanType != null) 'partnerPlanType': partnerPlanType!,
  };
}
