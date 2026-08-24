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

/// Data Manager API - v1
///
/// A unified ingestion API for data partners, agencies and advertisers to
/// connect first-party data across Google advertising products.
///
/// For more information, see <https://developers.google.com/data-manager>
///
/// Create an instance of [DataManagerApi] to access these resources:
///
/// - [AccountTypesResource]
///   - [AccountTypesAccountsResource]
///     - [AccountTypesAccountsInsightsResource]
///     - [AccountTypesAccountsPartnerLinksResource]
///     - [AccountTypesAccountsUserListDirectLicensesResource]
///     - [AccountTypesAccountsUserListGlobalLicensesResource]
/// -
/// [AccountTypesAccountsUserListGlobalLicensesUserListGlobalLicenseCustomerInfosResource]
///     - [AccountTypesAccountsUserListsResource]
/// - [AdEventsResource]
/// - [AudienceMembersResource]
/// - [EventsResource]
/// - [RequestStatusResource]
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

/// A unified ingestion API for data partners, agencies and advertisers to
/// connect first-party data across Google advertising products.
class DataManagerApi {
  /// See, edit, create, import, or delete your customer data in Google Ads,
  /// Google Marketing Platform (Campaign Manager 360, Search Ads 360, Display &
  /// Video 360), and Google Analytics
  static const datamanagerScope = 'https://www.googleapis.com/auth/datamanager';

  /// View, create, or delete your partner links in Google Ads, Marketing
  /// Platform (Campaign Manager 360, Search Ads 360, Display & Video 360), and
  /// Analytics
  static const datamanagerPartnerlinkScope =
      'https://www.googleapis.com/auth/datamanager.partnerlink';

  final commons.ApiRequester _requester;

  AccountTypesResource get accountTypes => AccountTypesResource(_requester);
  AdEventsResource get adEvents => AdEventsResource(_requester);
  AudienceMembersResource get audienceMembers =>
      AudienceMembersResource(_requester);
  EventsResource get events => EventsResource(_requester);
  RequestStatusResource get requestStatus => RequestStatusResource(_requester);

  DataManagerApi(
    http.Client client, {
    core.String rootUrl = 'https://datamanager.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class AccountTypesResource {
  final commons.ApiRequester _requester;

  AccountTypesAccountsResource get accounts =>
      AccountTypesAccountsResource(_requester);

  AccountTypesResource(commons.ApiRequester client) : _requester = client;
}

class AccountTypesAccountsResource {
  final commons.ApiRequester _requester;

  AccountTypesAccountsInsightsResource get insights =>
      AccountTypesAccountsInsightsResource(_requester);
  AccountTypesAccountsPartnerLinksResource get partnerLinks =>
      AccountTypesAccountsPartnerLinksResource(_requester);
  AccountTypesAccountsUserListDirectLicensesResource
  get userListDirectLicenses =>
      AccountTypesAccountsUserListDirectLicensesResource(_requester);
  AccountTypesAccountsUserListGlobalLicensesResource
  get userListGlobalLicenses =>
      AccountTypesAccountsUserListGlobalLicensesResource(_requester);
  AccountTypesAccountsUserListsResource get userLists =>
      AccountTypesAccountsUserListsResource(_requester);

  AccountTypesAccountsResource(commons.ApiRequester client)
    : _requester = client;
}

class AccountTypesAccountsInsightsResource {
  final commons.ApiRequester _requester;

  AccountTypesAccountsInsightsResource(commons.ApiRequester client)
    : _requester = client;

  /// Retrieves marketing data insights for a given user list.
  ///
  /// This feature is only available to data partners. Authorization Headers:
  /// This method supports the following optional headers to define how the API
  /// authorizes access for the request: * `login-account`: (Optional) The
  /// resource name of the account where the Google Account of the credentials
  /// is a user. If not set, defaults to the account of the request. Format:
  /// `accountTypes/{loginAccountType}/accounts/{loginAccountId}` *
  /// `linked-account`: (Optional) The resource name of the account with an
  /// established product link to the `login-account`. Format:
  /// `accountTypes/{linkedAccountType}/accounts/{linkedAccountId}`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent account that owns the user list. Format:
  /// `accountTypes/{account_type}/accounts/{account}`
  /// Value must have pattern `^accountTypes/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RetrieveInsightsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RetrieveInsightsResponse> retrieve(
    RetrieveInsightsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/insights:retrieve';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RetrieveInsightsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountTypesAccountsPartnerLinksResource {
  final commons.ApiRequester _requester;

  AccountTypesAccountsPartnerLinksResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a partner link for the given account.
  ///
  /// Authorization Headers: This method supports the following optional headers
  /// to define how the API authorizes access for the request: *
  /// `login-account`: (Optional) The resource name of the account where the
  /// Google Account of the credentials is a user. If not set, defaults to the
  /// account of the request. Format:
  /// `accountTypes/{loginAccountType}/accounts/{loginAccountId}`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of partner
  /// links. Format: accountTypes/{account_type}/accounts/{account}
  /// Value must have pattern `^accountTypes/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PartnerLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PartnerLink> create(
    PartnerLink request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/partnerLinks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PartnerLink.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a partner link for the given account.
  ///
  /// Authorization Headers: This method supports the following optional headers
  /// to define how the API authorizes access for the request: *
  /// `login-account`: (Optional) The resource name of the account where the
  /// Google Account of the credentials is a user. If not set, defaults to the
  /// account of the request. Format:
  /// `accountTypes/{loginAccountType}/accounts/{loginAccountId}`
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the partner link to delete.
  /// Format:
  /// accountTypes/{account_type}/accounts/{account}/partnerLinks/{partner_link}
  /// Value must have pattern
  /// `^accountTypes/\[^/\]+/accounts/\[^/\]+/partnerLinks/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Searches for all partner links to and from a given account.
  ///
  /// Authorization Headers: This method supports the following optional headers
  /// to define how the API authorizes access for the request: *
  /// `login-account`: (Optional) The resource name of the account where the
  /// Google Account of the credentials is a user. If not set, defaults to the
  /// account of the request. Format:
  /// `accountTypes/{loginAccountType}/accounts/{loginAccountId}`
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Account to search for partner links. If no `filter`
  /// is specified, all partner links where this account is either the
  /// `owning_account` or `partner_account` are returned. Format:
  /// `accountTypes/{account_type}/accounts/{account}`
  /// Value must have pattern `^accountTypes/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [filter] - Optional. A [filter string](https://google.aip.dev/160). All
  /// fields need to be on the left hand side of each condition (for example:
  /// `partner_link_id = 123456789`). Fields must be specified using either all
  /// [camel case](https://en.wikipedia.org/wiki/Camel_case) or all
  /// [snake case](https://en.wikipedia.org/wiki/Snake_case). Don't use a
  /// combination of camel case and snake case. Supported operations: - `AND` -
  /// `=` - `!=` Supported fields: - `partner_link_id` -
  /// `owning_account.account_type` - `owning_account.account_id` -
  /// `partner_account.account_type` - `partner_account.account_id` -
  /// `feature_set` For partner links with the FEATURE_SET_AD_EVENT_MANAGEMENT
  /// feature set, the following fields are also supported: -
  /// `partner_customer_account.account_id` Example:
  /// `owning_account.account_type = "GOOGLE_ADS" AND partner_account.account_id
  /// = 987654321`
  ///
  /// [pageSize] - The maximum number of partner links to return. The service
  /// may return fewer than this value. If unspecified, at most 50 partner links
  /// will be returned. The maximum value is 100; values above 100 will be
  /// coerced to 100.
  ///
  /// [pageToken] - A page token, received from a previous `SearchPartnerLinks`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `SearchPartnerLinks` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchPartnerLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchPartnerLinksResponse> search(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/partnerLinks:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchPartnerLinksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountTypesAccountsUserListDirectLicensesResource {
  final commons.ApiRequester _requester;

  AccountTypesAccountsUserListDirectLicensesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a user list direct license.
  ///
  /// This feature is only available to data partners.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account that owns the user list being licensed.
  /// Should be in the format accountTypes/{ACCOUNT_TYPE}/accounts/{ACCOUNT_ID}
  /// Value must have pattern `^accountTypes/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserListDirectLicense].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserListDirectLicense> create(
    UserListDirectLicense request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/userListDirectLicenses';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UserListDirectLicense.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves a user list direct license.
  ///
  /// This feature is only available to data partners.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the user list direct license.
  /// Value must have pattern
  /// `^accountTypes/\[^/\]+/accounts/\[^/\]+/userListDirectLicenses/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserListDirectLicense].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserListDirectLicense> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UserListDirectLicense.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all user list direct licenses owned by the parent account.
  ///
  /// This feature is only available to data partners.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account whose licenses are being queried. Should
  /// be in the format accountTypes/{ACCOUNT_TYPE}/accounts/{ACCOUNT_ID}
  /// Value must have pattern `^accountTypes/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [filter] - Optional. A [filter string](https://google.aip.dev/160) to
  /// apply to the list request. All fields need to be on the left hand side of
  /// each condition (for example: `user_list_id = 123`). Fields must be
  /// specified using either all
  /// [camel case](https://en.wikipedia.org/wiki/Camel_case) or all
  /// [snake case](https://en.wikipedia.org/wiki/Snake_case). Don't use a
  /// combination of camel case and snake case. **Supported Operations:** -
  /// `AND` - `=` - `!=` - `>` - `>=` - `<` - `<=` **Supported Functions:** -
  /// `IN(field, value1, value2, ...)`: returns true if the field matches any of
  /// the values. Example: `IN(user_list_id, 123, 456)` **Unsupported Fields:**
  /// - `name` (use get method instead) - `historical_pricings` and all its
  /// subfields - `pricing.start_time` - `pricing.end_time`
  ///
  /// [pageSize] - Optional. The maximum number of licenses to return per page.
  /// The service may return fewer than this value. If unspecified, at most 50
  /// licenses will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListUserListDirectLicense` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListUserListDirectLicense` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUserListDirectLicensesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUserListDirectLicensesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/userListDirectLicenses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUserListDirectLicensesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a user list direct license.
  ///
  /// This feature is only available to data partners.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the user list direct license.
  /// Value must have pattern
  /// `^accountTypes/\[^/\]+/accounts/\[^/\]+/userListDirectLicenses/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to update. The special
  /// character `*` is not supported and an `INVALID_UPDATE_MASK` error will be
  /// thrown if used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserListDirectLicense].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserListDirectLicense> patch(
    UserListDirectLicense request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return UserListDirectLicense.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountTypesAccountsUserListGlobalLicensesResource {
  final commons.ApiRequester _requester;

  AccountTypesAccountsUserListGlobalLicensesUserListGlobalLicenseCustomerInfosResource
  get userListGlobalLicenseCustomerInfos =>
      AccountTypesAccountsUserListGlobalLicensesUserListGlobalLicenseCustomerInfosResource(
        _requester,
      );

  AccountTypesAccountsUserListGlobalLicensesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a user list global license.
  ///
  /// This feature is only available to data partners.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account that owns the user list being licensed.
  /// Should be in the format accountTypes/{ACCOUNT_TYPE}/accounts/{ACCOUNT_ID}
  /// Value must have pattern `^accountTypes/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserListGlobalLicense].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserListGlobalLicense> create(
    UserListGlobalLicense request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/userListGlobalLicenses';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UserListGlobalLicense.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves a user list global license.
  ///
  /// This feature is only available to data partners.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the user list global license.
  /// Value must have pattern
  /// `^accountTypes/\[^/\]+/accounts/\[^/\]+/userListGlobalLicenses/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserListGlobalLicense].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserListGlobalLicense> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UserListGlobalLicense.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all user list global licenses owned by the parent account.
  ///
  /// This feature is only available to data partners.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account whose licenses are being queried. Should
  /// be in the format accountTypes/{ACCOUNT_TYPE}/accounts/{ACCOUNT_ID}
  /// Value must have pattern `^accountTypes/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [filter] - Optional. A [filter string](https://google.aip.dev/160) to
  /// apply to the list request. All fields need to be on the left hand side of
  /// each condition (for example: `user_list_id = 123`). Fields must be
  /// specified using either all
  /// [camel case](https://en.wikipedia.org/wiki/Camel_case) or all
  /// [snake case](https://en.wikipedia.org/wiki/Snake_case). Don't use a
  /// combination of camel case and snake case. **Supported Operations:** -
  /// `AND` - `=` - `!=` - `>` - `>=` - `<` - `<=` **Supported Functions:** -
  /// `IN(field, value1, value2, ...)`: returns true if the field matches any of
  /// the values. Example: `IN(user_list_id, 123, 456)` **Unsupported Fields:**
  /// - `name` (use get method instead) - `historical_pricings` and all its
  /// subfields - `pricing.start_time` - `pricing.end_time`
  ///
  /// [pageSize] - Optional. The maximum number of licenses to return. The
  /// service may return fewer than this value. If unspecified, at most 50
  /// licenses will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListUserListGlobalLicense` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListUserListDirectLicense` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUserListGlobalLicensesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUserListGlobalLicensesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/userListGlobalLicenses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUserListGlobalLicensesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a user list global license.
  ///
  /// This feature is only available to data partners.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the user list global license.
  /// Value must have pattern
  /// `^accountTypes/\[^/\]+/accounts/\[^/\]+/userListGlobalLicenses/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to update. The special
  /// character `*` is not supported and an `INVALID_UPDATE_MASK` error will be
  /// thrown if used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserListGlobalLicense].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserListGlobalLicense> patch(
    UserListGlobalLicense request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return UserListGlobalLicense.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountTypesAccountsUserListGlobalLicensesUserListGlobalLicenseCustomerInfosResource {
  final commons.ApiRequester _requester;

  AccountTypesAccountsUserListGlobalLicensesUserListGlobalLicenseCustomerInfosResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Lists all customer info for a user list global license.
  ///
  /// This feature is only available to data partners.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The global license whose customer info are being
  /// queried. Should be in the format
  /// `accountTypes/{ACCOUNT_TYPE}/accounts/{ACCOUNT_ID}/userListGlobalLicenses/{USER_LIST_GLOBAL_LICENSE_ID}`.
  /// To list all global license customer info under an account, replace the
  /// user list global license id with a '-' (for example,
  /// `accountTypes/DATA_PARTNER/accounts/123/userListGlobalLicenses/-`)
  /// Value must have pattern
  /// `^accountTypes/\[^/\]+/accounts/\[^/\]+/userListGlobalLicenses/\[^/\]+$`.
  ///
  /// [filter] - Optional. A [filter string](https://google.aip.dev/160) to
  /// apply to the list request. All fields need to be on the left hand side of
  /// each condition (for example: `user_list_id = 123`). Fields must be
  /// specified using either all
  /// [camel case](https://en.wikipedia.org/wiki/Camel_case) or all
  /// [snake case](https://en.wikipedia.org/wiki/Snake_case). Don't use a
  /// combination of camel case and snake case. **Supported Operations:** -
  /// `AND` - `=` - `!=` - `>` - `>=` - `<` - `<=` **Supported Functions:** -
  /// `IN(field, value1, value2, ...)`: returns true if the field matches any of
  /// the values. Example: `IN(user_list_id, 123, 456)` **Unsupported Fields:**
  /// - `name` (use get method instead) - `historical_pricings` and all its
  /// subfields - `pricing.start_time` - `pricing.end_time`
  ///
  /// [pageSize] - Optional. The maximum number of licenses to return. The
  /// service may return fewer than this value. If unspecified, at most 50
  /// licenses will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListUserListDirectLicense` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListUserListDirectLicense` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUserListGlobalLicenseCustomerInfosResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUserListGlobalLicenseCustomerInfosResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/userListGlobalLicenseCustomerInfos';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUserListGlobalLicenseCustomerInfosResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountTypesAccountsUserListsResource {
  final commons.ApiRequester _requester;

  AccountTypesAccountsUserListsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a UserList.
  ///
  /// Authorization Headers: This method supports the following optional headers
  /// to define how the API authorizes access for the request: *
  /// `login-account`: (Optional) The resource name of the account where the
  /// Google Account of the credentials is a user. If not set, defaults to the
  /// account of the request. Format:
  /// `accountTypes/{loginAccountType}/accounts/{loginAccountId}` *
  /// `linked-account`: (Optional) The resource name of the account with an
  /// established product link to the `login-account`. Format:
  /// `accountTypes/{linkedAccountType}/accounts/{linkedAccountId}`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent account where this user list will be
  /// created. Format: accountTypes/{account_type}/accounts/{account}
  /// Value must have pattern `^accountTypes/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [validateOnly] - Optional. If true, the request is validated but not
  /// executed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserList> create(
    UserList request,
    core.String parent, {
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userLists';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UserList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a UserList.
  ///
  /// Authorization Headers: This method supports the following optional headers
  /// to define how the API authorizes access for the request: *
  /// `login-account`: (Optional) The resource name of the account where the
  /// Google Account of the credentials is a user. If not set, defaults to the
  /// account of the request. Format:
  /// `accountTypes/{loginAccountType}/accounts/{loginAccountId}` *
  /// `linked-account`: (Optional) The resource name of the account with an
  /// established product link to the `login-account`. Format:
  /// `accountTypes/{linkedAccountType}/accounts/{linkedAccountId}`
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the user list to delete. Format:
  /// accountTypes/{account_type}/accounts/{account}/userLists/{user_list}
  /// Value must have pattern
  /// `^accountTypes/\[^/\]+/accounts/\[^/\]+/userLists/\[^/\]+$`.
  ///
  /// [validateOnly] - Optional. If true, the request is validated but not
  /// executed.
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
  async.Future<Empty> delete(
    core.String name, {
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a UserList.
  ///
  /// Authorization Headers: This method supports the following optional headers
  /// to define how the API authorizes access for the request: *
  /// `login-account`: (Optional) The resource name of the account where the
  /// Google Account of the credentials is a user. If not set, defaults to the
  /// account of the request. Format:
  /// `accountTypes/{loginAccountType}/accounts/{loginAccountId}` *
  /// `linked-account`: (Optional) The resource name of the account with an
  /// established product link to the `login-account`. Format:
  /// `accountTypes/{linkedAccountType}/accounts/{linkedAccountId}`
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the UserList to retrieve. Format:
  /// accountTypes/{account_type}/accounts/{account}/userLists/{user_list}
  /// Value must have pattern
  /// `^accountTypes/\[^/\]+/accounts/\[^/\]+/userLists/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserList> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UserList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists UserLists.
  ///
  /// Authorization Headers: This method supports the following optional headers
  /// to define how the API authorizes access for the request: *
  /// `login-account`: (Optional) The resource name of the account where the
  /// Google Account of the credentials is a user. If not set, defaults to the
  /// account of the request. Format:
  /// `accountTypes/{loginAccountType}/accounts/{loginAccountId}` *
  /// `linked-account`: (Optional) The resource name of the account with an
  /// established product link to the `login-account`. Format:
  /// `accountTypes/{linkedAccountType}/accounts/{linkedAccountId}`
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent account which owns this collection of user
  /// lists. Format: accountTypes/{account_type}/accounts/{account}
  /// Value must have pattern `^accountTypes/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [filter] - Optional. A [filter string](https://google.aip.dev/160). All
  /// fields need to be on the left hand side of each condition (for example:
  /// `display_name = "list 1"`). Fields must be specified using either all
  /// [camel case](https://en.wikipedia.org/wiki/Camel_case) or all
  /// [snake case](https://en.wikipedia.org/wiki/Snake_case). Don't use a
  /// combination of camel case and snake case. Supported operations: - `AND` -
  /// `=` - `!=` - `>` - `>=` - `<` - `<=` - `:` (has) **Supported Functions:**
  /// - `IN(field, value1, value2, ...)`: returns true if the field matches any
  /// of the values. Example: `IN(display_name, "name1", "name2")` Supported
  /// fields: - `id` - `display_name` - `description` - `membership_status` -
  /// `integration_code` - `access_reason` -
  /// `ingested_user_list_info.upload_key_types`
  ///
  /// [pageSize] - Optional. The maximum number of user lists to return. The
  /// service may return fewer than this value. If unspecified, at most 50 user
  /// lists will be returned. The maximum value is 1000; values above 1000 will
  /// be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListUserLists` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListUserLists` must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUserListsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUserListsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userLists';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUserListsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a UserList.
  ///
  /// Authorization Headers: This method supports the following optional headers
  /// to define how the API authorizes access for the request: *
  /// `login-account`: (Optional) The resource name of the account where the
  /// Google Account of the credentials is a user. If not set, defaults to the
  /// account of the request. Format:
  /// `accountTypes/{loginAccountType}/accounts/{loginAccountId}` *
  /// `linked-account`: (Optional) The resource name of the account with an
  /// established product link to the `login-account`. Format:
  /// `accountTypes/{linkedAccountType}/accounts/{linkedAccountId}`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the user list. Format:
  /// accountTypes/{account_type}/accounts/{account}/userLists/{user_list}
  /// Value must have pattern
  /// `^accountTypes/\[^/\]+/accounts/\[^/\]+/userLists/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to update.
  ///
  /// [validateOnly] - Optional. If true, the request is validated but not
  /// executed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserList> patch(
    UserList request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return UserList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdEventsResource {
  final commons.ApiRequester _requester;

  AdEventsResource(commons.ApiRequester client) : _requester = client;

  /// Uploads a list of AdEvent resources to Google Analytics.
  ///
  /// This feature is only available to accounts on an allowlist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IngestAdEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IngestAdEventsResponse> ingest(
    IngestAdEventsRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/adEvents:ingest';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return IngestAdEventsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AudienceMembersResource {
  final commons.ApiRequester _requester;

  AudienceMembersResource(commons.ApiRequester client) : _requester = client;

  /// Uploads a list of AudienceMember resources to the provided Destination.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IngestAudienceMembersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IngestAudienceMembersResponse> ingest(
    IngestAudienceMembersRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/audienceMembers:ingest';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return IngestAudienceMembersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Removes a list of AudienceMember resources from the provided Destination.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemoveAudienceMembersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemoveAudienceMembersResponse> remove(
    RemoveAudienceMembersRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/audienceMembers:remove';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RemoveAudienceMembersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Removes all audience members from the provided destinations.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemoveAllAudienceMembersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemoveAllAudienceMembersResponse> removeAll(
    RemoveAllAudienceMembersRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/audienceMembers:removeAll';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RemoveAllAudienceMembersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class EventsResource {
  final commons.ApiRequester _requester;

  EventsResource(commons.ApiRequester client) : _requester = client;

  /// Uploads a list of Event resources from the provided Destination.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IngestEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IngestEventsResponse> ingest(
    IngestEventsRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/events:ingest';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return IngestEventsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class RequestStatusResource {
  final commons.ApiRequester _requester;

  RequestStatusResource(commons.ApiRequester client) : _requester = client;

  /// Gets the status of a request given request id.
  ///
  /// Request parameters:
  ///
  /// [requestId] - Required. Required. The request ID of the Data Manager API
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RetrieveRequestStatusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RetrieveRequestStatusResponse> retrieve({
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/requestStatus:retrieve';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RetrieveRequestStatusResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// An ad event.
class AdEvent {
  /// Enum value for ad format.
  /// Possible string values are:
  /// - "AD_FORMAT_UNSPECIFIED" : Unspecified ad format.
  /// - "AD_FORMAT_AR" : AR ad.
  /// - "AD_FORMAT_AUDIO" : Audio ad.
  /// - "AD_FORMAT_BANNER" : Banner ad.
  /// - "AD_FORMAT_BUMPER" : Bumper ad.
  /// - "AD_FORMAT_CAROUSEL" : Carousel ad.
  /// - "AD_FORMAT_COLLECTION" : Collection ad.
  /// - "AD_FORMAT_IMAGE" : Image ad.
  /// - "AD_FORMAT_INTERACTIVE" : Interactive ad.
  /// - "AD_FORMAT_INTERSTITIAL" : Interstitial ad.
  /// - "AD_FORMAT_IN_FEED" : In-feed ad.
  /// - "AD_FORMAT_IN_STREAM" : In-stream ad.
  /// - "AD_FORMAT_IN_STREAM_SKIPPABLE" : In-stream skippable ad.
  /// - "AD_FORMAT_IN_STREAM_NON_SKIPPABLE" : In-stream non-skippable ad.
  /// - "AD_FORMAT_NATIVE" : Native ad.
  /// - "AD_FORMAT_SHORTS" : Shorts ad.
  /// - "AD_FORMAT_STORY" : Story ad.
  /// - "AD_FORMAT_SPONSORED" : Sponsored ad.
  /// - "AD_FORMAT_VIDEO" : Video ad.
  core.String? adFormat;

  /// String value for ad format.
  core.String? adFormatString;

  /// The ID of the associated ad group.
  ///
  /// Optional.
  core.String? adGroupId;

  /// The height of the ad in pixels.
  ///
  /// Optional.
  core.int? adHeight;

  /// The ID of the associated ad within the group.
  ///
  /// Optional.
  core.String? adId;

  /// Enum value for ad placement.
  /// Possible string values are:
  /// - "AD_PLACEMENT_UNSPECIFIED" : Unspecified ad placement.
  /// - "AD_PLACEMENT_DISCOVER" : Discover placement.
  /// - "AD_PLACEMENT_FEED" : Feed placement.
  /// - "AD_PLACEMENT_FOOTER" : Footer placement.
  /// - "AD_PLACEMENT_HEADER" : Header placement.
  /// - "AD_PLACEMENT_HOME" : Home placement.
  /// - "AD_PLACEMENT_IN_CONTENT" : In-content placement.
  /// - "AD_PLACEMENT_PROMOTED" : Promoted placement.
  /// - "AD_PLACEMENT_SEARCH" : Search placement.
  /// - "AD_PLACEMENT_STORY" : Story placement.
  core.String? adPlacement;

  /// String value for ad placement.
  core.String? adPlacementString;

  /// Enum value for ad type.
  /// Possible string values are:
  /// - "AD_TYPE_UNSPECIFIED" : Unspecified ad type.
  /// - "AD_TYPE_DISPLAY" : Display ad.
  /// - "AD_TYPE_TEXT" : Text ad.
  /// - "AD_TYPE_IMAGE" : Image ad.
  /// - "AD_TYPE_RICH_MEDIA" : Rich media ad.
  /// - "AD_TYPE_HTML" : HTML ad.
  /// - "AD_TYPE_AUDIO" : Audio ad.
  /// - "AD_TYPE_VIDEO" : Video ad.
  core.String? adType;

  /// String value for ad type.
  core.String? adTypeString;

  /// The width of the ad in pixels.
  ///
  /// Optional.
  core.int? adWidth;

  /// The ID of the advertiser for the ad event.
  ///
  /// This must match the ID sent in the linking flow.
  ///
  /// Required.
  core.String? advertiserId;

  /// The partner-assumed attribution status for this ad event.
  ///
  /// This acts only as a signal for how the partner assumed attribution played
  /// out, and does not force an end result in final reports.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ATTRIBUTION_HINT_UNSPECIFIED" : Unknown attribution status.
  /// - "ATTRIBUTION_HINT_CONVERTED" : Converted status.
  /// - "ATTRIBUTION_HINT_NOT_CONVERTED" : Not converted status.
  core.String? attributionHint;

  /// The ID of the associated campaign.
  ///
  /// Required.
  core.String? campaignId;

  /// The name of the associated campaign.
  ///
  /// Required.
  core.String? campaignName;

  /// Information gathered about the device being used when the ad event
  /// happened.
  ///
  /// Required.
  DeviceInfo? deviceInfo;

  /// An ID created and managed by the caller that uniquely identifies this
  /// event.
  ///
  /// Required if you want to deduplicate ad events that are included in
  /// multiple requests. Otherwise, this field is optional.
  ///
  /// Optional.
  core.String? eventId;

  /// Enum value for event subtype.
  /// Possible string values are:
  /// - "EVENT_SUBTYPE_UNSPECIFIED" : Unspecified event subtype.
  /// - "EVENT_SUBTYPE_IMPRESSION" : Impression event.
  /// - "EVENT_SUBTYPE_ENGAGED_VIEW" : Engaged view event.
  /// - "EVENT_SUBTYPE_ONSITE_CLICK" : Onsite click event.
  /// - "EVENT_SUBTYPE_OUTBOUND_CLICK" : Outbound click event.
  core.String? eventSubtype;

  /// String value for event subtype.
  core.String? eventSubtypeString;

  /// The type of the event.
  ///
  /// Required.
  /// Possible string values are:
  /// - "EVENT_TYPE_UNSPECIFIED" : Unspecified event type.
  /// - "EVENT_TYPE_VIEW" : View event.
  /// - "EVENT_TYPE_CLICK" : Click event.
  core.String? eventType;

  /// Represents if the row is allowed to be used for measurement purposes, as
  /// governed by applicable privacy laws within regional jurisdiction.
  ///
  /// Optional.
  core.bool? measurementAllowed;

  /// The medium of the ad, akin to the Google Analytics medium.
  ///
  /// Required.
  core.String? medium;

  /// The device ID of the device that the ad was served to.
  ///
  /// Optional.
  core.String? mobileDeviceId;

  /// Enum value for platform.
  /// Possible string values are:
  /// - "PLATFORM_UNSPECIFIED" : Unspecified platform.
  /// - "PLATFORM_IOS" : iOS platform.
  /// - "PLATFORM_ANDROID" : Android platform.
  /// - "PLATFORM_WEB" : Web platform.
  core.String? platform;

  /// String value for platform.
  core.String? platformString;

  /// Enum value for platform type.
  /// Possible string values are:
  /// - "PLATFORM_TYPE_UNSPECIFIED" : Unspecified platform type.
  /// - "PLATFORM_TYPE_MOBILE" : Mobile platform.
  /// - "PLATFORM_TYPE_DESKTOP" : Desktop platform.
  /// - "PLATFORM_TYPE_CTV" : CTV platform.
  /// - "PLATFORM_TYPE_PHONE" : Phone platform.
  /// - "PLATFORM_TYPE_TABLET" : Tablet platform.
  core.String? platformType;

  /// String value for platform type.
  core.String? platformTypeString;

  /// The ISO 3166-2 country plus subdivision.
  ///
  /// Optional.
  core.String? regionCode;

  /// The platform source of the ad, akin to the Google Analytics source.
  ///
  /// Required.
  core.String? source;

  /// Enum value for targeting type.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Unspecified targeting type.
  /// - "TARGETING_TYPE_AUDIENCE" : Audience targeting.
  /// - "TARGETING_TYPE_CONTEXTUAL" : Contextual targeting.
  /// - "TARGETING_TYPE_DEMOGRAPHIC" : Demographic targeting.
  /// - "TARGETING_TYPE_DEVICE" : Device targeting.
  /// - "TARGETING_TYPE_GEO" : Geo targeting.
  /// - "TARGETING_TYPE_INTEREST" : Interest targeting.
  /// - "TARGETING_TYPE_PURCHASE_INTENT" : Purchase intent targeting.
  /// - "TARGETING_TYPE_REMARKETING" : Remarketing targeting.
  core.String? targetingType;

  /// String value for targeting type.
  core.String? targetingTypeString;

  /// The time the event occurred.
  ///
  /// Required.
  core.String? timestamp;

  /// Multiple pieces of user-provided data, representing the user the event is
  /// associated with.
  ///
  /// It is possible to provide multiple instances of the same type of data
  /// (e.g. email address). The more data provided, the more likely a match will
  /// be found.
  ///
  /// Optional.
  UserData? userData;

  /// Details of the viewability of the ad served.
  ///
  /// Required.
  ViewabilityInfo? viewabilityInfo;

  AdEvent({
    this.adFormat,
    this.adFormatString,
    this.adGroupId,
    this.adHeight,
    this.adId,
    this.adPlacement,
    this.adPlacementString,
    this.adType,
    this.adTypeString,
    this.adWidth,
    this.advertiserId,
    this.attributionHint,
    this.campaignId,
    this.campaignName,
    this.deviceInfo,
    this.eventId,
    this.eventSubtype,
    this.eventSubtypeString,
    this.eventType,
    this.measurementAllowed,
    this.medium,
    this.mobileDeviceId,
    this.platform,
    this.platformString,
    this.platformType,
    this.platformTypeString,
    this.regionCode,
    this.source,
    this.targetingType,
    this.targetingTypeString,
    this.timestamp,
    this.userData,
    this.viewabilityInfo,
  });

  AdEvent.fromJson(core.Map json_)
    : this(
        adFormat: json_['adFormat'] as core.String?,
        adFormatString: json_['adFormatString'] as core.String?,
        adGroupId: json_['adGroupId'] as core.String?,
        adHeight: json_['adHeight'] as core.int?,
        adId: json_['adId'] as core.String?,
        adPlacement: json_['adPlacement'] as core.String?,
        adPlacementString: json_['adPlacementString'] as core.String?,
        adType: json_['adType'] as core.String?,
        adTypeString: json_['adTypeString'] as core.String?,
        adWidth: json_['adWidth'] as core.int?,
        advertiserId: json_['advertiserId'] as core.String?,
        attributionHint: json_['attributionHint'] as core.String?,
        campaignId: json_['campaignId'] as core.String?,
        campaignName: json_['campaignName'] as core.String?,
        deviceInfo: json_.containsKey('deviceInfo')
            ? DeviceInfo.fromJson(
                json_['deviceInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        eventId: json_['eventId'] as core.String?,
        eventSubtype: json_['eventSubtype'] as core.String?,
        eventSubtypeString: json_['eventSubtypeString'] as core.String?,
        eventType: json_['eventType'] as core.String?,
        measurementAllowed: json_['measurementAllowed'] as core.bool?,
        medium: json_['medium'] as core.String?,
        mobileDeviceId: json_['mobileDeviceId'] as core.String?,
        platform: json_['platform'] as core.String?,
        platformString: json_['platformString'] as core.String?,
        platformType: json_['platformType'] as core.String?,
        platformTypeString: json_['platformTypeString'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
        source: json_['source'] as core.String?,
        targetingType: json_['targetingType'] as core.String?,
        targetingTypeString: json_['targetingTypeString'] as core.String?,
        timestamp: json_['timestamp'] as core.String?,
        userData: json_.containsKey('userData')
            ? UserData.fromJson(
                json_['userData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        viewabilityInfo: json_.containsKey('viewabilityInfo')
            ? ViewabilityInfo.fromJson(
                json_['viewabilityInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adFormat = this.adFormat;
    final adFormatString = this.adFormatString;
    final adGroupId = this.adGroupId;
    final adHeight = this.adHeight;
    final adId = this.adId;
    final adPlacement = this.adPlacement;
    final adPlacementString = this.adPlacementString;
    final adType = this.adType;
    final adTypeString = this.adTypeString;
    final adWidth = this.adWidth;
    final advertiserId = this.advertiserId;
    final attributionHint = this.attributionHint;
    final campaignId = this.campaignId;
    final campaignName = this.campaignName;
    final deviceInfo = this.deviceInfo;
    final eventId = this.eventId;
    final eventSubtype = this.eventSubtype;
    final eventSubtypeString = this.eventSubtypeString;
    final eventType = this.eventType;
    final measurementAllowed = this.measurementAllowed;
    final medium = this.medium;
    final mobileDeviceId = this.mobileDeviceId;
    final platform = this.platform;
    final platformString = this.platformString;
    final platformType = this.platformType;
    final platformTypeString = this.platformTypeString;
    final regionCode = this.regionCode;
    final source = this.source;
    final targetingType = this.targetingType;
    final targetingTypeString = this.targetingTypeString;
    final timestamp = this.timestamp;
    final userData = this.userData;
    final viewabilityInfo = this.viewabilityInfo;
    return {
      'adFormat': ?adFormat,
      'adFormatString': ?adFormatString,
      'adGroupId': ?adGroupId,
      'adHeight': ?adHeight,
      'adId': ?adId,
      'adPlacement': ?adPlacement,
      'adPlacementString': ?adPlacementString,
      'adType': ?adType,
      'adTypeString': ?adTypeString,
      'adWidth': ?adWidth,
      'advertiserId': ?advertiserId,
      'attributionHint': ?attributionHint,
      'campaignId': ?campaignId,
      'campaignName': ?campaignName,
      'deviceInfo': ?deviceInfo,
      'eventId': ?eventId,
      'eventSubtype': ?eventSubtype,
      'eventSubtypeString': ?eventSubtypeString,
      'eventType': ?eventType,
      'measurementAllowed': ?measurementAllowed,
      'medium': ?medium,
      'mobileDeviceId': ?mobileDeviceId,
      'platform': ?platform,
      'platformString': ?platformString,
      'platformType': ?platformType,
      'platformTypeString': ?platformTypeString,
      'regionCode': ?regionCode,
      'source': ?source,
      'targetingType': ?targetingType,
      'targetingTypeString': ?targetingTypeString,
      'timestamp': ?timestamp,
      'userData': ?userData,
      'viewabilityInfo': ?viewabilityInfo,
    };
  }
}

/// Identifiers and other information used to match the conversion event with
/// other online activity (such as ad clicks).
class AdIdentifiers {
  /// The display click ID associated with this event.
  ///
  /// Optional.
  core.String? dclid;

  /// Any number of encrypted user IDs.
  ///
  /// Optional.
  core.List<EncryptedUserId>? encryptedUserIds;

  /// The click identifier for clicks associated with app events and originating
  /// from iOS devices starting with iOS14.
  ///
  /// Optional.
  core.String? gbraid;

  /// The Google click ID (gclid) associated with this event.
  ///
  /// Optional.
  core.String? gclid;

  /// The impression ID associated with this event.
  ///
  /// Optional.
  core.String? impressionId;

  /// Information gathered about the device being used (if any) at the time of
  /// landing onto the advertiser’s site after interacting with the ad.
  ///
  /// Optional.
  DeviceInfo? landingPageDeviceInfo;

  /// The match ID field used to join this event with a previous event.
  ///
  /// Optional.
  core.String? matchId;

  /// The mobile identifier for advertisers.
  ///
  /// This would be IDFA on iOS, AdID on Android, or other platforms’
  /// identifiers for advertisers.
  ///
  /// Optional.
  core.String? mobileDeviceId;

  /// Session attributes for event attribution and modeling.
  ///
  /// Optional.
  core.String? sessionAttributes;

  /// The click identifier for clicks associated with web events and originating
  /// from iOS devices starting with iOS14.
  ///
  /// Optional.
  core.String? wbraid;

  AdIdentifiers({
    this.dclid,
    this.encryptedUserIds,
    this.gbraid,
    this.gclid,
    this.impressionId,
    this.landingPageDeviceInfo,
    this.matchId,
    this.mobileDeviceId,
    this.sessionAttributes,
    this.wbraid,
  });

  AdIdentifiers.fromJson(core.Map json_)
    : this(
        dclid: json_['dclid'] as core.String?,
        encryptedUserIds: (json_['encryptedUserIds'] as core.List?)
            ?.map(
              (value) => EncryptedUserId.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        gbraid: json_['gbraid'] as core.String?,
        gclid: json_['gclid'] as core.String?,
        impressionId: json_['impressionId'] as core.String?,
        landingPageDeviceInfo: json_.containsKey('landingPageDeviceInfo')
            ? DeviceInfo.fromJson(
                json_['landingPageDeviceInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        matchId: json_['matchId'] as core.String?,
        mobileDeviceId: json_['mobileDeviceId'] as core.String?,
        sessionAttributes: json_['sessionAttributes'] as core.String?,
        wbraid: json_['wbraid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dclid = this.dclid;
    final encryptedUserIds = this.encryptedUserIds;
    final gbraid = this.gbraid;
    final gclid = this.gclid;
    final impressionId = this.impressionId;
    final landingPageDeviceInfo = this.landingPageDeviceInfo;
    final matchId = this.matchId;
    final mobileDeviceId = this.mobileDeviceId;
    final sessionAttributes = this.sessionAttributes;
    final wbraid = this.wbraid;
    return {
      'dclid': ?dclid,
      'encryptedUserIds': ?encryptedUserIds,
      'gbraid': ?gbraid,
      'gclid': ?gclid,
      'impressionId': ?impressionId,
      'landingPageDeviceInfo': ?landingPageDeviceInfo,
      'matchId': ?matchId,
      'mobileDeviceId': ?mobileDeviceId,
      'sessionAttributes': ?sessionAttributes,
      'wbraid': ?wbraid,
    };
  }
}

/// Address information for the user.
class AddressInfo {
  /// The street and number of the user's address.
  ///
  /// Used only for Google Analytics. This field is hashed and possibly
  /// encrypted. Normalize the value before hashing: - Remove symbol characters
  /// - Convert to lowercase - Remove leading and trailing whitespace
  ///
  /// Optional.
  core.String? addressLine;

  /// The administrative area (state/province) of the user's address.
  ///
  /// Used only for Google Analytics. The value should be normalized as such: -
  /// Remove symbol characters - Convert to lowercase - Remove leading and
  /// trailing whitespace
  ///
  /// Optional.
  core.String? administrativeArea;

  /// The city of the user's address.
  ///
  /// Used only for Google Analytics. The value should be normalized as such: -
  /// Remove symbol characters - Convert to lowercase - Remove leading and
  /// trailing whitespace
  ///
  /// Optional.
  core.String? city;

  /// Family (last) name of the user, all lowercase, with no punctuation, no
  /// leading or trailing whitespace, and hashed as SHA-256.
  ///
  /// Required.
  core.String? familyName;

  /// Given (first) name of the user, all lowercase, with no punctuation, no
  /// leading or trailing whitespace, and hashed as SHA-256.
  ///
  /// Required.
  core.String? givenName;

  /// The postal code of the user's address.
  ///
  /// Required.
  core.String? postalCode;

  /// The 2-letter region code in ISO-3166-1 alpha-2 of the user's address.
  ///
  /// Required.
  core.String? regionCode;

  AddressInfo({
    this.addressLine,
    this.administrativeArea,
    this.city,
    this.familyName,
    this.givenName,
    this.postalCode,
    this.regionCode,
  });

  AddressInfo.fromJson(core.Map json_)
    : this(
        addressLine: json_['addressLine'] as core.String?,
        administrativeArea: json_['administrativeArea'] as core.String?,
        city: json_['city'] as core.String?,
        familyName: json_['familyName'] as core.String?,
        givenName: json_['givenName'] as core.String?,
        postalCode: json_['postalCode'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final addressLine = this.addressLine;
    final administrativeArea = this.administrativeArea;
    final city = this.city;
    final familyName = this.familyName;
    final givenName = this.givenName;
    final postalCode = this.postalCode;
    final regionCode = this.regionCode;
    return {
      'addressLine': ?addressLine,
      'administrativeArea': ?administrativeArea,
      'city': ?city,
      'familyName': ?familyName,
      'givenName': ?givenName,
      'postalCode': ?postalCode,
      'regionCode': ?regionCode,
    };
  }
}

/// The audience member to be operated on.
class AudienceMember {
  /// Group of multiple identifier types.
  CompositeData? compositeData;

  /// The consent setting for the user.
  ///
  /// Optional.
  Consent? consent;

  /// Defines which Destination to send the audience member to.
  ///
  /// Optional.
  core.List<core.String>? destinationReferences;

  /// Encrypted Google User IDs.
  GoogleUserIdData? googleUserIdData;

  /// Data identifying the user's mobile devices.
  MobileData? mobileData;

  /// \[Publisher Advertiser Identity Reconciliation (PAIR)
  /// IDs\](//support.google.com/admanager/answer/15067908).
  ///
  /// This feature is only available to data partners.
  PairData? pairData;

  /// Partner-provided identifiers.
  PartnerProvidedIdData? partnerProvidedIdData;

  /// Data related to publisher provided identifiers.
  ///
  /// This feature is only available to data partners.
  PpidData? ppidData;

  /// User-provided data that identifies the user.
  UserData? userData;

  /// Data related to unique identifiers for a user, as defined by the
  /// advertiser.
  UserIdData? userIdData;

  AudienceMember({
    this.compositeData,
    this.consent,
    this.destinationReferences,
    this.googleUserIdData,
    this.mobileData,
    this.pairData,
    this.partnerProvidedIdData,
    this.ppidData,
    this.userData,
    this.userIdData,
  });

  AudienceMember.fromJson(core.Map json_)
    : this(
        compositeData: json_.containsKey('compositeData')
            ? CompositeData.fromJson(
                json_['compositeData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        consent: json_.containsKey('consent')
            ? Consent.fromJson(
                json_['consent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        destinationReferences: (json_['destinationReferences'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        googleUserIdData: json_.containsKey('googleUserIdData')
            ? GoogleUserIdData.fromJson(
                json_['googleUserIdData']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        mobileData: json_.containsKey('mobileData')
            ? MobileData.fromJson(
                json_['mobileData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pairData: json_.containsKey('pairData')
            ? PairData.fromJson(
                json_['pairData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        partnerProvidedIdData: json_.containsKey('partnerProvidedIdData')
            ? PartnerProvidedIdData.fromJson(
                json_['partnerProvidedIdData']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        ppidData: json_.containsKey('ppidData')
            ? PpidData.fromJson(
                json_['ppidData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        userData: json_.containsKey('userData')
            ? UserData.fromJson(
                json_['userData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        userIdData: json_.containsKey('userIdData')
            ? UserIdData.fromJson(
                json_['userIdData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final compositeData = this.compositeData;
    final consent = this.consent;
    final destinationReferences = this.destinationReferences;
    final googleUserIdData = this.googleUserIdData;
    final mobileData = this.mobileData;
    final pairData = this.pairData;
    final partnerProvidedIdData = this.partnerProvidedIdData;
    final ppidData = this.ppidData;
    final userData = this.userData;
    final userIdData = this.userIdData;
    return {
      'compositeData': ?compositeData,
      'consent': ?consent,
      'destinationReferences': ?destinationReferences,
      'googleUserIdData': ?googleUserIdData,
      'mobileData': ?mobileData,
      'pairData': ?pairData,
      'partnerProvidedIdData': ?partnerProvidedIdData,
      'ppidData': ?ppidData,
      'userData': ?userData,
      'userIdData': ?userIdData,
    };
  }
}

/// A data encryption key wrapped by an AWS KMS key.
class AwsWrappedKeyInfo {
  /// The base64 encoded encrypted data encryption key.
  ///
  /// Required.
  core.String? encryptedDek;

  /// The URI of the AWS KMS key used to decrypt the DEK.
  ///
  /// Should be in the format of
  /// `arn:{partition}:kms:{region}:{account_id}:key/{key_id}` or
  /// `aws-kms://arn:{partition}:kms:{region}:{account_id}:key/{key_id}`
  ///
  /// Required.
  core.String? kekUri;

  /// The type of algorithm used to encrypt the data.
  ///
  /// Required.
  /// Possible string values are:
  /// - "KEY_TYPE_UNSPECIFIED" : Unspecified key type. Should never be used.
  /// - "XCHACHA20_POLY1305" : Algorithm XChaCha20-Poly1305
  core.String? keyType;

  /// The Amazon Resource Name of the IAM Role to assume for KMS decryption
  /// access.
  ///
  /// Should be in the format of
  /// `arn:{partition}:iam::{account_id}:role/{role_name}`
  ///
  /// Required.
  core.String? roleArn;

  AwsWrappedKeyInfo({
    this.encryptedDek,
    this.kekUri,
    this.keyType,
    this.roleArn,
  });

  AwsWrappedKeyInfo.fromJson(core.Map json_)
    : this(
        encryptedDek: json_['encryptedDek'] as core.String?,
        kekUri: json_['kekUri'] as core.String?,
        keyType: json_['keyType'] as core.String?,
        roleArn: json_['roleArn'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final encryptedDek = this.encryptedDek;
    final kekUri = this.kekUri;
    final keyType = this.keyType;
    final roleArn = this.roleArn;
    return {
      'encryptedDek': ?encryptedDek,
      'kekUri': ?kekUri,
      'keyType': ?keyType,
      'roleArn': ?roleArn,
    };
  }
}

/// Baseline criteria against which insights are compared.
class Baseline {
  /// The baseline location of the request.
  ///
  /// Baseline location is an OR-list of the requested regions.
  Location? baselineLocation;

  /// If set to true, the service will try to automatically detect the baseline
  /// location for insights.
  core.bool? locationAutoDetectionEnabled;

  Baseline({this.baselineLocation, this.locationAutoDetectionEnabled});

  Baseline.fromJson(core.Map json_)
    : this(
        baselineLocation: json_.containsKey('baselineLocation')
            ? Location.fromJson(
                json_['baselineLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        locationAutoDetectionEnabled:
            json_['locationAutoDetectionEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final baselineLocation = this.baselineLocation;
    final locationAutoDetectionEnabled = this.locationAutoDetectionEnabled;
    return {
      'baselineLocation': ?baselineLocation,
      'locationAutoDetectionEnabled': ?locationAutoDetectionEnabled,
    };
  }
}

/// The cart data associated with the event.
class CartData {
  /// The list of coupon codes that were applied to the cart.
  ///
  /// Cart-level and item-level coupon codes are independent. If the event is
  /// for a Google Analytics destination, only provide a single coupon code.
  /// Google Analytics ignores additional coupon codes.
  ///
  /// Optional.
  core.List<core.String>? couponCodes;

  /// The list of items associated with the event.
  ///
  /// Optional.
  core.List<Item>? items;

  /// The Merchant Center feed label associated with the feed of the items.
  ///
  /// Optional.
  core.String? merchantFeedLabel;

  /// The language code in ISO 639-1 associated with the Merchant Center feed of
  /// the items.where your items are uploaded.
  ///
  /// Optional.
  core.String? merchantFeedLanguageCode;

  /// The Merchant Center ID associated with the items.
  ///
  /// Optional.
  core.String? merchantId;

  /// The sum of all discounts associated with the transaction.
  ///
  /// Optional.
  core.double? transactionDiscount;

  CartData({
    this.couponCodes,
    this.items,
    this.merchantFeedLabel,
    this.merchantFeedLanguageCode,
    this.merchantId,
    this.transactionDiscount,
  });

  CartData.fromJson(core.Map json_)
    : this(
        couponCodes: (json_['couponCodes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        items: (json_['items'] as core.List?)
            ?.map(
              (value) =>
                  Item.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        merchantFeedLabel: json_['merchantFeedLabel'] as core.String?,
        merchantFeedLanguageCode:
            json_['merchantFeedLanguageCode'] as core.String?,
        merchantId: json_['merchantId'] as core.String?,
        transactionDiscount: (json_['transactionDiscount'] as core.num?)
            ?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final couponCodes = this.couponCodes;
    final items = this.items;
    final merchantFeedLabel = this.merchantFeedLabel;
    final merchantFeedLanguageCode = this.merchantFeedLanguageCode;
    final merchantId = this.merchantId;
    final transactionDiscount = this.transactionDiscount;
    return {
      'couponCodes': ?couponCodes,
      'items': ?items,
      'merchantFeedLabel': ?merchantFeedLabel,
      'merchantFeedLanguageCode': ?merchantFeedLanguageCode,
      'merchantId': ?merchantId,
      'transactionDiscount': ?transactionDiscount,
    };
  }
}

/// Composite data holding identifiers and associated data for a user.
///
/// At least one of `user_data` or `ip_data` is required.
class CompositeData {
  /// IP address data representing customer interaction used to build the
  /// audience.
  ///
  /// Optional.
  core.List<IpData>? ipData;

  /// User-provided data that identifies the user.
  ///
  /// Optional.
  UserData? userData;

  CompositeData({this.ipData, this.userData});

  CompositeData.fromJson(core.Map json_)
    : this(
        ipData: (json_['ipData'] as core.List?)
            ?.map(
              (value) =>
                  IpData.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        userData: json_.containsKey('userData')
            ? UserData.fromJson(
                json_['userData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ipData = this.ipData;
    final userData = this.userData;
    return {'ipData': ?ipData, 'userData': ?userData};
  }
}

/// \[Digital Markets Act (DMA)\](//digital-markets-act.ec.europa.eu/index_en)
/// consent settings for the user.
class Consent {
  /// Represents if the user consents to ad personalization.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CONSENT_STATUS_UNSPECIFIED" : Not specified.
  /// - "CONSENT_GRANTED" : Granted.
  /// - "CONSENT_DENIED" : Denied.
  core.String? adPersonalization;

  /// Represents if the user consents to ad user data.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CONSENT_STATUS_UNSPECIFIED" : Not specified.
  /// - "CONSENT_GRANTED" : Granted.
  /// - "CONSENT_DENIED" : Denied.
  core.String? adUserData;

  Consent({this.adPersonalization, this.adUserData});

  Consent.fromJson(core.Map json_)
    : this(
        adPersonalization: json_['adPersonalization'] as core.String?,
        adUserData: json_['adUserData'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adPersonalization = this.adPersonalization;
    final adUserData = this.adUserData;
    return {'adPersonalization': ?adPersonalization, 'adUserData': ?adUserData};
  }
}

/// Additional information when `CONTACT_ID` is one of the `upload_key_types`.
class ContactIdInfo {
  /// Source of the upload data
  ///
  /// Optional. Immutable.
  /// Possible string values are:
  /// - "DATA_SOURCE_TYPE_UNSPECIFIED" : Not specified.
  /// - "DATA_SOURCE_TYPE_FIRST_PARTY" : The uploaded data is first-party data.
  /// - "DATA_SOURCE_TYPE_THIRD_PARTY_CREDIT_BUREAU" : The uploaded data is from
  /// a third-party credit bureau.
  /// - "DATA_SOURCE_TYPE_THIRD_PARTY_VOTER_FILE" : The uploaded data is from a
  /// third-party voter file.
  /// - "DATA_SOURCE_TYPE_THIRD_PARTY_PARTNER_DATA" : The uploaded data is third
  /// party partner data.
  core.String? dataSourceType;

  /// Match rate for customer match user lists.
  ///
  /// Output only.
  core.int? matchRatePercentage;

  ContactIdInfo({this.dataSourceType, this.matchRatePercentage});

  ContactIdInfo.fromJson(core.Map json_)
    : this(
        dataSourceType: json_['dataSourceType'] as core.String?,
        matchRatePercentage: json_['matchRatePercentage'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataSourceType = this.dataSourceType;
    final matchRatePercentage = this.matchRatePercentage;
    return {
      'dataSourceType': ?dataSourceType,
      'matchRatePercentage': ?matchRatePercentage,
    };
  }
}

/// Information about the coordinator key.
class CoordinatorKeyInfo {
  /// The ID of the chosen coordinator key.
  ///
  /// Required.
  core.String? keyId;

  CoordinatorKeyInfo({this.keyId});

  CoordinatorKeyInfo.fromJson(core.Map json_)
    : this(keyId: json_['keyId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final keyId = this.keyId;
    return {'keyId': ?keyId};
  }
}

/// Custom variable for ads conversions.
typedef CustomVariable = $CustomVariable;

/// The count for a specific data type.
class DataTypeCount {
  /// The count for this data type.
  core.String? count;

  /// The type of data.
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : The data type is unspecified.
  /// - "EMAIL" : The data is an email address.
  /// - "PHONE_NUMBER" : The data is a phone number.
  /// - "ADDRESS" : The data is a physical address.
  /// - "IP_ADDRESS" : The data is an IP address.
  core.String? type;

  DataTypeCount({this.count, this.type});

  DataTypeCount.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final count = this.count;
    final type = this.type;
    return {'count': ?count, 'type': ?type};
  }
}

/// The Google product you're sending data to.
///
/// For example, a Google Ads account.
class Destination {
  /// An account that the calling user's `login_account` has access to, through
  /// an established account link.
  ///
  /// For example, a data partner's `login_account` might have access to a
  /// client's `linked_account`. The partner might use this field to send data
  /// from the `linked_account` to another `operating_account`.
  ///
  /// Optional.
  ProductAccount? linkedAccount;

  /// The account used to make this API call.
  ///
  /// To add or remove data from the `operating_account`, this `login_account`
  /// must have write access to the `operating_account`. For example, a manager
  /// account of the `operating_account`, or an account with an established link
  /// to the `operating_account`.
  ///
  /// Optional.
  ProductAccount? loginAccount;

  /// The account to send the data to or remove the data from.
  ///
  /// Required.
  ProductAccount? operatingAccount;

  /// The object within the product account to ingest into.
  ///
  /// For example, a Google Ads audience ID, a Display & Video 360 audience ID
  /// or a Google Ads conversion action ID.
  ///
  /// Required.
  core.String? productDestinationId;

  /// ID for this `Destination` resource, unique within the request.
  ///
  /// Use to reference this `Destination` in the IngestEventsRequest and
  /// IngestAudienceMembersRequest.
  ///
  /// Optional.
  core.String? reference;

  Destination({
    this.linkedAccount,
    this.loginAccount,
    this.operatingAccount,
    this.productDestinationId,
    this.reference,
  });

  Destination.fromJson(core.Map json_)
    : this(
        linkedAccount: json_.containsKey('linkedAccount')
            ? ProductAccount.fromJson(
                json_['linkedAccount'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        loginAccount: json_.containsKey('loginAccount')
            ? ProductAccount.fromJson(
                json_['loginAccount'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        operatingAccount: json_.containsKey('operatingAccount')
            ? ProductAccount.fromJson(
                json_['operatingAccount']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        productDestinationId: json_['productDestinationId'] as core.String?,
        reference: json_['reference'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final linkedAccount = this.linkedAccount;
    final loginAccount = this.loginAccount;
    final operatingAccount = this.operatingAccount;
    final productDestinationId = this.productDestinationId;
    final reference = this.reference;
    return {
      'linkedAccount': ?linkedAccount,
      'loginAccount': ?loginAccount,
      'operatingAccount': ?operatingAccount,
      'productDestinationId': ?productDestinationId,
      'reference': ?reference,
    };
  }
}

/// Information about the device being used (if any) when the event happened.
class DeviceInfo {
  /// The brand of the device.
  ///
  /// Optional.
  core.String? brand;

  /// The brand or type of the browser.
  ///
  /// Optional.
  core.String? browser;

  /// The version of the browser.
  ///
  /// Optional.
  core.String? browserVersion;

  /// The category of device.
  ///
  /// For example, “desktop”, “tablet”, “mobile”, “smart TV”.
  ///
  /// Optional.
  core.String? category;

  /// The IP address of the device for the given context.
  ///
  /// Required when used in an AdEvent.
  ///
  /// Optional.
  core.String? ipAddress;

  /// The language the device uses in ISO 639-1 format.
  ///
  /// Optional.
  core.String? languageCode;

  /// The model of the device.
  ///
  /// Optional.
  core.String? model;

  /// The operating system or platform of the device.
  ///
  /// Optional.
  core.String? operatingSystem;

  /// The version of the operating system or platform.
  ///
  /// Optional.
  core.String? operatingSystemVersion;

  /// The height of the screen in pixels.
  ///
  /// Optional.
  core.int? screenHeight;

  /// The width of the screen in pixels.
  ///
  /// Optional.
  core.int? screenWidth;

  /// The user-agent string of the device for the given context.
  ///
  /// Optional.
  core.String? userAgent;

  DeviceInfo({
    this.brand,
    this.browser,
    this.browserVersion,
    this.category,
    this.ipAddress,
    this.languageCode,
    this.model,
    this.operatingSystem,
    this.operatingSystemVersion,
    this.screenHeight,
    this.screenWidth,
    this.userAgent,
  });

  DeviceInfo.fromJson(core.Map json_)
    : this(
        brand: json_['brand'] as core.String?,
        browser: json_['browser'] as core.String?,
        browserVersion: json_['browserVersion'] as core.String?,
        category: json_['category'] as core.String?,
        ipAddress: json_['ipAddress'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        model: json_['model'] as core.String?,
        operatingSystem: json_['operatingSystem'] as core.String?,
        operatingSystemVersion: json_['operatingSystemVersion'] as core.String?,
        screenHeight: json_['screenHeight'] as core.int?,
        screenWidth: json_['screenWidth'] as core.int?,
        userAgent: json_['userAgent'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final brand = this.brand;
    final browser = this.browser;
    final browserVersion = this.browserVersion;
    final category = this.category;
    final ipAddress = this.ipAddress;
    final languageCode = this.languageCode;
    final model = this.model;
    final operatingSystem = this.operatingSystem;
    final operatingSystemVersion = this.operatingSystemVersion;
    final screenHeight = this.screenHeight;
    final screenWidth = this.screenWidth;
    final userAgent = this.userAgent;
    return {
      'brand': ?brand,
      'browser': ?browser,
      'browserVersion': ?browserVersion,
      'category': ?category,
      'ipAddress': ?ipAddress,
      'languageCode': ?languageCode,
      'model': ?model,
      'operatingSystem': ?operatingSystem,
      'operatingSystemVersion': ?operatingSystemVersion,
      'screenHeight': ?screenHeight,
      'screenWidth': ?screenWidth,
      'userAgent': ?userAgent,
    };
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A user identifier issued to be used for attribution.
///
/// All fields are required if this is used.
class EncryptedUserId {
  /// The alphanumeric encrypted id.
  ///
  /// Required.
  core.String? encryptedId;

  /// The encryption entity ID.
  ///
  /// This should match the encryption configuration for ad serving or Data
  /// Transfer.
  ///
  /// Required.
  core.String? entityId;

  /// The encryption entity type.
  ///
  /// This should match the encryption configuration for ad serving or Data
  /// Transfer.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ENCRYPTION_ENTITY_TYPE_UNSPECIFIED" : Unspecified encryption entity
  /// type.
  /// - "CAMPAIGN_MANAGER_ACCOUNT" : Campaign Manager 360 account.
  /// - "CAMPAIGN_MANAGER_ADVERTISER" : Campaign Manager 360 advertiser.
  /// - "DISPLAY_VIDEO_PARTNER" : Display & Video 360 partner.
  /// - "DISPLAY_VIDEO_ADVERTISER" : Display & Video 360 advertiser.
  /// - "GOOGLE_ADS_CUSTOMER" : Google Ads customer.
  /// - "GOOGLE_AD_MANAGER_NETWORK_CODE" : Google Ad Manager network code.
  core.String? entityType;

  /// Describes whether the encrypted cookie was received from ad serving (the
  /// %m macro) or from Data Transfer.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ENCRYPTION_SOURCE_UNSPECIFIED" : Unspecified encryption source.
  /// - "AD_SERVING" : Ad serving encryption source.
  /// - "DATA_TRANSFER" : Data transfer encryption source.
  core.String? source;

  EncryptedUserId({
    this.encryptedId,
    this.entityId,
    this.entityType,
    this.source,
  });

  EncryptedUserId.fromJson(core.Map json_)
    : this(
        encryptedId: json_['encryptedId'] as core.String?,
        entityId: json_['entityId'] as core.String?,
        entityType: json_['entityType'] as core.String?,
        source: json_['source'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final encryptedId = this.encryptedId;
    final entityId = this.entityId;
    final entityType = this.entityType;
    final source = this.source;
    return {
      'encryptedId': ?encryptedId,
      'entityId': ?entityId,
      'entityType': ?entityType,
      'source': ?source,
    };
  }
}

/// Encryption information for the data being ingested.
class EncryptionInfo {
  /// Amazon Web Services wrapped key information.
  AwsWrappedKeyInfo? awsWrappedKeyInfo;

  /// Key information for the chosen coordinator key.
  ///
  /// This is not supported for the IngestEvents, IngestAudienceMembers, and
  /// RemoveAudienceMembers methods.
  CoordinatorKeyInfo? coordinatorKeyInfo;

  /// Google Cloud Platform wrapped key information.
  GcpWrappedKeyInfo? gcpWrappedKeyInfo;

  EncryptionInfo({
    this.awsWrappedKeyInfo,
    this.coordinatorKeyInfo,
    this.gcpWrappedKeyInfo,
  });

  EncryptionInfo.fromJson(core.Map json_)
    : this(
        awsWrappedKeyInfo: json_.containsKey('awsWrappedKeyInfo')
            ? AwsWrappedKeyInfo.fromJson(
                json_['awsWrappedKeyInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        coordinatorKeyInfo: json_.containsKey('coordinatorKeyInfo')
            ? CoordinatorKeyInfo.fromJson(
                json_['coordinatorKeyInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        gcpWrappedKeyInfo: json_.containsKey('gcpWrappedKeyInfo')
            ? GcpWrappedKeyInfo.fromJson(
                json_['gcpWrappedKeyInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final awsWrappedKeyInfo = this.awsWrappedKeyInfo;
    final coordinatorKeyInfo = this.coordinatorKeyInfo;
    final gcpWrappedKeyInfo = this.gcpWrappedKeyInfo;
    return {
      'awsWrappedKeyInfo': ?awsWrappedKeyInfo,
      'coordinatorKeyInfo': ?coordinatorKeyInfo,
      'gcpWrappedKeyInfo': ?gcpWrappedKeyInfo,
    };
  }
}

/// The error count for a given error reason.
class ErrorCount {
  /// The error reason of the failed records.
  /// Possible string values are:
  /// - "PROCESSING_ERROR_REASON_UNSPECIFIED" : The processing error reason is
  /// unknown.
  /// - "PROCESSING_ERROR_REASON_INVALID_CUSTOM_VARIABLE" : The custom variable
  /// is invalid.
  /// - "PROCESSING_ERROR_REASON_CUSTOM_VARIABLE_NOT_ENABLED" : The status of
  /// the custom variable is not enabled.
  /// - "PROCESSING_ERROR_REASON_EVENT_TOO_OLD" : The conversion is older than
  /// max supported age.
  /// - "PROCESSING_ERROR_REASON_DENIED_CONSENT" : The ad user data is denied,
  /// either by the user or in the advertiser default settings.
  /// - "PROCESSING_ERROR_REASON_NO_CONSENT" : Advertiser did not give 3P
  /// consent for the Ads core platform services.
  /// - "PROCESSING_ERROR_REASON_UNKNOWN_CONSENT" : The overall consent
  /// (determined from row level consent, request level consent, and account
  /// settings) could not be determined for this user
  /// - "PROCESSING_ERROR_REASON_DUPLICATE_GCLID" : A conversion with the same
  /// GCLID and conversion time already exists in the system.
  /// - "PROCESSING_ERROR_REASON_DUPLICATE_TRANSACTION_ID" : A conversion with
  /// the same order id and conversion action combination was already uploaded.
  /// - "PROCESSING_ERROR_REASON_INVALID_GBRAID" : The gbraid could not be
  /// decoded.
  /// - "PROCESSING_ERROR_REASON_INVALID_GCLID" : The google click ID could not
  /// be decoded.
  /// - "PROCESSING_ERROR_REASON_INVALID_MERCHANT_ID" : Merchant id contains
  /// non-digit characters.
  /// - "PROCESSING_ERROR_REASON_INVALID_WBRAID" : The wbraid could not be
  /// decoded.
  /// - "PROCESSING_ERROR_REASON_INTERNAL_ERROR" : Internal error.
  /// -
  /// "PROCESSING_ERROR_REASON_DESTINATION_ACCOUNT_ENHANCED_CONVERSIONS_TERMS_NOT_SIGNED"
  /// : Enhanced conversions terms are not signed in the destination account.
  /// - "PROCESSING_ERROR_REASON_INVALID_EVENT" : The event is invalid.
  /// - "PROCESSING_ERROR_REASON_INSUFFICIENT_MATCHED_TRANSACTIONS" : The
  /// matched transactions are less than the minimum threshold.
  /// - "PROCESSING_ERROR_REASON_INSUFFICIENT_TRANSACTIONS" : The transactions
  /// are less than the minimum threshold.
  /// - "PROCESSING_ERROR_REASON_INVALID_FORMAT" : The event has format error.
  /// - "PROCESSING_ERROR_REASON_DECRYPTION_ERROR" : The event has a decryption
  /// error.
  /// - "PROCESSING_ERROR_REASON_DEK_DECRYPTION_ERROR" : The DEK failed to be
  /// decrypted.
  /// - "PROCESSING_ERROR_REASON_INVALID_WIP" : The WIP is formatted incorrectly
  /// or the WIP does not exist.
  /// - "PROCESSING_ERROR_REASON_INVALID_KEK" : The KEK cannot decrypt data
  /// because it is the wrong KEK, or it does not exist.
  /// - "PROCESSING_ERROR_REASON_WIP_AUTH_FAILED" : The WIP could not be used
  /// because it was rejected by its attestation condition.
  /// - "PROCESSING_ERROR_REASON_KEK_PERMISSION_DENIED" : The system did not
  /// have the permissions needed to access the KEK.
  /// - "PROCESSING_ERROR_REASON_AWS_AUTH_FAILED" : The system failed to
  /// authenticate with AWS.
  /// - "PROCESSING_ERROR_REASON_USER_IDENTIFIER_DECRYPTION_ERROR" : Failed to
  /// decrypt the UserIdentifier data using the DEK.
  /// - "PROCESSING_ERROR_OPERATING_ACCOUNT_MISMATCH_FOR_AD_IDENTIFIER" : The
  /// user attempted to ingest events with an ad identifier that isn't from the
  /// operating account's ads.
  /// -
  /// "PROCESSING_ERROR_REASON_ONE_PER_CLICK_CONVERSION_ACTION_NOT_PERMITTED_WITH_BRAID"
  /// : One-per-click conversion actions cannot be used with BRAIDs.
  /// - "PROCESSING_ERROR_REASON_MATCH_ID_NOT_FOUND" : The match ID can not be
  /// found.
  /// - "PROCESSING_ERROR_REASON_USER_ID_NOT_FOUND_FOR_MATCH_ID" : The user ID
  /// can not be found for the match ID.
  /// - "PROCESSING_ERROR_REASON_USER_ID_NOT_FOUND_FOR_GCLID" : The user ID can
  /// not be found for the GCLID.
  /// - "PROCESSING_ERROR_REASON_USER_ID_NOT_FOUND_FOR_DCLID" : The user ID can
  /// not be found for the DCLID.
  /// - "PROCESSING_ERROR_REASON_INVALID_AD_IDENTIFIERS" : There are ad
  /// identifiers that are invalid.
  /// - "PROCESSING_ERROR_REASON_INVALID_MOBILE_ID_FORMAT" : The mobile ID
  /// format is invalid.
  /// - "PROCESSING_ERROR_REASON_ORIGINAL_CONVERSIONS_NOT_FOUND" : The original
  /// conversions can't be found.
  /// - "PROCESSING_ERROR_REASON_EVENT_ID_DECODE_ERROR" : The event ID (dclid or
  /// impression ID) cannot be decoded.
  /// - "PROCESSING_ERROR_REASON_USER_ID_NOT_FOUND_FOR_IMPRESSION_ID" : The user
  /// ID cannot be found for the given impression ID.
  /// - "PROCESSING_ERROR_REASON_USER_ID_NOT_FOUND" : The user ID cannot be
  /// found.
  /// - "PROCESSING_ERROR_REASON_CONVERSION_PRECEDES_CLICK" : The event
  /// timestamp on the event was earlier than the associated click.
  /// - "PROCESSING_ERROR_REASON_TOO_RECENT_CLICK" : The click occurred too
  /// recently.
  /// - "PROCESSING_ERROR_REASON_INVALID_CLICK" : The event can't be attributed
  /// to a click (GCLID). This may be because the click did not come from a
  /// Google Ads campaign, for example.
  /// - "PROCESSING_ERROR_REASON_INVALID_OPERATING_ACCOUNT_FOR_CLICK" : The
  /// click from the event isn't associated with the `operating_account` of the
  /// destination.
  /// - "PROCESSING_ERROR_REASON_CLICK_NOT_FOUND" : A corresponding click can't
  /// be found that matches the provided attributes.
  /// - "PROCESSING_ERROR_REASON_EXTERNAL_ATTRIBUTION_DATA_MISSING" : External
  /// attribution data is missing. Sending events to a destination for an
  /// external attribution conversion action isn't supported.
  core.String? reason;

  /// The count of records that failed to upload for a given reason.
  core.String? recordCount;

  ErrorCount({this.reason, this.recordCount});

  ErrorCount.fromJson(core.Map json_)
    : this(
        reason: json_['reason'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final reason = this.reason;
    final recordCount = this.recordCount;
    return {'reason': ?reason, 'recordCount': ?recordCount};
  }
}

/// Error counts for each type of error.
class ErrorInfo {
  /// A list of errors and counts per error reason.
  ///
  /// May not be populated in all cases.
  core.List<ErrorCount>? errorCounts;

  ErrorInfo({this.errorCounts});

  ErrorInfo.fromJson(core.Map json_)
    : this(
        errorCounts: (json_['errorCounts'] as core.List?)
            ?.map(
              (value) => ErrorCount.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final errorCounts = this.errorCounts;
    return {'errorCounts': ?errorCounts};
  }
}

/// An event representing a user interaction with an advertiser's website or
/// app.
class Event {
  /// Identifiers and other information used to match the conversion event with
  /// other online activity (such as ad clicks).
  ///
  /// Optional.
  AdIdentifiers? adIdentifiers;

  /// A bucket of any
  /// [event parameters](https://developers.google.com/analytics/devguides/collection/protocol/ga4/reference/events)
  /// to be included within the event that were not already specified using
  /// other structured fields.
  ///
  /// Optional.
  core.List<EventParameter>? additionalEventParameters;

  /// A unique identifier for the user instance of an app client for this GA4
  /// app stream.
  ///
  /// Optional.
  core.String? appInstanceId;

  /// Information about the transaction and items associated with the event.
  ///
  /// Optional.
  CartData? cartData;

  /// A unique identifier for the user instance of a web client for this GA4 web
  /// stream.
  ///
  /// Optional.
  core.String? clientId;

  /// Information about whether the associated user has provided different types
  /// of consent.
  ///
  /// Optional.
  Consent? consent;

  /// The conversion quantity associated with the event, for counting-based
  /// conversions.
  ///
  /// Optional.
  core.double? conversionCount;

  /// The conversion value associated with the event, for value-based
  /// conversions.
  ///
  /// Optional.
  core.double? conversionValue;

  /// The currency code associated with all monetary values within this event.
  ///
  /// Optional.
  core.String? currency;

  /// Additional key/value pair information to send to the conversion containers
  /// (conversion action or FL activity).
  ///
  /// Optional.
  core.List<CustomVariable>? customVariables;

  /// Reference string used to determine the destination.
  ///
  /// If empty, the event will be sent to all destinations in the request.
  ///
  /// Optional.
  core.List<core.String>? destinationReferences;

  /// Information gathered about the device being used (if any) when the event
  /// happened.
  ///
  /// Optional.
  DeviceInfo? eventDeviceInfo;

  /// Information gathered about the location of the user when this event
  /// occurred.
  ///
  /// Optional.
  EventLocation? eventLocation;

  /// The name of the event.
  ///
  /// Required for GA4 events.
  ///
  /// Optional.
  core.String? eventName;

  /// Signal for where the event happened (web, app, in-store, etc.).
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EVENT_SOURCE_UNSPECIFIED" : Unspecified EventSource. Should never be
  /// used.
  /// - "WEB" : The event was generated from a web browser.
  /// - "APP" : The event was generated from an app.
  /// - "IN_STORE" : The event was generated from an in-store transaction.
  /// - "PHONE" : The event was generated from a phone call.
  /// - "MESSAGE" : The event was generated from a message.
  /// - "OTHER" : The event was generated from other sources.
  core.String? eventSource;

  /// The time the event occurred.
  ///
  /// Required.
  core.String? eventTimestamp;

  /// A list of key/value pairs for experimental fields that may eventually be
  /// promoted to be part of the API.
  ///
  /// Optional.
  core.List<ExperimentalField>? experimentalFields;

  /// The last time the event was updated.
  ///
  /// Optional.
  core.String? lastUpdatedTimestamp;

  /// The same type of data provided in user_data, but explicitly flagged as
  /// being provided as owned by a third-party and not first-party advertiser
  /// data.
  ///
  /// Optional.
  UserData? thirdPartyUserData;

  /// The unique identifier for this event.
  ///
  /// Required for events sent as an additional data source for tag conversions.
  ///
  /// Optional.
  core.String? transactionId;

  /// Pieces of user provided data, representing the user the event is
  /// associated with.
  ///
  /// Optional.
  UserData? userData;

  /// A unique identifier for a user, as defined by the advertiser.
  ///
  /// Optional.
  core.String? userId;

  /// Advertiser-assessed information about the user at the time that the event
  /// happened.
  ///
  /// Optional.
  UserProperties? userProperties;

  Event({
    this.adIdentifiers,
    this.additionalEventParameters,
    this.appInstanceId,
    this.cartData,
    this.clientId,
    this.consent,
    this.conversionCount,
    this.conversionValue,
    this.currency,
    this.customVariables,
    this.destinationReferences,
    this.eventDeviceInfo,
    this.eventLocation,
    this.eventName,
    this.eventSource,
    this.eventTimestamp,
    this.experimentalFields,
    this.lastUpdatedTimestamp,
    this.thirdPartyUserData,
    this.transactionId,
    this.userData,
    this.userId,
    this.userProperties,
  });

  Event.fromJson(core.Map json_)
    : this(
        adIdentifiers: json_.containsKey('adIdentifiers')
            ? AdIdentifiers.fromJson(
                json_['adIdentifiers'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        additionalEventParameters:
            (json_['additionalEventParameters'] as core.List?)
                ?.map(
                  (value) => EventParameter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        appInstanceId: json_['appInstanceId'] as core.String?,
        cartData: json_.containsKey('cartData')
            ? CartData.fromJson(
                json_['cartData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        clientId: json_['clientId'] as core.String?,
        consent: json_.containsKey('consent')
            ? Consent.fromJson(
                json_['consent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        conversionCount: (json_['conversionCount'] as core.num?)?.toDouble(),
        conversionValue: (json_['conversionValue'] as core.num?)?.toDouble(),
        currency: json_['currency'] as core.String?,
        customVariables: (json_['customVariables'] as core.List?)
            ?.map(
              (value) => CustomVariable.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        destinationReferences: (json_['destinationReferences'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        eventDeviceInfo: json_.containsKey('eventDeviceInfo')
            ? DeviceInfo.fromJson(
                json_['eventDeviceInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        eventLocation: json_.containsKey('eventLocation')
            ? EventLocation.fromJson(
                json_['eventLocation'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        eventName: json_['eventName'] as core.String?,
        eventSource: json_['eventSource'] as core.String?,
        eventTimestamp: json_['eventTimestamp'] as core.String?,
        experimentalFields: (json_['experimentalFields'] as core.List?)
            ?.map(
              (value) => ExperimentalField.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        lastUpdatedTimestamp: json_['lastUpdatedTimestamp'] as core.String?,
        thirdPartyUserData: json_.containsKey('thirdPartyUserData')
            ? UserData.fromJson(
                json_['thirdPartyUserData']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        transactionId: json_['transactionId'] as core.String?,
        userData: json_.containsKey('userData')
            ? UserData.fromJson(
                json_['userData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        userId: json_['userId'] as core.String?,
        userProperties: json_.containsKey('userProperties')
            ? UserProperties.fromJson(
                json_['userProperties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adIdentifiers = this.adIdentifiers;
    final additionalEventParameters = this.additionalEventParameters;
    final appInstanceId = this.appInstanceId;
    final cartData = this.cartData;
    final clientId = this.clientId;
    final consent = this.consent;
    final conversionCount = this.conversionCount;
    final conversionValue = this.conversionValue;
    final currency = this.currency;
    final customVariables = this.customVariables;
    final destinationReferences = this.destinationReferences;
    final eventDeviceInfo = this.eventDeviceInfo;
    final eventLocation = this.eventLocation;
    final eventName = this.eventName;
    final eventSource = this.eventSource;
    final eventTimestamp = this.eventTimestamp;
    final experimentalFields = this.experimentalFields;
    final lastUpdatedTimestamp = this.lastUpdatedTimestamp;
    final thirdPartyUserData = this.thirdPartyUserData;
    final transactionId = this.transactionId;
    final userData = this.userData;
    final userId = this.userId;
    final userProperties = this.userProperties;
    return {
      'adIdentifiers': ?adIdentifiers,
      'additionalEventParameters': ?additionalEventParameters,
      'appInstanceId': ?appInstanceId,
      'cartData': ?cartData,
      'clientId': ?clientId,
      'consent': ?consent,
      'conversionCount': ?conversionCount,
      'conversionValue': ?conversionValue,
      'currency': ?currency,
      'customVariables': ?customVariables,
      'destinationReferences': ?destinationReferences,
      'eventDeviceInfo': ?eventDeviceInfo,
      'eventLocation': ?eventLocation,
      'eventName': ?eventName,
      'eventSource': ?eventSource,
      'eventTimestamp': ?eventTimestamp,
      'experimentalFields': ?experimentalFields,
      'lastUpdatedTimestamp': ?lastUpdatedTimestamp,
      'thirdPartyUserData': ?thirdPartyUserData,
      'transactionId': ?transactionId,
      'userData': ?userData,
      'userId': ?userId,
      'userProperties': ?userProperties,
    };
  }
}

/// The location where the event occurred.
class EventLocation {
  /// The name of the city where the event occurred.
  ///
  /// Optional.
  core.String? city;

  /// The continent code in UN M49 format where the event occurred.
  ///
  /// Optional.
  core.String? continentCode;

  /// The 2-letter CLDR region code of the user's address.
  ///
  /// Optional.
  core.String? regionCode;

  /// Required for Store Sales.
  ///
  /// The identifier to represent a physical store where the event happened.
  ///
  /// Optional.
  core.String? storeId;

  /// The subcontinent code in UN M49 format where the event occurred.
  ///
  /// Optional.
  core.String? subcontinentCode;

  /// The ISO 3166-2 subdivision code where the event occurred.
  ///
  /// Optional.
  core.String? subdivisionCode;

  EventLocation({
    this.city,
    this.continentCode,
    this.regionCode,
    this.storeId,
    this.subcontinentCode,
    this.subdivisionCode,
  });

  EventLocation.fromJson(core.Map json_)
    : this(
        city: json_['city'] as core.String?,
        continentCode: json_['continentCode'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
        storeId: json_['storeId'] as core.String?,
        subcontinentCode: json_['subcontinentCode'] as core.String?,
        subdivisionCode: json_['subdivisionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final city = this.city;
    final continentCode = this.continentCode;
    final regionCode = this.regionCode;
    final storeId = this.storeId;
    final subcontinentCode = this.subcontinentCode;
    final subdivisionCode = this.subdivisionCode;
    return {
      'city': ?city,
      'continentCode': ?continentCode,
      'regionCode': ?regionCode,
      'storeId': ?storeId,
      'subcontinentCode': ?subcontinentCode,
      'subdivisionCode': ?subdivisionCode,
    };
  }
}

/// Event parameter for GA4 events.
typedef EventParameter = $Parameter;

/// Experimental field representing unofficial fields.
class ExperimentalField {
  /// The name of the field to use.
  ///
  /// Optional.
  core.String? field;

  /// The value the field to set.
  ///
  /// Optional.
  core.String? value;

  ExperimentalField({this.field, this.value});

  ExperimentalField.fromJson(core.Map json_)
    : this(
        field: json_['field'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final field = this.field;
    final value = this.value;
    return {'field': ?field, 'value': ?value};
  }
}

/// Detailed row-level warning with field paths.
class FieldWarning {
  /// The detailed warning message describing the issue.
  core.String? description;

  /// The field path that triggered the warning.
  ///
  /// Uses the same format as google.rpc.BadRequest.FieldViolation.field.
  core.String? field;

  /// The warning reason.
  /// Possible string values are:
  /// - "WARNING_REASON_UNSPECIFIED" : Unspecified warning reason.
  /// - "WARNING_REASON_CUSTOM_VARIABLE_NOT_ENABLED" : A custom variable in
  /// `custom_variables` is not enabled in the account.
  /// - "WARNING_REASON_CUSTOM_VARIABLE_NOT_PREDEFINED" : A custom variable
  /// value in `custom_variables` is not among the predefined allowed values
  /// configured for the custom variable on the destination account.
  /// - "WARNING_REASON_CART_DATA_NOT_SUPPORTED_WITH_GBRAID_OR_WBRAID" : The
  /// `cart_data` is not supported with `gbraid` or `wbraid`.
  /// - "WARNING_REASON_CART_DATA_ITEM_MERCHANT_PRODUCT_ID_MISSING" : The
  /// `merchant_product_id` is missing in the cart item.
  /// - "WARNING_REASON_CART_DATA_ITEM_UNIT_PRICE_MISSING" : The `unit_price` is
  /// missing in the cart item.
  /// - "WARNING_REASON_GENERIC" : Generic warning reason for issues that do not
  /// fit into other specific categories.
  /// - "WARNING_REASON_INVALID_CLIENT_ID" : The `client_id` is invalid.
  /// - "WARNING_REASON_INVALID_SUBDIVISION_CODE" : The `subdivision_code` is
  /// invalid.
  /// - "WARNING_REASON_INVALID_REGION_CODE" : The `region_code` is invalid.
  /// - "WARNING_REASON_INVALID_SUBCONTINENT_CODE" : The `subcontinent_code` is
  /// invalid.
  /// - "WARNING_REASON_INVALID_CONTINENT_CODE" : The `continent_code` is
  /// invalid.
  /// - "WARNING_REASON_INVALID_DEVICE_CATEGORY" : The device `category` is
  /// invalid.
  /// - "WARNING_REASON_INVALID_DEVICE_SCREEN_RESOLUTION" : The device
  /// `screen_height` or `screen_width` is invalid.
  /// - "WARNING_REASON_INVALID_MERCHANT_ID" : The `merchant_id` is invalid.
  core.String? reason;

  FieldWarning({this.description, this.field, this.reason});

  FieldWarning.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        field: json_['field'] as core.String?,
        reason: json_['reason'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final field = this.field;
    final reason = this.reason;
    return {'description': ?description, 'field': ?field, 'reason': ?reason};
  }
}

/// Information about the Google Cloud Platform wrapped key.
class GcpWrappedKeyInfo {
  /// The base64 encoded encrypted data encryption key.
  ///
  /// Required.
  core.String? encryptedDek;

  /// Google Cloud Platform \[Cloud Key Management Service resource
  /// ID\](//cloud.google.com/kms/docs/getting-resource-ids).
  ///
  /// Should be in the format of
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{key}`
  /// or
  /// `gcp-kms://projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{key}`
  ///
  /// Required.
  core.String? kekUri;

  /// The type of algorithm used to encrypt the data.
  ///
  /// Required.
  /// Possible string values are:
  /// - "KEY_TYPE_UNSPECIFIED" : Unspecified key type. Should never be used.
  /// - "XCHACHA20_POLY1305" : Algorithm XChaCha20-Poly1305
  core.String? keyType;

  /// The \[Workload
  /// Identity\](//cloud.google.com/iam/docs/workload-identity-federation) pool
  /// provider required to use KEK.
  ///
  /// Required.
  core.String? wipProvider;

  GcpWrappedKeyInfo({
    this.encryptedDek,
    this.kekUri,
    this.keyType,
    this.wipProvider,
  });

  GcpWrappedKeyInfo.fromJson(core.Map json_)
    : this(
        encryptedDek: json_['encryptedDek'] as core.String?,
        kekUri: json_['kekUri'] as core.String?,
        keyType: json_['keyType'] as core.String?,
        wipProvider: json_['wipProvider'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final encryptedDek = this.encryptedDek;
    final kekUri = this.kekUri;
    final keyType = this.keyType;
    final wipProvider = this.wipProvider;
    return {
      'encryptedDek': ?encryptedDek,
      'kekUri': ?kekUri,
      'keyType': ?keyType,
      'wipProvider': ?wipProvider,
    };
  }
}

/// Google user id data holding encrypted google user IDs.
///
/// At least one google user ID is required.
class GoogleUserIdData {
  /// The list of encrypted google user IDs.
  ///
  /// Required.
  core.List<core.String>? googleUserIds;

  GoogleUserIdData({this.googleUserIds});

  GoogleUserIdData.fromJson(core.Map json_)
    : this(
        googleUserIds: (json_['googleUserIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final googleUserIds = this.googleUserIds;
    return {'googleUserIds': ?googleUserIds};
  }
}

/// Request to upload ad events.
class IngestAdEventsRequest {
  /// Required (at least 1).
  ///
  /// A list of ad events.
  ///
  /// Required.
  core.List<AdEvent>? adEvents;

  /// Information about encryption keys which are used to encrypt the data.
  ///
  /// Required.
  EncryptionInfo? encryptionInfo;

  /// If true, the request is validated, but not executed.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? validateOnly;

  IngestAdEventsRequest({
    this.adEvents,
    this.encryptionInfo,
    this.validateOnly,
  });

  IngestAdEventsRequest.fromJson(core.Map json_)
    : this(
        adEvents: (json_['adEvents'] as core.List?)
            ?.map(
              (value) => AdEvent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        encryptionInfo: json_.containsKey('encryptionInfo')
            ? EncryptionInfo.fromJson(
                json_['encryptionInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adEvents = this.adEvents;
    final encryptionInfo = this.encryptionInfo;
    final validateOnly = this.validateOnly;
    return {
      'adEvents': ?adEvents,
      'encryptionInfo': ?encryptionInfo,
      'validateOnly': ?validateOnly,
    };
  }
}

/// Response from an ad event ingestion operation.
typedef IngestAdEventsResponse = $Empty;

/// Request to upload audience members to the provided destinations.
///
/// Returns an IngestAudienceMembersResponse.
class IngestAudienceMembersRequest {
  /// The list of users to send to the specified destinations.
  ///
  /// At most 10000 AudienceMember resources can be sent in a single request.
  ///
  /// Required.
  core.List<AudienceMember>? audienceMembers;

  /// Request-level consent to apply to all users in the request.
  ///
  /// User-level consent overrides request-level consent, and can be specified
  /// in each AudienceMember.
  ///
  /// Optional.
  Consent? consent;

  /// The list of destinations to send the audience members to.
  ///
  /// Required.
  core.List<Destination>? destinations;

  /// Required for UserData uploads.
  ///
  /// The encoding type of the user identifiers. For hashed user identifiers,
  /// this is the encoding type of the hashed string. For encrypted hashed user
  /// identifiers, this is the encoding type of the outer encrypted string, but
  /// not necessarily the inner hashed string, meaning the inner hashed string
  /// could be encoded in a different way than the outer encrypted string. For
  /// non `UserData` uploads, this field is ignored.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ENCODING_UNSPECIFIED" : Unspecified Encoding type. Should never be
  /// used.
  /// - "HEX" : Hex encoding.
  /// - "BASE64" : Base 64 encoding.
  core.String? encoding;

  /// Encryption information for UserData uploads.
  ///
  /// If not set, it's assumed that uploaded identifying information is hashed
  /// but not encrypted. For non `UserData` uploads, this field is ignored.
  ///
  /// Optional.
  EncryptionInfo? encryptionInfo;

  /// The terms of service that the user has accepted/rejected.
  ///
  /// Optional.
  TermsOfService? termsOfService;

  /// For testing purposes.
  ///
  /// If `true`, the request is validated but not executed. Only errors are
  /// returned, not results.
  ///
  /// Optional.
  core.bool? validateOnly;

  IngestAudienceMembersRequest({
    this.audienceMembers,
    this.consent,
    this.destinations,
    this.encoding,
    this.encryptionInfo,
    this.termsOfService,
    this.validateOnly,
  });

  IngestAudienceMembersRequest.fromJson(core.Map json_)
    : this(
        audienceMembers: (json_['audienceMembers'] as core.List?)
            ?.map(
              (value) => AudienceMember.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        consent: json_.containsKey('consent')
            ? Consent.fromJson(
                json_['consent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        destinations: (json_['destinations'] as core.List?)
            ?.map(
              (value) => Destination.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        encoding: json_['encoding'] as core.String?,
        encryptionInfo: json_.containsKey('encryptionInfo')
            ? EncryptionInfo.fromJson(
                json_['encryptionInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        termsOfService: json_.containsKey('termsOfService')
            ? TermsOfService.fromJson(
                json_['termsOfService'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audienceMembers = this.audienceMembers;
    final consent = this.consent;
    final destinations = this.destinations;
    final encoding = this.encoding;
    final encryptionInfo = this.encryptionInfo;
    final termsOfService = this.termsOfService;
    final validateOnly = this.validateOnly;
    return {
      'audienceMembers': ?audienceMembers,
      'consent': ?consent,
      'destinations': ?destinations,
      'encoding': ?encoding,
      'encryptionInfo': ?encryptionInfo,
      'termsOfService': ?termsOfService,
      'validateOnly': ?validateOnly,
    };
  }
}

/// Response from the IngestAudienceMembersRequest.
class IngestAudienceMembersResponse {
  /// Detailed row-level warnings with field paths.
  core.List<FieldWarning>? fieldWarnings;

  /// The auto-generated ID of the request.
  core.String? requestId;

  IngestAudienceMembersResponse({this.fieldWarnings, this.requestId});

  IngestAudienceMembersResponse.fromJson(core.Map json_)
    : this(
        fieldWarnings: (json_['fieldWarnings'] as core.List?)
            ?.map(
              (value) => FieldWarning.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        requestId: json_['requestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fieldWarnings = this.fieldWarnings;
    final requestId = this.requestId;
    return {'fieldWarnings': ?fieldWarnings, 'requestId': ?requestId};
  }
}

/// The status of the ingest audience members request.
class IngestAudienceMembersStatus {
  /// The status of the composite data ingestion to the destination.
  IngestCompositeDataStatus? compositeDataIngestionStatus;

  /// The status of the google user id data ingestion to the destination.
  IngestGoogleUserIdDataStatus? googleUserIdDataIngestionStatus;

  /// The status of the mobile data ingestion to the destination.
  IngestMobileDataStatus? mobileDataIngestionStatus;

  /// The status of the pair data ingestion to the destination.
  IngestPairDataStatus? pairDataIngestionStatus;

  /// The status of the partner provided id data ingestion to the destination.
  IngestPartnerProvidedIdDataStatus? partnerProvidedIdDataIngestionStatus;

  /// The status of the ppid data ingestion to the destination.
  IngestPpidDataStatus? ppidDataIngestionStatus;

  /// The status of the user data ingestion to the destination.
  IngestUserDataStatus? userDataIngestionStatus;

  /// The status of the user id data ingestion to the destination.
  IngestUserIdDataStatus? userIdDataIngestionStatus;

  IngestAudienceMembersStatus({
    this.compositeDataIngestionStatus,
    this.googleUserIdDataIngestionStatus,
    this.mobileDataIngestionStatus,
    this.pairDataIngestionStatus,
    this.partnerProvidedIdDataIngestionStatus,
    this.ppidDataIngestionStatus,
    this.userDataIngestionStatus,
    this.userIdDataIngestionStatus,
  });

  IngestAudienceMembersStatus.fromJson(core.Map json_)
    : this(
        compositeDataIngestionStatus:
            json_.containsKey('compositeDataIngestionStatus')
            ? IngestCompositeDataStatus.fromJson(
                json_['compositeDataIngestionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        googleUserIdDataIngestionStatus:
            json_.containsKey('googleUserIdDataIngestionStatus')
            ? IngestGoogleUserIdDataStatus.fromJson(
                json_['googleUserIdDataIngestionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        mobileDataIngestionStatus:
            json_.containsKey('mobileDataIngestionStatus')
            ? IngestMobileDataStatus.fromJson(
                json_['mobileDataIngestionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        pairDataIngestionStatus: json_.containsKey('pairDataIngestionStatus')
            ? IngestPairDataStatus.fromJson(
                json_['pairDataIngestionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        partnerProvidedIdDataIngestionStatus:
            json_.containsKey('partnerProvidedIdDataIngestionStatus')
            ? IngestPartnerProvidedIdDataStatus.fromJson(
                json_['partnerProvidedIdDataIngestionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        ppidDataIngestionStatus: json_.containsKey('ppidDataIngestionStatus')
            ? IngestPpidDataStatus.fromJson(
                json_['ppidDataIngestionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        userDataIngestionStatus: json_.containsKey('userDataIngestionStatus')
            ? IngestUserDataStatus.fromJson(
                json_['userDataIngestionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        userIdDataIngestionStatus:
            json_.containsKey('userIdDataIngestionStatus')
            ? IngestUserIdDataStatus.fromJson(
                json_['userIdDataIngestionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final compositeDataIngestionStatus = this.compositeDataIngestionStatus;
    final googleUserIdDataIngestionStatus =
        this.googleUserIdDataIngestionStatus;
    final mobileDataIngestionStatus = this.mobileDataIngestionStatus;
    final pairDataIngestionStatus = this.pairDataIngestionStatus;
    final partnerProvidedIdDataIngestionStatus =
        this.partnerProvidedIdDataIngestionStatus;
    final ppidDataIngestionStatus = this.ppidDataIngestionStatus;
    final userDataIngestionStatus = this.userDataIngestionStatus;
    final userIdDataIngestionStatus = this.userIdDataIngestionStatus;
    return {
      'compositeDataIngestionStatus': ?compositeDataIngestionStatus,
      'googleUserIdDataIngestionStatus': ?googleUserIdDataIngestionStatus,
      'mobileDataIngestionStatus': ?mobileDataIngestionStatus,
      'pairDataIngestionStatus': ?pairDataIngestionStatus,
      'partnerProvidedIdDataIngestionStatus':
          ?partnerProvidedIdDataIngestionStatus,
      'ppidDataIngestionStatus': ?ppidDataIngestionStatus,
      'userDataIngestionStatus': ?userDataIngestionStatus,
      'userIdDataIngestionStatus': ?userIdDataIngestionStatus,
    };
  }
}

/// The status of the composite data ingestion to the destination containing
/// stats related to the ingestion.
class IngestCompositeDataStatus {
  /// The total count of data types sent in the upload request for the
  /// destination, broken down by data type.
  ///
  /// Includes all data types in the request, regardless of whether they were
  /// successfully ingested or not.
  core.List<DataTypeCount>? dataTypeCounts;

  /// The total count of audience members sent in the upload request for the
  /// destination.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully ingested or not.
  core.String? recordCount;

  /// The match rate range of the upload.
  /// Possible string values are:
  /// - "MATCH_RATE_RANGE_UNKNOWN" : The match rate range is unknown.
  /// - "MATCH_RATE_RANGE_NOT_ELIGIBLE" : The match rate range is not eligible.
  /// - "MATCH_RATE_RANGE_LESS_THAN_20" : The match rate range is less than 20%
  /// (in the interval `[0, 20)`).
  /// - "MATCH_RATE_RANGE_20_TO_30" : The match rate range is between 20% and
  /// 30% (in the interval `[20, 31)`).
  /// - "MATCH_RATE_RANGE_31_TO_40" : The match rate range is between 31% and
  /// 40% (in the interval `[31, 41)`).
  /// - "MATCH_RATE_RANGE_41_TO_50" : The match rate range is between 41% and
  /// 50% (in the interval `[41, 51)`).
  /// - "MATCH_RATE_RANGE_51_TO_60" : The match rate range is between 51% and
  /// 60% (in the interval `[51, 61)`.
  /// - "MATCH_RATE_RANGE_61_TO_70" : The match rate range is between 61% and
  /// 70% (in the interval `[61, 71)`).
  /// - "MATCH_RATE_RANGE_71_TO_80" : The match rate range is between 71% and
  /// 80% (in the interval `[71, 81)`).
  /// - "MATCH_RATE_RANGE_81_TO_90" : The match rate range is between 81% and
  /// 90% (in the interval `[81, 91)`).
  /// - "MATCH_RATE_RANGE_91_TO_100" : The match rate range is between 91% and
  /// 100% (in the interval `[91, 100]`).
  core.String? uploadMatchRateRange;

  IngestCompositeDataStatus({
    this.dataTypeCounts,
    this.recordCount,
    this.uploadMatchRateRange,
  });

  IngestCompositeDataStatus.fromJson(core.Map json_)
    : this(
        dataTypeCounts: (json_['dataTypeCounts'] as core.List?)
            ?.map(
              (value) => DataTypeCount.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        recordCount: json_['recordCount'] as core.String?,
        uploadMatchRateRange: json_['uploadMatchRateRange'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataTypeCounts = this.dataTypeCounts;
    final recordCount = this.recordCount;
    final uploadMatchRateRange = this.uploadMatchRateRange;
    return {
      'dataTypeCounts': ?dataTypeCounts,
      'recordCount': ?recordCount,
      'uploadMatchRateRange': ?uploadMatchRateRange,
    };
  }
}

/// Request to upload audience members to the provided destinations.
///
/// Returns an IngestEventsResponse.
class IngestEventsRequest {
  /// Request-level consent to apply to all users in the request.
  ///
  /// User-level consent overrides request-level consent, and can be specified
  /// in each Event.
  ///
  /// Optional.
  Consent? consent;

  /// The list of destinations to send the events to.
  ///
  /// Required.
  core.List<Destination>? destinations;

  /// Required for UserData uploads.
  ///
  /// The encoding type of the user identifiers. For hashed user identifiers,
  /// this is the encoding type of the hashed string. For encrypted hashed user
  /// identifiers, this is the encoding type of the outer encrypted string, but
  /// not necessarily the inner hashed string, meaning the inner hashed string
  /// could be encoded in a different way than the outer encrypted string. For
  /// non `UserData` uploads, this field is ignored.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ENCODING_UNSPECIFIED" : Unspecified Encoding type. Should never be
  /// used.
  /// - "HEX" : Hex encoding.
  /// - "BASE64" : Base 64 encoding.
  core.String? encoding;

  /// Encryption information for UserData uploads.
  ///
  /// If not set, it's assumed that uploaded identifying information is hashed
  /// but not encrypted. For non `UserData` uploads, this field is ignored.
  ///
  /// Optional.
  EncryptionInfo? encryptionInfo;

  /// The list of events to send to the specified destinations.
  ///
  /// At most 2000 Event resources can be sent in a single request.
  ///
  /// Required.
  core.List<Event>? events;

  /// For testing purposes.
  ///
  /// If `true`, the request is validated but not executed. Only errors are
  /// returned, not results.
  ///
  /// Optional.
  core.bool? validateOnly;

  IngestEventsRequest({
    this.consent,
    this.destinations,
    this.encoding,
    this.encryptionInfo,
    this.events,
    this.validateOnly,
  });

  IngestEventsRequest.fromJson(core.Map json_)
    : this(
        consent: json_.containsKey('consent')
            ? Consent.fromJson(
                json_['consent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        destinations: (json_['destinations'] as core.List?)
            ?.map(
              (value) => Destination.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        encoding: json_['encoding'] as core.String?,
        encryptionInfo: json_.containsKey('encryptionInfo')
            ? EncryptionInfo.fromJson(
                json_['encryptionInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        events: (json_['events'] as core.List?)
            ?.map(
              (value) =>
                  Event.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final consent = this.consent;
    final destinations = this.destinations;
    final encoding = this.encoding;
    final encryptionInfo = this.encryptionInfo;
    final events = this.events;
    final validateOnly = this.validateOnly;
    return {
      'consent': ?consent,
      'destinations': ?destinations,
      'encoding': ?encoding,
      'encryptionInfo': ?encryptionInfo,
      'events': ?events,
      'validateOnly': ?validateOnly,
    };
  }
}

/// Response from the IngestEventsRequest.
class IngestEventsResponse {
  /// Detailed row-level warnings with field paths.
  core.List<FieldWarning>? fieldWarnings;

  /// The auto-generated ID of the request.
  core.String? requestId;

  IngestEventsResponse({this.fieldWarnings, this.requestId});

  IngestEventsResponse.fromJson(core.Map json_)
    : this(
        fieldWarnings: (json_['fieldWarnings'] as core.List?)
            ?.map(
              (value) => FieldWarning.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        requestId: json_['requestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fieldWarnings = this.fieldWarnings;
    final requestId = this.requestId;
    return {'fieldWarnings': ?fieldWarnings, 'requestId': ?requestId};
  }
}

/// The status of the events ingestion to the destination.
class IngestEventsStatus {
  /// The total count of events sent in the upload request.
  ///
  /// Includes all events in the request, regardless of whether they were
  /// successfully ingested or not.
  core.String? recordCount;

  IngestEventsStatus({this.recordCount});

  IngestEventsStatus.fromJson(core.Map json_)
    : this(recordCount: json_['recordCount'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final recordCount = this.recordCount;
    return {'recordCount': ?recordCount};
  }
}

/// The status of the google user id data ingestion to the destination
/// containing stats related to the ingestion.
class IngestGoogleUserIdDataStatus {
  /// The total count of google user ids sent in the upload request for the
  /// destination.
  ///
  /// Includes all google user ids in the request, regardless of whether they
  /// were successfully ingested or not.
  core.String? googleUserIdCount;

  /// The total count of audience members sent in the upload request for the
  /// destination.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully ingested or not.
  core.String? recordCount;

  IngestGoogleUserIdDataStatus({this.googleUserIdCount, this.recordCount});

  IngestGoogleUserIdDataStatus.fromJson(core.Map json_)
    : this(
        googleUserIdCount: json_['googleUserIdCount'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final googleUserIdCount = this.googleUserIdCount;
    final recordCount = this.recordCount;
    return {
      'googleUserIdCount': ?googleUserIdCount,
      'recordCount': ?recordCount,
    };
  }
}

/// The status of the mobile data ingestion to the destination containing stats
/// related to the ingestion.
class IngestMobileDataStatus {
  /// The total count of mobile ids sent in the upload request for the
  /// destination.
  ///
  /// Includes all mobile ids in the request, regardless of whether they were
  /// successfully ingested or not.
  core.String? mobileIdCount;

  /// The total count of audience members sent in the upload request for the
  /// destination.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully ingested or not.
  core.String? recordCount;

  IngestMobileDataStatus({this.mobileIdCount, this.recordCount});

  IngestMobileDataStatus.fromJson(core.Map json_)
    : this(
        mobileIdCount: json_['mobileIdCount'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final mobileIdCount = this.mobileIdCount;
    final recordCount = this.recordCount;
    return {'mobileIdCount': ?mobileIdCount, 'recordCount': ?recordCount};
  }
}

/// The status of the pair data ingestion to the destination containing stats
/// related to the ingestion.
class IngestPairDataStatus {
  /// The total count of pair ids sent in the upload request for the
  /// destination.
  ///
  /// Includes all pair ids in the request, regardless of whether they were
  /// successfully ingested or not.
  core.String? pairIdCount;

  /// The total count of audience members sent in the upload request for the
  /// destination.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully ingested or not.
  core.String? recordCount;

  IngestPairDataStatus({this.pairIdCount, this.recordCount});

  IngestPairDataStatus.fromJson(core.Map json_)
    : this(
        pairIdCount: json_['pairIdCount'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pairIdCount = this.pairIdCount;
    final recordCount = this.recordCount;
    return {'pairIdCount': ?pairIdCount, 'recordCount': ?recordCount};
  }
}

/// The status of the partner provided id data ingestion to the destination
/// containing stats related to the ingestion.
class IngestPartnerProvidedIdDataStatus {
  /// The total count of partner provided ids sent in the upload request for the
  /// destination.
  ///
  /// Includes all partner provided ids in the request, regardless of whether
  /// they were successfully ingested or not.
  core.String? partnerProvidedIdCount;

  /// The total count of audience members sent in the upload request for the
  /// destination.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully ingested or not.
  core.String? recordCount;

  IngestPartnerProvidedIdDataStatus({
    this.partnerProvidedIdCount,
    this.recordCount,
  });

  IngestPartnerProvidedIdDataStatus.fromJson(core.Map json_)
    : this(
        partnerProvidedIdCount: json_['partnerProvidedIdCount'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final partnerProvidedIdCount = this.partnerProvidedIdCount;
    final recordCount = this.recordCount;
    return {
      'partnerProvidedIdCount': ?partnerProvidedIdCount,
      'recordCount': ?recordCount,
    };
  }
}

/// The status of the ppid data ingestion to the destination containing stats
/// related to the ingestion.
class IngestPpidDataStatus {
  /// The total count of ppids sent in the upload request for the destination.
  ///
  /// Includes all ppids in the request, regardless of whether they were
  /// successfully ingested or not.
  core.String? ppidCount;

  /// The total count of audience members sent in the upload request for the
  /// destination.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully ingested or not.
  core.String? recordCount;

  IngestPpidDataStatus({this.ppidCount, this.recordCount});

  IngestPpidDataStatus.fromJson(core.Map json_)
    : this(
        ppidCount: json_['ppidCount'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ppidCount = this.ppidCount;
    final recordCount = this.recordCount;
    return {'ppidCount': ?ppidCount, 'recordCount': ?recordCount};
  }
}

/// The status of the user data ingestion to the destination containing stats
/// related to the ingestion.
class IngestUserDataStatus {
  /// The total count of audience members sent in the upload request for the
  /// destination.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully ingested or not.
  core.String? recordCount;

  /// The match rate range of the upload.
  /// Possible string values are:
  /// - "MATCH_RATE_RANGE_UNKNOWN" : The match rate range is unknown.
  /// - "MATCH_RATE_RANGE_NOT_ELIGIBLE" : The match rate range is not eligible.
  /// - "MATCH_RATE_RANGE_LESS_THAN_20" : The match rate range is less than 20%
  /// (in the interval `[0, 20)`).
  /// - "MATCH_RATE_RANGE_20_TO_30" : The match rate range is between 20% and
  /// 30% (in the interval `[20, 31)`).
  /// - "MATCH_RATE_RANGE_31_TO_40" : The match rate range is between 31% and
  /// 40% (in the interval `[31, 41)`).
  /// - "MATCH_RATE_RANGE_41_TO_50" : The match rate range is between 41% and
  /// 50% (in the interval `[41, 51)`).
  /// - "MATCH_RATE_RANGE_51_TO_60" : The match rate range is between 51% and
  /// 60% (in the interval `[51, 61)`.
  /// - "MATCH_RATE_RANGE_61_TO_70" : The match rate range is between 61% and
  /// 70% (in the interval `[61, 71)`).
  /// - "MATCH_RATE_RANGE_71_TO_80" : The match rate range is between 71% and
  /// 80% (in the interval `[71, 81)`).
  /// - "MATCH_RATE_RANGE_81_TO_90" : The match rate range is between 81% and
  /// 90% (in the interval `[81, 91)`).
  /// - "MATCH_RATE_RANGE_91_TO_100" : The match rate range is between 91% and
  /// 100% (in the interval `[91, 100]`).
  core.String? uploadMatchRateRange;

  /// The total count of user identifiers sent in the upload request for the
  /// destination.
  ///
  /// Includes all user identifiers in the request, regardless of whether they
  /// were successfully ingested or not.
  core.String? userIdentifierCount;

  IngestUserDataStatus({
    this.recordCount,
    this.uploadMatchRateRange,
    this.userIdentifierCount,
  });

  IngestUserDataStatus.fromJson(core.Map json_)
    : this(
        recordCount: json_['recordCount'] as core.String?,
        uploadMatchRateRange: json_['uploadMatchRateRange'] as core.String?,
        userIdentifierCount: json_['userIdentifierCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final recordCount = this.recordCount;
    final uploadMatchRateRange = this.uploadMatchRateRange;
    final userIdentifierCount = this.userIdentifierCount;
    return {
      'recordCount': ?recordCount,
      'uploadMatchRateRange': ?uploadMatchRateRange,
      'userIdentifierCount': ?userIdentifierCount,
    };
  }
}

/// The status of the user id data ingestion to the destination containing stats
/// related to the ingestion.
class IngestUserIdDataStatus {
  /// The total count of audience members sent in the upload request for the
  /// destination.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully ingested or not.
  core.String? recordCount;

  /// The total count of user ids sent in the upload request for the
  /// destination.
  ///
  /// Includes all user ids in the request, regardless of whether they were
  /// successfully ingested or not.
  core.String? userIdCount;

  IngestUserIdDataStatus({this.recordCount, this.userIdCount});

  IngestUserIdDataStatus.fromJson(core.Map json_)
    : this(
        recordCount: json_['recordCount'] as core.String?,
        userIdCount: json_['userIdCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final recordCount = this.recordCount;
    final userIdCount = this.userIdCount;
    return {'recordCount': ?recordCount, 'userIdCount': ?userIdCount};
  }
}

/// Represents a user list that is populated by user provided data.
class IngestedUserListInfo {
  /// Additional information when `CONTACT_ID` is one of the `upload_key_types`.
  ///
  /// Optional.
  ContactIdInfo? contactIdInfo;

  /// Additional information when `MOBILE_ID` is one of the `upload_key_types`.
  ///
  /// Optional.
  MobileIdInfo? mobileIdInfo;

  /// Additional information when `PAIR_ID` is one of the `upload_key_types`.
  ///
  /// This feature is only available to data partners.
  ///
  /// Optional.
  PairIdInfo? pairIdInfo;

  /// Additional information for partner audiences.
  ///
  /// This feature is only available to data partners.
  ///
  /// Optional.
  PartnerAudienceInfo? partnerAudienceInfo;

  /// Additional information for `PSEUDONYMOUS_ID` is one of the
  /// `upload_key_types`.
  ///
  /// Optional.
  PseudonymousIdInfo? pseudonymousIdInfo;

  /// Upload key types of this user list.
  ///
  /// Required. Immutable.
  core.List<core.String>? uploadKeyTypes;

  /// Additional information when `USER_ID` is one of the `upload_key_types`.
  ///
  /// Optional.
  UserIdInfo? userIdInfo;

  IngestedUserListInfo({
    this.contactIdInfo,
    this.mobileIdInfo,
    this.pairIdInfo,
    this.partnerAudienceInfo,
    this.pseudonymousIdInfo,
    this.uploadKeyTypes,
    this.userIdInfo,
  });

  IngestedUserListInfo.fromJson(core.Map json_)
    : this(
        contactIdInfo: json_.containsKey('contactIdInfo')
            ? ContactIdInfo.fromJson(
                json_['contactIdInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        mobileIdInfo: json_.containsKey('mobileIdInfo')
            ? MobileIdInfo.fromJson(
                json_['mobileIdInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pairIdInfo: json_.containsKey('pairIdInfo')
            ? PairIdInfo.fromJson(
                json_['pairIdInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        partnerAudienceInfo: json_.containsKey('partnerAudienceInfo')
            ? PartnerAudienceInfo.fromJson(
                json_['partnerAudienceInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        pseudonymousIdInfo: json_.containsKey('pseudonymousIdInfo')
            ? PseudonymousIdInfo.fromJson(
                json_['pseudonymousIdInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        uploadKeyTypes: (json_['uploadKeyTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        userIdInfo: json_.containsKey('userIdInfo')
            ? UserIdInfo.fromJson(
                json_['userIdInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contactIdInfo = this.contactIdInfo;
    final mobileIdInfo = this.mobileIdInfo;
    final pairIdInfo = this.pairIdInfo;
    final partnerAudienceInfo = this.partnerAudienceInfo;
    final pseudonymousIdInfo = this.pseudonymousIdInfo;
    final uploadKeyTypes = this.uploadKeyTypes;
    final userIdInfo = this.userIdInfo;
    return {
      'contactIdInfo': ?contactIdInfo,
      'mobileIdInfo': ?mobileIdInfo,
      'pairIdInfo': ?pairIdInfo,
      'partnerAudienceInfo': ?partnerAudienceInfo,
      'pseudonymousIdInfo': ?pseudonymousIdInfo,
      'uploadKeyTypes': ?uploadKeyTypes,
      'userIdInfo': ?userIdInfo,
    };
  }
}

/// IP address information for a user.
///
/// We recommend including observe_start_time and observe_end_time to help
/// improve Customer Match match rates.
class IpData {
  /// IP address captured at the time of customer interaction.
  ///
  /// Accepts standard string formats for both IPv4 and IPv6.
  ///
  /// Required.
  core.String? ipAddress;

  /// Last recorded interaction time from this IP address in a session.
  ///
  /// Optional.
  core.String? observeEndTime;

  /// First recorded interaction time from this IP address in a session.
  ///
  /// Optional.
  core.String? observeStartTime;

  IpData({this.ipAddress, this.observeEndTime, this.observeStartTime});

  IpData.fromJson(core.Map json_)
    : this(
        ipAddress: json_['ipAddress'] as core.String?,
        observeEndTime: json_['observeEndTime'] as core.String?,
        observeStartTime: json_['observeStartTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ipAddress = this.ipAddress;
    final observeEndTime = this.observeEndTime;
    final observeStartTime = this.observeStartTime;
    return {
      'ipAddress': ?ipAddress,
      'observeEndTime': ?observeEndTime,
      'observeStartTime': ?observeStartTime,
    };
  }
}

/// Represents an item in the cart associated with the event.
class Item {
  /// A bucket of any
  /// [event parameters related to an item](https://developers.google.com/analytics/devguides/collection/protocol/ga4/reference/events)
  /// to be included within the event that were not already specified using
  /// other structured fields.
  ///
  /// Optional.
  core.List<ItemParameter>? additionalItemParameters;

  /// The conversion value associated with this item within the event, for cases
  /// where the conversion value is different for each item.
  ///
  /// Optional.
  core.double? conversionValue;

  /// Additional key/value pair information to send to the conversion containers
  /// (conversion action or Floodlight activity), when tracking per-item
  /// conversions.
  ///
  /// Optional.
  core.List<ItemCustomVariable>? customVariables;

  /// A unique identifier to reference the item.
  ///
  /// Optional.
  core.String? itemId;

  /// The feed label of the Merchant Center feed.
  ///
  /// If countries are still being used, the 2-letter country code in ISO-3166-1
  /// alpha-2 can be used instead. For Store Sales events this will override the
  /// value set at the cart level. This field is ignored for other events.
  ///
  /// Optional.
  core.String? merchantFeedLabel;

  /// The language code in ISO 639-1 associated with the Merchant Center feed
  /// where your items are uploaded.
  ///
  /// Optional.
  core.String? merchantFeedLanguageCode;

  /// The Merchant Center ID associated with the item.
  ///
  /// For Store Sales events this will override the value set at the cart level.
  /// This field is ignored for other events.
  ///
  /// Optional.
  core.String? merchantId;

  /// The product ID within the Merchant Center account.
  ///
  /// Optional.
  core.String? merchantProductId;

  /// The number of this item associated with the event.
  ///
  /// Optional.
  core.String? quantity;

  /// The unit price excluding tax, shipping, and any transaction level
  /// discounts.
  ///
  /// Optional.
  core.double? unitPrice;

  Item({
    this.additionalItemParameters,
    this.conversionValue,
    this.customVariables,
    this.itemId,
    this.merchantFeedLabel,
    this.merchantFeedLanguageCode,
    this.merchantId,
    this.merchantProductId,
    this.quantity,
    this.unitPrice,
  });

  Item.fromJson(core.Map json_)
    : this(
        additionalItemParameters:
            (json_['additionalItemParameters'] as core.List?)
                ?.map(
                  (value) => ItemParameter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        conversionValue: (json_['conversionValue'] as core.num?)?.toDouble(),
        customVariables: (json_['customVariables'] as core.List?)
            ?.map(
              (value) => ItemCustomVariable.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        itemId: json_['itemId'] as core.String?,
        merchantFeedLabel: json_['merchantFeedLabel'] as core.String?,
        merchantFeedLanguageCode:
            json_['merchantFeedLanguageCode'] as core.String?,
        merchantId: json_['merchantId'] as core.String?,
        merchantProductId: json_['merchantProductId'] as core.String?,
        quantity: json_['quantity'] as core.String?,
        unitPrice: (json_['unitPrice'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalItemParameters = this.additionalItemParameters;
    final conversionValue = this.conversionValue;
    final customVariables = this.customVariables;
    final itemId = this.itemId;
    final merchantFeedLabel = this.merchantFeedLabel;
    final merchantFeedLanguageCode = this.merchantFeedLanguageCode;
    final merchantId = this.merchantId;
    final merchantProductId = this.merchantProductId;
    final quantity = this.quantity;
    final unitPrice = this.unitPrice;
    return {
      'additionalItemParameters': ?additionalItemParameters,
      'conversionValue': ?conversionValue,
      'customVariables': ?customVariables,
      'itemId': ?itemId,
      'merchantFeedLabel': ?merchantFeedLabel,
      'merchantFeedLanguageCode': ?merchantFeedLanguageCode,
      'merchantId': ?merchantId,
      'merchantProductId': ?merchantProductId,
      'quantity': ?quantity,
      'unitPrice': ?unitPrice,
    };
  }
}

/// Item-level custom variable for ads conversions.
typedef ItemCustomVariable = $CustomVariable;

/// A bucket of any
/// [event parameters related to an item](https://developers.google.com/analytics/devguides/collection/protocol/ga4/reference/events)
/// to be included within the event that were not already specified using other
/// structured fields.
typedef ItemParameter = $Parameter;

/// Response from the ListUserListDirectLicensesRequest.
class ListUserListDirectLicensesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The licenses for the given user list in the request.
  core.List<UserListDirectLicense>? userListDirectLicenses;

  ListUserListDirectLicensesResponse({
    this.nextPageToken,
    this.userListDirectLicenses,
  });

  ListUserListDirectLicensesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        userListDirectLicenses: (json_['userListDirectLicenses'] as core.List?)
            ?.map(
              (value) => UserListDirectLicense.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final userListDirectLicenses = this.userListDirectLicenses;
    return {
      'nextPageToken': ?nextPageToken,
      'userListDirectLicenses': ?userListDirectLicenses,
    };
  }
}

/// Response from the ListUserListGlobalLicensesCustomerInfoRequest.
class ListUserListGlobalLicenseCustomerInfosResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The customer information for the given license in the request.
  core.List<UserListGlobalLicenseCustomerInfo>?
  userListGlobalLicenseCustomerInfos;

  ListUserListGlobalLicenseCustomerInfosResponse({
    this.nextPageToken,
    this.userListGlobalLicenseCustomerInfos,
  });

  ListUserListGlobalLicenseCustomerInfosResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        userListGlobalLicenseCustomerInfos:
            (json_['userListGlobalLicenseCustomerInfos'] as core.List?)
                ?.map(
                  (value) => UserListGlobalLicenseCustomerInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final userListGlobalLicenseCustomerInfos =
        this.userListGlobalLicenseCustomerInfos;
    return {
      'nextPageToken': ?nextPageToken,
      'userListGlobalLicenseCustomerInfos': ?userListGlobalLicenseCustomerInfos,
    };
  }
}

/// Response from the ListUserListGlobalLicensesRequest.
class ListUserListGlobalLicensesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The licenses for the given user list in the request.
  core.List<UserListGlobalLicense>? userListGlobalLicenses;

  ListUserListGlobalLicensesResponse({
    this.nextPageToken,
    this.userListGlobalLicenses,
  });

  ListUserListGlobalLicensesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        userListGlobalLicenses: (json_['userListGlobalLicenses'] as core.List?)
            ?.map(
              (value) => UserListGlobalLicense.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final userListGlobalLicenses = this.userListGlobalLicenses;
    return {
      'nextPageToken': ?nextPageToken,
      'userListGlobalLicenses': ?userListGlobalLicenses,
    };
  }
}

/// Response message for ListUserLists.
class ListUserListsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The user lists from the specified account.
  core.List<UserList>? userLists;

  ListUserListsResponse({this.nextPageToken, this.userLists});

  ListUserListsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        userLists: (json_['userLists'] as core.List?)
            ?.map(
              (value) => UserList.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final userLists = this.userLists;
    return {'nextPageToken': ?nextPageToken, 'userLists': ?userLists};
  }
}

/// The baseline location of the request.
///
/// Baseline location is on OR-list of ISO 3166-1 alpha-2 region codes of the
/// requested regions.
class Location {
  /// List of ISO 3166-1 alpha-2 region codes.
  core.List<core.String>? regionCodes;

  Location({this.regionCodes});

  Location.fromJson(core.Map json_)
    : this(
        regionCodes: (json_['regionCodes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final regionCodes = this.regionCodes;
    return {'regionCodes': ?regionCodes};
  }
}

/// Insights for marketing data.
///
/// This feature is only available to data partners.
class MarketingDataInsight {
  /// Insights for values of a given dimension.
  core.List<MarketingDataInsightsAttribute>? attributes;

  /// The dimension to which the insight belongs.
  /// Possible string values are:
  /// - "AUDIENCE_INSIGHTS_DIMENSION_UNSPECIFIED" : Not specified.
  /// - "AUDIENCE_INSIGHTS_DIMENSION_UNKNOWN" : The value is unknown in this
  /// version.
  /// - "AFFINITY_USER_INTEREST" : An Affinity UserInterest.
  /// - "IN_MARKET_USER_INTEREST" : An In-Market UserInterest.
  /// - "AGE_RANGE" : An age range.
  /// - "GENDER" : A gender.
  core.String? dimension;

  MarketingDataInsight({this.attributes, this.dimension});

  MarketingDataInsight.fromJson(core.Map json_)
    : this(
        attributes: (json_['attributes'] as core.List?)
            ?.map(
              (value) => MarketingDataInsightsAttribute.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        dimension: json_['dimension'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributes = this.attributes;
    final dimension = this.dimension;
    return {'attributes': ?attributes, 'dimension': ?dimension};
  }
}

/// Insights for a collection of related attributes of the same dimension.
class MarketingDataInsightsAttribute {
  /// Age range of the audience for which the lift is provided.
  /// Possible string values are:
  /// - "AGE_RANGE_UNSPECIFIED" : Not specified.
  /// - "AGE_RANGE_UNKNOWN" : Unknown.
  /// - "AGE_RANGE_18_24" : Between 18 and 24 years old.
  /// - "AGE_RANGE_25_34" : Between 25 and 34 years old.
  /// - "AGE_RANGE_35_44" : Between 35 and 44 years old.
  /// - "AGE_RANGE_45_54" : Between 45 and 54 years old.
  /// - "AGE_RANGE_55_64" : Between 55 and 64 years old.
  /// - "AGE_RANGE_65_UP" : 65 years old and beyond.
  core.String? ageRange;

  /// Gender of the audience for which the lift is provided.
  /// Possible string values are:
  /// - "GENDER_UNSPECIFIED" : Not specified.
  /// - "GENDER_UNKNOWN" : Unknown.
  /// - "GENDER_MALE" : Male.
  /// - "GENDER_FEMALE" : Female.
  core.String? gender;

  /// Measure of lift that the audience has for the attribute value as compared
  /// to the baseline.
  ///
  /// Range \[0-1\].
  core.double? lift;

  /// The user interest ID.
  core.String? userInterestId;

  MarketingDataInsightsAttribute({
    this.ageRange,
    this.gender,
    this.lift,
    this.userInterestId,
  });

  MarketingDataInsightsAttribute.fromJson(core.Map json_)
    : this(
        ageRange: json_['ageRange'] as core.String?,
        gender: json_['gender'] as core.String?,
        lift: (json_['lift'] as core.num?)?.toDouble(),
        userInterestId: json_['userInterestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ageRange = this.ageRange;
    final gender = this.gender;
    final lift = this.lift;
    final userInterestId = this.userInterestId;
    return {
      'ageRange': ?ageRange,
      'gender': ?gender,
      'lift': ?lift,
      'userInterestId': ?userInterestId,
    };
  }
}

/// Mobile IDs for the audience.
///
/// At least one mobile ID is required.
class MobileData {
  /// The list of mobile device IDs (Android advertising ID, iOS IDFA for
  /// Customer Match user lists and Android advertising ID, iOS IDFA, Xbox or
  /// Microsoft ID, Amazon Fire TV ID, Roku ID, Generic Device ID for basic user
  /// lists).
  ///
  /// At most 10 `mobileIds` can be provided in a single AudienceMember.
  ///
  /// Required.
  core.List<core.String>? mobileIds;

  MobileData({this.mobileIds});

  MobileData.fromJson(core.Map json_)
    : this(
        mobileIds: (json_['mobileIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final mobileIds = this.mobileIds;
    return {'mobileIds': ?mobileIds};
  }
}

/// Additional information when `MOBILE_ID` is one of the `upload_key_types`.
class MobileIdInfo {
  /// A string that uniquely identifies a mobile application from which the data
  /// was collected.
  ///
  /// Required. Immutable.
  core.String? appId;

  /// Source of the upload data.
  ///
  /// Optional. Immutable.
  /// Possible string values are:
  /// - "DATA_SOURCE_TYPE_UNSPECIFIED" : Not specified.
  /// - "DATA_SOURCE_TYPE_FIRST_PARTY" : The uploaded data is first-party data.
  /// - "DATA_SOURCE_TYPE_THIRD_PARTY_CREDIT_BUREAU" : The uploaded data is from
  /// a third-party credit bureau.
  /// - "DATA_SOURCE_TYPE_THIRD_PARTY_VOTER_FILE" : The uploaded data is from a
  /// third-party voter file.
  /// - "DATA_SOURCE_TYPE_THIRD_PARTY_PARTNER_DATA" : The uploaded data is third
  /// party partner data.
  core.String? dataSourceType;

  /// The key space of mobile IDs.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "KEY_SPACE_UNSPECIFIED" : Not specified.
  /// - "IOS" : The iOS keyspace.
  /// - "ANDROID" : The Android keyspace.
  core.String? keySpace;

  MobileIdInfo({this.appId, this.dataSourceType, this.keySpace});

  MobileIdInfo.fromJson(core.Map json_)
    : this(
        appId: json_['appId'] as core.String?,
        dataSourceType: json_['dataSourceType'] as core.String?,
        keySpace: json_['keySpace'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appId = this.appId;
    final dataSourceType = this.dataSourceType;
    final keySpace = this.keySpace;
    return {
      'appId': ?appId,
      'dataSourceType': ?dataSourceType,
      'keySpace': ?keySpace,
    };
  }
}

/// \[PAIR\](//support.google.com/admanager/answer/15067908) IDs for the
/// audience.
///
/// At least one PAIR ID is required. This feature is only available to data
/// partners.
class PairData {
  /// Cleanroom-provided PII data, hashed with SHA256, and encrypted with an EC
  /// commutative cipher using publisher key for the
  /// \[PAIR\]((//support.google.com/admanager/answer/15067908)) user list.
  ///
  /// At most 10 `pairIds` can be provided in a single AudienceMember.
  ///
  /// Required.
  core.List<core.String>? pairIds;

  PairData({this.pairIds});

  PairData.fromJson(core.Map json_)
    : this(
        pairIds: (json_['pairIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pairIds = this.pairIds;
    return {'pairIds': ?pairIds};
  }
}

/// Additional information when `PAIR_ID` is one of the `upload_key_types`.
///
/// This feature is only available to data partners.
class PairIdInfo {
  /// The count of the advertiser's first party data records that have been
  /// uploaded to a clean room provider.
  ///
  /// This does not signify the size of a PAIR user list.
  ///
  /// Optional.
  core.String? advertiserIdentifierCount;

  /// Identifies a unique advertiser to publisher relationship with one clean
  /// room provider or across multiple clean room providers.
  ///
  /// Required. Immutable.
  core.String? cleanRoomIdentifier;

  /// This field denotes the percentage of membership match of this user list
  /// with the corresponding publisher's first party data.
  ///
  /// Must be between 0 and 100 inclusive.
  ///
  /// Required.
  core.int? matchRatePercentage;

  /// Identifies the publisher that the Publisher Advertiser Identity
  /// Reconciliation user list is reconciled with.
  ///
  /// This field is provided by the cleanroom provider and is only unique in the
  /// scope of that cleanroom. This cannot be used as a global identifier across
  /// multiple cleanrooms.
  ///
  /// Required. Immutable.
  core.String? publisherId;

  /// Descriptive name of the publisher to be displayed in the UI for a better
  /// targeting experience.
  ///
  /// Required.
  core.String? publisherName;

  PairIdInfo({
    this.advertiserIdentifierCount,
    this.cleanRoomIdentifier,
    this.matchRatePercentage,
    this.publisherId,
    this.publisherName,
  });

  PairIdInfo.fromJson(core.Map json_)
    : this(
        advertiserIdentifierCount:
            json_['advertiserIdentifierCount'] as core.String?,
        cleanRoomIdentifier: json_['cleanRoomIdentifier'] as core.String?,
        matchRatePercentage: json_['matchRatePercentage'] as core.int?,
        publisherId: json_['publisherId'] as core.String?,
        publisherName: json_['publisherName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final advertiserIdentifierCount = this.advertiserIdentifierCount;
    final cleanRoomIdentifier = this.cleanRoomIdentifier;
    final matchRatePercentage = this.matchRatePercentage;
    final publisherId = this.publisherId;
    final publisherName = this.publisherName;
    return {
      'advertiserIdentifierCount': ?advertiserIdentifierCount,
      'cleanRoomIdentifier': ?cleanRoomIdentifier,
      'matchRatePercentage': ?matchRatePercentage,
      'publisherId': ?publisherId,
      'publisherName': ?publisherName,
    };
  }
}

/// Additional information for partner audiences.
///
/// This feature is only available to data partners.
class PartnerAudienceInfo {
  /// The commerce partner name.
  ///
  /// Only allowed if `partner_audience_source` is `COMMERCE_AUDIENCE`.
  ///
  /// Optional.
  core.String? commercePartner;

  /// The source of the partner audience.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "PARTNER_AUDIENCE_SOURCE_UNSPECIFIED" : Not specified.
  /// - "COMMERCE_AUDIENCE" : Partner Audience source is commerce audience.
  /// - "LINEAR_TV_AUDIENCE" : Partner Audience source is linear TV audience.
  /// - "AGENCY_PROVIDER_AUDIENCE" : Partner Audience source is agency/provider
  /// audience.
  core.String? partnerAudienceSource;

  PartnerAudienceInfo({this.commercePartner, this.partnerAudienceSource});

  PartnerAudienceInfo.fromJson(core.Map json_)
    : this(
        commercePartner: json_['commercePartner'] as core.String?,
        partnerAudienceSource: json_['partnerAudienceSource'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final commercePartner = this.commercePartner;
    final partnerAudienceSource = this.partnerAudienceSource;
    return {
      'commercePartner': ?commercePartner,
      'partnerAudienceSource': ?partnerAudienceSource,
    };
  }
}

/// Represents a customer account in the partner's system.
class PartnerCustomerAccount {
  /// The identifier of the customer account in the partner's ID space.
  ///
  /// Required.
  core.String? accountId;

  /// The name of the account.
  ///
  /// Optional.
  core.String? accountName;

  /// The type of the account.
  ///
  /// Can be used to distinguish between advertiser accounts and business level
  /// accounts, for example.
  ///
  /// Optional.
  core.String? accountType;

  PartnerCustomerAccount({this.accountId, this.accountName, this.accountType});

  PartnerCustomerAccount.fromJson(core.Map json_)
    : this(
        accountId: json_['accountId'] as core.String?,
        accountName: json_['accountName'] as core.String?,
        accountType: json_['accountType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountId = this.accountId;
    final accountName = this.accountName;
    final accountType = this.accountType;
    return {
      'accountId': ?accountId,
      'accountName': ?accountName,
      'accountType': ?accountType,
    };
  }
}

/// A partner link between an owning account and a partner account.
class PartnerLink {
  /// The set of features supported for the partner link.
  ///
  /// If not specified, the system behavior defaults to
  /// FEATURE_SET_AUDIENCE_AND_EVENT_MANAGEMENT.
  ///
  /// Optional. Immutable.
  /// Possible string values are:
  /// - "FEATURE_SET_UNSPECIFIED" : Unspecified feature set. If unspecified, the
  /// system behavior defaults to FEATURE_SET_AUDIENCE_AND_EVENT_MANAGEMENT.
  /// - "FEATURE_SET_AUDIENCE_AND_EVENT_MANAGEMENT" : Indicates a link used for
  /// audience and event management.
  /// - "FEATURE_SET_AD_EVENT_MANAGEMENT" : Indicates a link used for ad event
  /// management.
  core.String? featureSet;

  /// Identifier.
  ///
  /// The name of the partner link. Format:
  /// accountTypes/{account_type}/accounts/{account}/partnerLinks/{partner_link}
  core.String? name;

  /// The owning account granting access to the partner account.
  ///
  /// Required.
  ProductAccount? owningAccount;

  /// The partner account granted access by the owning account.
  ///
  /// Required.
  ProductAccount? partnerAccount;

  /// The customer account in the partner system.
  ///
  /// This is required for partner links with the
  /// FEATURE_SET_AD_EVENT_MANAGEMENT feature set.
  ///
  /// Optional.
  PartnerCustomerAccount? partnerCustomerAccount;

  /// The partner link ID.
  ///
  /// Output only.
  core.String? partnerLinkId;

  /// Metadata associated with the partner link.
  ///
  /// This is optional and only accepted for partner links with the
  /// FEATURE_SET_AD_EVENT_MANAGEMENT.
  ///
  /// Optional.
  PartnerLinkMetadata? partnerLinkMetadata;

  PartnerLink({
    this.featureSet,
    this.name,
    this.owningAccount,
    this.partnerAccount,
    this.partnerCustomerAccount,
    this.partnerLinkId,
    this.partnerLinkMetadata,
  });

  PartnerLink.fromJson(core.Map json_)
    : this(
        featureSet: json_['featureSet'] as core.String?,
        name: json_['name'] as core.String?,
        owningAccount: json_.containsKey('owningAccount')
            ? ProductAccount.fromJson(
                json_['owningAccount'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        partnerAccount: json_.containsKey('partnerAccount')
            ? ProductAccount.fromJson(
                json_['partnerAccount'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        partnerCustomerAccount: json_.containsKey('partnerCustomerAccount')
            ? PartnerCustomerAccount.fromJson(
                json_['partnerCustomerAccount']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        partnerLinkId: json_['partnerLinkId'] as core.String?,
        partnerLinkMetadata: json_.containsKey('partnerLinkMetadata')
            ? PartnerLinkMetadata.fromJson(
                json_['partnerLinkMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final featureSet = this.featureSet;
    final name = this.name;
    final owningAccount = this.owningAccount;
    final partnerAccount = this.partnerAccount;
    final partnerCustomerAccount = this.partnerCustomerAccount;
    final partnerLinkId = this.partnerLinkId;
    final partnerLinkMetadata = this.partnerLinkMetadata;
    return {
      'featureSet': ?featureSet,
      'name': ?name,
      'owningAccount': ?owningAccount,
      'partnerAccount': ?partnerAccount,
      'partnerCustomerAccount': ?partnerCustomerAccount,
      'partnerLinkId': ?partnerLinkId,
      'partnerLinkMetadata': ?partnerLinkMetadata,
    };
  }
}

/// Represents metadata associated with a partner link.
class PartnerLinkMetadata {
  /// The list of implicit accounts.
  ///
  /// Optional.
  core.List<PartnerCustomerAccount>? implicitAccounts;

  PartnerLinkMetadata({this.implicitAccounts});

  PartnerLinkMetadata.fromJson(core.Map json_)
    : this(
        implicitAccounts: (json_['implicitAccounts'] as core.List?)
            ?.map(
              (value) => PartnerCustomerAccount.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final implicitAccounts = this.implicitAccounts;
    return {'implicitAccounts': ?implicitAccounts};
  }
}

/// Partner-provided data holding the partner-provided identifiers.
///
/// At least one partner-provided identifier is required.
class PartnerProvidedIdData {
  /// The list of partner-provided identifiers.
  ///
  /// Required.
  core.List<core.String>? partnerProvidedIds;

  PartnerProvidedIdData({this.partnerProvidedIds});

  PartnerProvidedIdData.fromJson(core.Map json_)
    : this(
        partnerProvidedIds: (json_['partnerProvidedIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final partnerProvidedIds = this.partnerProvidedIds;
    return {'partnerProvidedIds': ?partnerProvidedIds};
  }
}

/// Publisher provided identifiers data holding the ppids.
///
/// At least one ppid is required. This feature is only available to data
/// partners.
class PpidData {
  /// The list of publisher provided identifiers for a user.
  ///
  /// Required.
  core.List<core.String>? ppids;

  PpidData({this.ppids});

  PpidData.fromJson(core.Map json_)
    : this(
        ppids: (json_['ppids'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ppids = this.ppids;
    return {'ppids': ?ppids};
  }
}

/// Represents a specific account.
class ProductAccount {
  /// The ID of the account.
  ///
  /// For example, your Google Ads account ID.
  ///
  /// Required.
  core.String? accountId;

  /// The type of the account.
  ///
  /// For example, `GOOGLE_ADS`. Either `account_type` or the deprecated
  /// `product` is required. If both are set, the values must match.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ACCOUNT_TYPE_UNSPECIFIED" : Unspecified product. Should never be used.
  /// - "GOOGLE_ADS" : Google Ads.
  /// - "DISPLAY_VIDEO_PARTNER" : Display & Video 360 partner.
  /// - "DISPLAY_VIDEO_ADVERTISER" : Display & Video 360 advertiser.
  /// - "DATA_PARTNER" : Data Partner.
  /// - "GOOGLE_ANALYTICS_PROPERTY" : Google Analytics.
  /// - "GOOGLE_AD_MANAGER_AUDIENCE_LINK" : Google Ad Manager audience link.
  /// - "FLOODLIGHT_CONFIG" : Floodlight configuration.
  core.String? accountType;

  /// Use `account_type` instead.
  ///
  /// Deprecated.
  /// Possible string values are:
  /// - "PRODUCT_UNSPECIFIED" : Unspecified product. Should never be used.
  /// - "GOOGLE_ADS" : Google Ads.
  /// - "DISPLAY_VIDEO_PARTNER" : Display & Video 360 partner.
  /// - "DISPLAY_VIDEO_ADVERTISER" : Display & Video 360 advertiser.
  /// - "DATA_PARTNER" : Data Partner.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? product;

  ProductAccount({this.accountId, this.accountType, this.product});

  ProductAccount.fromJson(core.Map json_)
    : this(
        accountId: json_['accountId'] as core.String?,
        accountType: json_['accountType'] as core.String?,
        product: json_['product'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountId = this.accountId;
    final accountType = this.accountType;
    final product = this.product;
    return {
      'accountId': ?accountId,
      'accountType': ?accountType,
      'product': ?product,
    };
  }
}

/// Additional information when `PSEUDONYMOUS_ID` is one of the
/// `upload_key_types`.
class PseudonymousIdInfo {
  /// The number of billable records (e.g. uploaded or matched).
  ///
  /// Optional. Immutable.
  core.String? billableRecordCount;

  /// Sync status of the user list.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SYNC_STATUS_UNSPECIFIED" : Not specified.
  /// - "CREATED" : The user list has been created as a placeholder. List
  /// contents and/or metadata are still being synced. The user list is not
  /// ready for use.
  /// - "READY_FOR_USE" : The user list is ready for use. Contents and cookies
  /// have been synced correctly.
  /// - "FAILED" : An error has occurred syncing user list contents and/or
  /// metadata. The user list cannot be used.
  core.String? syncStatus;

  PseudonymousIdInfo({this.billableRecordCount, this.syncStatus});

  PseudonymousIdInfo.fromJson(core.Map json_)
    : this(
        billableRecordCount: json_['billableRecordCount'] as core.String?,
        syncStatus: json_['syncStatus'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final billableRecordCount = this.billableRecordCount;
    final syncStatus = this.syncStatus;
    return {
      'billableRecordCount': ?billableRecordCount,
      'syncStatus': ?syncStatus,
    };
  }
}

/// Request to remove all users from an audience in the provided destinations.
///
/// Returns a RemoveAllAudienceMembersResponse.
class RemoveAllAudienceMembersRequest {
  /// The list of destinations to remove the users from.
  ///
  /// Required.
  core.List<Destination>? destinations;

  /// The remove as of time.
  ///
  /// If set, only audience members last added before this time will be removed.
  /// If not set, it defaults to current time. The remove as of time must not be
  /// in the future.
  ///
  /// Optional.
  core.String? removeAsOfTime;

  /// For testing purposes.
  ///
  /// If `true`, the request is validated but not executed. Only errors are
  /// returned, not results.
  ///
  /// Optional.
  core.bool? validateOnly;

  RemoveAllAudienceMembersRequest({
    this.destinations,
    this.removeAsOfTime,
    this.validateOnly,
  });

  RemoveAllAudienceMembersRequest.fromJson(core.Map json_)
    : this(
        destinations: (json_['destinations'] as core.List?)
            ?.map(
              (value) => Destination.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        removeAsOfTime: json_['removeAsOfTime'] as core.String?,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final destinations = this.destinations;
    final removeAsOfTime = this.removeAsOfTime;
    final validateOnly = this.validateOnly;
    return {
      'destinations': ?destinations,
      'removeAsOfTime': ?removeAsOfTime,
      'validateOnly': ?validateOnly,
    };
  }
}

/// Response from the RemoveAllAudienceMembersRequest.
typedef RemoveAllAudienceMembersResponse = $AudienceMembersResponse;

/// The status of the remove all audience members request.
typedef RemoveAllAudienceMembersStatus = $Empty;

/// Request to remove users from an audience in the provided destinations.
///
/// Returns a RemoveAudienceMembersResponse.
class RemoveAudienceMembersRequest {
  /// The list of users to remove.
  ///
  /// Required.
  core.List<AudienceMember>? audienceMembers;

  /// The list of destinations to remove the users from.
  ///
  /// Required.
  core.List<Destination>? destinations;

  /// Required for UserData uploads.
  ///
  /// The encoding type of the user identifiers. Applies to only the outer
  /// encoding for encrypted user identifiers. For non `UserData` uploads, this
  /// field is ignored.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ENCODING_UNSPECIFIED" : Unspecified Encoding type. Should never be
  /// used.
  /// - "HEX" : Hex encoding.
  /// - "BASE64" : Base 64 encoding.
  core.String? encoding;

  /// Encryption information for UserData uploads.
  ///
  /// If not set, it's assumed that uploaded identifying information is hashed
  /// but not encrypted. For non `UserData` uploads, this field is ignored.
  ///
  /// Optional.
  EncryptionInfo? encryptionInfo;

  /// For testing purposes.
  ///
  /// If `true`, the request is validated but not executed. Only errors are
  /// returned, not results.
  ///
  /// Optional.
  core.bool? validateOnly;

  RemoveAudienceMembersRequest({
    this.audienceMembers,
    this.destinations,
    this.encoding,
    this.encryptionInfo,
    this.validateOnly,
  });

  RemoveAudienceMembersRequest.fromJson(core.Map json_)
    : this(
        audienceMembers: (json_['audienceMembers'] as core.List?)
            ?.map(
              (value) => AudienceMember.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        destinations: (json_['destinations'] as core.List?)
            ?.map(
              (value) => Destination.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        encoding: json_['encoding'] as core.String?,
        encryptionInfo: json_.containsKey('encryptionInfo')
            ? EncryptionInfo.fromJson(
                json_['encryptionInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audienceMembers = this.audienceMembers;
    final destinations = this.destinations;
    final encoding = this.encoding;
    final encryptionInfo = this.encryptionInfo;
    final validateOnly = this.validateOnly;
    return {
      'audienceMembers': ?audienceMembers,
      'destinations': ?destinations,
      'encoding': ?encoding,
      'encryptionInfo': ?encryptionInfo,
      'validateOnly': ?validateOnly,
    };
  }
}

/// Response from the RemoveAudienceMembersRequest.
typedef RemoveAudienceMembersResponse = $AudienceMembersResponse;

/// The status of the remove audience members request.
class RemoveAudienceMembersStatus {
  /// The status of the composite data removal from the destination.
  RemoveCompositeDataStatus? compositeDataRemovalStatus;

  /// The status of the google user id data removal from the destination.
  RemoveGoogleUserIdDataStatus? googleUserIdDataRemovalStatus;

  /// The status of the mobile data removal from the destination.
  RemoveMobileDataStatus? mobileDataRemovalStatus;

  /// The status of the pair data removal from the destination.
  RemovePairDataStatus? pairDataRemovalStatus;

  /// The status of the partner provided id data removal from the destination.
  RemovePartnerProvidedIdDataStatus? partnerProvidedIdDataRemovalStatus;

  /// The status of the ppid data removal from the destination.
  RemovePpidDataStatus? ppidDataRemovalStatus;

  /// The status of the user data removal from the destination.
  RemoveUserDataStatus? userDataRemovalStatus;

  /// The status of the user id data removal from the destination.
  RemoveUserIdDataStatus? userIdDataRemovalStatus;

  RemoveAudienceMembersStatus({
    this.compositeDataRemovalStatus,
    this.googleUserIdDataRemovalStatus,
    this.mobileDataRemovalStatus,
    this.pairDataRemovalStatus,
    this.partnerProvidedIdDataRemovalStatus,
    this.ppidDataRemovalStatus,
    this.userDataRemovalStatus,
    this.userIdDataRemovalStatus,
  });

  RemoveAudienceMembersStatus.fromJson(core.Map json_)
    : this(
        compositeDataRemovalStatus:
            json_.containsKey('compositeDataRemovalStatus')
            ? RemoveCompositeDataStatus.fromJson(
                json_['compositeDataRemovalStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        googleUserIdDataRemovalStatus:
            json_.containsKey('googleUserIdDataRemovalStatus')
            ? RemoveGoogleUserIdDataStatus.fromJson(
                json_['googleUserIdDataRemovalStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        mobileDataRemovalStatus: json_.containsKey('mobileDataRemovalStatus')
            ? RemoveMobileDataStatus.fromJson(
                json_['mobileDataRemovalStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        pairDataRemovalStatus: json_.containsKey('pairDataRemovalStatus')
            ? RemovePairDataStatus.fromJson(
                json_['pairDataRemovalStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        partnerProvidedIdDataRemovalStatus:
            json_.containsKey('partnerProvidedIdDataRemovalStatus')
            ? RemovePartnerProvidedIdDataStatus.fromJson(
                json_['partnerProvidedIdDataRemovalStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        ppidDataRemovalStatus: json_.containsKey('ppidDataRemovalStatus')
            ? RemovePpidDataStatus.fromJson(
                json_['ppidDataRemovalStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        userDataRemovalStatus: json_.containsKey('userDataRemovalStatus')
            ? RemoveUserDataStatus.fromJson(
                json_['userDataRemovalStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        userIdDataRemovalStatus: json_.containsKey('userIdDataRemovalStatus')
            ? RemoveUserIdDataStatus.fromJson(
                json_['userIdDataRemovalStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final compositeDataRemovalStatus = this.compositeDataRemovalStatus;
    final googleUserIdDataRemovalStatus = this.googleUserIdDataRemovalStatus;
    final mobileDataRemovalStatus = this.mobileDataRemovalStatus;
    final pairDataRemovalStatus = this.pairDataRemovalStatus;
    final partnerProvidedIdDataRemovalStatus =
        this.partnerProvidedIdDataRemovalStatus;
    final ppidDataRemovalStatus = this.ppidDataRemovalStatus;
    final userDataRemovalStatus = this.userDataRemovalStatus;
    final userIdDataRemovalStatus = this.userIdDataRemovalStatus;
    return {
      'compositeDataRemovalStatus': ?compositeDataRemovalStatus,
      'googleUserIdDataRemovalStatus': ?googleUserIdDataRemovalStatus,
      'mobileDataRemovalStatus': ?mobileDataRemovalStatus,
      'pairDataRemovalStatus': ?pairDataRemovalStatus,
      'partnerProvidedIdDataRemovalStatus': ?partnerProvidedIdDataRemovalStatus,
      'ppidDataRemovalStatus': ?ppidDataRemovalStatus,
      'userDataRemovalStatus': ?userDataRemovalStatus,
      'userIdDataRemovalStatus': ?userIdDataRemovalStatus,
    };
  }
}

/// The status of the composite data removal from the destination.
class RemoveCompositeDataStatus {
  /// The total count of data types sent in the removal request, broken down by
  /// data type.
  ///
  /// Includes all data types in the request, regardless of whether they were
  /// successfully removed or not.
  core.List<DataTypeCount>? dataTypeCounts;

  /// The total count of audience members sent in the removal request.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully removed or not.
  core.String? recordCount;

  RemoveCompositeDataStatus({this.dataTypeCounts, this.recordCount});

  RemoveCompositeDataStatus.fromJson(core.Map json_)
    : this(
        dataTypeCounts: (json_['dataTypeCounts'] as core.List?)
            ?.map(
              (value) => DataTypeCount.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataTypeCounts = this.dataTypeCounts;
    final recordCount = this.recordCount;
    return {'dataTypeCounts': ?dataTypeCounts, 'recordCount': ?recordCount};
  }
}

/// The status of the google user id data removal from the destination.
class RemoveGoogleUserIdDataStatus {
  /// The total count of google user ids sent in the removal request.
  ///
  /// Includes all google user ids in the request, regardless of whether they
  /// were successfully removed or not.
  core.String? googleUserIdCount;

  /// The total count of audience members sent in the removal request.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully removed or not.
  core.String? recordCount;

  RemoveGoogleUserIdDataStatus({this.googleUserIdCount, this.recordCount});

  RemoveGoogleUserIdDataStatus.fromJson(core.Map json_)
    : this(
        googleUserIdCount: json_['googleUserIdCount'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final googleUserIdCount = this.googleUserIdCount;
    final recordCount = this.recordCount;
    return {
      'googleUserIdCount': ?googleUserIdCount,
      'recordCount': ?recordCount,
    };
  }
}

/// The status of the mobile data removal from the destination.
class RemoveMobileDataStatus {
  /// The total count of mobile Ids sent in the removal request.
  ///
  /// Includes all mobile ids in the request, regardless of whether they were
  /// successfully removed or not.
  core.String? mobileIdCount;

  /// The total count of audience members sent in the removal request.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully removed or not.
  core.String? recordCount;

  RemoveMobileDataStatus({this.mobileIdCount, this.recordCount});

  RemoveMobileDataStatus.fromJson(core.Map json_)
    : this(
        mobileIdCount: json_['mobileIdCount'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final mobileIdCount = this.mobileIdCount;
    final recordCount = this.recordCount;
    return {'mobileIdCount': ?mobileIdCount, 'recordCount': ?recordCount};
  }
}

/// The status of the pair data removal from the destination.
class RemovePairDataStatus {
  /// The total count of pair ids sent in the removal request.
  ///
  /// Includes all pair ids in the request, regardless of whether they were
  /// successfully removed or not.
  core.String? pairIdCount;

  /// The total count of audience members sent in the removal request.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully removed or not.
  core.String? recordCount;

  RemovePairDataStatus({this.pairIdCount, this.recordCount});

  RemovePairDataStatus.fromJson(core.Map json_)
    : this(
        pairIdCount: json_['pairIdCount'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pairIdCount = this.pairIdCount;
    final recordCount = this.recordCount;
    return {'pairIdCount': ?pairIdCount, 'recordCount': ?recordCount};
  }
}

/// The status of the partner provided id data removal from the destination.
class RemovePartnerProvidedIdDataStatus {
  /// The total count of partner provided ids sent in the removal request.
  ///
  /// Includes all partner provided ids in the request, regardless of whether
  /// they were successfully removed or not.
  core.String? partnerProvidedIdCount;

  /// The total count of audience members sent in the removal request.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully removed or not.
  core.String? recordCount;

  RemovePartnerProvidedIdDataStatus({
    this.partnerProvidedIdCount,
    this.recordCount,
  });

  RemovePartnerProvidedIdDataStatus.fromJson(core.Map json_)
    : this(
        partnerProvidedIdCount: json_['partnerProvidedIdCount'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final partnerProvidedIdCount = this.partnerProvidedIdCount;
    final recordCount = this.recordCount;
    return {
      'partnerProvidedIdCount': ?partnerProvidedIdCount,
      'recordCount': ?recordCount,
    };
  }
}

/// The status of the ppid data removal from the destination.
class RemovePpidDataStatus {
  /// The total count of ppids sent in the removal request.
  ///
  /// Includes all ppids in the request, regardless of whether they were
  /// successfully removed or not.
  core.String? ppidCount;

  /// The total count of audience members sent in the removal request.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully removed or not.
  core.String? recordCount;

  RemovePpidDataStatus({this.ppidCount, this.recordCount});

  RemovePpidDataStatus.fromJson(core.Map json_)
    : this(
        ppidCount: json_['ppidCount'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ppidCount = this.ppidCount;
    final recordCount = this.recordCount;
    return {'ppidCount': ?ppidCount, 'recordCount': ?recordCount};
  }
}

/// The status of the user data removal from the destination.
class RemoveUserDataStatus {
  /// The total count of audience members sent in the removal request.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully removed or not.
  core.String? recordCount;

  /// The total count of user identifiers sent in the removal request.
  ///
  /// Includes all user identifiers in the request, regardless of whether they
  /// were successfully removed or not.
  core.String? userIdentifierCount;

  RemoveUserDataStatus({this.recordCount, this.userIdentifierCount});

  RemoveUserDataStatus.fromJson(core.Map json_)
    : this(
        recordCount: json_['recordCount'] as core.String?,
        userIdentifierCount: json_['userIdentifierCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final recordCount = this.recordCount;
    final userIdentifierCount = this.userIdentifierCount;
    return {
      'recordCount': ?recordCount,
      'userIdentifierCount': ?userIdentifierCount,
    };
  }
}

/// The status of the user id data removal from the destination.
class RemoveUserIdDataStatus {
  /// The total count of audience members sent in the removal request.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully removed or not.
  core.String? recordCount;

  /// The total count of user ids sent in the removal request.
  ///
  /// Includes all user ids in the request, regardless of whether they were
  /// successfully removed or not.
  core.String? userIdCount;

  RemoveUserIdDataStatus({this.recordCount, this.userIdCount});

  RemoveUserIdDataStatus.fromJson(core.Map json_)
    : this(
        recordCount: json_['recordCount'] as core.String?,
        userIdCount: json_['userIdCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final recordCount = this.recordCount;
    final userIdCount = this.userIdCount;
    return {'recordCount': ?recordCount, 'userIdCount': ?userIdCount};
  }
}

/// A request status per destination.
class RequestStatusPerDestination {
  /// The status of the ingest audience members request.
  IngestAudienceMembersStatus? audienceMembersIngestionStatus;

  /// The status of the remove audience members request.
  RemoveAudienceMembersStatus? audienceMembersRemovalStatus;

  /// A destination within a DM API request.
  Destination? destination;

  /// An error info error containing the error reason and error counts related
  /// to the upload.
  ///
  /// Only populated if the `request_status` is `FAILED` or `PARTIAL_SUCCESS`.
  /// This field isn't populated while the request has `request_status` of
  /// `PROCESSING`.
  ErrorInfo? errorInfo;

  /// The status of the ingest events request.
  IngestEventsStatus? eventsIngestionStatus;

  /// The status of the remove all audience members request.
  RemoveAllAudienceMembersStatus? removeAllAudienceMembersStatus;

  /// The request status of the destination.
  /// Possible string values are:
  /// - "REQUEST_STATUS_UNKNOWN" : The request status is unknown.
  /// - "SUCCESS" : Processing succeeded for all records without any errors.
  /// However, there may be warnings in the `warning_info` field.
  /// - "PROCESSING" : The request is processing.
  /// - "FAILED" : Processing failed for all records. Check the `error_info`
  /// field for error details, and check the `warning_info` field for warning
  /// details.
  /// - "PARTIAL_SUCCESS" : Processing completed successfully without errors for
  /// some records, but failed with errors for other records. Check the
  /// `error_info` field for error details, and check the `warning_info` field
  /// for warning details.
  core.String? requestStatus;

  /// A warning info containing the warning reason and warning counts related to
  /// the upload.
  ///
  /// This field isn't populated while the request has `request_status` of
  /// `PROCESSING`.
  WarningInfo? warningInfo;

  RequestStatusPerDestination({
    this.audienceMembersIngestionStatus,
    this.audienceMembersRemovalStatus,
    this.destination,
    this.errorInfo,
    this.eventsIngestionStatus,
    this.removeAllAudienceMembersStatus,
    this.requestStatus,
    this.warningInfo,
  });

  RequestStatusPerDestination.fromJson(core.Map json_)
    : this(
        audienceMembersIngestionStatus:
            json_.containsKey('audienceMembersIngestionStatus')
            ? IngestAudienceMembersStatus.fromJson(
                json_['audienceMembersIngestionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        audienceMembersRemovalStatus:
            json_.containsKey('audienceMembersRemovalStatus')
            ? RemoveAudienceMembersStatus.fromJson(
                json_['audienceMembersRemovalStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        destination: json_.containsKey('destination')
            ? Destination.fromJson(
                json_['destination'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        errorInfo: json_.containsKey('errorInfo')
            ? ErrorInfo.fromJson(
                json_['errorInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        eventsIngestionStatus: json_.containsKey('eventsIngestionStatus')
            ? IngestEventsStatus.fromJson(
                json_['eventsIngestionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        removeAllAudienceMembersStatus:
            json_.containsKey('removeAllAudienceMembersStatus')
            ? RemoveAllAudienceMembersStatus.fromJson(
                json_['removeAllAudienceMembersStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        requestStatus: json_['requestStatus'] as core.String?,
        warningInfo: json_.containsKey('warningInfo')
            ? WarningInfo.fromJson(
                json_['warningInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audienceMembersIngestionStatus = this.audienceMembersIngestionStatus;
    final audienceMembersRemovalStatus = this.audienceMembersRemovalStatus;
    final destination = this.destination;
    final errorInfo = this.errorInfo;
    final eventsIngestionStatus = this.eventsIngestionStatus;
    final removeAllAudienceMembersStatus = this.removeAllAudienceMembersStatus;
    final requestStatus = this.requestStatus;
    final warningInfo = this.warningInfo;
    return {
      'audienceMembersIngestionStatus': ?audienceMembersIngestionStatus,
      'audienceMembersRemovalStatus': ?audienceMembersRemovalStatus,
      'destination': ?destination,
      'errorInfo': ?errorInfo,
      'eventsIngestionStatus': ?eventsIngestionStatus,
      'removeAllAudienceMembersStatus': ?removeAllAudienceMembersStatus,
      'requestStatus': ?requestStatus,
      'warningInfo': ?warningInfo,
    };
  }
}

/// Request message for DM API MarketingDataInsightsService.RetrieveInsights
class RetrieveInsightsRequest {
  /// Baseline for the insights requested.
  ///
  /// Required.
  Baseline? baseline;

  /// The user list ID for which insights are requested.
  ///
  /// Required.
  core.String? userListId;

  RetrieveInsightsRequest({this.baseline, this.userListId});

  RetrieveInsightsRequest.fromJson(core.Map json_)
    : this(
        baseline: json_.containsKey('baseline')
            ? Baseline.fromJson(
                json_['baseline'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        userListId: json_['userListId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final baseline = this.baseline;
    final userListId = this.userListId;
    return {'baseline': ?baseline, 'userListId': ?userListId};
  }
}

/// Response message for DM API MarketingDataInsightsService.RetrieveInsights
class RetrieveInsightsResponse {
  /// Contains the insights for the marketing data.
  core.List<MarketingDataInsight>? marketingDataInsights;

  RetrieveInsightsResponse({this.marketingDataInsights});

  RetrieveInsightsResponse.fromJson(core.Map json_)
    : this(
        marketingDataInsights: (json_['marketingDataInsights'] as core.List?)
            ?.map(
              (value) => MarketingDataInsight.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final marketingDataInsights = this.marketingDataInsights;
    return {'marketingDataInsights': ?marketingDataInsights};
  }
}

/// Response from the RetrieveRequestStatusRequest.
class RetrieveRequestStatusResponse {
  /// A list of request statuses per destination.
  ///
  /// The order of the statuses matches the order of the destinations in the
  /// original request.
  core.List<RequestStatusPerDestination>? requestStatusPerDestination;

  RetrieveRequestStatusResponse({this.requestStatusPerDestination});

  RetrieveRequestStatusResponse.fromJson(core.Map json_)
    : this(
        requestStatusPerDestination:
            (json_['requestStatusPerDestination'] as core.List?)
                ?.map(
                  (value) => RequestStatusPerDestination.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requestStatusPerDestination = this.requestStatusPerDestination;
    return {'requestStatusPerDestination': ?requestStatusPerDestination};
  }
}

/// Response from the SearchPartnerLinksRequest.
class SearchPartnerLinksResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The partner links for the given account.
  core.List<PartnerLink>? partnerLinks;

  SearchPartnerLinksResponse({this.nextPageToken, this.partnerLinks});

  SearchPartnerLinksResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        partnerLinks: (json_['partnerLinks'] as core.List?)
            ?.map(
              (value) => PartnerLink.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final partnerLinks = this.partnerLinks;
    return {'nextPageToken': ?nextPageToken, 'partnerLinks': ?partnerLinks};
  }
}

/// Estimated number of members in this user list in different target networks.
class SizeInfo {
  /// Estimated number of members in this user list, on the Google Display
  /// Network.
  ///
  /// Output only.
  core.String? displayNetworkMembersCount;

  /// Estimated number of members in this user list on Gmail.
  ///
  /// Output only.
  core.String? gmailMembersCount;

  /// Estimated number of members in this user list in the google.com domain.
  ///
  /// These are the members available for targeting in Search campaigns.
  ///
  /// Output only.
  core.String? searchNetworkMembersCount;

  /// Estimated number of members in this user list on YouTube.
  ///
  /// Output only.
  core.String? youtubeMembersCount;

  SizeInfo({
    this.displayNetworkMembersCount,
    this.gmailMembersCount,
    this.searchNetworkMembersCount,
    this.youtubeMembersCount,
  });

  SizeInfo.fromJson(core.Map json_)
    : this(
        displayNetworkMembersCount:
            json_['displayNetworkMembersCount'] as core.String?,
        gmailMembersCount: json_['gmailMembersCount'] as core.String?,
        searchNetworkMembersCount:
            json_['searchNetworkMembersCount'] as core.String?,
        youtubeMembersCount: json_['youtubeMembersCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayNetworkMembersCount = this.displayNetworkMembersCount;
    final gmailMembersCount = this.gmailMembersCount;
    final searchNetworkMembersCount = this.searchNetworkMembersCount;
    final youtubeMembersCount = this.youtubeMembersCount;
    return {
      'displayNetworkMembersCount': ?displayNetworkMembersCount,
      'gmailMembersCount': ?gmailMembersCount,
      'searchNetworkMembersCount': ?searchNetworkMembersCount,
      'youtubeMembersCount': ?youtubeMembersCount,
    };
  }
}

/// Eligibility information for different target networks.
class TargetNetworkInfo {
  /// Indicates this user list is eligible for Google Display Network.
  ///
  /// Output only.
  core.bool? eligibleForDisplay;

  /// Indicates if this user list is eligible for Google Search Network.
  ///
  /// Optional.
  core.bool? eligibleForSearch;

  TargetNetworkInfo({this.eligibleForDisplay, this.eligibleForSearch});

  TargetNetworkInfo.fromJson(core.Map json_)
    : this(
        eligibleForDisplay: json_['eligibleForDisplay'] as core.bool?,
        eligibleForSearch: json_['eligibleForSearch'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eligibleForDisplay = this.eligibleForDisplay;
    final eligibleForSearch = this.eligibleForSearch;
    return {
      'eligibleForDisplay': ?eligibleForDisplay,
      'eligibleForSearch': ?eligibleForSearch,
    };
  }
}

/// The terms of service that the user has accepted/rejected.
class TermsOfService {
  /// The Customer Match terms of service:
  /// https://support.google.com/adspolicy/answer/6299717.
  ///
  /// This must be accepted when ingesting UserData or MobileData. This field is
  /// not required for Partner Match User list.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TERMS_OF_SERVICE_STATUS_UNSPECIFIED" : Not specified.
  /// - "ACCEPTED" : Status indicating the caller has chosen to accept the terms
  /// of service.
  /// - "REJECTED" : Status indicating the caller has chosen to reject the terms
  /// of service.
  core.String? customerMatchTermsOfServiceStatus;

  TermsOfService({this.customerMatchTermsOfServiceStatus});

  TermsOfService.fromJson(core.Map json_)
    : this(
        customerMatchTermsOfServiceStatus:
            json_['customerMatchTermsOfServiceStatus'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customerMatchTermsOfServiceStatus =
        this.customerMatchTermsOfServiceStatus;
    return {
      'customerMatchTermsOfServiceStatus': ?customerMatchTermsOfServiceStatus,
    };
  }
}

/// Data that identifies the user.
///
/// At least one identifier is required.
class UserData {
  /// The identifiers for the user.
  ///
  /// It's possible to provide multiple instances of the same type of data (for
  /// example, multiple email addresses). To increase the likelihood of a match,
  /// provide as many identifiers as possible. At most 10 `userIdentifiers` can
  /// be provided in a single AudienceMember or Event.
  ///
  /// Required.
  core.List<UserIdentifier>? userIdentifiers;

  UserData({this.userIdentifiers});

  UserData.fromJson(core.Map json_)
    : this(
        userIdentifiers: (json_['userIdentifiers'] as core.List?)
            ?.map(
              (value) => UserIdentifier.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final userIdentifiers = this.userIdentifiers;
    return {'userIdentifiers': ?userIdentifiers};
  }
}

/// User id data holding the user id.
class UserIdData {
  /// A unique identifier for a user, as defined by the advertiser.
  ///
  /// Required.
  core.String? userId;

  UserIdData({this.userId});

  UserIdData.fromJson(core.Map json_)
    : this(userId: json_['userId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final userId = this.userId;
    return {'userId': ?userId};
  }
}

/// Additional information when `USER_ID` is one of the `upload_key_types`.
class UserIdInfo {
  /// Source of the upload data.
  ///
  /// Optional. Immutable.
  /// Possible string values are:
  /// - "DATA_SOURCE_TYPE_UNSPECIFIED" : Not specified.
  /// - "DATA_SOURCE_TYPE_FIRST_PARTY" : The uploaded data is first-party data.
  /// - "DATA_SOURCE_TYPE_THIRD_PARTY_CREDIT_BUREAU" : The uploaded data is from
  /// a third-party credit bureau.
  /// - "DATA_SOURCE_TYPE_THIRD_PARTY_VOTER_FILE" : The uploaded data is from a
  /// third-party voter file.
  /// - "DATA_SOURCE_TYPE_THIRD_PARTY_PARTNER_DATA" : The uploaded data is third
  /// party partner data.
  core.String? dataSourceType;

  UserIdInfo({this.dataSourceType});

  UserIdInfo.fromJson(core.Map json_)
    : this(dataSourceType: json_['dataSourceType'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final dataSourceType = this.dataSourceType;
    return {'dataSourceType': ?dataSourceType};
  }
}

/// A single identifier for the user.
class UserIdentifier {
  /// The known components of a user's address.
  ///
  /// Holds a grouping of identifiers that are matched all at once.
  AddressInfo? address;

  /// Hashed email address using SHA-256 hash function after normalization.
  core.String? emailAddress;

  /// Hashed phone number using SHA-256 hash function after normalization (E164
  /// standard).
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

/// A user list resource.
class UserList {
  /// The reason this account has been granted access to the list.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ACCESS_REASON_UNSPECIFIED" : Not specified.
  /// - "OWNED" : The resource is owned by the user.
  /// - "SHARED" : The resource is shared to the user.
  /// - "LICENSED" : The resource is licensed to the user.
  /// - "SUBSCRIBED" : The user subscribed to the resource.
  /// - "AFFILIATED" : The resource is accessible to the user.
  core.String? accessReason;

  /// Indicates if this share is still enabled.
  ///
  /// When a user list is shared with the account this field is set to
  /// `ENABLED`. Later the user list owner can decide to revoke the share and
  /// make it `DISABLED`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ACCESS_STATUS_UNSPECIFIED" : Not specified.
  /// - "ENABLED" : The access is enabled.
  /// - "DISABLED" : The access is disabled.
  core.String? accountAccessStatus;

  /// The reason why this user list membership status is closed.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CLOSING_REASON_UNSPECIFIED" : Not specified.
  /// - "UNUSED" : The user list was closed because it has not been used in
  /// targeting recently. See
  /// https://support.google.com/google-ads/answer/2472738 for details.
  core.String? closingReason;

  /// A description of the user list.
  ///
  /// Optional.
  core.String? description;

  /// The display name of the user list.
  ///
  /// Required.
  core.String? displayName;

  /// The unique ID of the user list.
  ///
  /// Output only.
  core.String? id;

  /// Represents a user list that is populated by user ingested data.
  ///
  /// Optional.
  IngestedUserListInfo? ingestedUserListInfo;

  /// An ID from external system.
  ///
  /// It is used by user list sellers to correlate IDs on their systems.
  ///
  /// Optional.
  core.String? integrationCode;

  /// The duration a user remains in the user list.
  ///
  /// Valid durations are exact multiples of 24 hours (86400 seconds). Providing
  /// a value that is not an exact multiple of 24 hours will result in an
  /// INVALID_ARGUMENT error.
  ///
  /// Optional.
  core.String? membershipDuration;

  /// Membership status of this user list.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MEMBERSHIP_STATUS_UNSPECIFIED" : Not specified.
  /// - "OPEN" : Open status - User list is accruing members and can be targeted
  /// to.
  /// - "CLOSED" : Closed status - No new members being added.
  core.String? membershipStatus;

  /// Identifier.
  ///
  /// The resource name of the user list. Format:
  /// accountTypes/{account_type}/accounts/{account}/userLists/{user_list}
  core.String? name;

  /// An option that indicates if a user may edit a list.
  ///
  /// Output only.
  core.bool? readOnly;

  /// Estimated number of members in this user list in different target
  /// networks.
  ///
  /// Output only.
  SizeInfo? sizeInfo;

  /// Eligibility information for different target networks.
  ///
  /// Optional.
  TargetNetworkInfo? targetNetworkInfo;

  UserList({
    this.accessReason,
    this.accountAccessStatus,
    this.closingReason,
    this.description,
    this.displayName,
    this.id,
    this.ingestedUserListInfo,
    this.integrationCode,
    this.membershipDuration,
    this.membershipStatus,
    this.name,
    this.readOnly,
    this.sizeInfo,
    this.targetNetworkInfo,
  });

  UserList.fromJson(core.Map json_)
    : this(
        accessReason: json_['accessReason'] as core.String?,
        accountAccessStatus: json_['accountAccessStatus'] as core.String?,
        closingReason: json_['closingReason'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        id: json_['id'] as core.String?,
        ingestedUserListInfo: json_.containsKey('ingestedUserListInfo')
            ? IngestedUserListInfo.fromJson(
                json_['ingestedUserListInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        integrationCode: json_['integrationCode'] as core.String?,
        membershipDuration: json_['membershipDuration'] as core.String?,
        membershipStatus: json_['membershipStatus'] as core.String?,
        name: json_['name'] as core.String?,
        readOnly: json_['readOnly'] as core.bool?,
        sizeInfo: json_.containsKey('sizeInfo')
            ? SizeInfo.fromJson(
                json_['sizeInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        targetNetworkInfo: json_.containsKey('targetNetworkInfo')
            ? TargetNetworkInfo.fromJson(
                json_['targetNetworkInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessReason = this.accessReason;
    final accountAccessStatus = this.accountAccessStatus;
    final closingReason = this.closingReason;
    final description = this.description;
    final displayName = this.displayName;
    final id = this.id;
    final ingestedUserListInfo = this.ingestedUserListInfo;
    final integrationCode = this.integrationCode;
    final membershipDuration = this.membershipDuration;
    final membershipStatus = this.membershipStatus;
    final name = this.name;
    final readOnly = this.readOnly;
    final sizeInfo = this.sizeInfo;
    final targetNetworkInfo = this.targetNetworkInfo;
    return {
      'accessReason': ?accessReason,
      'accountAccessStatus': ?accountAccessStatus,
      'closingReason': ?closingReason,
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'ingestedUserListInfo': ?ingestedUserListInfo,
      'integrationCode': ?integrationCode,
      'membershipDuration': ?membershipDuration,
      'membershipStatus': ?membershipStatus,
      'name': ?name,
      'readOnly': ?readOnly,
      'sizeInfo': ?sizeInfo,
      'targetNetworkInfo': ?targetNetworkInfo,
    };
  }
}

/// A user list direct license.
///
/// This feature is only available to data partners.
class UserListDirectLicense {
  /// Name of client customer which the user list is being licensed to.
  ///
  /// This field is read-only.
  ///
  /// Output only.
  core.String? clientAccountDisplayName;

  /// ID of client customer which the user list is being licensed to.
  ///
  /// Immutable.
  core.String? clientAccountId;

  /// Account type of client customer which the user list is being licensed to.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "USER_LIST_LICENSE_CLIENT_ACCOUNT_TYPE_UNKNOWN" : Unknown.
  /// - "USER_LIST_LICENSE_CLIENT_ACCOUNT_TYPE_GOOGLE_ADS" : Google Ads
  /// customer.
  /// - "USER_LIST_LICENSE_CLIENT_ACCOUNT_TYPE_DISPLAY_VIDEO_PARTNER" : Display
  /// & Video 360 partner.
  /// - "USER_LIST_LICENSE_CLIENT_ACCOUNT_TYPE_DISPLAY_VIDEO_ADVERTISER" :
  /// Display & Video 360 advertiser.
  /// - "USER_LIST_LICENSE_CLIENT_ACCOUNT_TYPE_GOOGLE_AD_MANAGER_AUDIENCE_LINK"
  /// : Google Ad Manager audience link.
  core.String? clientAccountType;

  /// Pricing history of this user list license.
  ///
  /// This field is read-only.
  ///
  /// Output only.
  core.List<UserListLicensePricing>? historicalPricings;

  /// Metrics related to this license This field is read-only and only populated
  /// if the start and end dates are set in the ListUserListDirectLicenses call
  ///
  /// Output only.
  UserListLicenseMetrics? metrics;

  /// Identifier.
  ///
  /// The resource name of the user list direct license.
  core.String? name;

  /// UserListDirectLicense pricing.
  ///
  /// Optional.
  UserListLicensePricing? pricing;

  /// Status of UserListDirectLicense - ENABLED or DISABLED.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "USER_LIST_LICENSE_STATUS_UNSPECIFIED" : Unknown.
  /// - "USER_LIST_LICENSE_STATUS_ENABLED" : Active status - user list is still
  /// being licensed.
  /// - "USER_LIST_LICENSE_STATUS_DISABLED" : Inactive status - user list is no
  /// longer being licensed.
  core.String? status;

  /// Name of the user list being licensed.
  ///
  /// This field is read-only.
  ///
  /// Output only.
  core.String? userListDisplayName;

  /// ID of the user list being licensed.
  ///
  /// Immutable.
  core.String? userListId;

  UserListDirectLicense({
    this.clientAccountDisplayName,
    this.clientAccountId,
    this.clientAccountType,
    this.historicalPricings,
    this.metrics,
    this.name,
    this.pricing,
    this.status,
    this.userListDisplayName,
    this.userListId,
  });

  UserListDirectLicense.fromJson(core.Map json_)
    : this(
        clientAccountDisplayName:
            json_['clientAccountDisplayName'] as core.String?,
        clientAccountId: json_['clientAccountId'] as core.String?,
        clientAccountType: json_['clientAccountType'] as core.String?,
        historicalPricings: (json_['historicalPricings'] as core.List?)
            ?.map(
              (value) => UserListLicensePricing.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        metrics: json_.containsKey('metrics')
            ? UserListLicenseMetrics.fromJson(
                json_['metrics'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        pricing: json_.containsKey('pricing')
            ? UserListLicensePricing.fromJson(
                json_['pricing'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        status: json_['status'] as core.String?,
        userListDisplayName: json_['userListDisplayName'] as core.String?,
        userListId: json_['userListId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clientAccountDisplayName = this.clientAccountDisplayName;
    final clientAccountId = this.clientAccountId;
    final clientAccountType = this.clientAccountType;
    final historicalPricings = this.historicalPricings;
    final metrics = this.metrics;
    final name = this.name;
    final pricing = this.pricing;
    final status = this.status;
    final userListDisplayName = this.userListDisplayName;
    final userListId = this.userListId;
    return {
      'clientAccountDisplayName': ?clientAccountDisplayName,
      'clientAccountId': ?clientAccountId,
      'clientAccountType': ?clientAccountType,
      'historicalPricings': ?historicalPricings,
      'metrics': ?metrics,
      'name': ?name,
      'pricing': ?pricing,
      'status': ?status,
      'userListDisplayName': ?userListDisplayName,
      'userListId': ?userListId,
    };
  }
}

/// A user list global license.
///
/// This feature is only available to data partners.
class UserListGlobalLicense {
  /// Pricing history of this user list license.
  ///
  /// This field is read-only.
  ///
  /// Output only.
  core.List<UserListLicensePricing>? historicalPricings;

  /// Product type of client customer which the user list is being licensed to.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "USER_LIST_GLOBAL_LICENSE_TYPE_UNSPECIFIED" : UNSPECIFIED.
  /// - "USER_LIST_GLOBAL_LICENSE_TYPE_RESELLER" : Reseller license.
  /// - "USER_LIST_GLOBAL_LICENSE_TYPE_DATA_MART_SELL_SIDE" : DataMart Sell Side
  /// license.
  /// - "USER_LIST_GLOBAL_LICENSE_TYPE_DATA_MART_BUY_SIDE" : DataMart Buy Side
  /// license.
  core.String? licenseType;

  /// Metrics related to this license This field is read-only and only populated
  /// if the start and end dates are set in the ListUserListGlobalLicenses call
  ///
  /// Output only.
  UserListLicenseMetrics? metrics;

  /// Identifier.
  ///
  /// The resource name of the user list global license.
  core.String? name;

  /// UserListGlobalLicense pricing.
  ///
  /// Optional.
  UserListLicensePricing? pricing;

  /// Status of UserListGlobalLicense - ENABLED or DISABLED.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "USER_LIST_LICENSE_STATUS_UNSPECIFIED" : Unknown.
  /// - "USER_LIST_LICENSE_STATUS_ENABLED" : Active status - user list is still
  /// being licensed.
  /// - "USER_LIST_LICENSE_STATUS_DISABLED" : Inactive status - user list is no
  /// longer being licensed.
  core.String? status;

  /// Name of the user list being licensed.
  ///
  /// This field is read-only.
  ///
  /// Output only.
  core.String? userListDisplayName;

  /// ID of the user list being licensed.
  ///
  /// Immutable.
  core.String? userListId;

  UserListGlobalLicense({
    this.historicalPricings,
    this.licenseType,
    this.metrics,
    this.name,
    this.pricing,
    this.status,
    this.userListDisplayName,
    this.userListId,
  });

  UserListGlobalLicense.fromJson(core.Map json_)
    : this(
        historicalPricings: (json_['historicalPricings'] as core.List?)
            ?.map(
              (value) => UserListLicensePricing.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        licenseType: json_['licenseType'] as core.String?,
        metrics: json_.containsKey('metrics')
            ? UserListLicenseMetrics.fromJson(
                json_['metrics'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        pricing: json_.containsKey('pricing')
            ? UserListLicensePricing.fromJson(
                json_['pricing'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        status: json_['status'] as core.String?,
        userListDisplayName: json_['userListDisplayName'] as core.String?,
        userListId: json_['userListId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final historicalPricings = this.historicalPricings;
    final licenseType = this.licenseType;
    final metrics = this.metrics;
    final name = this.name;
    final pricing = this.pricing;
    final status = this.status;
    final userListDisplayName = this.userListDisplayName;
    final userListId = this.userListId;
    return {
      'historicalPricings': ?historicalPricings,
      'licenseType': ?licenseType,
      'metrics': ?metrics,
      'name': ?name,
      'pricing': ?pricing,
      'status': ?status,
      'userListDisplayName': ?userListDisplayName,
      'userListId': ?userListId,
    };
  }
}

/// Information about a customer of a user list global license.
///
/// This will automatically be created by the system when a customer purchases a
/// global license.
class UserListGlobalLicenseCustomerInfo {
  /// Name of client customer which the user list is being licensed to.
  ///
  /// Output only.
  core.String? clientAccountDisplayName;

  /// ID of client customer which the user list is being licensed to.
  ///
  /// Output only.
  core.String? clientAccountId;

  /// Product type of client customer which the user list is being licensed to.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "USER_LIST_LICENSE_CLIENT_ACCOUNT_TYPE_UNKNOWN" : Unknown.
  /// - "USER_LIST_LICENSE_CLIENT_ACCOUNT_TYPE_GOOGLE_ADS" : Google Ads
  /// customer.
  /// - "USER_LIST_LICENSE_CLIENT_ACCOUNT_TYPE_DISPLAY_VIDEO_PARTNER" : Display
  /// & Video 360 partner.
  /// - "USER_LIST_LICENSE_CLIENT_ACCOUNT_TYPE_DISPLAY_VIDEO_ADVERTISER" :
  /// Display & Video 360 advertiser.
  /// - "USER_LIST_LICENSE_CLIENT_ACCOUNT_TYPE_GOOGLE_AD_MANAGER_AUDIENCE_LINK"
  /// : Google Ad Manager audience link.
  core.String? clientAccountType;

  /// Pricing history of this user list license.
  ///
  /// Output only.
  core.List<UserListLicensePricing>? historicalPricings;

  /// Product type of client customer which the user list is being licensed to.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "USER_LIST_GLOBAL_LICENSE_TYPE_UNSPECIFIED" : UNSPECIFIED.
  /// - "USER_LIST_GLOBAL_LICENSE_TYPE_RESELLER" : Reseller license.
  /// - "USER_LIST_GLOBAL_LICENSE_TYPE_DATA_MART_SELL_SIDE" : DataMart Sell Side
  /// license.
  /// - "USER_LIST_GLOBAL_LICENSE_TYPE_DATA_MART_BUY_SIDE" : DataMart Buy Side
  /// license.
  core.String? licenseType;

  /// Metrics related to this license This field is only populated if the start
  /// and end dates are set in the ListUserListGlobalLicenseCustomerInfos call.
  ///
  /// Output only.
  UserListLicenseMetrics? metrics;

  /// Identifier.
  ///
  /// The resource name of the user list global license customer.
  core.String? name;

  /// UserListDirectLicense pricing.
  ///
  /// Output only.
  UserListLicensePricing? pricing;

  /// Status of UserListDirectLicense - ENABLED or DISABLED.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "USER_LIST_LICENSE_STATUS_UNSPECIFIED" : Unknown.
  /// - "USER_LIST_LICENSE_STATUS_ENABLED" : Active status - user list is still
  /// being licensed.
  /// - "USER_LIST_LICENSE_STATUS_DISABLED" : Inactive status - user list is no
  /// longer being licensed.
  core.String? status;

  /// Name of the user list being licensed.
  ///
  /// Output only.
  core.String? userListDisplayName;

  /// ID of the user list being licensed.
  ///
  /// Output only.
  core.String? userListId;

  UserListGlobalLicenseCustomerInfo({
    this.clientAccountDisplayName,
    this.clientAccountId,
    this.clientAccountType,
    this.historicalPricings,
    this.licenseType,
    this.metrics,
    this.name,
    this.pricing,
    this.status,
    this.userListDisplayName,
    this.userListId,
  });

  UserListGlobalLicenseCustomerInfo.fromJson(core.Map json_)
    : this(
        clientAccountDisplayName:
            json_['clientAccountDisplayName'] as core.String?,
        clientAccountId: json_['clientAccountId'] as core.String?,
        clientAccountType: json_['clientAccountType'] as core.String?,
        historicalPricings: (json_['historicalPricings'] as core.List?)
            ?.map(
              (value) => UserListLicensePricing.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        licenseType: json_['licenseType'] as core.String?,
        metrics: json_.containsKey('metrics')
            ? UserListLicenseMetrics.fromJson(
                json_['metrics'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        pricing: json_.containsKey('pricing')
            ? UserListLicensePricing.fromJson(
                json_['pricing'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        status: json_['status'] as core.String?,
        userListDisplayName: json_['userListDisplayName'] as core.String?,
        userListId: json_['userListId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clientAccountDisplayName = this.clientAccountDisplayName;
    final clientAccountId = this.clientAccountId;
    final clientAccountType = this.clientAccountType;
    final historicalPricings = this.historicalPricings;
    final licenseType = this.licenseType;
    final metrics = this.metrics;
    final name = this.name;
    final pricing = this.pricing;
    final status = this.status;
    final userListDisplayName = this.userListDisplayName;
    final userListId = this.userListId;
    return {
      'clientAccountDisplayName': ?clientAccountDisplayName,
      'clientAccountId': ?clientAccountId,
      'clientAccountType': ?clientAccountType,
      'historicalPricings': ?historicalPricings,
      'licenseType': ?licenseType,
      'metrics': ?metrics,
      'name': ?name,
      'pricing': ?pricing,
      'status': ?status,
      'userListDisplayName': ?userListDisplayName,
      'userListId': ?userListId,
    };
  }
}

/// Metrics related to a user list license.
class UserListLicenseMetrics {
  /// The number of clicks for the user list license.
  ///
  /// Output only.
  core.String? clickCount;

  /// The end date (inclusive) of the metrics in the format YYYYMMDD.
  ///
  /// For example, 20260102 represents January 2, 2026. If `start_date` is used
  /// in the filter, `end_date` is also required. If neither `start_date` nor
  /// `end_date` are included in the filter, the UserListLicenseMetrics fields
  /// will not be populated in the response.
  ///
  /// Output only.
  core.String? endDate;

  /// The number of impressions for the user list license.
  ///
  /// Output only.
  core.String? impressionCount;

  /// The revenue for the user list license in USD micros.
  ///
  /// Output only.
  core.String? revenueUsdMicros;

  /// The start date (inclusive) of the metrics in the format YYYYMMDD.
  ///
  /// For example, 20260102 represents January 2, 2026. If `end_date` is used in
  /// the filter, `start_date` is also required. If neither `start_date` nor
  /// `end_date` are included in the filter, the UserListLicenseMetrics fields
  /// will not be populated in the response.
  ///
  /// Output only.
  core.String? startDate;

  UserListLicenseMetrics({
    this.clickCount,
    this.endDate,
    this.impressionCount,
    this.revenueUsdMicros,
    this.startDate,
  });

  UserListLicenseMetrics.fromJson(core.Map json_)
    : this(
        clickCount: json_['clickCount'] as core.String?,
        endDate: json_['endDate'] as core.String?,
        impressionCount: json_['impressionCount'] as core.String?,
        revenueUsdMicros: json_['revenueUsdMicros'] as core.String?,
        startDate: json_['startDate'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clickCount = this.clickCount;
    final endDate = this.endDate;
    final impressionCount = this.impressionCount;
    final revenueUsdMicros = this.revenueUsdMicros;
    final startDate = this.startDate;
    return {
      'clickCount': ?clickCount,
      'endDate': ?endDate,
      'impressionCount': ?impressionCount,
      'revenueUsdMicros': ?revenueUsdMicros,
      'startDate': ?startDate,
    };
  }
}

/// A user list license pricing.
class UserListLicensePricing {
  /// The buyer approval state of this pricing.
  ///
  /// This field is read-only.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "USER_LIST_PRICING_BUYER_APPROVAL_STATE_UNSPECIFIED" : UNSPECIFIED.
  /// - "PENDING" : User list client has not yet accepted the pricing terms set
  /// by the user list owner.
  /// - "APPROVED" : User list client has accepted the pricing terms set by the
  /// user list owner.
  /// - "REJECTED" : User list client has rejected the pricing terms set by the
  /// user list owner.
  core.String? buyerApprovalState;

  /// The cost associated with the model, in micro units (10^-6), in the
  /// currency specified by the currency_code field.
  ///
  /// For example, 2000000 means $2 if `currency_code` is `USD`.
  ///
  /// Optional.
  core.String? costMicros;

  /// The cost type of this pricing.
  ///
  /// Can be set only in the `create` operation. Can't be updated for an
  /// existing license.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "USER_LIST_PRICING_COST_TYPE_UNSPECIFIED" : Unspecified.
  /// - "CPC" : Cost per click.
  /// - "CPM" : Cost per mille (thousand impressions).
  /// - "MEDIA_SHARE" : Media share.
  core.String? costType;

  /// The currency in which cost and max_cost is specified.
  ///
  /// Must be a three-letter currency code defined in ISO 4217.
  ///
  /// Optional.
  core.String? currencyCode;

  /// End time of the pricing.
  ///
  /// Optional.
  core.String? endTime;

  /// The maximum CPM a commerce audience can be charged when the MEDIA_SHARE
  /// cost type is used.
  ///
  /// The value is in micro units (10^-6) and in the currency specified by the
  /// currency_code field. For example, 2000000 means $2 if `currency_code` is
  /// `USD`. This is only relevant when cost_type is MEDIA_SHARE. When cost_type
  /// is not MEDIA_SHARE, and this field is set, a MAX_COST_NOT_ALLOWED error
  /// will be returned. If not set or set to`0`, there is no cap.
  ///
  /// Optional.
  core.String? maxCostMicros;

  /// Whether this pricing is active.
  ///
  /// Output only.
  core.bool? pricingActive;

  /// The ID of this pricing.
  ///
  /// Output only.
  core.String? pricingId;

  /// Start time of the pricing.
  ///
  /// Output only.
  core.String? startTime;

  UserListLicensePricing({
    this.buyerApprovalState,
    this.costMicros,
    this.costType,
    this.currencyCode,
    this.endTime,
    this.maxCostMicros,
    this.pricingActive,
    this.pricingId,
    this.startTime,
  });

  UserListLicensePricing.fromJson(core.Map json_)
    : this(
        buyerApprovalState: json_['buyerApprovalState'] as core.String?,
        costMicros: json_['costMicros'] as core.String?,
        costType: json_['costType'] as core.String?,
        currencyCode: json_['currencyCode'] as core.String?,
        endTime: json_['endTime'] as core.String?,
        maxCostMicros: json_['maxCostMicros'] as core.String?,
        pricingActive: json_['pricingActive'] as core.bool?,
        pricingId: json_['pricingId'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final buyerApprovalState = this.buyerApprovalState;
    final costMicros = this.costMicros;
    final costType = this.costType;
    final currencyCode = this.currencyCode;
    final endTime = this.endTime;
    final maxCostMicros = this.maxCostMicros;
    final pricingActive = this.pricingActive;
    final pricingId = this.pricingId;
    final startTime = this.startTime;
    return {
      'buyerApprovalState': ?buyerApprovalState,
      'costMicros': ?costMicros,
      'costType': ?costType,
      'currencyCode': ?currencyCode,
      'endTime': ?endTime,
      'maxCostMicros': ?maxCostMicros,
      'pricingActive': ?pricingActive,
      'pricingId': ?pricingId,
      'startTime': ?startTime,
    };
  }
}

/// Advertiser-assessed information about the user at the time that the event
/// happened.
///
/// See https://support.google.com/google-ads/answer/14007601 for more details.
class UserProperties {
  /// A bucket of any additional
  /// [user properties](https://developers.google.com/analytics/devguides/collection/protocol/ga4/user-properties)
  /// for the user associated with this event.
  ///
  /// Optional.
  core.List<UserProperty>? additionalUserProperties;

  /// Type of the customer associated with the event.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CUSTOMER_TYPE_UNSPECIFIED" : Unspecified CustomerType. Should never be
  /// used.
  /// - "NEW" : The customer is new to the advertiser.
  /// - "RETURNING" : The customer is returning to the advertiser.
  /// - "REENGAGED" : The customer has re-engaged with the advertiser.
  core.String? customerType;

  /// The advertiser-assessed value of the customer.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CUSTOMER_VALUE_BUCKET_UNSPECIFIED" : Unspecified CustomerValueBucket.
  /// Should never be used.
  /// - "LOW" : The customer is low value.
  /// - "MEDIUM" : The customer is medium value.
  /// - "HIGH" : The customer is high value.
  core.String? customerValueBucket;

  UserProperties({
    this.additionalUserProperties,
    this.customerType,
    this.customerValueBucket,
  });

  UserProperties.fromJson(core.Map json_)
    : this(
        additionalUserProperties:
            (json_['additionalUserProperties'] as core.List?)
                ?.map(
                  (value) => UserProperty.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        customerType: json_['customerType'] as core.String?,
        customerValueBucket: json_['customerValueBucket'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalUserProperties = this.additionalUserProperties;
    final customerType = this.customerType;
    final customerValueBucket = this.customerValueBucket;
    return {
      'additionalUserProperties': ?additionalUserProperties,
      'customerType': ?customerType,
      'customerValueBucket': ?customerValueBucket,
    };
  }
}

/// A bucket of any additional
/// [user properties](https://developers.google.com/analytics/devguides/collection/protocol/ga4/user-properties)
/// for the user associated with this event.
class UserProperty {
  /// The name of the user property to use.
  ///
  /// Required.
  core.String? propertyName;

  /// The string representation of the value of the user property to use.
  ///
  /// Required.
  core.String? value;

  UserProperty({this.propertyName, this.value});

  UserProperty.fromJson(core.Map json_)
    : this(
        propertyName: json_['propertyName'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final propertyName = this.propertyName;
    final value = this.value;
    return {'propertyName': ?propertyName, 'value': ?value};
  }
}

/// Details of the viewability of the ad served.
class ViewabilityInfo {
  /// The duration of the ad media.
  ///
  /// Optional.
  core.String? mediaDuration;

  /// The amount of the media that was played as discrete quartiles.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MEDIA_QUARTILE_UNSPECIFIED" : Unspecified media quartile.
  /// - "MEDIA_QUARTILE_START" : Start.
  /// - "MEDIA_QUARTILE_FIRST_QUARTILE" : First quartile.
  /// - "MEDIA_QUARTILE_MIDPOINT" : Midpoint.
  /// - "MEDIA_QUARTILE_THIRD_QUARTILE" : Third quartile.
  /// - "MEDIA_QUARTILE_COMPLETE" : Complete.
  core.String? mediaQuartile;

  /// Whether the ad media was skippable or not.
  ///
  /// Optional.
  core.bool? mediaSkippable;

  /// The numerical percent (0-100) of the volume of the media playback.
  ///
  /// Optional.
  core.int? mediaVolumePercent;

  /// The duration of playback of the ad media, regardless of whether it was
  /// viewable or not.
  ///
  /// Optional.
  core.String? playbackDuration;

  /// The type of the event.
  ///
  /// Required.
  /// Possible string values are:
  /// - "VIEW_TYPE_UNSPECIFIED" : Unspecified view type.
  /// - "VIEW_TYPE_MRC_VIEWED" : MRC viewed.
  /// - "VIEW_TYPE_MRC_RENDERED" : MRC rendered.
  core.String? viewType;

  /// The amount of time the ad was viewable for.
  ///
  /// Optional.
  core.String? viewableDuration;

  /// The numerical percent (0-100) of the pixels that were viewable.
  ///
  /// Optional.
  core.int? viewablePercent;

  ViewabilityInfo({
    this.mediaDuration,
    this.mediaQuartile,
    this.mediaSkippable,
    this.mediaVolumePercent,
    this.playbackDuration,
    this.viewType,
    this.viewableDuration,
    this.viewablePercent,
  });

  ViewabilityInfo.fromJson(core.Map json_)
    : this(
        mediaDuration: json_['mediaDuration'] as core.String?,
        mediaQuartile: json_['mediaQuartile'] as core.String?,
        mediaSkippable: json_['mediaSkippable'] as core.bool?,
        mediaVolumePercent: json_['mediaVolumePercent'] as core.int?,
        playbackDuration: json_['playbackDuration'] as core.String?,
        viewType: json_['viewType'] as core.String?,
        viewableDuration: json_['viewableDuration'] as core.String?,
        viewablePercent: json_['viewablePercent'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final mediaDuration = this.mediaDuration;
    final mediaQuartile = this.mediaQuartile;
    final mediaSkippable = this.mediaSkippable;
    final mediaVolumePercent = this.mediaVolumePercent;
    final playbackDuration = this.playbackDuration;
    final viewType = this.viewType;
    final viewableDuration = this.viewableDuration;
    final viewablePercent = this.viewablePercent;
    return {
      'mediaDuration': ?mediaDuration,
      'mediaQuartile': ?mediaQuartile,
      'mediaSkippable': ?mediaSkippable,
      'mediaVolumePercent': ?mediaVolumePercent,
      'playbackDuration': ?playbackDuration,
      'viewType': ?viewType,
      'viewableDuration': ?viewableDuration,
      'viewablePercent': ?viewablePercent,
    };
  }
}

/// The warning count for a given warning reason.
class WarningCount {
  /// The warning reason.
  /// Possible string values are:
  /// - "PROCESSING_WARNING_REASON_UNSPECIFIED" : The processing warning reason
  /// is unknown.
  /// - "PROCESSING_WARNING_REASON_KEK_PERMISSION_DENIED" : The system did not
  /// have the permissions needed to access the KEK.
  /// - "PROCESSING_WARNING_REASON_DEK_DECRYPTION_ERROR" : The DEK failed to be
  /// decrypted.
  /// - "PROCESSING_WARNING_REASON_DECRYPTION_ERROR" : The event has a
  /// decryption error.
  /// - "PROCESSING_WARNING_REASON_WIP_AUTH_FAILED" : The WIP could not be used
  /// because it was rejected by its attestation condition.
  /// - "PROCESSING_WARNING_REASON_INVALID_WIP" : The WIP is formatted
  /// incorrectly or the WIP does not exist.
  /// - "PROCESSING_WARNING_REASON_INVALID_KEK" : The KEK cannot decrypt data
  /// because it is the wrong KEK, or it does not exist.
  /// - "PROCESSING_WARNING_REASON_USER_IDENTIFIER_DECRYPTION_ERROR" : Failed to
  /// decrypt the UserIdentifier data using the DEK.
  /// - "PROCESSING_WARNING_REASON_INTERNAL_ERROR" : Internal error.
  /// - "PROCESSING_WARNING_REASON_AWS_AUTH_FAILED" : The system failed to
  /// authenticate with AWS.
  core.String? reason;

  /// The count of records that have a warning.
  core.String? recordCount;

  WarningCount({this.reason, this.recordCount});

  WarningCount.fromJson(core.Map json_)
    : this(
        reason: json_['reason'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final reason = this.reason;
    final recordCount = this.recordCount;
    return {'reason': ?reason, 'recordCount': ?recordCount};
  }
}

/// Warning counts for each type of warning.
class WarningInfo {
  /// A list of warnings and counts per warning reason.
  core.List<WarningCount>? warningCounts;

  WarningInfo({this.warningCounts});

  WarningInfo.fromJson(core.Map json_)
    : this(
        warningCounts: (json_['warningCounts'] as core.List?)
            ?.map(
              (value) => WarningCount.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final warningCounts = this.warningCounts;
    return {'warningCounts': ?warningCounts};
  }
}
