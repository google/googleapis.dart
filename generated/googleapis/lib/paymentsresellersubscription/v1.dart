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
library paymentsresellersubscription.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

class PaymentsResellerSubscriptionApi {
  final commons.ApiRequester _requester;

  PartnersResource get partners => PartnersResource(_requester);

  PaymentsResellerSubscriptionApi(http.Client client,
      {core.String rootUrl =
          'https://paymentsresellersubscription.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class PartnersResource {
  final commons.ApiRequester _requester;

  PartnersProductsResource get products => PartnersProductsResource(_requester);
  PartnersPromotionsResource get promotions =>
      PartnersPromotionsResource(_requester);
  PartnersSubscriptionsResource get subscriptions =>
      PartnersSubscriptionsResource(_requester);

  PartnersResource(commons.ApiRequester client) : _requester = client;
}

class PartnersProductsResource {
  final commons.ApiRequester _requester;

  PartnersProductsResource(commons.ApiRequester client) : _requester = client;

  /// Used by partners to list products that can be resold to their customers.
  ///
  /// It should be called directly by the partner using service accounts.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, the partner that can resell. Format:
  /// partners/{partner}
  /// Value must have pattern `^partners/\[^/\]+$`.
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
  /// Completes with a
  /// [GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/products';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class PartnersPromotionsResource {
  final commons.ApiRequester _requester;

  PartnersPromotionsResource(commons.ApiRequester client) : _requester = client;

  /// Used by partners to list promotions, such as free trial, that can be
  /// applied on subscriptions.
  ///
  /// It should be called directly by the partner using service accounts.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, the partner that can resell. Format:
  /// partners/{partner}
  /// Value must have pattern `^partners/\[^/\]+$`.
  ///
  /// [filter] - Optional. Specifies the filters for the promotion results. The
  /// syntax defined in the EBNF grammar:
  /// https://google.aip.dev/assets/misc/ebnf-filtering.txt. Examples: -
  /// applicable_products: "sku1" - region_codes: "US" - applicable_products:
  /// "sku1" AND region_codes: "US"
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
  /// Completes with a
  /// [GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse>
      list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/promotions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class PartnersSubscriptionsResource {
  final commons.ApiRequester _requester;

  PartnersSubscriptionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Used by partners to cancel a subscription service either immediately or by
  /// the end of the current billing cycle for their customers.
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
  /// Completes with a
  /// [GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse>
      cancel(
    GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleCloudPaymentsResellerSubscriptionV1Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPaymentsResellerSubscriptionV1Subscription> create(
    GoogleCloudPaymentsResellerSubscriptionV1Subscription request,
    core.String parent, {
    core.String? subscriptionId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (subscriptionId != null) 'subscriptionId': [subscriptionId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/subscriptions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudPaymentsResellerSubscriptionV1Subscription.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Used by partners to entitle a previously provisioned subscription to the
  /// current end user.
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
  /// Completes with a
  /// [GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse>
      entitle(
    GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':entitle';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Used by partners to extend a subscription service for their customers on
  /// an ongoing basis for the subscription to remain active and renewable.
  ///
  /// It should be called directly by the partner using service accounts.
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
  /// Completes with a
  /// [GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse>
      extend(
    GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':extend';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Used by partners to get a subscription by id.
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
  /// Completes with a [GoogleCloudPaymentsResellerSubscriptionV1Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPaymentsResellerSubscriptionV1Subscription> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudPaymentsResellerSubscriptionV1Subscription.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleCloudPaymentsResellerSubscriptionV1Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPaymentsResellerSubscriptionV1Subscription> provision(
    GoogleCloudPaymentsResellerSubscriptionV1Subscription request,
    core.String parent, {
    core.String? subscriptionId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (subscriptionId != null) 'subscriptionId': [subscriptionId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/subscriptions:provision';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudPaymentsResellerSubscriptionV1Subscription.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Used by partners to revoke the pending cancellation of a subscription,
  /// which is currently in `STATE_CANCEL_AT_END_OF_CYCLE` state.
  ///
  /// If the subscription is already cancelled, the request will fail. It should
  /// be called directly by the partner using service accounts.
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
  /// Completes with a
  /// [GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse>
      undoCancel(
    GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest
        request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':undoCancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest {
  /// If true, the subscription will be cancelled immediately.
  ///
  /// Otherwise, the subscription will be cancelled at renewal_time, and
  /// therefore no prorated refund will be issued for the rest of the cycle.
  ///
  /// Optional.
  core.bool? cancelImmediately;

  /// Specifies the reason for the cancellation.
  /// Possible string values are:
  /// - "CANCELLATION_REASON_UNSPECIFIED" : Reason is unspecified.
  /// - "CANCELLATION_REASON_FRAUD" : Fraudualant transaction.
  /// - "CANCELLATION_REASON_REMORSE" : Buyer's remorse.
  /// - "CANCELLATION_REASON_ACCIDENTAL_PURCHASE" : Accidential purchase.
  /// - "CANCELLATION_REASON_PAST_DUE" : Payment is past due.
  /// - "CANCELLATION_REASON_ACCOUNT_CLOSED" : User account closed.
  /// - "CANCELLATION_REASON_UPGRADE_DOWNGRADE" : Used for notification only, do
  /// not use in Cancel API. Cancellation due to upgrade or downgrade.
  /// - "CANCELLATION_REASON_USER_DELINQUENCY" : Cancellation due to user
  /// delinquency
  /// - "CANCELLATION_REASON_OTHER" : Other reason.
  core.String? cancellationReason;

  GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest({
    this.cancelImmediately,
    this.cancellationReason,
  });

  GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest.fromJson(
      core.Map _json)
      : this(
          cancelImmediately: _json.containsKey('cancelImmediately')
              ? _json['cancelImmediately'] as core.bool
              : null,
          cancellationReason: _json.containsKey('cancellationReason')
              ? _json['cancellationReason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cancelImmediately != null) 'cancelImmediately': cancelImmediately!,
        if (cancellationReason != null)
          'cancellationReason': cancellationReason!,
      };
}

class GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse {
  /// The cancelled subscription resource.
  GoogleCloudPaymentsResellerSubscriptionV1Subscription? subscription;

  GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse({
    this.subscription,
  });

  GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse.fromJson(
      core.Map _json)
      : this(
          subscription: _json.containsKey('subscription')
              ? GoogleCloudPaymentsResellerSubscriptionV1Subscription.fromJson(
                  _json['subscription'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (subscription != null) 'subscription': subscription!,
      };
}

/// Describes the length of a period of a time.
class GoogleCloudPaymentsResellerSubscriptionV1Duration {
  /// number of duration units to be included.
  core.int? count;

  /// The unit used for the duration
  /// Possible string values are:
  /// - "UNIT_UNSPECIFIED" : Default value.
  /// - "MONTH" : Unit of a calendar month.
  /// - "DAY" : Unit of a day.
  core.String? unit;

  GoogleCloudPaymentsResellerSubscriptionV1Duration({
    this.count,
    this.unit,
  });

  GoogleCloudPaymentsResellerSubscriptionV1Duration.fromJson(core.Map _json)
      : this(
          count: _json.containsKey('count') ? _json['count'] as core.int : null,
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (unit != null) 'unit': unit!,
      };
}

/// Partner request for entitling the previously provisioned subscription to an
/// end user.
///
/// The end user identity is inferred from the request OAuth context.
typedef GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest
    = $Empty;

class GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse {
  /// The subscription that has user linked to it.
  GoogleCloudPaymentsResellerSubscriptionV1Subscription? subscription;

  GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse({
    this.subscription,
  });

  GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse.fromJson(
      core.Map _json)
      : this(
          subscription: _json.containsKey('subscription')
              ? GoogleCloudPaymentsResellerSubscriptionV1Subscription.fromJson(
                  _json['subscription'] as core.Map<core.String, core.dynamic>)
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
class GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest {
  /// Specifies details of the extension.
  ///
  /// Currently, the duration of the extension must be exactly one billing cycle
  /// of the original subscription.
  ///
  /// Required.
  GoogleCloudPaymentsResellerSubscriptionV1Extension? extension;

  /// Restricted to 36 ASCII characters.
  ///
  /// A random UUID is recommended. The idempotency key for the request. The ID
  /// generation logic is controlled by the partner. request_id should be the
  /// same as on retries of the same request. A different request_id must be
  /// used for a extension of a different cycle. A random UUID is recommended.
  ///
  /// Required.
  core.String? requestId;

  GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest({
    this.extension,
    this.requestId,
  });

  GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest.fromJson(
      core.Map _json)
      : this(
          extension: _json.containsKey('extension')
              ? GoogleCloudPaymentsResellerSubscriptionV1Extension.fromJson(
                  _json['extension'] as core.Map<core.String, core.dynamic>)
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (extension != null) 'extension': extension!,
        if (requestId != null) 'requestId': requestId!,
      };
}

class GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse {
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

  GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse({
    this.cycleEndTime,
    this.freeTrialEndTime,
    this.renewalTime,
  });

  GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse.fromJson(
      core.Map _json)
      : this(
          cycleEndTime: _json.containsKey('cycleEndTime')
              ? _json['cycleEndTime'] as core.String
              : null,
          freeTrialEndTime: _json.containsKey('freeTrialEndTime')
              ? _json['freeTrialEndTime'] as core.String
              : null,
          renewalTime: _json.containsKey('renewalTime')
              ? _json['renewalTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cycleEndTime != null) 'cycleEndTime': cycleEndTime!,
        if (freeTrialEndTime != null) 'freeTrialEndTime': freeTrialEndTime!,
        if (renewalTime != null) 'renewalTime': renewalTime!,
      };
}

/// Describes the details of an extension request.
class GoogleCloudPaymentsResellerSubscriptionV1Extension {
  /// Specifies the period of access the subscription should grant.
  GoogleCloudPaymentsResellerSubscriptionV1Duration? duration;

  /// Identifier of the end-user in partner’s system.
  ///
  /// Required.
  core.String? partnerUserToken;

  GoogleCloudPaymentsResellerSubscriptionV1Extension({
    this.duration,
    this.partnerUserToken,
  });

  GoogleCloudPaymentsResellerSubscriptionV1Extension.fromJson(core.Map _json)
      : this(
          duration: _json.containsKey('duration')
              ? GoogleCloudPaymentsResellerSubscriptionV1Duration.fromJson(
                  _json['duration'] as core.Map<core.String, core.dynamic>)
              : null,
          partnerUserToken: _json.containsKey('partnerUserToken')
              ? _json['partnerUserToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (duration != null) 'duration': duration!,
        if (partnerUserToken != null) 'partnerUserToken': partnerUserToken!,
      };
}

class GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  /// The products for the specified partner.
  core.List<GoogleCloudPaymentsResellerSubscriptionV1Product>? products;

  GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse({
    this.nextPageToken,
    this.products,
  });

  GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse.fromJson(
      core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          products: _json.containsKey('products')
              ? (_json['products'] as core.List)
                  .map((value) =>
                      GoogleCloudPaymentsResellerSubscriptionV1Product.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (products != null) 'products': products!,
      };
}

class GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  /// The promotions for the specified partner.
  core.List<GoogleCloudPaymentsResellerSubscriptionV1Promotion>? promotions;

  GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse({
    this.nextPageToken,
    this.promotions,
  });

  GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse.fromJson(
      core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          promotions: _json.containsKey('promotions')
              ? (_json['promotions'] as core.List)
                  .map((value) =>
                      GoogleCloudPaymentsResellerSubscriptionV1Promotion
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (promotions != null) 'promotions': promotions!,
      };
}

/// Describes a location of an end user.
class GoogleCloudPaymentsResellerSubscriptionV1Location {
  /// The postal code this location refers to.
  ///
  /// Ex. "94043"
  core.String? postalCode;

  /// 2-letter ISO region code for current content region.
  ///
  /// Ex. “US” Please refers to: https://en.wikipedia.org/wiki/ISO_3166-1
  core.String? regionCode;

  GoogleCloudPaymentsResellerSubscriptionV1Location({
    this.postalCode,
    this.regionCode,
  });

  GoogleCloudPaymentsResellerSubscriptionV1Location.fromJson(core.Map _json)
      : this(
          postalCode: _json.containsKey('postalCode')
              ? _json['postalCode'] as core.String
              : null,
          regionCode: _json.containsKey('regionCode')
              ? _json['regionCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (postalCode != null) 'postalCode': postalCode!,
        if (regionCode != null) 'regionCode': regionCode!,
      };
}

/// A Product resource that defines a subscription service that can be resold.
class GoogleCloudPaymentsResellerSubscriptionV1Product {
  /// Response only.
  ///
  /// Resource name of the subscription. It will have the format of
  /// "partners/{partner_id}/products/{product_id}"
  ///
  /// Output only.
  core.String? name;

  /// 2-letter ISO region code where the product is available in.
  ///
  /// Ex. "US" Please refers to: https://en.wikipedia.org/wiki/ISO_3166-1
  ///
  /// Output only.
  core.List<core.String>? regionCodes;

  /// Specifies the length of the billing cycle of the subscription.
  ///
  /// Output only.
  GoogleCloudPaymentsResellerSubscriptionV1Duration?
      subscriptionBillingCycleDuration;

  /// Localized human readable name of the product.
  ///
  /// Output only.
  core.List<GoogleTypeLocalizedText>? titles;

  GoogleCloudPaymentsResellerSubscriptionV1Product({
    this.name,
    this.regionCodes,
    this.subscriptionBillingCycleDuration,
    this.titles,
  });

  GoogleCloudPaymentsResellerSubscriptionV1Product.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          regionCodes: _json.containsKey('regionCodes')
              ? (_json['regionCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          subscriptionBillingCycleDuration:
              _json.containsKey('subscriptionBillingCycleDuration')
                  ? GoogleCloudPaymentsResellerSubscriptionV1Duration.fromJson(
                      _json['subscriptionBillingCycleDuration']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          titles: _json.containsKey('titles')
              ? (_json['titles'] as core.List)
                  .map((value) => GoogleTypeLocalizedText.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (regionCodes != null) 'regionCodes': regionCodes!,
        if (subscriptionBillingCycleDuration != null)
          'subscriptionBillingCycleDuration': subscriptionBillingCycleDuration!,
        if (titles != null) 'titles': titles!,
      };
}

/// A Promotion resource that defines a promotion for a subscription that can be
/// resold.
class GoogleCloudPaymentsResellerSubscriptionV1Promotion {
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
  GoogleCloudPaymentsResellerSubscriptionV1Duration? freeTrialDuration;

  /// Specifies the introductory pricing details when the promotion_type is
  /// PROMOTION_TYPE_INTRODUCTORY_PRICING.
  ///
  /// Optional.
  GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails?
      introductoryPricingDetails;

  /// Response only.
  ///
  /// Resource name of the subscription promotion. It will have the format of
  /// "partners/{partner_id}/promotion/{promotion_id}"
  ///
  /// Output only.
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

  GoogleCloudPaymentsResellerSubscriptionV1Promotion({
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

  GoogleCloudPaymentsResellerSubscriptionV1Promotion.fromJson(core.Map _json)
      : this(
          applicableProducts: _json.containsKey('applicableProducts')
              ? (_json['applicableProducts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          freeTrialDuration: _json.containsKey('freeTrialDuration')
              ? GoogleCloudPaymentsResellerSubscriptionV1Duration.fromJson(
                  _json['freeTrialDuration']
                      as core.Map<core.String, core.dynamic>)
              : null,
          introductoryPricingDetails: _json
                  .containsKey('introductoryPricingDetails')
              ? GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails
                  .fromJson(_json['introductoryPricingDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          promotionType: _json.containsKey('promotionType')
              ? _json['promotionType'] as core.String
              : null,
          regionCodes: _json.containsKey('regionCodes')
              ? (_json['regionCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          titles: _json.containsKey('titles')
              ? (_json['titles'] as core.List)
                  .map((value) => GoogleTypeLocalizedText.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applicableProducts != null)
          'applicableProducts': applicableProducts!,
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
class GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails {
  /// Specifies the introductory pricing periods.
  core.List<
          GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec>?
      introductoryPricingSpecs;

  GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails({
    this.introductoryPricingSpecs,
  });

  GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails.fromJson(
      core.Map _json)
      : this(
          introductoryPricingSpecs: _json
                  .containsKey('introductoryPricingSpecs')
              ? (_json['introductoryPricingSpecs'] as core.List)
                  .map((value) =>
                      GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (introductoryPricingSpecs != null)
          'introductoryPricingSpecs': introductoryPricingSpecs!,
      };
}

/// The duration of an introductory pricing promotion.
class GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec {
  /// The duration of an introductory offer in billing cycles.
  ///
  /// Output only.
  core.int? recurrenceCount;

  GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec({
    this.recurrenceCount,
  });

  GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec.fromJson(
      core.Map _json)
      : this(
          recurrenceCount: _json.containsKey('recurrenceCount')
              ? _json['recurrenceCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (recurrenceCount != null) 'recurrenceCount': recurrenceCount!,
      };
}

/// A Subscription resource managed by 3P Partners.
class GoogleCloudPaymentsResellerSubscriptionV1Subscription {
  /// Describes the details of a cancelled subscription.
  ///
  /// Only applicable to subscription of state `STATE_CANCELLED`.
  ///
  /// Output only.
  GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails?
      cancellationDetails;

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

  /// Response only.
  ///
  /// Resource name of the subscription. It will have the format of
  /// "partners/{partner_id}/subscriptions/{subscription_id}"
  ///
  /// Output only.
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

  /// Resource name that identifies one or more subscription products.
  ///
  /// The format will be 'partners/{partner_id}/products/{product_id}'.
  ///
  /// Required.
  core.List<core.String>? products;

  /// Resource name that identifies one or more promotions that can be applied
  /// on the product.
  ///
  /// A typical promotion for a subscription is Free trial. The format will be
  /// 'partners/{partner_id}/promotions/{promotion_id}'.
  ///
  /// Optional.
  core.List<core.String>? promotions;

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
  GoogleCloudPaymentsResellerSubscriptionV1Location? serviceLocation;

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
  /// - "STATE_CANCELLED" : The subscription is cancelled.
  /// - "STATE_IN_GRACE_PERIOD" : The subscription has not been extended by the
  /// partner after the end of current cycle.
  /// - "STATE_CANCEL_AT_END_OF_CYCLE" : The subscription is waiting to be
  /// cancelled by the next recurrence cycle.
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
  GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails?
      upgradeDowngradeDetails;

  GoogleCloudPaymentsResellerSubscriptionV1Subscription({
    this.cancellationDetails,
    this.createTime,
    this.cycleEndTime,
    this.endUserEntitled,
    this.freeTrialEndTime,
    this.name,
    this.partnerUserToken,
    this.processingState,
    this.products,
    this.promotions,
    this.redirectUri,
    this.renewalTime,
    this.serviceLocation,
    this.state,
    this.updateTime,
    this.upgradeDowngradeDetails,
  });

  GoogleCloudPaymentsResellerSubscriptionV1Subscription.fromJson(core.Map _json)
      : this(
          cancellationDetails: _json.containsKey('cancellationDetails')
              ? GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails
                  .fromJson(_json['cancellationDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          cycleEndTime: _json.containsKey('cycleEndTime')
              ? _json['cycleEndTime'] as core.String
              : null,
          endUserEntitled: _json.containsKey('endUserEntitled')
              ? _json['endUserEntitled'] as core.bool
              : null,
          freeTrialEndTime: _json.containsKey('freeTrialEndTime')
              ? _json['freeTrialEndTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          partnerUserToken: _json.containsKey('partnerUserToken')
              ? _json['partnerUserToken'] as core.String
              : null,
          processingState: _json.containsKey('processingState')
              ? _json['processingState'] as core.String
              : null,
          products: _json.containsKey('products')
              ? (_json['products'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          promotions: _json.containsKey('promotions')
              ? (_json['promotions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          redirectUri: _json.containsKey('redirectUri')
              ? _json['redirectUri'] as core.String
              : null,
          renewalTime: _json.containsKey('renewalTime')
              ? _json['renewalTime'] as core.String
              : null,
          serviceLocation: _json.containsKey('serviceLocation')
              ? GoogleCloudPaymentsResellerSubscriptionV1Location.fromJson(
                  _json['serviceLocation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          upgradeDowngradeDetails: _json.containsKey('upgradeDowngradeDetails')
              ? GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails
                  .fromJson(_json['upgradeDowngradeDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cancellationDetails != null)
          'cancellationDetails': cancellationDetails!,
        if (createTime != null) 'createTime': createTime!,
        if (cycleEndTime != null) 'cycleEndTime': cycleEndTime!,
        if (endUserEntitled != null) 'endUserEntitled': endUserEntitled!,
        if (freeTrialEndTime != null) 'freeTrialEndTime': freeTrialEndTime!,
        if (name != null) 'name': name!,
        if (partnerUserToken != null) 'partnerUserToken': partnerUserToken!,
        if (processingState != null) 'processingState': processingState!,
        if (products != null) 'products': products!,
        if (promotions != null) 'promotions': promotions!,
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
class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails {
  /// The reason of the cancellation.
  /// Possible string values are:
  /// - "CANCELLATION_REASON_UNSPECIFIED" : Reason is unspecified.
  /// - "CANCELLATION_REASON_FRAUD" : Fraudualant transaction.
  /// - "CANCELLATION_REASON_REMORSE" : Buyer's remorse.
  /// - "CANCELLATION_REASON_ACCIDENTAL_PURCHASE" : Accidential purchase.
  /// - "CANCELLATION_REASON_PAST_DUE" : Payment is past due.
  /// - "CANCELLATION_REASON_ACCOUNT_CLOSED" : User account closed.
  /// - "CANCELLATION_REASON_UPGRADE_DOWNGRADE" : Used for notification only, do
  /// not use in Cancel API. Cancellation due to upgrade or downgrade.
  /// - "CANCELLATION_REASON_USER_DELINQUENCY" : Cancellation due to user
  /// delinquency
  /// - "CANCELLATION_REASON_OTHER" : Other reason.
  core.String? reason;

  GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails({
    this.reason,
  });

  GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails.fromJson(
      core.Map _json)
      : this(
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (reason != null) 'reason': reason!,
      };
}

/// Details about the previous subscription that this new subscription
/// upgrades/downgrades from.
class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails {
  /// Specifies the billing cycle spec for the new upgraded/downgraded
  /// subscription.
  ///
  /// Required.
  /// Possible string values are:
  /// - "BILLING_CYCLE_SPEC_UNSPECIFIED" : Billing cycle spec is not specified.
  /// - "BILLING_CYCLE_SPEC_ALIGN_WITH_PREVIOUS_SUBSCRIPTION" : The billing
  /// cycle of the new subscription aligns with the previous subscription it
  /// upgrades or downgrades from.
  /// - "BILLING_CYCLE_SPEC_START_IMMEDIATELY" : The billing cycle of the new
  /// subscription starts immediately.
  core.String? billingCycleSpec;

  /// The previous subscription id to be replaced.
  ///
  /// This is not the full resource name, use the subscription_id segment only.
  ///
  /// Required.
  core.String? previousSubscriptionId;

  GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails({
    this.billingCycleSpec,
    this.previousSubscriptionId,
  });

  GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails.fromJson(
      core.Map _json)
      : this(
          billingCycleSpec: _json.containsKey('billingCycleSpec')
              ? _json['billingCycleSpec'] as core.String
              : null,
          previousSubscriptionId: _json.containsKey('previousSubscriptionId')
              ? _json['previousSubscriptionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (billingCycleSpec != null) 'billingCycleSpec': billingCycleSpec!,
        if (previousSubscriptionId != null)
          'previousSubscriptionId': previousSubscriptionId!,
      };
}

/// Request to revoke a cancellation request.
typedef GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest
    = $Empty;

/// Response that contains the updated subscription resource.
class GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse {
  /// The updated subscription resource.
  GoogleCloudPaymentsResellerSubscriptionV1Subscription? subscription;

  GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse({
    this.subscription,
  });

  GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse.fromJson(
      core.Map _json)
      : this(
          subscription: _json.containsKey('subscription')
              ? GoogleCloudPaymentsResellerSubscriptionV1Subscription.fromJson(
                  _json['subscription'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (subscription != null) 'subscription': subscription!,
      };
}

/// Localized variant of a text in a particular language.
class GoogleTypeLocalizedText {
  /// The text's BCP-47 language code, such as "en-US" or "sr-Latn".
  ///
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String? languageCode;

  /// Localized string in the language corresponding to \`language_code' below.
  core.String? text;

  GoogleTypeLocalizedText({
    this.languageCode,
    this.text,
  });

  GoogleTypeLocalizedText.fromJson(core.Map _json)
      : this(
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCode != null) 'languageCode': languageCode!,
        if (text != null) 'text': text!,
      };
}
