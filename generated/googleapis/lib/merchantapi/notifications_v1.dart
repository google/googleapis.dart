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

/// Merchant API - notifications_v1
///
/// Programmatically manage your Merchant Center Accounts.
///
/// For more information, see <https://developers.google.com/merchant/api>
///
/// Create an instance of [MerchantApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsNotificationsubscriptionsResource]
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

  AccountsNotificationsubscriptionsResource get notificationsubscriptions =>
      AccountsNotificationsubscriptionsResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsNotificationsubscriptionsResource {
  final commons.ApiRequester _requester;

  AccountsNotificationsubscriptionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a notification subscription for a business.
  ///
  /// For standalone or subaccounts accounts, the business can create a
  /// subscription for self. For MCAs, the business can create a subscription
  /// for all managed accounts or for a specific subaccount. See \[Decode
  /// notifications\](/merchant/api/guides/accounts/notifications#decode_notifications)
  /// for information on how to decode the notification payload and how to
  /// interpret its contents. We will allow the following types of notification
  /// subscriptions to exist together (per business as a subscriber per event
  /// type): 1. Subscription for all managed accounts + subscription for self.
  /// 2. Multiple "partial" subscriptions for managed accounts + subscription
  /// for self. we will not allow (per business as a subscriber per event type):
  /// 1. Multiple self subscriptions. 2. Multiple "all managed accounts"
  /// subscriptions. 3. "All managed accounts" subscription and partial
  /// subscriptions at the same time. 4. Multiple partial subscriptions for the
  /// same target account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The merchant account that owns the new notification
  /// subscription. Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationSubscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationSubscription> create(
    NotificationSubscription request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'notifications/v1/' +
        core.Uri.encodeFull('$parent') +
        '/notificationsubscriptions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return NotificationSubscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a notification subscription for a merchant.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the notification subscription to be
  /// deleted.
  /// Value must have pattern
  /// `^accounts/\[^/\]+/notificationsubscriptions/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'notifications/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets notification subscriptions for an account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The `name` of the notification subscription.
  /// Value must have pattern
  /// `^accounts/\[^/\]+/notificationsubscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationSubscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationSubscription> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'notifications/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return NotificationSubscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets all the notification subscriptions for a merchant.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The merchant account who owns the notification
  /// subscriptions. Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of notification subscriptions to return in
  /// a page. The default value for `page_size` is 100. The maximum value is
  /// `200`. Values above `200` will be coerced to `200`.
  ///
  /// [pageToken] - Token (if provided) to retrieve the subsequent page. All
  /// other parameters must match the original call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNotificationSubscriptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNotificationSubscriptionsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'notifications/v1/' +
        core.Uri.encodeFull('$parent') +
        '/notificationsubscriptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNotificationSubscriptionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing notification subscription for a merchant.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The `name` of the notification configuration.
  /// Generated by the Content API upon creation of a new
  /// `NotificationSubscription`. The `account` represents the merchant ID of
  /// the merchant that owns the configuration. Format:
  /// `accounts/{account}/notificationsubscriptions/{notification_subscription}`
  /// Value must have pattern
  /// `^accounts/\[^/\]+/notificationsubscriptions/\[^/\]+$`.
  ///
  /// [updateMask] - List of fields being updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationSubscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationSubscription> patch(
    NotificationSubscription request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'notifications/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return NotificationSubscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Response message for the ListNotificationSubscription method.
class ListNotificationSubscriptionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The list of notification subscriptions requested by the merchant.
  core.List<NotificationSubscription>? notificationSubscriptions;

  ListNotificationSubscriptionsResponse({
    this.nextPageToken,
    this.notificationSubscriptions,
  });

  ListNotificationSubscriptionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        notificationSubscriptions:
            (json_['notificationSubscriptions'] as core.List?)
                ?.map(
                  (value) => NotificationSubscription.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final notificationSubscriptions = this.notificationSubscriptions;
    return {
      'nextPageToken': ?nextPageToken,
      'notificationSubscriptions': ?notificationSubscriptions,
    };
  }
}

/// Represents a notification subscription owned by a Merchant account.
///
/// See \[Decode
/// notifications\](/merchant/api/guides/accounts/notifications#decode_notifications)
/// for information on how to decode the notification payload and how to
/// interpret its contents.
class NotificationSubscription {
  /// If this value is true, the requesting account is notified of the specified
  /// event for all managed accounts (can be subaccounts or other linked
  /// accounts) including newly added accounts on a daily basis.
  core.bool? allManagedAccounts;

  /// URL to be used to push the notification to the merchant.
  core.String? callBackUri;

  /// The `name` of the notification configuration.
  ///
  /// Generated by the Content API upon creation of a new
  /// `NotificationSubscription`. The `account` represents the merchant ID of
  /// the merchant that owns the configuration. Format:
  /// `accounts/{account}/notificationsubscriptions/{notification_subscription}`
  ///
  /// Output only.
  core.String? name;

  /// The event that the merchant wants to be notified about.
  /// Possible string values are:
  /// - "NOTIFICATION_EVENT_TYPE_UNSPECIFIED" : Notifications event type is
  /// unspecified.
  /// - "PRODUCT_STATUS_CHANGE" : Notification of product status changes, for
  /// example when product becomes disapproved.
  core.String? registeredEvent;

  /// The `name` of the account you want to receive notifications for.
  ///
  /// Format: `accounts/{account}`
  core.String? targetAccount;

  NotificationSubscription({
    this.allManagedAccounts,
    this.callBackUri,
    this.name,
    this.registeredEvent,
    this.targetAccount,
  });

  NotificationSubscription.fromJson(core.Map json_)
    : this(
        allManagedAccounts: json_['allManagedAccounts'] as core.bool?,
        callBackUri: json_['callBackUri'] as core.String?,
        name: json_['name'] as core.String?,
        registeredEvent: json_['registeredEvent'] as core.String?,
        targetAccount: json_['targetAccount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allManagedAccounts = this.allManagedAccounts;
    final callBackUri = this.callBackUri;
    final name = this.name;
    final registeredEvent = this.registeredEvent;
    final targetAccount = this.targetAccount;
    return {
      'allManagedAccounts': ?allManagedAccounts,
      'callBackUri': ?callBackUri,
      'name': ?name,
      'registeredEvent': ?registeredEvent,
      'targetAccount': ?targetAccount,
    };
  }
}
