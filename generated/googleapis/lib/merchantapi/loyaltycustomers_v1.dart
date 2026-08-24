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

/// Merchant API - loyaltycustomers_v1
///
/// Programmatically manage your Merchant Center Accounts.
///
/// For more information, see <https://developers.google.com/merchant/api>
///
/// Create an instance of [MerchantApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsLoyaltyCustomersResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

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

  AccountsLoyaltyCustomersResource get loyaltyCustomers =>
      AccountsLoyaltyCustomersResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsLoyaltyCustomersResource {
  final commons.ApiRequester _requester;

  AccountsLoyaltyCustomersResource(commons.ApiRequester client)
    : _requester = client;

  /// Manages (inserts, updates, or removes) a customer's loyalty tier
  /// information.
  ///
  /// This method serves as a single interface for all changes to a customer's
  /// loyalty status. The specific action (insert, update, or remove) is
  /// determined by the current state of the merchant-to-customer association
  /// and the `loyalty_tier` value provided in the request. **Operation Logic:**
  /// * **Upsert (Insert/Update):** Providing any valid tier other than
  /// `NON_MEMBER` will associate the customer with that tier. If an association
  /// already exists, it will be updated; otherwise, a new one will be created.
  /// * **Removal:** Setting `loyalty_tier` to `NON_MEMBER` will remove any
  /// existing loyalty association for the customer. **Privacy Note:** To
  /// protect user privacy, this method consistently returns a `200 OK` status
  /// with a default `LoyaltyCustomer` response if the customer's identifier
  /// cannot be matched to a Google account or if the user has not opted into
  /// loyalty personalization.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent account where this loyalty customer will
  /// be handled. Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManageLoyaltyCustomerMatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManageLoyaltyCustomerMatchResponse> manage(
    ManageLoyaltyCustomerMatchRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'loyaltyCustomers/v1/' +
        core.Uri.encodeFull('$parent') +
        '/loyaltyCustomers:manage';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ManageLoyaltyCustomerMatchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Represents a customer’s physical address.
class AddressInfo {
  /// The city of the customer.
  ///
  /// Optional.
  core.String? city;

  /// The family name of the customer.
  ///
  /// Optional.
  core.String? familyName;

  /// The given name of the customer.
  ///
  /// Optional.
  core.String? givenName;

  /// The postal code (zip code) of the customer.
  ///
  /// **Format Rules:** * **United States:** 5-digit zip codes (e.g., "94108").
  ///
  /// Optional.
  core.String? postalCode;

  /// The Unicode country/region code (CLDR) of the customer, such as "US" or
  /// "CH".
  ///
  /// This field is case-insensitive. For more information, see
  /// https://cldr.unicode.org/ and
  /// https://www.unicode.org/cldr/charts/latest/supplemental/territory_containment_un_m_49.html.
  ///
  /// Optional.
  core.String? regionCode;

  /// The state or province of the customer.
  ///
  /// Optional.
  core.String? state;

  AddressInfo({
    this.city,
    this.familyName,
    this.givenName,
    this.postalCode,
    this.regionCode,
    this.state,
  });

  AddressInfo.fromJson(core.Map json_)
    : this(
        city: json_['city'] as core.String?,
        familyName: json_['familyName'] as core.String?,
        givenName: json_['givenName'] as core.String?,
        postalCode: json_['postalCode'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final city = this.city;
    final familyName = this.familyName;
    final givenName = this.givenName;
    final postalCode = this.postalCode;
    final regionCode = this.regionCode;
    final state = this.state;
    return {
      'city': ?city,
      'familyName': ?familyName,
      'givenName': ?givenName,
      'postalCode': ?postalCode,
      'regionCode': ?regionCode,
      'state': ?state,
    };
  }
}

/// Represents a customer’s loyalty information.
///
/// Represents loyalty customer data in `ManageLoyaltyCustomerMatch` API, but is
/// not a resource that can be retrieved or listed by other methods.
class LoyaltyCustomer {
  /// The tier label of the loyalty tier the customer belongs to.
  ///
  /// Required.
  /// Possible string values are:
  /// - "LOYALTY_TIER_UNSPECIFIED" : Loyalty tier unspecified.
  /// - "TIER1" : Loyalty tier 1.
  /// - "TIER2" : Loyalty tier 2.
  /// - "TIER3" : Loyalty tier 3.
  /// - "TIER4" : Loyalty tier 4.
  /// - "TIER5" : Loyalty tier 5.
  /// - "TIER6" : Loyalty tier 6.
  /// - "TIER7" : Loyalty tier 7.
  /// - "NON_MEMBER" : Disassociates the user from any loyalty tier. Only set to
  /// “NON_MEMBER” when the intent is to remove the user association from Google
  /// organic loyalty customer match experience.
  core.String? loyaltyTier;

  /// The point balance of the loyalty customer.
  ///
  /// Optional.
  core.String? pointBalance;

  /// The identifiers for the customer.
  ///
  /// Required.
  UserIdentifier? userIdentifier;

  LoyaltyCustomer({this.loyaltyTier, this.pointBalance, this.userIdentifier});

  LoyaltyCustomer.fromJson(core.Map json_)
    : this(
        loyaltyTier: json_['loyaltyTier'] as core.String?,
        pointBalance: json_['pointBalance'] as core.String?,
        userIdentifier: json_.containsKey('userIdentifier')
            ? UserIdentifier.fromJson(
                json_['userIdentifier'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final loyaltyTier = this.loyaltyTier;
    final pointBalance = this.pointBalance;
    final userIdentifier = this.userIdentifier;
    return {
      'loyaltyTier': ?loyaltyTier,
      'pointBalance': ?pointBalance,
      'userIdentifier': ?userIdentifier,
    };
  }
}

/// Request message for the ManageLoyaltyCustomerMatch method.
class ManageLoyaltyCustomerMatchRequest {
  /// The loyalty customer to insert, update, or remove.
  ///
  /// Required.
  LoyaltyCustomer? loyaltyCustomer;

  ManageLoyaltyCustomerMatchRequest({this.loyaltyCustomer});

  ManageLoyaltyCustomerMatchRequest.fromJson(core.Map json_)
    : this(
        loyaltyCustomer: json_.containsKey('loyaltyCustomer')
            ? LoyaltyCustomer.fromJson(
                json_['loyaltyCustomer'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final loyaltyCustomer = this.loyaltyCustomer;
    return {'loyaltyCustomer': ?loyaltyCustomer};
  }
}

/// Response message for the ManageLoyaltyCustomerMatch method.
class ManageLoyaltyCustomerMatchResponse {
  /// The loyalty customer that was inserted, updated, or removed.
  ///
  /// If the customer's identifier cannot be matched to a Google account or if
  /// the user has not opted into loyalty personalization, this field will
  /// contain a default `LoyaltyCustomer` instance.
  LoyaltyCustomer? loyaltyCustomer;

  ManageLoyaltyCustomerMatchResponse({this.loyaltyCustomer});

  ManageLoyaltyCustomerMatchResponse.fromJson(core.Map json_)
    : this(
        loyaltyCustomer: json_.containsKey('loyaltyCustomer')
            ? LoyaltyCustomer.fromJson(
                json_['loyaltyCustomer'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final loyaltyCustomer = this.loyaltyCustomer;
    return {'loyaltyCustomer': ?loyaltyCustomer};
  }
}

/// The user identifiers associated with the customer.
///
/// At least one of the fields within this message must be provided.
class UserIdentifier {
  /// The customer’s physical address.
  ///
  /// Optional.
  AddressInfo? address;

  /// The customer’s email address.
  ///
  /// Optional.
  core.String? emailAddress;

  /// The customer's phone number, in
  /// [E.164 format](https://support.google.com/google-ads/answer/16355235)
  /// (e.g., "+16502530000").
  ///
  /// Optional.
  core.String? phoneNumber;

  UserIdentifier({this.address, this.emailAddress, this.phoneNumber});

  UserIdentifier.fromJson(core.Map json_)
    : this(
        address: json_.containsKey('address')
            ? AddressInfo.fromJson(
                json_['address'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        emailAddress: json_['emailAddress'] as core.String?,
        phoneNumber: json_['phoneNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final address = this.address;
    final emailAddress = this.emailAddress;
    final phoneNumber = this.phoneNumber;
    return {
      'address': ?address,
      'emailAddress': ?emailAddress,
      'phoneNumber': ?phoneNumber,
    };
  }
}
