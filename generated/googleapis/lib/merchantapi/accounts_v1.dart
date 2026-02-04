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

/// Merchant API - accounts_v1
///
/// Programmatically manage your Merchant Center Accounts.
///
/// For more information, see <https://developers.google.com/merchant/api>
///
/// Create an instance of [MerchantApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsAutofeedSettingsResource]
///   - [AccountsAutomaticImprovementsResource]
///   - [AccountsBusinessIdentityResource]
///   - [AccountsBusinessInfoResource]
///   - [AccountsDeveloperRegistrationResource]
///   - [AccountsEmailPreferencesResource]
///   - [AccountsGbpAccountsResource]
///   - [AccountsHomepageResource]
///   - [AccountsIssuesResource]
///   - [AccountsOmnichannelSettingsResource]
///     - [AccountsOmnichannelSettingsLfpProvidersResource]
///   - [AccountsOnlineReturnPoliciesResource]
///   - [AccountsProgramsResource]
///     - [AccountsProgramsCheckoutSettingsResource]
///   - [AccountsRegionsResource]
///   - [AccountsRelationshipsResource]
///   - [AccountsServicesResource]
///   - [AccountsShippingSettingsResource]
///   - [AccountsTermsOfServiceAgreementStatesResource]
///   - [AccountsUsersResource]
///     - [AccountsUsersMeResource]
/// - [TermsOfServiceResource]
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
  TermsOfServiceResource get termsOfService =>
      TermsOfServiceResource(_requester);

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

  AccountsAutofeedSettingsResource get autofeedSettings =>
      AccountsAutofeedSettingsResource(_requester);
  AccountsAutomaticImprovementsResource get automaticImprovements =>
      AccountsAutomaticImprovementsResource(_requester);
  AccountsBusinessIdentityResource get businessIdentity =>
      AccountsBusinessIdentityResource(_requester);
  AccountsBusinessInfoResource get businessInfo =>
      AccountsBusinessInfoResource(_requester);
  AccountsDeveloperRegistrationResource get developerRegistration =>
      AccountsDeveloperRegistrationResource(_requester);
  AccountsEmailPreferencesResource get emailPreferences =>
      AccountsEmailPreferencesResource(_requester);
  AccountsGbpAccountsResource get gbpAccounts =>
      AccountsGbpAccountsResource(_requester);
  AccountsHomepageResource get homepage => AccountsHomepageResource(_requester);
  AccountsIssuesResource get issues => AccountsIssuesResource(_requester);
  AccountsOmnichannelSettingsResource get omnichannelSettings =>
      AccountsOmnichannelSettingsResource(_requester);
  AccountsOnlineReturnPoliciesResource get onlineReturnPolicies =>
      AccountsOnlineReturnPoliciesResource(_requester);
  AccountsProgramsResource get programs => AccountsProgramsResource(_requester);
  AccountsRegionsResource get regions => AccountsRegionsResource(_requester);
  AccountsRelationshipsResource get relationships =>
      AccountsRelationshipsResource(_requester);
  AccountsServicesResource get services => AccountsServicesResource(_requester);
  AccountsShippingSettingsResource get shippingSettings =>
      AccountsShippingSettingsResource(_requester);
  AccountsTermsOfServiceAgreementStatesResource
  get termsOfServiceAgreementStates =>
      AccountsTermsOfServiceAgreementStatesResource(_requester);
  AccountsUsersResource get users => AccountsUsersResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a Merchant Center account with additional configuration.
  ///
  /// Adds the user that makes the request as an admin for the new account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Account].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Account> createAndConfigure(
    CreateAndConfigureAccountRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'accounts/v1/accounts:createAndConfigure';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Account.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified account regardless of its type: standalone, advanced
  /// account or sub-account.
  ///
  /// Deleting an advanced account leads to the deletion of all of its
  /// sub-accounts. This also deletes the account's \[developer registration
  /// entity\](/merchant/api/reference/rest/accounts_v1/accounts.developerRegistration)
  /// and any associated GCP project to the account. Executing this method
  /// requires admin access. The deletion succeeds only if the account does not
  /// provide services to any other account and has no processed offers. You can
  /// use the `force` parameter to override this.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the account to delete. Format:
  /// `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [force] - Optional. If set to `true`, the account is deleted even if it
  /// provides services to other accounts or has processed offers.
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
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'force': ?force == null ? null : ['${force}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves an account from your Merchant Center account.
  ///
  /// After inserting, updating, or deleting an account, it may take several
  /// minutes before changes take effect.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the account to retrieve. Format:
  /// `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Account].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Account> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Account.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Note: For the `accounts.list` method, quota and limits usage are charged
  /// for each user, and not for the Merchant Center ID or the advanced account
  /// ID.
  ///
  /// To list several sub-accounts, you should use the
  /// `accounts.listSubaccounts` method, which is more suitable for advanced
  /// accounts use case.
  ///
  /// Request parameters:
  ///
  /// [filter] - Optional. Returns only accounts that match the
  /// [filter](https://developers.google.com/merchant/api/guides/accounts/filter).
  /// For more details, see the
  /// [filter syntax reference](https://developers.google.com/merchant/api/guides/accounts/filter-syntax).
  ///
  /// [pageSize] - Optional. The maximum number of accounts to return. The
  /// service may return fewer than this value. If unspecified, at most 250
  /// accounts are returned. The maximum value is 500; values above 500 are
  /// coerced to 500.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `accounts.list` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided in the `accounts.list` request
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAccountsResponse> list({
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

    const url_ = 'accounts/v1/accounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAccountsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List all sub-accounts for a given advanced account.
  ///
  /// This is a convenience wrapper for the more powerful `accounts.list`
  /// method. This method will produce the same results as calling
  /// `ListsAccounts` with the following filter:
  /// `relationship(providerId={parent} AND
  /// service(type="ACCOUNT_AGGREGATION"))`
  ///
  /// Request parameters:
  ///
  /// [provider] - Required. The aggregation service provider. Format:
  /// `accounts/{accountId}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of accounts to return. The
  /// service may return fewer than this value. If unspecified, at most 250
  /// accounts are returned. The maximum value is 500; values above 500 are
  /// coerced to 500.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `accounts.list` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided in the `accounts.list` request
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSubAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSubAccountsResponse> listSubaccounts(
    core.String provider, {
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
        'accounts/v1/' + core.Uri.encodeFull('$provider') + ':listSubaccounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSubAccountsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an account regardless of its type: standalone, advanced account or
  /// sub-account.
  ///
  /// Executing this method requires admin access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the account. Format:
  /// `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. List of fields being updated. The following
  /// fields are supported (in both `snake_case` and `lowerCamelCase`): -
  /// `account_name` - `adult_content` - `language_code` - `time_zone`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Account].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Account> patch(
    Account request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Account.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsAutofeedSettingsResource {
  final commons.ApiRequester _requester;

  AccountsAutofeedSettingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Retrieves the autofeed settings of an account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the autofeed settings. Format:
  /// `accounts/{account}/autofeedSettings`
  /// Value must have pattern `^accounts/\[^/\]+/autofeedSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AutofeedSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AutofeedSettings> getAutofeedSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AutofeedSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the autofeed settings of an account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the autofeed settings. Format:
  /// `accounts/{account}/autofeedSettings`.
  /// Value must have pattern `^accounts/\[^/\]+/autofeedSettings$`.
  ///
  /// [updateMask] - Required. List of fields being updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AutofeedSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AutofeedSettings> updateAutofeedSettings(
    AutofeedSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return AutofeedSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsAutomaticImprovementsResource {
  final commons.ApiRequester _requester;

  AccountsAutomaticImprovementsResource(commons.ApiRequester client)
    : _requester = client;

  /// Retrieves the automatic improvements of an account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the automatic improvements.
  /// Format: `accounts/{account}/automaticImprovements`
  /// Value must have pattern `^accounts/\[^/\]+/automaticImprovements$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AutomaticImprovements].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AutomaticImprovements> getAutomaticImprovements(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AutomaticImprovements.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the automatic improvements of an account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the automatic improvements.
  /// Format: `accounts/{account}/automaticImprovements`.
  /// Value must have pattern `^accounts/\[^/\]+/automaticImprovements$`.
  ///
  /// [updateMask] - Required. List of fields being updated. The following
  /// fields are supported (in both `snake_case` and `lowerCamelCase`): -
  /// `item_updates` - `item_updates.account_level_settings` -
  /// `image_improvements` - `image_improvements.account_level_settings` -
  /// `shipping_improvements` -
  /// `shipping_improvements.allow_shipping_improvements`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AutomaticImprovements].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AutomaticImprovements> updateAutomaticImprovements(
    AutomaticImprovements request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return AutomaticImprovements.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsBusinessIdentityResource {
  final commons.ApiRequester _requester;

  AccountsBusinessIdentityResource(commons.ApiRequester client)
    : _requester = client;

  /// Retrieves the business identity of an account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the business identity. Format:
  /// `accounts/{account}/businessIdentity`. For example,
  /// `accounts/123456/businessIdentity`.
  /// Value must have pattern `^accounts/\[^/\]+/businessIdentity$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BusinessIdentity].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BusinessIdentity> getBusinessIdentity(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BusinessIdentity.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the business identity of an account.
  ///
  /// Executing this method requires admin access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the business identity. Format:
  /// `accounts/{account}/businessIdentity`
  /// Value must have pattern `^accounts/\[^/\]+/businessIdentity$`.
  ///
  /// [updateMask] - Optional. List of fields being updated. The following
  /// fields are supported (in both `snake_case` and `lowerCamelCase`): -
  /// `black_owned` - `latino_owned` - `promotions_consent` - `small_business` -
  /// `veteran_owned` - `women_owned`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BusinessIdentity].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BusinessIdentity> updateBusinessIdentity(
    BusinessIdentity request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return BusinessIdentity.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsBusinessInfoResource {
  final commons.ApiRequester _requester;

  AccountsBusinessInfoResource(commons.ApiRequester client)
    : _requester = client;

  /// Retrieves the business info of an account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the business info. Format:
  /// `accounts/{account}/businessInfo`. For example,
  /// `accounts/123456/businessInfo`.
  /// Value must have pattern `^accounts/\[^/\]+/businessInfo$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BusinessInfo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BusinessInfo> getBusinessInfo(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BusinessInfo.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the business info of an account.
  ///
  /// Executing this method requires admin access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the business info. Format:
  /// `accounts/{account}/businessInfo`
  /// Value must have pattern `^accounts/\[^/\]+/businessInfo$`.
  ///
  /// [updateMask] - Optional. List of fields being updated. The following
  /// fields are supported (in both `snake_case` and `lowerCamelCase`): -
  /// `address` - `customer_service` - `korean_business_registration_number`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BusinessInfo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BusinessInfo> updateBusinessInfo(
    BusinessInfo request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return BusinessInfo.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsDeveloperRegistrationResource {
  final commons.ApiRequester _requester;

  AccountsDeveloperRegistrationResource(commons.ApiRequester client)
    : _requester = client;

  /// Retrieves the merchant account that the calling GCP is registered with.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetAccountForGcpRegistrationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetAccountForGcpRegistrationResponse>
  getAccountForGcpRegistration({core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'accounts/v1/accounts:getAccountForGcpRegistration';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GetAccountForGcpRegistrationResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves a developer registration for a merchant.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The `name` (ID) of the developer registration.
  /// Value must have pattern `^accounts/\[^/\]+/developerRegistration$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeveloperRegistration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeveloperRegistration> getDeveloperRegistration(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DeveloperRegistration.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Registers the GCP used for the API call to the shopping account passed in
  /// the request.
  ///
  /// Will create a user with an "API developer" and add the "developer_email"
  /// as a contact with "API notifications" email preference on.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the developer registration to be created
  /// for the merchant account that the GCP will be registered with. Format:
  /// `accounts/{account}/developerRegistration`
  /// Value must have pattern `^accounts/\[^/\]+/developerRegistration$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeveloperRegistration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeveloperRegistration> registerGcp(
    RegisterGcpRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name') + ':registerGcp';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DeveloperRegistration.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Unregister the calling GCP from the calling shopping account.
  ///
  /// Note that the GCP will still be able to access the API for at most 1 day
  /// from the unregister succussful call.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the developer registration to be created
  /// for the merchant account that the GCP will be registered with. Format:
  /// `accounts/{account}/developerRegistration`
  /// Value must have pattern `^accounts/\[^/\]+/developerRegistration$`.
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
  async.Future<Empty> unregisterGcp(
    UnregisterGcpRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'accounts/v1/' + core.Uri.encodeFull('$name') + ':unregisterGcp';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsEmailPreferencesResource {
  final commons.ApiRequester _requester;

  AccountsEmailPreferencesResource(commons.ApiRequester client)
    : _requester = client;

  /// Returns the email preferences for a Merchant Center account user.
  ///
  /// This service only permits retrieving and updating email preferences for
  /// the authenticated user. Use the name=accounts / *
  /// /users/me/emailPreferences alias to get preferences for the authenticated
  /// user.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `EmailPreferences` resource. Format:
  /// `accounts/{account}/users/{email}/emailPreferences`
  /// Value must have pattern
  /// `^accounts/\[^/\]+/users/\[^/\]+/emailPreferences$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EmailPreferences].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EmailPreferences> getEmailPreferences(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EmailPreferences.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the email preferences for a Merchant Center account user.
  ///
  /// Advanced account users should specify the advanced account rather than a
  /// sub-account of the advanced account. Preferences which are not explicitly
  /// selected in the update mask will not be updated. It is invalid for updates
  /// to specify an UNCONFIRMED opt-in status value. Use the name=accounts / *
  /// /users/me/emailPreferences alias to update preferences for the
  /// authenticated user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the EmailPreferences. The endpoint is
  /// only supported for the authenticated user.
  /// Value must have pattern
  /// `^accounts/\[^/\]+/users/\[^/\]+/emailPreferences$`.
  ///
  /// [updateMask] - Required. List of fields being updated. The following
  /// fields are supported (in both `snake_case` and `lowerCamelCase`): -
  /// `news_and_tips`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EmailPreferences].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EmailPreferences> updateEmailPreferences(
    EmailPreferences request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return EmailPreferences.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsGbpAccountsResource {
  final commons.ApiRequester _requester;

  AccountsGbpAccountsResource(commons.ApiRequester client)
    : _requester = client;

  /// Link the specified merchant to a GBP account for all countries.
  ///
  /// To run this method, you must have admin access to the Merchant Center
  /// account. If you don't have admin access, the request fails with the error
  /// message `User is not an administrator of account {ACCOUNT_ID}`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource to which the GBP
  /// account is linked. Format: `accounts/{account}`.
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LinkGbpAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LinkGbpAccountResponse> linkGbpAccount(
    LinkGbpAccountRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'accounts/v1/' +
        core.Uri.encodeFull('$parent') +
        '/gbpAccounts:linkGbpAccount';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LinkGbpAccountResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List the GBP accounts for a given merchant.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource under which the GBP
  /// accounts are listed. Format: `accounts/{account}`.
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of `GbpAccount` resources to
  /// return. The service returns fewer than this value if the number of gbp
  /// accounts is less that than the `pageSize`. The default value is 50. The
  /// maximum value is 1000; If a value higher than the maximum is specified,
  /// then the `pageSize` will default to the maximum.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListGbpAccounts` call. Provide the page token to retrieve the subsequent
  /// page. When paginating, all other parameters provided to `ListGbpAccounts`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGbpAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGbpAccountsResponse> list(
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
        'accounts/v1/' + core.Uri.encodeFull('$parent') + '/gbpAccounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGbpAccountsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsHomepageResource {
  final commons.ApiRequester _requester;

  AccountsHomepageResource(commons.ApiRequester client) : _requester = client;

  /// Claims a store's homepage.
  ///
  /// Executing this method requires admin access. If the homepage is already
  /// claimed, this will recheck the verification (unless the business is
  /// exempted from claiming, which also exempts from verification) and return a
  /// successful response. If ownership can no longer be verified, it will
  /// return an error, but it won't clear the claim. In case of failure, a
  /// canonical error message is returned: * PERMISSION_DENIED: User doesn't
  /// have the necessary permissions on this Merchant Center account. *
  /// FAILED_PRECONDITION: - The account is not a Merchant Center account. -
  /// Merchant Center account doesn't have a homepage. - Claiming failed (in
  /// this case the error message contains more details).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the homepage to claim. Format:
  /// `accounts/{account}/homepage`
  /// Value must have pattern `^accounts/\[^/\]+/homepage$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Homepage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Homepage> claim(
    ClaimHomepageRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name') + ':claim';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Homepage.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a store's homepage.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the homepage to retrieve. Format:
  /// `accounts/{account}/homepage`
  /// Value must have pattern `^accounts/\[^/\]+/homepage$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Homepage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Homepage> getHomepage(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Homepage.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Unclaims a store's homepage.
  ///
  /// Executing this method requires admin access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the homepage to unclaim. Format:
  /// `accounts/{account}/homepage`
  /// Value must have pattern `^accounts/\[^/\]+/homepage$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Homepage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Homepage> unclaim(
    UnclaimHomepageRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name') + ':unclaim';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Homepage.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a store's homepage.
  ///
  /// Executing this method requires admin access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the store's homepage. Format:
  /// `accounts/{account}/homepage`
  /// Value must have pattern `^accounts/\[^/\]+/homepage$`.
  ///
  /// [updateMask] - Optional. List of fields being updated. The following
  /// fields are supported (in both `snake_case` and `lowerCamelCase`): - `uri`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Homepage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Homepage> updateHomepage(
    Homepage request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Homepage.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsIssuesResource {
  final commons.ApiRequester _requester;

  AccountsIssuesResource(commons.ApiRequester client) : _requester = client;

  /// Lists all account issues of a Merchant Center account.
  ///
  /// When called on a multi-client account, this method only returns issues
  /// belonging to that account, not its sub-accounts. To retrieve issues for
  /// sub-accounts, you must first call the accounts.listSubaccounts method to
  /// obtain a list of sub-accounts, and then call `accounts.issues.list` for
  /// each sub-account individually.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of issues.
  /// Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [languageCode] - Optional. The issues in the response will have
  /// human-readable fields in the given language. The format is
  /// \[BCP-47\](https://tools.ietf.org/html/bcp47), such as `en-US` or
  /// `sr-Latn`. If not value is provided, `en-US` will be used.
  ///
  /// [pageSize] - Optional. The maximum number of issues to return. The service
  /// may return fewer than this value. If unspecified, at most 50 issues will
  /// be returned. The maximum value is 100; values above 100 will be coerced to
  /// 100
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListAccountIssues` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListAccountIssues` must
  /// match the call that provided the page token.
  ///
  /// [timeZone] - Optional. The [IANA](https://www.iana.org/time-zones)
  /// timezone used to localize times in human-readable fields. For example
  /// 'America/Los_Angeles'. If not set, 'America/Los_Angeles' will be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAccountIssuesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAccountIssuesResponse> list(
    core.String parent, {
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? timeZone,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'timeZone': ?timeZone == null ? null : [timeZone],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$parent') + '/issues';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAccountIssuesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsOmnichannelSettingsResource {
  final commons.ApiRequester _requester;

  AccountsOmnichannelSettingsLfpProvidersResource get lfpProviders =>
      AccountsOmnichannelSettingsLfpProvidersResource(_requester);

  AccountsOmnichannelSettingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create the omnichannel settings for a given merchant.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this omnichannel setting
  /// will be created. Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OmnichannelSetting].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OmnichannelSetting> create(
    OmnichannelSetting request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'accounts/v1/' +
        core.Uri.encodeFull('$parent') +
        '/omnichannelSettings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OmnichannelSetting.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the omnichannel settings for a given merchant.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the omnichannel setting to retrieve.
  /// Format: `accounts/{account}/omnichannelSettings/{omnichannel_setting}`
  /// Value must have pattern `^accounts/\[^/\]+/omnichannelSettings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OmnichannelSetting].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OmnichannelSetting> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OmnichannelSetting.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List all the omnichannel settings for a given merchant.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of omnichannel
  /// settings. Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of omnichannel settings to
  /// return. The service may return fewer than this value. If unspecified, at
  /// most 50 omnichannel settings will be returned. The maximum value is 1000;
  /// values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListOmnichannelSettings` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListOmnichannelSettings` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOmnichannelSettingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOmnichannelSettingsResponse> list(
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
        'accounts/v1/' +
        core.Uri.encodeFull('$parent') +
        '/omnichannelSettings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOmnichannelSettingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the omnichannel setting for a given merchant in a given country.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the omnichannel setting. Format:
  /// `accounts/{account}/omnichannelSettings/{omnichannel_setting}`
  /// Value must have pattern `^accounts/\[^/\]+/omnichannelSettings/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. The following
  /// fields are supported in snake_case only: - `lsf_type` - `in_stock` -
  /// `pickup` - `odo` - `about` - `inventory_verification` Full replacement
  /// with wildcard `*`is supported, while empty/implied update mask is not.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OmnichannelSetting].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OmnichannelSetting> patch(
    OmnichannelSetting request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return OmnichannelSetting.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Requests inventory verification for a given merchant in a given country.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the omnichannel setting to request
  /// inventory verification. Format:
  /// `accounts/{account}/omnichannelSettings/{omnichannel_setting}`
  /// Value must have pattern `^accounts/\[^/\]+/omnichannelSettings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RequestInventoryVerificationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RequestInventoryVerificationResponse>
  requestInventoryVerification(
    RequestInventoryVerificationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'accounts/v1/' +
        core.Uri.encodeFull('$name') +
        ':requestInventoryVerification';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RequestInventoryVerificationResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsOmnichannelSettingsLfpProvidersResource {
  final commons.ApiRequester _requester;

  AccountsOmnichannelSettingsLfpProvidersResource(commons.ApiRequester client)
    : _requester = client;

  /// Find the LFP provider candidates in a given country.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource under which the LFP
  /// providers are found. Format:
  /// `accounts/{account}/omnichannelSettings/{omnichannel_setting}`.
  /// Value must have pattern `^accounts/\[^/\]+/omnichannelSettings/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of `LfpProvider` resources to
  /// return. The service returns fewer than this value if the number of lfp
  /// providers is less that than the `pageSize`. The default value is 50. The
  /// maximum value is 1000; If a value higher than the maximum is specified,
  /// then the `pageSize` will default to the maximum.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `FindLfpProviders` call. Provide the page token to retrieve the subsequent
  /// page. When paginating, all other parameters provided to `FindLfpProviders`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FindLfpProvidersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FindLfpProvidersResponse> find(
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
        'accounts/v1/' + core.Uri.encodeFull('$parent') + '/lfpProviders:find';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FindLfpProvidersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Link the specified merchant to a LFP provider for the specified country.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the LFP provider resource to link. Format:
  /// `accounts/{account}/omnichannelSettings/{omnichannel_setting}/lfpProviders/{lfp_provider}`.
  /// The `lfp_provider` is the LFP provider ID.
  /// Value must have pattern
  /// `^accounts/\[^/\]+/omnichannelSettings/\[^/\]+/lfpProviders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LinkLfpProviderResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LinkLfpProviderResponse> linkLfpProvider(
    LinkLfpProviderRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'accounts/v1/' + core.Uri.encodeFull('$name') + ':linkLfpProvider';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LinkLfpProviderResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsOnlineReturnPoliciesResource {
  final commons.ApiRequester _requester;

  AccountsOnlineReturnPoliciesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new return policy for a given business.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Merchant Center account for which the return
  /// policy will be created. Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OnlineReturnPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OnlineReturnPolicy> create(
    OnlineReturnPolicy request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'accounts/v1/' +
        core.Uri.encodeFull('$parent') +
        '/onlineReturnPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OnlineReturnPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an existing return policy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the return policy to delete. Format:
  /// `accounts/{account}/onlineReturnPolicies/{return_policy}`
  /// Value must have pattern `^accounts/\[^/\]+/onlineReturnPolicies/\[^/\]+$`.
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

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an existing return policy for a given business.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the return policy to retrieve. Format:
  /// `accounts/{account}/onlineReturnPolicies/{return_policy}`
  /// Value must have pattern `^accounts/\[^/\]+/onlineReturnPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OnlineReturnPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OnlineReturnPolicy> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OnlineReturnPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all existing return policies for a given business.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Merchant Center account for which to list return
  /// policies. Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of `OnlineReturnPolicy`
  /// resources to return. The service returns fewer than this value if the
  /// number of return policies for the given business is less that than the
  /// `pageSize`. The default value is 10. The maximum value is 100; If a value
  /// higher than the maximum is specified, then the `pageSize` will default to
  /// the maximum
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListOnlineReturnPolicies` call. Provide the page token to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListOnlineReturnPolicies` must match the call that provided the page
  /// token. The token returned as nextPageToken in the response to the previous
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOnlineReturnPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOnlineReturnPoliciesResponse> list(
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
        'accounts/v1/' +
        core.Uri.encodeFull('$parent') +
        '/onlineReturnPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOnlineReturnPoliciesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsProgramsResource {
  final commons.ApiRequester _requester;

  AccountsProgramsCheckoutSettingsResource get checkoutSettings =>
      AccountsProgramsCheckoutSettingsResource(_requester);

  AccountsProgramsResource(commons.ApiRequester client) : _requester = client;

  /// Disable participation in the specified program for the account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the program for which to disable
  /// participation for the given account. Format:
  /// `accounts/{account}/programs/{program}`. For example,
  /// `accounts/123456/programs/free-listings`.
  /// Value must have pattern `^accounts/\[^/\]+/programs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Program].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Program> disable(
    DisableProgramRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name') + ':disable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Program.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Enable participation in the specified program for the account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the program for which to enable
  /// participation for the given account. Format:
  /// `accounts/{account}/programs/{program}`. For example,
  /// `accounts/123456/programs/free-listings`.
  /// Value must have pattern `^accounts/\[^/\]+/programs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Program].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Program> enable(
    EnableProgramRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name') + ':enable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Program.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified program for the account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the program to retrieve. Format:
  /// `accounts/{account}/programs/{program}`. For example,
  /// `accounts/123456/programs/free-listings`.
  /// Value must have pattern `^accounts/\[^/\]+/programs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Program].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Program> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Program.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves all programs for the account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the account for which to retrieve all
  /// programs. Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of programs to return in a
  /// single response. If unspecified (or 0), a default size of 1000 is used.
  /// The maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A continuation token, received from a previous
  /// `ListPrograms` call. Provide this to retrieve the next page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProgramsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProgramsResponse> list(
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

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$parent') + '/programs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListProgramsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsProgramsCheckoutSettingsResource {
  final commons.ApiRequester _requester;

  AccountsProgramsCheckoutSettingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates `CheckoutSettings` for the given merchant.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The merchant account for which the `CheckoutSettings`
  /// will be created.
  /// Value must have pattern `^accounts/\[^/\]+/programs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckoutSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckoutSettings> create(
    CheckoutSettings request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'accounts/v1/' + core.Uri.encodeFull('$parent') + '/checkoutSettings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CheckoutSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes `CheckoutSettings` and unenrolls merchant from `Checkout` program.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name/identifier of the merchant account. Format:
  /// `accounts/{account}/programs/{program}/checkoutSettings`
  /// Value must have pattern
  /// `^accounts/\[^/\]+/programs/\[^/\]+/checkoutSettings$`.
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
  async.Future<Empty> deleteCheckoutSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets `CheckoutSettings` for the given merchant.
  ///
  /// This includes information about review state, enrollment state and URL
  /// settings.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name/identifier of the merchant account. Format:
  /// `accounts/{account}/programs/{program}/checkoutSettings`
  /// Value must have pattern
  /// `^accounts/\[^/\]+/programs/\[^/\]+/checkoutSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckoutSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckoutSettings> getCheckoutSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CheckoutSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates `CheckoutSettings` for the given merchant.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the program configuration
  /// settings. Format: `accounts/{account}/programs/{program}/checkoutSettings`
  /// Value must have pattern
  /// `^accounts/\[^/\]+/programs/\[^/\]+/checkoutSettings$`.
  ///
  /// [updateMask] - Required. List of fields being updated. The following
  /// fields are supported (in both `snake_case` and `lowerCamelCase`): -
  /// `eligible_destinations` - `uri_settings`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckoutSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckoutSettings> updateCheckoutSettings(
    CheckoutSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return CheckoutSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsRegionsResource {
  final commons.ApiRequester _requester;

  AccountsRegionsResource(commons.ApiRequester client) : _requester = client;

  /// Creates one or more regions in your Merchant Center account.
  ///
  /// Executing this method requires admin access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account to create one or more regions for.
  /// Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchCreateRegionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchCreateRegionsResponse> batchCreate(
    BatchCreateRegionsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'accounts/v1/' +
        core.Uri.encodeFull('$parent') +
        '/regions:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchCreateRegionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes multiple regions by name from your Merchant Center account.
  ///
  /// Executing this method requires admin access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account to delete one or more regions from.
  /// Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
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
  async.Future<Empty> batchDelete(
    BatchDeleteRegionsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'accounts/v1/' +
        core.Uri.encodeFull('$parent') +
        '/regions:batchDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates one or more regions in your Merchant Center account.
  ///
  /// Executing this method requires admin access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account to update one or more regions for.
  /// Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdateRegionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdateRegionsResponse> batchUpdate(
    BatchUpdateRegionsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'accounts/v1/' +
        core.Uri.encodeFull('$parent') +
        '/regions:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateRegionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a region definition in your Merchant Center account.
  ///
  /// Executing this method requires admin access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account to create a region for. Format:
  /// `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [regionId] - Required. The identifier for the region, unique over all
  /// regions of the same account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Region].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Region> create(
    Region request,
    core.String parent, {
    core.String? regionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'regionId': ?regionId == null ? null : [regionId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$parent') + '/regions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Region.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a region definition from your Merchant Center account.
  ///
  /// Executing this method requires admin access.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the region to delete. Format:
  /// `accounts/{account}/regions/{region}`
  /// Value must have pattern `^accounts/\[^/\]+/regions/\[^/\]+$`.
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

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a region defined in your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the region to retrieve. Format:
  /// `accounts/{account}/regions/{region}`
  /// Value must have pattern `^accounts/\[^/\]+/regions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Region].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Region> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Region.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the regions in your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account to list regions for. Format:
  /// `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of regions to return. The
  /// service may return fewer than this value. If unspecified, at most 50
  /// regions will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListRegions` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListRegions` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRegionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRegionsResponse> list(
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

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$parent') + '/regions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRegionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a region definition in your Merchant Center account.
  ///
  /// Executing this method requires admin access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the region. Format:
  /// `accounts/{account}/regions/{region}`
  /// Value must have pattern `^accounts/\[^/\]+/regions/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The comma-separated field mask indicating the
  /// fields to update. Example: `"displayName,postalCodeArea.regionCode"`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Region].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Region> patch(
    Region request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Region.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsRelationshipsResource {
  final commons.ApiRequester _requester;

  AccountsRelationshipsResource(commons.ApiRequester client)
    : _requester = client;

  /// Retrieve an account relationship.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the account relationship to get.
  /// Format: `accounts/{account}/relationships/{relationship}`. For example,
  /// `accounts/123456/relationships/567890`.
  /// Value must have pattern `^accounts/\[^/\]+/relationships/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountRelationship].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountRelationship> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccountRelationship.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List account relationships for the specified account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent account of the account relationship to
  /// filter by. Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of elements to return in the
  /// response. Use for paging. If no `page_size` is specified, `100` is used as
  /// the default value. The maximum allowed value is `1000`.
  ///
  /// [pageToken] - Optional. The token returned by the previous `list` request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAccountRelationshipsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAccountRelationshipsResponse> list(
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
        'accounts/v1/' + core.Uri.encodeFull('$parent') + '/relationships';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAccountRelationshipsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the account relationship.
  ///
  /// Executing this method requires admin access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the account relationship.
  /// Format: `accounts/{account}/relationships/{relationship}`. For example,
  /// `accounts/123456/relationships/567890`.
  /// Value must have pattern `^accounts/\[^/\]+/relationships/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. List of fields being updated. The following
  /// fields are supported (in both `snake_case` and `lowerCamelCase`): -
  /// `account_id_alias`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountRelationship].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountRelationship> patch(
    AccountRelationship request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return AccountRelationship.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsServicesResource {
  final commons.ApiRequester _requester;

  AccountsServicesResource(commons.ApiRequester client) : _requester = client;

  /// Approve an account service proposal.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the account service to approve.
  /// Format: `accounts/{account}/services/{service}`
  /// Value must have pattern `^accounts/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountService].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountService> approve(
    ApproveAccountServiceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name') + ':approve';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AccountService.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieve an account service.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the account service to get.
  /// Format: `accounts/{account}/services/{service}`
  /// Value must have pattern `^accounts/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountService].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountService> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccountService.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List account services for the specified accounts.
  ///
  /// Supports filtering.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent account of the account service to filter
  /// by. Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of elements to return in the
  /// response. Use for paging. If no `page_size` is specified, `100` is used as
  /// the default value. The maximum allowed value is `1000`.
  ///
  /// [pageToken] - Optional. The token returned by the previous `list` request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAccountServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAccountServicesResponse> list(
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

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$parent') + '/services';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAccountServicesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Propose an account service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent account for the
  /// service. Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountService].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountService> propose(
    ProposeAccountServiceRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'accounts/v1/' + core.Uri.encodeFull('$parent') + '/services:propose';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AccountService.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Reject an account service (both proposed and approve services can be
  /// rejected).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the account service to reject.
  /// Format: `accounts/{account}/services/{service}`
  /// Value must have pattern `^accounts/\[^/\]+/services/\[^/\]+$`.
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
  async.Future<Empty> reject(
    RejectAccountServiceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name') + ':reject';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsShippingSettingsResource {
  final commons.ApiRequester _requester;

  AccountsShippingSettingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Retrieve shipping setting information.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the shipping setting to retrieve. Format:
  /// `accounts/{account}/shippingsettings`
  /// Value must have pattern `^accounts/\[^/\]+/shippingSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ShippingSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ShippingSettings> getShippingSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ShippingSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Replace the shipping setting of a business with the request shipping
  /// setting.
  ///
  /// Executing this method requires admin access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account for which this shipping setting will be
  /// inserted. If you are using an advanced account, you must specify the
  /// unique identifier of the sub-account for which you want to insert the
  /// shipping setting. Format: `accounts/{ACCOUNT_ID}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ShippingSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ShippingSettings> insert(
    ShippingSettings request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'accounts/v1/' +
        core.Uri.encodeFull('$parent') +
        '/shippingSettings:insert';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ShippingSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsTermsOfServiceAgreementStatesResource {
  final commons.ApiRequester _requester;

  AccountsTermsOfServiceAgreementStatesResource(commons.ApiRequester client)
    : _requester = client;

  /// Returns the state of a terms of service agreement.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the terms of service version.
  /// Format: `accounts/{account}/termsOfServiceAgreementStates/{identifier}`
  /// The identifier format is: `{TermsOfServiceKind}-{country}`
  /// Value must have pattern
  /// `^accounts/\[^/\]+/termsOfServiceAgreementStates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TermsOfServiceAgreementState].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TermsOfServiceAgreementState> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TermsOfServiceAgreementState.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the state of the agreement for the application terms of service.
  ///
  /// Application terms of service covers permissions related to the usage of
  /// data provided through Merchant Center, CSS Center, Manufacturer Center,
  /// and more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account for which to get a
  /// TermsOfServiceAgreementState Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TermsOfServiceAgreementState].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TermsOfServiceAgreementState> retrieveForApplication(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'accounts/v1/' +
        core.Uri.encodeFull('$parent') +
        '/termsOfServiceAgreementStates:retrieveForApplication';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TermsOfServiceAgreementState.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsUsersResource {
  final commons.ApiRequester _requester;

  AccountsUsersMeResource get me => AccountsUsersMeResource(_requester);

  AccountsUsersResource(commons.ApiRequester client) : _requester = client;

  /// Creates a Merchant Center account user.
  ///
  /// Executing this method requires admin access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the account for which a user
  /// will be created. Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [userId] - Required. The email address of the user (for example,
  /// `john.doe@gmail.com`).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> create(
    User request,
    core.String parent, {
    core.String? userId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'userId': ?userId == null ? null : [userId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$parent') + '/users';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Merchant Center account user.
  ///
  /// Executing this method requires admin access. The user to be deleted can't
  /// be the last admin user of that account. Also a user is protected from
  /// deletion if it is managed by Business Manager"
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the user to delete. Format:
  /// `accounts/{account}/users/{email}` It is also possible to delete the user
  /// corresponding to the caller by using `me` rather than an email address as
  /// in `accounts/{account}/users/me`.
  /// Value must have pattern `^accounts/\[^/\]+/users/\[^/\]+$`.
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

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a Merchant Center account user.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the user to retrieve. Format:
  /// `accounts/{account}/users/{email}` It is also possible to retrieve the
  /// user corresponding to the caller by using `me` rather than an email
  /// address as in `accounts/{account}/users/me`.
  /// Value must have pattern `^accounts/\[^/\]+/users/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all users of a Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of users.
  /// Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of users to return. The service
  /// may return fewer than this value. If unspecified, at most 50 users will be
  /// returned. The maximum value is 100; values above 100 will be coerced to
  /// 100
  ///
  /// [pageToken] - Optional. A page token, received from a previous `ListUsers`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListUsers` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUsersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUsersResponse> list(
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

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$parent') + '/users';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUsersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Merchant Center account user.
  ///
  /// Executing this method requires admin access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the user. Format:
  /// `accounts/{account}/user/{email}` Use `me` to refer to your own email
  /// address, for example `accounts/{account}/users/me`.
  /// Value must have pattern `^accounts/\[^/\]+/users/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. List of fields being updated. The following
  /// fields are supported (in both `snake_case` and `lowerCamelCase`): -
  /// `access_rights`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> patch(
    User request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsUsersMeResource {
  final commons.ApiRequester _requester;

  AccountsUsersMeResource(commons.ApiRequester client) : _requester = client;

  /// Updates the user that is represented by the caller from pending to
  /// verified.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [account] - Required. The name of the account under which the caller is a
  /// user. Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> verifySelf(
    VerifySelfRequest request,
    core.String account, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'accounts/v1/' +
        core.Uri.encodeFull('$account') +
        '/users/me:verifySelf';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class TermsOfServiceResource {
  final commons.ApiRequester _requester;

  TermsOfServiceResource(commons.ApiRequester client) : _requester = client;

  /// Accepts a `TermsOfService`.
  ///
  /// Executing this method requires admin access.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the terms of service version.
  /// Format: `termsOfService/{version}`
  /// Value must have pattern `^termsOfService/\[^/\]+$`.
  ///
  /// [account] - Required. The account for which to accept the ToS. Format:
  /// `accounts/{account}`
  ///
  /// [regionCode] - Required. Region code as defined by
  /// [CLDR](https://cldr.unicode.org/). This is either a country when the ToS
  /// applies specifically to that country or 001 when it applies globally.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AcceptTermsOfServiceResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AcceptTermsOfServiceResponse> accept(
    core.String name, {
    core.String? account,
    core.String? regionCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'account': ?account == null ? null : [account],
      'regionCode': ?regionCode == null ? null : [regionCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name') + ':accept';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return AcceptTermsOfServiceResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the `TermsOfService` associated with the provided version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the terms of service version.
  /// Format: `termsOfService/{version}`
  /// Value must have pattern `^termsOfService/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TermsOfService].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TermsOfService> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'accounts/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TermsOfService.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the latest version of the `TermsOfService` for a given `kind`
  /// and `region_code`.
  ///
  /// Request parameters:
  ///
  /// [kind] - Required. The Kind this terms of service version applies to.
  /// Possible string values are:
  /// - "TERMS_OF_SERVICE_KIND_UNSPECIFIED" : Default value. This value is
  /// unused.
  /// - "MERCHANT_CENTER" : Merchant Center application.
  ///
  /// [regionCode] - Required. Region code as defined by
  /// [CLDR](https://cldr.unicode.org/). This is either a country when the ToS
  /// applies specifically to that country or 001 when it applies globally.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TermsOfService].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TermsOfService> retrieveLatest({
    core.String? kind,
    core.String? regionCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'kind': ?kind == null ? null : [kind],
      'regionCode': ?regionCode == null ? null : [regionCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'accounts/v1/termsOfService:retrieveLatest';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TermsOfService.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Collection of information related to the about page
/// ([impressum](https://support.google.com/merchants/answer/14675634?ref_topic=15145634&sjid=6892280366904591178-NC)).
class About {
  /// The state of the URI.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "ACTIVE" : The review process has concluded successfully. The reviewed
  /// item is active.
  /// - "FAILED" : The review process failed.
  /// - "RUNNING" : The review process is running.
  /// - "ACTION_REQUIRED" : The review process is waiting for the merchant to
  /// take action.
  core.String? state;

  /// The about page URI.
  ///
  /// Required.
  core.String? uri;

  About({this.state, this.uri});

  About.fromJson(core.Map json_)
    : this(
        state: json_['state'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final state = this.state;
    final uri = this.uri;
    return {'state': ?state, 'uri': ?uri};
  }
}

/// Response message for the `AcceptTermsOfService` method.
class AcceptTermsOfServiceResponse {
  /// The agreement state after accepting the ToS.
  TermsOfServiceAgreementState? termsOfServiceAgreementState;

  AcceptTermsOfServiceResponse({this.termsOfServiceAgreementState});

  AcceptTermsOfServiceResponse.fromJson(core.Map json_)
    : this(
        termsOfServiceAgreementState:
            json_.containsKey('termsOfServiceAgreementState')
            ? TermsOfServiceAgreementState.fromJson(
                json_['termsOfServiceAgreementState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final termsOfServiceAgreementState = this.termsOfServiceAgreementState;
    return {'termsOfServiceAgreementState': ?termsOfServiceAgreementState};
  }
}

/// Describes the
/// [accepted terms of service](https://developers.google.com/merchant/api/guides/accounts/create-and-configure#accept_the_merchant_center_terms_of_service).
class Accepted {
  /// The account where the acceptance was recorded.
  ///
  /// This can be the account itself or, in the case of subaccounts, the
  /// advanced account.
  ///
  /// Required.
  core.String? acceptedBy;

  /// The accepted termsOfService.
  ///
  /// Required.
  core.String? termsOfService;

  /// When set, it states that the accepted `TermsOfService` is only valid until
  /// the end of this date (in UTC).
  ///
  /// A new one must be accepted before then. The information of the required
  /// `TermsOfService` is found in the `Required` message.
  ///
  /// Optional.
  Date? validUntil;

  Accepted({this.acceptedBy, this.termsOfService, this.validUntil});

  Accepted.fromJson(core.Map json_)
    : this(
        acceptedBy: json_['acceptedBy'] as core.String?,
        termsOfService: json_['termsOfService'] as core.String?,
        validUntil: json_.containsKey('validUntil')
            ? Date.fromJson(
                json_['validUntil'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final acceptedBy = this.acceptedBy;
    final termsOfService = this.termsOfService;
    final validUntil = this.validUntil;
    return {
      'acceptedBy': ?acceptedBy,
      'termsOfService': ?termsOfService,
      'validUntil': ?validUntil,
    };
  }
}

/// The `Account` message represents a business's account within Shopping Ads.
///
/// It's the primary entity for managing product data, settings, and
/// interactions with Google's services and external providers. Accounts can
/// operate as standalone entities or be part of a advanced account structure.
/// In an advanced account setup the parent account manages multiple
/// sub-accounts. Establishing an account involves configuring attributes like
/// the account name, time zone, and language preferences. The `Account` message
/// is the parent entity for many other resources, for example,
/// `AccountRelationship`, `Homepage`, `BusinessInfo` and so on.
class Account {
  /// The ID of the account.
  ///
  /// Output only.
  core.String? accountId;

  /// A human-readable name of the account.
  ///
  /// See [store name](https://support.google.com/merchants/answer/160556) and
  /// [business name](https://support.google.com/merchants/answer/12159159) for
  /// more information.
  ///
  /// Required.
  core.String? accountName;

  /// Whether this account contains adult content.
  ///
  /// Optional.
  core.bool? adultContent;

  /// The account's \[BCP-47 language code\](https://tools.ietf.org/html/bcp47),
  /// such as `en-US` or `sr-Latn`.
  ///
  /// Required.
  core.String? languageCode;

  /// Identifier.
  ///
  /// The resource name of the account. Format: `accounts/{account}`
  core.String? name;

  /// Whether this is a test account.
  ///
  /// Output only.
  core.bool? testAccount;

  /// The time zone of the account.
  ///
  /// On writes, `time_zone` sets both the `reporting_time_zone` and the
  /// `display_time_zone`. For reads, `time_zone` always returns the
  /// `display_time_zone`. If `display_time_zone` doesn't exist for your
  /// account, `time_zone` is empty. The `version` field is not supported, won't
  /// be set in responses and will be silently ignored if specified in requests.
  ///
  /// Required.
  TimeZone? timeZone;

  Account({
    this.accountId,
    this.accountName,
    this.adultContent,
    this.languageCode,
    this.name,
    this.testAccount,
    this.timeZone,
  });

  Account.fromJson(core.Map json_)
    : this(
        accountId: json_['accountId'] as core.String?,
        accountName: json_['accountName'] as core.String?,
        adultContent: json_['adultContent'] as core.bool?,
        languageCode: json_['languageCode'] as core.String?,
        name: json_['name'] as core.String?,
        testAccount: json_['testAccount'] as core.bool?,
        timeZone: json_.containsKey('timeZone')
            ? TimeZone.fromJson(
                json_['timeZone'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountId = this.accountId;
    final accountName = this.accountName;
    final adultContent = this.adultContent;
    final languageCode = this.languageCode;
    final name = this.name;
    final testAccount = this.testAccount;
    final timeZone = this.timeZone;
    return {
      'accountId': ?accountId,
      'accountName': ?accountName,
      'adultContent': ?adultContent,
      'languageCode': ?languageCode,
      'name': ?name,
      'testAccount': ?testAccount,
      'timeZone': ?timeZone,
    };
  }
}

/// `AccountAggregation` payload.
typedef AccountAggregation = $Empty;

/// Issues with your Merchant Center account that can impact all your products.
///
/// For more information, see \[Account-level issues in Merchant
/// Center\](https://support.google.com/merchants/answer/12153802?sjid=17798438912526418908-EU#account).
class AccountIssue {
  /// Further localized details about the issue.
  core.String? detail;

  /// Link to Merchant Center Help Center providing further information about
  /// the issue and how to fix it.
  core.String? documentationUri;

  /// The impact this issue has on various destinations.
  core.List<ImpactedDestination>? impactedDestinations;

  /// Identifier.
  ///
  /// The resource name of the account issue. Format:
  /// `accounts/{account}/issues/{id}`. For example,
  /// `accounts/123456/issues/misrepresentation-of-self-or-products-unacceptable-business-practice-policy`.
  core.String? name;

  /// The overall severity of the issue.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : The severity is unknown.
  /// - "CRITICAL" : The issue causes offers to not serve.
  /// - "ERROR" : The issue might affect offers (in the future) or might be an
  /// indicator of issues with offers.
  /// - "SUGGESTION" : The issue is a suggestion for improvement.
  core.String? severity;

  /// The localized title of the issue.
  core.String? title;

  AccountIssue({
    this.detail,
    this.documentationUri,
    this.impactedDestinations,
    this.name,
    this.severity,
    this.title,
  });

  AccountIssue.fromJson(core.Map json_)
    : this(
        detail: json_['detail'] as core.String?,
        documentationUri: json_['documentationUri'] as core.String?,
        impactedDestinations: (json_['impactedDestinations'] as core.List?)
            ?.map(
              (value) => ImpactedDestination.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        name: json_['name'] as core.String?,
        severity: json_['severity'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final detail = this.detail;
    final documentationUri = this.documentationUri;
    final impactedDestinations = this.impactedDestinations;
    final name = this.name;
    final severity = this.severity;
    final title = this.title;
    return {
      'detail': ?detail,
      'documentationUri': ?documentationUri,
      'impactedDestinations': ?impactedDestinations,
      'name': ?name,
      'severity': ?severity,
      'title': ?title,
    };
  }
}

/// `AccountManagement` payload.
typedef AccountManagement = $Empty;

/// The `AccountRelationship` message defines a formal connection between a
/// merchant's account and a service provider's account.
///
/// This relationship enables the provider to offer specific services to the
/// business, such as product management or campaign management. It specifies
/// the access rights and permissions to the business's data relevant to those
/// services. Establishing an account relationship involves linking the
/// merchant's account with a provider's account. The provider could be another
/// Google account (like Google Ads or Google My Business) or a third-party
/// platform (such as Shopify or WooCommerce).
class AccountRelationship {
  /// An optional alias you can assign to this account relationship.
  ///
  /// This alias acts as a convenient identifier for your own reference and
  /// management. It must be unique among all your account relationships with
  /// the same provider. For example, you might use `account_id_alias` to assign
  /// a friendly name to this relationship for easier identification in your
  /// systems.
  ///
  /// Optional.
  core.String? accountIdAlias;

  /// Identifier.
  ///
  /// The resource name of the account relationship. Format:
  /// `accounts/{account}/relationships/{relationship}`. For example,
  /// `accounts/123456/relationships/567890`.
  core.String? name;

  /// The provider of the service.
  ///
  /// Either the reference to an account such as `providers/123` or a well-known
  /// service provider (one of `providers/GOOGLE_ADS` or
  /// `providers/GOOGLE_BUSINESS_PROFILE`).
  ///
  /// Immutable.
  core.String? provider;

  /// The human-readable display name of the provider account.
  ///
  /// Output only.
  core.String? providerDisplayName;

  AccountRelationship({
    this.accountIdAlias,
    this.name,
    this.provider,
    this.providerDisplayName,
  });

  AccountRelationship.fromJson(core.Map json_)
    : this(
        accountIdAlias: json_['accountIdAlias'] as core.String?,
        name: json_['name'] as core.String?,
        provider: json_['provider'] as core.String?,
        providerDisplayName: json_['providerDisplayName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountIdAlias = this.accountIdAlias;
    final name = this.name;
    final provider = this.provider;
    final providerDisplayName = this.providerDisplayName;
    return {
      'accountIdAlias': ?accountIdAlias,
      'name': ?name,
      'provider': ?provider,
      'providerDisplayName': ?providerDisplayName,
    };
  }
}

/// The `AccountService` message represents a specific service that a provider
/// account offers to a Merchant Center account.
///
/// `AccountService` defines the permissions and capabilities granted to the
/// provider, allowing for operations such as product management or campaign
/// management. The lifecycle of an `AccountService` involves a proposal phase,
/// where one party suggests the service, and an approval phase, where the other
/// party accepts or rejects it. This handshake mechanism ensures mutual consent
/// before any access is granted. This mechanism safeguards both parties by
/// ensuring that access rights are granted appropriately and that both the
/// business and provider are aware of the services enabled. In scenarios where
/// a user is an admin of both accounts, the approval can happen automatically.
/// The mutability of a service is also managed through `AccountService`. Some
/// services might be immutable, for example, if they were established through
/// other systems or APIs, and you cannot alter them through this API.
class AccountService {
  /// Service type for account aggregation.
  ///
  /// This enables the provider, which is an advanced account, to manage
  /// multiple sub-accounts (client accounts). Through this service, the
  /// advanced account provider can perform administrative and operational tasks
  /// across all linked sub-accounts. This is useful for agencies, aggregators,
  /// or large retailers that need centralized control over many Merchant Center
  /// accounts.
  AccountAggregation? accountAggregation;

  /// Service type for account management.
  ///
  /// Enables the provider to perform administrative actions on the business's
  /// account, such as configuring account settings, managing users, or updating
  /// business information.
  AccountManagement? accountManagement;

  /// Service type for managing advertising campaigns.
  ///
  /// Grants the provider access to create and manage the business's ad
  /// campaigns, including setting up campaigns, adjusting bids, and optimizing
  /// performance.
  CampaignsManagement? campaignsManagement;

  /// Service type for comparison shopping.
  ///
  /// The provider is a CSS (Comparison Shopping Service) managing the account.
  /// See https://support.google.com/merchants/answer/12653197
  ComparisonShopping? comparisonShopping;

  /// An optional, immutable identifier that Google uses to refer to this
  /// account when communicating with the provider.
  ///
  /// This should be the unique account ID within the provider's system (for
  /// example, your shop ID in Shopify). If you have multiple accounts with the
  /// same provider - for instance, different accounts for various regions — the
  /// `external_account_id` differentiates between them, ensuring accurate
  /// linking and integration between Google and the provider.
  ///
  /// Immutable.
  core.String? externalAccountId;

  /// Information about the state of the service in terms of establishing it
  /// (e.g. is it pending approval or approved).
  ///
  /// Output only.
  Handshake? handshake;

  /// Service type for local listings management.
  ///
  /// The business group associated with the external account id will be used to
  /// provide local inventory to this Merchant Center account.
  LocalListingManagement? localListingManagement;

  /// Whether the service is mutable (e.g. through Approve / Reject RPCs).
  ///
  /// A service that was created through another system or API might be
  /// immutable.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "MUTABILITY_UNSPECIFIED" : Unused default value
  /// - "MUTABLE" : The service can be mutated without restrictions.
  /// - "IMMUTABLE" : The service is read-only and must not be mutated.
  core.String? mutability;

  /// Identifier.
  ///
  /// The resource name of the account service. Format:
  /// `accounts/{account}/services/{service}`
  core.String? name;

  /// Service type for managing products.
  ///
  /// This allows the provider to handle product data on behalf of the business,
  /// including reading and writing product listings. It's commonly used when
  /// the provider offers inventory management or catalog synchronization
  /// services to keep the business's product information up-to-date across
  /// platforms.
  ProductsManagement? productsManagement;

  /// The provider of the service.
  ///
  /// Either the reference to an account such as `providers/123` or a well-known
  /// service provider (one of `providers/GOOGLE_ADS` or
  /// `providers/GOOGLE_BUSINESS_PROFILE`).
  ///
  /// Output only.
  core.String? provider;

  /// The human-readable display name of the provider account.
  ///
  /// Output only.
  core.String? providerDisplayName;

  AccountService({
    this.accountAggregation,
    this.accountManagement,
    this.campaignsManagement,
    this.comparisonShopping,
    this.externalAccountId,
    this.handshake,
    this.localListingManagement,
    this.mutability,
    this.name,
    this.productsManagement,
    this.provider,
    this.providerDisplayName,
  });

  AccountService.fromJson(core.Map json_)
    : this(
        accountAggregation: json_.containsKey('accountAggregation')
            ? AccountAggregation.fromJson(
                json_['accountAggregation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        accountManagement: json_.containsKey('accountManagement')
            ? AccountManagement.fromJson(
                json_['accountManagement']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        campaignsManagement: json_.containsKey('campaignsManagement')
            ? CampaignsManagement.fromJson(
                json_['campaignsManagement']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        comparisonShopping: json_.containsKey('comparisonShopping')
            ? ComparisonShopping.fromJson(
                json_['comparisonShopping']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        externalAccountId: json_['externalAccountId'] as core.String?,
        handshake: json_.containsKey('handshake')
            ? Handshake.fromJson(
                json_['handshake'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        localListingManagement: json_.containsKey('localListingManagement')
            ? LocalListingManagement.fromJson(
                json_['localListingManagement']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        mutability: json_['mutability'] as core.String?,
        name: json_['name'] as core.String?,
        productsManagement: json_.containsKey('productsManagement')
            ? ProductsManagement.fromJson(
                json_['productsManagement']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        provider: json_['provider'] as core.String?,
        providerDisplayName: json_['providerDisplayName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountAggregation = this.accountAggregation;
    final accountManagement = this.accountManagement;
    final campaignsManagement = this.campaignsManagement;
    final comparisonShopping = this.comparisonShopping;
    final externalAccountId = this.externalAccountId;
    final handshake = this.handshake;
    final localListingManagement = this.localListingManagement;
    final mutability = this.mutability;
    final name = this.name;
    final productsManagement = this.productsManagement;
    final provider = this.provider;
    final providerDisplayName = this.providerDisplayName;
    return {
      'accountAggregation': ?accountAggregation,
      'accountManagement': ?accountManagement,
      'campaignsManagement': ?campaignsManagement,
      'comparisonShopping': ?comparisonShopping,
      'externalAccountId': ?externalAccountId,
      'handshake': ?handshake,
      'localListingManagement': ?localListingManagement,
      'mutability': ?mutability,
      'name': ?name,
      'productsManagement': ?productsManagement,
      'provider': ?provider,
      'providerDisplayName': ?providerDisplayName,
    };
  }
}

/// Additional instructions to add account services during creation of the
/// account.
class AddAccountService {
  /// The provider is an
  /// [aggregator](https://support.google.com/merchants/answer/188487) for the
  /// account.
  ///
  /// Payload for service type Account Aggregation.
  AccountAggregation? accountAggregation;

  /// The provider manages this account.
  ///
  /// Payload for service type Account Management.
  AccountManagement? accountManagement;

  /// The provider manages campaigns for this account.
  ///
  /// Payload for service type campaigns management.
  CampaignsManagement? campaignsManagement;

  /// The provider is a CSS (Comparison Shopping Service) of this account.
  ///
  /// Payload for service type Comparison Shopping.
  ComparisonShopping? comparisonShopping;

  /// An optional, immutable identifier that Google uses to refer to this
  /// account when communicating with the provider.
  ///
  /// This should be the unique account ID within the provider's system (for
  /// example, your shop ID in Shopify). If you have multiple accounts with the
  /// same provider - for instance, different accounts for various regions — the
  /// `external_account_id` differentiates between them, ensuring accurate
  /// linking and integration between Google and the provider. The external
  /// account ID must be specified for the campaigns management service type.
  /// The external account ID must not be specified for the account aggregation
  /// service type. The external account ID is optional / may be specified for
  /// all other service types.
  ///
  /// Immutable.
  core.String? externalAccountId;

  /// The provider manages products for this account.
  ///
  /// Payload for service type products management.
  ProductsManagement? productsManagement;

  /// The provider of the service.
  ///
  /// Either the reference to an account such as `providers/123` or a well-known
  /// service provider (one of `providers/GOOGLE_ADS` or
  /// `providers/GOOGLE_BUSINESS_PROFILE`).
  ///
  /// Required.
  core.String? provider;

  AddAccountService({
    this.accountAggregation,
    this.accountManagement,
    this.campaignsManagement,
    this.comparisonShopping,
    this.externalAccountId,
    this.productsManagement,
    this.provider,
  });

  AddAccountService.fromJson(core.Map json_)
    : this(
        accountAggregation: json_.containsKey('accountAggregation')
            ? AccountAggregation.fromJson(
                json_['accountAggregation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        accountManagement: json_.containsKey('accountManagement')
            ? AccountManagement.fromJson(
                json_['accountManagement']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        campaignsManagement: json_.containsKey('campaignsManagement')
            ? CampaignsManagement.fromJson(
                json_['campaignsManagement']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        comparisonShopping: json_.containsKey('comparisonShopping')
            ? ComparisonShopping.fromJson(
                json_['comparisonShopping']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        externalAccountId: json_['externalAccountId'] as core.String?,
        productsManagement: json_.containsKey('productsManagement')
            ? ProductsManagement.fromJson(
                json_['productsManagement']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        provider: json_['provider'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountAggregation = this.accountAggregation;
    final accountManagement = this.accountManagement;
    final campaignsManagement = this.campaignsManagement;
    final comparisonShopping = this.comparisonShopping;
    final externalAccountId = this.externalAccountId;
    final productsManagement = this.productsManagement;
    final provider = this.provider;
    return {
      'accountAggregation': ?accountAggregation,
      'accountManagement': ?accountManagement,
      'campaignsManagement': ?campaignsManagement,
      'comparisonShopping': ?comparisonShopping,
      'externalAccountId': ?externalAccountId,
      'productsManagement': ?productsManagement,
      'provider': ?provider,
    };
  }
}

/// Instruction for adding a user to the account during creation.
class AddUser {
  /// Details about the user to be added.
  ///
  /// At the moment, only access rights may be specified.
  ///
  /// Optional.
  User? user;

  /// The email address of the user (for example, `john.doe@gmail.com`).
  ///
  /// Required.
  core.String? userId;

  /// Settings related to configuring the verification email that is sent after
  /// adding a user.
  ///
  /// Optional.
  VerificationMailSettings? verificationMailSettings;

  AddUser({this.user, this.userId, this.verificationMailSettings});

  AddUser.fromJson(core.Map json_)
    : this(
        user: json_.containsKey('user')
            ? User.fromJson(
                json_['user'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        userId: json_['userId'] as core.String?,
        verificationMailSettings: json_.containsKey('verificationMailSettings')
            ? VerificationMailSettings.fromJson(
                json_['verificationMailSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final user = this.user;
    final userId = this.userId;
    final verificationMailSettings = this.verificationMailSettings;
    return {
      'user': ?user,
      'userId': ?userId,
      'verificationMailSettings': ?verificationMailSettings,
    };
  }
}

/// Shipping address of the warehouse.
class Address {
  /// Top-level administrative subdivision of the country.
  ///
  /// For example, a state like California ("CA") or a province like Quebec
  /// ("QC").
  ///
  /// Required.
  core.String? administrativeArea;

  /// City, town or commune.
  ///
  /// May also include dependent localities or sublocalities (For example
  /// neighborhoods or suburbs).
  ///
  /// Required.
  core.String? city;

  /// Postal code or ZIP (For example "94043").
  ///
  /// Required.
  core.String? postalCode;

  /// [CLDR country code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  /// (For example "US").
  ///
  /// Required.
  core.String? regionCode;

  /// Street-level part of the address.
  ///
  /// For example: `111w 31st Street`.
  core.String? streetAddress;

  Address({
    this.administrativeArea,
    this.city,
    this.postalCode,
    this.regionCode,
    this.streetAddress,
  });

  Address.fromJson(core.Map json_)
    : this(
        administrativeArea: json_['administrativeArea'] as core.String?,
        city: json_['city'] as core.String?,
        postalCode: json_['postalCode'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
        streetAddress: json_['streetAddress'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final administrativeArea = this.administrativeArea;
    final city = this.city;
    final postalCode = this.postalCode;
    final regionCode = this.regionCode;
    final streetAddress = this.streetAddress;
    return {
      'administrativeArea': ?administrativeArea,
      'city': ?city,
      'postalCode': ?postalCode,
      'regionCode': ?regionCode,
      'streetAddress': ?streetAddress,
    };
  }
}

/// Request to approve an account service.
typedef ApproveAccountServiceRequest = $Empty;

/// Collection of information related to the
/// [autofeed](https://support.google.com/merchants/answer/7538732) settings.
class AutofeedSettings {
  /// Determines whether the business is eligible for being enrolled into an
  /// autofeed.
  ///
  /// Output only.
  core.bool? eligible;

  /// Enables or disables product crawling through the autofeed for the given
  /// account.
  ///
  /// Autofeed accounts must meet
  /// [certain conditions](https://support.google.com/merchants/answer/7538732#Configure_automated_feeds_Standard_Experience),
  /// which can be checked through the `eligible` field. The account must
  /// **not** be a marketplace. When the autofeed is enabled for the first time,
  /// the products usually appear instantly. When re-enabling, it might take up
  /// to 24 hours for products to appear.
  ///
  /// Required.
  core.bool? enableProducts;

  /// Identifier.
  ///
  /// The resource name of the autofeed settings. Format:
  /// `accounts/{account}/autofeedSettings`.
  core.String? name;

  AutofeedSettings({this.eligible, this.enableProducts, this.name});

  AutofeedSettings.fromJson(core.Map json_)
    : this(
        eligible: json_['eligible'] as core.bool?,
        enableProducts: json_['enableProducts'] as core.bool?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eligible = this.eligible;
    final enableProducts = this.enableProducts;
    final name = this.name;
    return {
      'eligible': ?eligible,
      'enableProducts': ?enableProducts,
      'name': ?name,
    };
  }
}

/// This improvement will attempt to automatically correct submitted images if
/// they don't meet the
/// [image requirements](https://support.google.com/merchants/answer/6324350),
/// for example, removing overlays.
///
/// If successful, the image will be replaced and approved. This improvement is
/// only applied to images of disapproved offers. For more information see:
/// [Automatic image improvements](https://support.google.com/merchants/answer/9242973)
class AutomaticImageImprovements {
  /// Determines how the images should be automatically updated.
  ///
  /// If this field is not present and provided in the update mask, then the
  /// settings will be deleted. If there are no settings for subaccount, they
  /// are inherited from aggregator.
  ///
  /// Optional.
  ImageImprovementsAccountLevelSettings? accountImageImprovementsSettings;

  /// The effective value of allow_automatic_image_improvements.
  ///
  /// If account_image_improvements_settings is present, then this value is the
  /// same. Otherwise, it represents the inherited value of the parent account.
  /// Read-only.
  ///
  /// Output only.
  core.bool? effectiveAllowAutomaticImageImprovements;

  AutomaticImageImprovements({
    this.accountImageImprovementsSettings,
    this.effectiveAllowAutomaticImageImprovements,
  });

  AutomaticImageImprovements.fromJson(core.Map json_)
    : this(
        accountImageImprovementsSettings:
            json_.containsKey('accountImageImprovementsSettings')
            ? ImageImprovementsAccountLevelSettings.fromJson(
                json_['accountImageImprovementsSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        effectiveAllowAutomaticImageImprovements:
            json_['effectiveAllowAutomaticImageImprovements'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountImageImprovementsSettings =
        this.accountImageImprovementsSettings;
    final effectiveAllowAutomaticImageImprovements =
        this.effectiveAllowAutomaticImageImprovements;
    return {
      'accountImageImprovementsSettings': ?accountImageImprovementsSettings,
      'effectiveAllowAutomaticImageImprovements':
          ?effectiveAllowAutomaticImageImprovements,
    };
  }
}

/// Collection of information related to the
/// [automatic improvements](https://developers.google.com/shopping-content/guides/automatic-improvements)
/// of an account.
class AutomaticImprovements {
  /// This improvement will attempt to automatically correct submitted images if
  /// they don't meet the
  /// [image requirements](https://support.google.com/merchants/answer/6324350),
  /// for example, removing overlays.
  ///
  /// If successful, the image will be replaced and approved. This improvement
  /// is only applied to images of disapproved offers. For more information see:
  /// [Automatic image improvements](https://support.google.com/merchants/answer/9242973)
  /// This field is only updated (cleared) if provided in the update mask.
  AutomaticImageImprovements? imageImprovements;

  /// Turning on
  /// [item updates](https://support.google.com/merchants/answer/3246284) allows
  /// Google to automatically update items for you.
  ///
  /// When item updates are on, Google uses the structured data markup on the
  /// website and advanced data extractors to update the price and availability
  /// of the items. When the item updates are off, items with mismatched data
  /// aren't shown. This field is only updated (cleared) if provided in the
  /// update mask.
  AutomaticItemUpdates? itemUpdates;

  /// Identifier.
  ///
  /// The resource name of the automatic improvements. Format:
  /// `accounts/{account}/automaticImprovements`.
  core.String? name;

  /// Not available for
  /// [advanced accounts](https://support.google.com/merchants/answer/188487).
  ///
  /// By turning on
  /// [automatic shipping improvements](https://support.google.com/merchants/answer/10027038),
  /// you are allowing Google to improve the accuracy of your delivery times
  /// shown to shoppers using Google. More accurate delivery times, especially
  /// when faster, typically lead to better conversion rates. Google will
  /// improve your estimated delivery times based on various factors: * Delivery
  /// address of an order * Current handling time and shipping time settings *
  /// Estimated weekdays or business days * Parcel tracking data This field is
  /// only updated (cleared) if provided in the update mask.
  AutomaticShippingImprovements? shippingImprovements;

  AutomaticImprovements({
    this.imageImprovements,
    this.itemUpdates,
    this.name,
    this.shippingImprovements,
  });

  AutomaticImprovements.fromJson(core.Map json_)
    : this(
        imageImprovements: json_.containsKey('imageImprovements')
            ? AutomaticImageImprovements.fromJson(
                json_['imageImprovements']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        itemUpdates: json_.containsKey('itemUpdates')
            ? AutomaticItemUpdates.fromJson(
                json_['itemUpdates'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        shippingImprovements: json_.containsKey('shippingImprovements')
            ? AutomaticShippingImprovements.fromJson(
                json_['shippingImprovements']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final imageImprovements = this.imageImprovements;
    final itemUpdates = this.itemUpdates;
    final name = this.name;
    final shippingImprovements = this.shippingImprovements;
    return {
      'imageImprovements': ?imageImprovements,
      'itemUpdates': ?itemUpdates,
      'name': ?name,
      'shippingImprovements': ?shippingImprovements,
    };
  }
}

/// Turning on
/// [item updates](https://support.google.com/merchants/answer/3246284) allows
/// Google to automatically update items for you.
///
/// When item updates are on, Google uses the structured data markup on the
/// website and advanced data extractors to update the price and availability of
/// the items. When the item updates are off, items with mismatched data aren't
/// shown.
class AutomaticItemUpdates {
  /// Determines which attributes of the items should be automatically updated.
  ///
  /// If this field is not present and provided in the update mask, then the
  /// settings will be deleted. If there are no settings for subaccount, they
  /// are inherited from aggregator.
  ///
  /// Optional.
  ItemUpdatesAccountLevelSettings? accountItemUpdatesSettings;

  /// The effective value of allow_availability_updates.
  ///
  /// If account_item_updates_settings is present, then this value is the same.
  /// Otherwise, it represents the inherited value of the parent account. The
  /// default value is true if no settings are present. Read-only.
  ///
  /// Output only.
  core.bool? effectiveAllowAvailabilityUpdates;

  /// The effective value of allow_condition_updates.
  ///
  /// If account_item_updates_settings is present, then this value is the same.
  /// Otherwise, it represents the inherited value of the parent account. The
  /// default value is true if no settings are present. Read-only.
  ///
  /// Output only.
  core.bool? effectiveAllowConditionUpdates;

  /// The effective value of allow_price_updates.
  ///
  /// If account_item_updates_settings is present, then this value is the same.
  /// Otherwise, it represents the inherited value of the parent account. The
  /// default value is true if no settings are present. Read-only.
  ///
  /// Output only.
  core.bool? effectiveAllowPriceUpdates;

  /// The effective value of allow_strict_availability_updates.
  ///
  /// If account_item_updates_settings is present, then this value is the same.
  /// Otherwise, it represents the inherited value of the parent account. The
  /// default value is true if no settings are present. Read-only.
  ///
  /// Output only.
  core.bool? effectiveAllowStrictAvailabilityUpdates;

  AutomaticItemUpdates({
    this.accountItemUpdatesSettings,
    this.effectiveAllowAvailabilityUpdates,
    this.effectiveAllowConditionUpdates,
    this.effectiveAllowPriceUpdates,
    this.effectiveAllowStrictAvailabilityUpdates,
  });

  AutomaticItemUpdates.fromJson(core.Map json_)
    : this(
        accountItemUpdatesSettings:
            json_.containsKey('accountItemUpdatesSettings')
            ? ItemUpdatesAccountLevelSettings.fromJson(
                json_['accountItemUpdatesSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        effectiveAllowAvailabilityUpdates:
            json_['effectiveAllowAvailabilityUpdates'] as core.bool?,
        effectiveAllowConditionUpdates:
            json_['effectiveAllowConditionUpdates'] as core.bool?,
        effectiveAllowPriceUpdates:
            json_['effectiveAllowPriceUpdates'] as core.bool?,
        effectiveAllowStrictAvailabilityUpdates:
            json_['effectiveAllowStrictAvailabilityUpdates'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountItemUpdatesSettings = this.accountItemUpdatesSettings;
    final effectiveAllowAvailabilityUpdates =
        this.effectiveAllowAvailabilityUpdates;
    final effectiveAllowConditionUpdates = this.effectiveAllowConditionUpdates;
    final effectiveAllowPriceUpdates = this.effectiveAllowPriceUpdates;
    final effectiveAllowStrictAvailabilityUpdates =
        this.effectiveAllowStrictAvailabilityUpdates;
    return {
      'accountItemUpdatesSettings': ?accountItemUpdatesSettings,
      'effectiveAllowAvailabilityUpdates': ?effectiveAllowAvailabilityUpdates,
      'effectiveAllowConditionUpdates': ?effectiveAllowConditionUpdates,
      'effectiveAllowPriceUpdates': ?effectiveAllowPriceUpdates,
      'effectiveAllowStrictAvailabilityUpdates':
          ?effectiveAllowStrictAvailabilityUpdates,
    };
  }
}

/// Not available for
/// [advanced accounts](https://support.google.com/merchants/answer/188487).
///
/// By turning on
/// [automatic shipping improvements](https://support.google.com/merchants/answer/10027038),
/// you are allowing Google to improve the accuracy of your delivery times shown
/// to shoppers using Google. More accurate delivery times, especially when
/// faster, typically lead to better conversion rates. Google will improve your
/// estimated delivery times based on various factors: * Delivery address of an
/// order * Current handling time and shipping time settings * Estimated
/// weekdays or business days * Parcel tracking data
typedef AutomaticShippingImprovements = $ShippingImprovements;

/// Request message for the `BatchCreateRegions` method.
class BatchCreateRegionsRequest {
  /// The region(s) to create.
  ///
  /// The maximum number of regions that can be created in a batch is 100.
  ///
  /// Required.
  core.List<CreateRegionRequest>? requests;

  BatchCreateRegionsRequest({this.requests});

  BatchCreateRegionsRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => CreateRegionRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

/// Response message for the `BatchCreateRegions` method.
class BatchCreateRegionsResponse {
  /// The created region(s).
  core.List<Region>? regions;

  BatchCreateRegionsResponse({this.regions});

  BatchCreateRegionsResponse.fromJson(core.Map json_)
    : this(
        regions: (json_['regions'] as core.List?)
            ?.map(
              (value) =>
                  Region.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final regions = this.regions;
    return {'regions': ?regions};
  }
}

/// Request message for the `BatchDeleteRegions` method.
class BatchDeleteRegionsRequest {
  /// The names of the regions to delete.
  ///
  /// A maximum of 100 regions can be deleted in a batch.
  ///
  /// Required.
  core.List<DeleteRegionRequest>? requests;

  BatchDeleteRegionsRequest({this.requests});

  BatchDeleteRegionsRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => DeleteRegionRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

/// Request message for the `BatchUpdateRegions` method.
class BatchUpdateRegionsRequest {
  /// The region(s) to update.
  ///
  /// The maximum number of regions that can be updated in a batch is 100.
  ///
  /// Required.
  core.List<UpdateRegionRequest>? requests;

  BatchUpdateRegionsRequest({this.requests});

  BatchUpdateRegionsRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => UpdateRegionRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

/// Response message for the `BatchUpdateRegions` method.
class BatchUpdateRegionsResponse {
  /// The updated region(s).
  core.List<Region>? regions;

  BatchUpdateRegionsResponse({this.regions});

  BatchUpdateRegionsResponse.fromJson(core.Map json_)
    : this(
        regions: (json_['regions'] as core.List?)
            ?.map(
              (value) =>
                  Region.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final regions = this.regions;
    return {'regions': ?regions};
  }
}

/// Business days of the warehouse.
class BusinessDayConfig {
  /// Regular business days.
  ///
  /// May not be empty.
  ///
  /// Required.
  core.List<core.String>? businessDays;

  BusinessDayConfig({this.businessDays});

  BusinessDayConfig.fromJson(core.Map json_)
    : this(
        businessDays: (json_['businessDays'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final businessDays = this.businessDays;
    return {'businessDays': ?businessDays};
  }
}

/// Collection of information related to the
/// [identity of a business](https://support.google.com/merchants/answer/12564247).
class BusinessIdentity {
  /// Specifies whether the business identifies itself as being black-owned.
  ///
  /// This optional field will only be available for businesses with the
  /// business country set to `US`. It is also not applicable for marketplaces
  /// or marketplace sellers.
  ///
  /// Optional.
  IdentityAttribute? blackOwned;

  /// Specifies whether the business identifies itself as being latino-owned.
  ///
  /// This optional field will only be available for businesses with the
  /// business country set to `US`. It is also not applicable for marketplaces
  /// or marketplace sellers.
  ///
  /// Optional.
  IdentityAttribute? latinoOwned;

  /// Identifier.
  ///
  /// The resource name of the business identity. Format:
  /// `accounts/{account}/businessIdentity`
  core.String? name;

  /// Whether the identity attributes may be used for promotions.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PROMOTIONS_CONSENT_UNSPECIFIED" : Default value indicating that no
  /// selection was made.
  /// - "PROMOTIONS_CONSENT_GIVEN" : Indicates that the account consented to
  /// having their business identity used for promotions.
  /// - "PROMOTIONS_CONSENT_DENIED" : Indicates that the account did not consent
  /// to having their business identity used for promotions.
  core.String? promotionsConsent;

  /// Specifies whether the business identifies itself as a small business.
  ///
  /// This optional field will only be available for businesses with a business
  /// country set to `US`. It is also not applicable for marketplaces.
  ///
  /// Optional.
  IdentityAttribute? smallBusiness;

  /// Specifies whether the business identifies itself as being veteran-owned.
  ///
  /// This optional field will only be available for businesses with a business
  /// country set to `US`. It is also not applicable for marketplaces or
  /// marketplace sellers.
  ///
  /// Optional.
  IdentityAttribute? veteranOwned;

  /// Specifies whether the business identifies itself as being women-owned.
  ///
  /// This optional field will only be available for businesses with a business
  /// country set to `US`. It is also not applicable for marketplaces or
  /// marketplace sellers.
  ///
  /// Optional.
  IdentityAttribute? womenOwned;

  BusinessIdentity({
    this.blackOwned,
    this.latinoOwned,
    this.name,
    this.promotionsConsent,
    this.smallBusiness,
    this.veteranOwned,
    this.womenOwned,
  });

  BusinessIdentity.fromJson(core.Map json_)
    : this(
        blackOwned: json_.containsKey('blackOwned')
            ? IdentityAttribute.fromJson(
                json_['blackOwned'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        latinoOwned: json_.containsKey('latinoOwned')
            ? IdentityAttribute.fromJson(
                json_['latinoOwned'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        promotionsConsent: json_['promotionsConsent'] as core.String?,
        smallBusiness: json_.containsKey('smallBusiness')
            ? IdentityAttribute.fromJson(
                json_['smallBusiness'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        veteranOwned: json_.containsKey('veteranOwned')
            ? IdentityAttribute.fromJson(
                json_['veteranOwned'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        womenOwned: json_.containsKey('womenOwned')
            ? IdentityAttribute.fromJson(
                json_['womenOwned'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final blackOwned = this.blackOwned;
    final latinoOwned = this.latinoOwned;
    final name = this.name;
    final promotionsConsent = this.promotionsConsent;
    final smallBusiness = this.smallBusiness;
    final veteranOwned = this.veteranOwned;
    final womenOwned = this.womenOwned;
    return {
      'blackOwned': ?blackOwned,
      'latinoOwned': ?latinoOwned,
      'name': ?name,
      'promotionsConsent': ?promotionsConsent,
      'smallBusiness': ?smallBusiness,
      'veteranOwned': ?veteranOwned,
      'womenOwned': ?womenOwned,
    };
  }
}

/// The `BusinessInfo` message contains essential information about a business.
///
/// This message captures key business details such as physical address,
/// customer service contacts, and region-specific identifiers.
class BusinessInfo {
  /// The address of the business.
  ///
  /// Only `region_code`, `address_lines`, `postal_code`, `administrative_area`
  /// and `locality` fields are supported. All other fields are ignored.
  ///
  /// Optional.
  PostalAddress? address;

  /// The customer service of the business.
  ///
  /// Optional.
  CustomerService? customerService;

  /// The 10-digit
  /// [Korean business registration number](https://support.google.com/merchants/answer/9037766)
  /// separated with dashes in the format: XXX-XX-XXXXX.
  ///
  /// Optional.
  core.String? koreanBusinessRegistrationNumber;

  /// Identifier.
  ///
  /// The resource name of the business info. Format:
  /// `accounts/{account}/businessInfo`
  core.String? name;

  /// The phone number of the business.
  ///
  /// Output only.
  PhoneNumber? phone;

  /// The phone verification state of the business.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PHONE_VERIFICATION_STATE_UNSPECIFIED" : Default value. This value is
  /// unused.
  /// - "PHONE_VERIFICATION_STATE_VERIFIED" : The phone is verified.
  /// - "PHONE_VERIFICATION_STATE_UNVERIFIED" : The phone is unverified.
  core.String? phoneVerificationState;

  BusinessInfo({
    this.address,
    this.customerService,
    this.koreanBusinessRegistrationNumber,
    this.name,
    this.phone,
    this.phoneVerificationState,
  });

  BusinessInfo.fromJson(core.Map json_)
    : this(
        address: json_.containsKey('address')
            ? PostalAddress.fromJson(
                json_['address'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        customerService: json_.containsKey('customerService')
            ? CustomerService.fromJson(
                json_['customerService'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        koreanBusinessRegistrationNumber:
            json_['koreanBusinessRegistrationNumber'] as core.String?,
        name: json_['name'] as core.String?,
        phone: json_.containsKey('phone')
            ? PhoneNumber.fromJson(
                json_['phone'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        phoneVerificationState: json_['phoneVerificationState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final address = this.address;
    final customerService = this.customerService;
    final koreanBusinessRegistrationNumber =
        this.koreanBusinessRegistrationNumber;
    final name = this.name;
    final phone = this.phone;
    final phoneVerificationState = this.phoneVerificationState;
    return {
      'address': ?address,
      'customerService': ?customerService,
      'koreanBusinessRegistrationNumber': ?koreanBusinessRegistrationNumber,
      'name': ?name,
      'phone': ?phone,
      'phoneVerificationState': ?phoneVerificationState,
    };
  }
}

/// `CampaignManagement` payload.
typedef CampaignsManagement = $Empty;

/// A list of carrier rates that can be referred to by `main_table` or
/// `single_value`.
///
/// Supported carrier services are defined in
/// https://support.google.com/merchants/answer/12577710?ref_topic=12570808&sjid=10662598224319463032-NC#zippy=%2Cdelivery-cost-rate-type%2Ccarrier-rate-au-de-uk-and-us-only.
class CarrierRate {
  /// Carrier service, such as `"UPS"` or `"Fedex"`.
  ///
  /// Required.
  core.String? carrier;

  /// Carrier service, such as `"ground"` or `"2 days"`.
  ///
  /// Required.
  core.String? carrierService;

  /// Additive shipping rate modifier.
  ///
  /// Can be negative. For example `{ "amount_micros": 1, "currency_code" :
  /// "USD" }` adds $1 to the rate, `{ "amount_micros": -3, "currency_code" :
  /// "USD" }` removes $3 from the rate.
  ///
  /// Optional.
  Price? flatAdjustment;

  /// Name of the carrier rate.
  ///
  /// Must be unique per rate group.
  ///
  /// Required.
  core.String? name;

  /// Shipping origin for this carrier rate.
  ///
  /// Required.
  core.String? originPostalCode;

  /// Multiplicative shipping rate modifier as a number in decimal notation.
  ///
  /// Can be negative. For example `"5.4"` increases the rate by 5.4%, `"-3"`
  /// decreases the rate by 3%.
  ///
  /// Optional.
  core.String? percentageAdjustment;

  CarrierRate({
    this.carrier,
    this.carrierService,
    this.flatAdjustment,
    this.name,
    this.originPostalCode,
    this.percentageAdjustment,
  });

  CarrierRate.fromJson(core.Map json_)
    : this(
        carrier: json_['carrier'] as core.String?,
        carrierService: json_['carrierService'] as core.String?,
        flatAdjustment: json_.containsKey('flatAdjustment')
            ? Price.fromJson(
                json_['flatAdjustment'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        originPostalCode: json_['originPostalCode'] as core.String?,
        percentageAdjustment: json_['percentageAdjustment'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final carrier = this.carrier;
    final carrierService = this.carrierService;
    final flatAdjustment = this.flatAdjustment;
    final name = this.name;
    final originPostalCode = this.originPostalCode;
    final percentageAdjustment = this.percentageAdjustment;
    return {
      'carrier': ?carrier,
      'carrierService': ?carrierService,
      'flatAdjustment': ?flatAdjustment,
      'name': ?name,
      'originPostalCode': ?originPostalCode,
      'percentageAdjustment': ?percentageAdjustment,
    };
  }
}

/// [CheckoutSettings](https://support.google.com/merchants/answer/13945960) for
/// a specific merchant.
class CheckoutSettings {
  /// The effective value of enrollment_state for a given merchant ID.
  ///
  /// If account level settings are present then this value will be a copy of
  /// the account level settings. Otherwise, it will have the value of the
  /// parent account (for only marketplace sellers).
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CHECKOUT_ENROLLMENT_STATE_UNSPECIFIED" : Default enrollment state when
  /// enrollment state is not specified.
  /// - "INACTIVE" : Merchant has not enrolled into the program.
  /// - "ENROLLED" : Merchant has enrolled into the program by providing either
  /// an account level URL or checkout URLs as part of their feed.
  /// - "OPTED_OUT" : Merchant has previously enrolled but opted out of the
  /// program.
  core.String? effectiveEnrollmentState;

  /// The effective value of `review_state` for a given merchant ID.
  ///
  /// If account level settings are present then this value will be a copy of
  /// the account level settings. Otherwise, it will have the value of the
  /// parent account (for only marketplace sellers).
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CHECKOUT_REVIEW_STATE_UNSPECIFIED" : Default review state when review
  /// state is not specified.
  /// - "IN_REVIEW" : Merchant provided URLs are being reviewed for data quality
  /// issues.
  /// - "APPROVED" : Merchant account has been approved. Indicates the data
  /// quality checks have passed.
  /// - "DISAPPROVED" : Merchant account has been disapproved due to data
  /// quality issues.
  core.String? effectiveReviewState;

  /// The effective value of `uri_settings` for a given merchant.
  ///
  /// If account level settings are present then this value will be a copy of
  /// url settings. Otherwise, it will have the value of the parent account (for
  /// only marketplace sellers).
  ///
  /// Output only.
  UriSettings? effectiveUriSettings;

  /// The destinations (also known as
  /// [Marketing methods](https://support.google.com/merchants/answer/15130232))
  /// to which the checkout program applies, valid destination values are
  /// `SHOPPING_ADS`, `FREE_LISTINGS`
  ///
  /// Optional.
  core.List<core.String>? eligibleDestinations;

  /// Reflects the merchant enrollment state in `Checkout` program.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CHECKOUT_ENROLLMENT_STATE_UNSPECIFIED" : Default enrollment state when
  /// enrollment state is not specified.
  /// - "INACTIVE" : Merchant has not enrolled into the program.
  /// - "ENROLLED" : Merchant has enrolled into the program by providing either
  /// an account level URL or checkout URLs as part of their feed.
  /// - "OPTED_OUT" : Merchant has previously enrolled but opted out of the
  /// program.
  core.String? enrollmentState;

  /// Identifier.
  ///
  /// The resource name of the program configuration settings. Format:
  /// `accounts/{account}/programs/{program}/checkoutSettings`
  core.String? name;

  /// Reflects the merchant review state in `Checkout` program.
  ///
  /// This is set based on the data quality reviews of the URL provided by the
  /// merchant. A merchant with enrollment state as `ENROLLED` can be in the
  /// following review states: `IN_REVIEW`, `APPROVED` or `DISAPPROVED`. A
  /// merchant must be in an `enrollment_state` of `ENROLLED` before a review
  /// can begin for the merchant.For more details, check the help center doc.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CHECKOUT_REVIEW_STATE_UNSPECIFIED" : Default review state when review
  /// state is not specified.
  /// - "IN_REVIEW" : Merchant provided URLs are being reviewed for data quality
  /// issues.
  /// - "APPROVED" : Merchant account has been approved. Indicates the data
  /// quality checks have passed.
  /// - "DISAPPROVED" : Merchant account has been disapproved due to data
  /// quality issues.
  core.String? reviewState;

  /// URI settings for cart or checkout URL.
  UriSettings? uriSettings;

  CheckoutSettings({
    this.effectiveEnrollmentState,
    this.effectiveReviewState,
    this.effectiveUriSettings,
    this.eligibleDestinations,
    this.enrollmentState,
    this.name,
    this.reviewState,
    this.uriSettings,
  });

  CheckoutSettings.fromJson(core.Map json_)
    : this(
        effectiveEnrollmentState:
            json_['effectiveEnrollmentState'] as core.String?,
        effectiveReviewState: json_['effectiveReviewState'] as core.String?,
        effectiveUriSettings: json_.containsKey('effectiveUriSettings')
            ? UriSettings.fromJson(
                json_['effectiveUriSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        eligibleDestinations: (json_['eligibleDestinations'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        enrollmentState: json_['enrollmentState'] as core.String?,
        name: json_['name'] as core.String?,
        reviewState: json_['reviewState'] as core.String?,
        uriSettings: json_.containsKey('uriSettings')
            ? UriSettings.fromJson(
                json_['uriSettings'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final effectiveEnrollmentState = this.effectiveEnrollmentState;
    final effectiveReviewState = this.effectiveReviewState;
    final effectiveUriSettings = this.effectiveUriSettings;
    final eligibleDestinations = this.eligibleDestinations;
    final enrollmentState = this.enrollmentState;
    final name = this.name;
    final reviewState = this.reviewState;
    final uriSettings = this.uriSettings;
    return {
      'effectiveEnrollmentState': ?effectiveEnrollmentState,
      'effectiveReviewState': ?effectiveReviewState,
      'effectiveUriSettings': ?effectiveUriSettings,
      'eligibleDestinations': ?eligibleDestinations,
      'enrollmentState': ?enrollmentState,
      'name': ?name,
      'reviewState': ?reviewState,
      'uriSettings': ?uriSettings,
    };
  }
}

/// Request message for the `ClaimHomepage` method.
class ClaimHomepageRequest {
  /// When set to `true`, this option removes any existing claim on the
  /// requested website from any other account to the account making the
  /// request, effectively replacing the previous claim.
  ///
  /// Optional.
  core.bool? overwrite;

  ClaimHomepageRequest({this.overwrite});

  ClaimHomepageRequest.fromJson(core.Map json_)
    : this(overwrite: json_['overwrite'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final overwrite = this.overwrite;
    return {'overwrite': ?overwrite};
  }
}

/// `ComparisonShopping` payload.
typedef ComparisonShopping = $Empty;

/// Request message for the `CreateAndConfigureAccount` method.
class CreateAndConfigureAccountRequest {
  /// The account to be created.
  ///
  /// Required.
  Account? account;

  /// An account service between the account to be created and the provider
  /// account is initialized as part of the creation.
  ///
  /// At least one such service needs to be provided. Currently exactly one of
  /// these needs to be `account_aggregation` and `accounts.createAndConfigure`
  /// method can be used to create a sub-account under an existing advanced
  /// account through this method. Additional `account_management` or
  /// `product_management` services may be provided.
  ///
  /// Required.
  core.List<AddAccountService>? service;

  /// If a relationship is created with a provider, you can set an alias for it
  /// with this field.
  ///
  /// The calling user must be an admin on the provider to be able to set an
  /// alias.
  ///
  /// Optional.
  core.List<SetAliasForRelationship>? setAlias;

  /// Users to be added to the account.
  ///
  /// Optional.
  core.List<AddUser>? user;

  CreateAndConfigureAccountRequest({
    this.account,
    this.service,
    this.setAlias,
    this.user,
  });

  CreateAndConfigureAccountRequest.fromJson(core.Map json_)
    : this(
        account: json_.containsKey('account')
            ? Account.fromJson(
                json_['account'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        service: (json_['service'] as core.List?)
            ?.map(
              (value) => AddAccountService.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        setAlias: (json_['setAlias'] as core.List?)
            ?.map(
              (value) => SetAliasForRelationship.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        user: (json_['user'] as core.List?)
            ?.map(
              (value) => AddUser.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final account = this.account;
    final service = this.service;
    final setAlias = this.setAlias;
    final user = this.user;
    return {
      'account': ?account,
      'service': ?service,
      'setAlias': ?setAlias,
      'user': ?user,
    };
  }
}

/// Request message for the `CreateRegion` method.
class CreateRegionRequest {
  /// The account to create a region for.
  ///
  /// Format: `accounts/{account}`
  ///
  /// Required.
  core.String? parent;

  /// The region to create.
  ///
  /// Required.
  Region? region;

  /// The identifier for the region, unique over all regions of the same
  /// account.
  ///
  /// Required.
  core.String? regionId;

  CreateRegionRequest({this.parent, this.region, this.regionId});

  CreateRegionRequest.fromJson(core.Map json_)
    : this(
        parent: json_['parent'] as core.String?,
        region: json_.containsKey('region')
            ? Region.fromJson(
                json_['region'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        regionId: json_['regionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final parent = this.parent;
    final region = this.region;
    final regionId = this.regionId;
    return {'parent': ?parent, 'region': ?region, 'regionId': ?regionId};
  }
}

/// Customer service information.
class CustomerService {
  /// The email address where customer service may be reached.
  ///
  /// Optional.
  core.String? email;

  /// The phone number where customer service may be called.
  ///
  /// Optional.
  PhoneNumber? phone;

  /// The URI where customer service may be found.
  ///
  /// Optional.
  core.String? uri;

  CustomerService({this.email, this.phone, this.uri});

  CustomerService.fromJson(core.Map json_)
    : this(
        email: json_['email'] as core.String?,
        phone: json_.containsKey('phone')
            ? PhoneNumber.fromJson(
                json_['phone'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final email = this.email;
    final phone = this.phone;
    final uri = this.uri;
    return {'email': ?email, 'phone': ?phone, 'uri': ?uri};
  }
}

/// Configs related to local delivery ends for the day.
class CutoffConfig {
  /// Time that local delivery ends for the day.
  LocalCutoffTime? localCutoffTime;

  /// Businesses can opt-out of showing n+1 day local delivery when they have a
  /// shipping service configured to n day local delivery.
  ///
  /// For example, if the shipping service defines same-day delivery, and it's
  /// past the cut-off, setting this field to `true` results in the calculated
  /// shipping service rate returning `NO_DELIVERY_POST_CUTOFF`. In the same
  /// example, setting this field to `false` results in the calculated shipping
  /// time being one day. This is only for local delivery.
  core.bool? noDeliveryPostCutoff;

  /// Only valid with local delivery fulfillment.
  ///
  /// Represents cutoff time as the number of hours before store closing.
  /// Mutually exclusive with `local_cutoff_time`.
  core.String? storeCloseOffsetHours;

  CutoffConfig({
    this.localCutoffTime,
    this.noDeliveryPostCutoff,
    this.storeCloseOffsetHours,
  });

  CutoffConfig.fromJson(core.Map json_)
    : this(
        localCutoffTime: json_.containsKey('localCutoffTime')
            ? LocalCutoffTime.fromJson(
                json_['localCutoffTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        noDeliveryPostCutoff: json_['noDeliveryPostCutoff'] as core.bool?,
        storeCloseOffsetHours: json_['storeCloseOffsetHours'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final localCutoffTime = this.localCutoffTime;
    final noDeliveryPostCutoff = this.noDeliveryPostCutoff;
    final storeCloseOffsetHours = this.storeCloseOffsetHours;
    return {
      'localCutoffTime': ?localCutoffTime,
      'noDeliveryPostCutoff': ?noDeliveryPostCutoff,
      'storeCloseOffsetHours': ?storeCloseOffsetHours,
    };
  }
}

/// Business days cutoff time definition.
class CutoffTime {
  /// Hour of the cutoff time until which an order has to be placed to be
  /// processed in the same day.
  ///
  /// Required.
  core.int? hour;

  /// Minute of the cutoff time until which an order has to be placed to be
  /// processed in the same day.
  ///
  /// Required.
  core.int? minute;

  /// [Timezone identifier](https://developers.google.com/adwords/api/docs/appendix/codes-formats#timezone-ids)
  /// For example "Europe/Zurich".
  ///
  /// Required.
  core.String? timeZone;

  CutoffTime({this.hour, this.minute, this.timeZone});

  CutoffTime.fromJson(core.Map json_)
    : this(
        hour: json_['hour'] as core.int?,
        minute: json_['minute'] as core.int?,
        timeZone: json_['timeZone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final hour = this.hour;
    final minute = this.minute;
    final timeZone = this.timeZone;
    return {'hour': ?hour, 'minute': ?minute, 'timeZone': ?timeZone};
  }
}

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

/// Request message for the `DeleteRegion` method.
class DeleteRegionRequest {
  /// The name of the region to delete.
  ///
  /// Format: `accounts/{account}/regions/{region}`
  ///
  /// Required.
  core.String? name;

  DeleteRegionRequest({this.name});

  DeleteRegionRequest.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    return {'name': ?name};
  }
}

/// Time spent in various aspects from order to the delivery of the product.
class DeliveryTime {
  /// Business days cutoff time definition.
  ///
  /// If not configured the cutoff time will be defaulted to 8AM PST.
  CutoffTime? cutoffTime;

  /// The business days during which orders can be handled.
  ///
  /// If not provided, Monday to Friday business days will be assumed.
  BusinessDayConfig? handlingBusinessDayConfig;

  /// Maximum number of business days spent before an order is shipped.
  ///
  /// 0 means same day shipped, 1 means next day shipped. Must be greater than
  /// or equal to `min_handling_days`. 'min_handling_days' and
  /// 'max_handling_days' should be either set or not set at the same time.
  core.int? maxHandlingDays;

  /// Maximum number of business days that is spent in transit.
  ///
  /// 0 means same day delivery, 1 means next day delivery. Must be greater than
  /// or equal to `min_transit_days`.
  core.int? maxTransitDays;

  /// Minimum number of business days spent before an order is shipped.
  ///
  /// 0 means same day shipped, 1 means next day shipped. 'min_handling_days'
  /// and 'max_handling_days' should be either set or not set at the same time.
  core.int? minHandlingDays;

  /// Minimum number of business days that is spent in transit.
  ///
  /// 0 means same day delivery, 1 means next day delivery. Either
  /// `min_transit_days`, `max_transit_days` or `transit_time_table` must be
  /// set, but not both.
  core.int? minTransitDays;

  /// The business days during which orders can be in-transit.
  ///
  /// If not provided, Monday to Friday business days will be assumed.
  BusinessDayConfig? transitBusinessDayConfig;

  /// Transit time table, number of business days spent in transit based on row
  /// and column dimensions.
  ///
  /// Either `min_transit_days`, `max_transit_days` or `transit_time_table` can
  /// be set, but not both.
  TransitTable? transitTimeTable;

  /// Indicates that the delivery time should be calculated per warehouse
  /// (shipping origin location) based on the settings of the selected carrier.
  ///
  /// When set, no other transit time related field in delivery time should be
  /// set.
  ///
  /// Optional.
  core.List<WarehouseBasedDeliveryTime>? warehouseBasedDeliveryTimes;

  DeliveryTime({
    this.cutoffTime,
    this.handlingBusinessDayConfig,
    this.maxHandlingDays,
    this.maxTransitDays,
    this.minHandlingDays,
    this.minTransitDays,
    this.transitBusinessDayConfig,
    this.transitTimeTable,
    this.warehouseBasedDeliveryTimes,
  });

  DeliveryTime.fromJson(core.Map json_)
    : this(
        cutoffTime: json_.containsKey('cutoffTime')
            ? CutoffTime.fromJson(
                json_['cutoffTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        handlingBusinessDayConfig:
            json_.containsKey('handlingBusinessDayConfig')
            ? BusinessDayConfig.fromJson(
                json_['handlingBusinessDayConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        maxHandlingDays: json_['maxHandlingDays'] as core.int?,
        maxTransitDays: json_['maxTransitDays'] as core.int?,
        minHandlingDays: json_['minHandlingDays'] as core.int?,
        minTransitDays: json_['minTransitDays'] as core.int?,
        transitBusinessDayConfig: json_.containsKey('transitBusinessDayConfig')
            ? BusinessDayConfig.fromJson(
                json_['transitBusinessDayConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        transitTimeTable: json_.containsKey('transitTimeTable')
            ? TransitTable.fromJson(
                json_['transitTimeTable']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        warehouseBasedDeliveryTimes:
            (json_['warehouseBasedDeliveryTimes'] as core.List?)
                ?.map(
                  (value) => WarehouseBasedDeliveryTime.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cutoffTime = this.cutoffTime;
    final handlingBusinessDayConfig = this.handlingBusinessDayConfig;
    final maxHandlingDays = this.maxHandlingDays;
    final maxTransitDays = this.maxTransitDays;
    final minHandlingDays = this.minHandlingDays;
    final minTransitDays = this.minTransitDays;
    final transitBusinessDayConfig = this.transitBusinessDayConfig;
    final transitTimeTable = this.transitTimeTable;
    final warehouseBasedDeliveryTimes = this.warehouseBasedDeliveryTimes;
    return {
      'cutoffTime': ?cutoffTime,
      'handlingBusinessDayConfig': ?handlingBusinessDayConfig,
      'maxHandlingDays': ?maxHandlingDays,
      'maxTransitDays': ?maxTransitDays,
      'minHandlingDays': ?minHandlingDays,
      'minTransitDays': ?minTransitDays,
      'transitBusinessDayConfig': ?transitBusinessDayConfig,
      'transitTimeTable': ?transitTimeTable,
      'warehouseBasedDeliveryTimes': ?warehouseBasedDeliveryTimes,
    };
  }
}

/// Represents a developer registration owned by a Merchant account.
class DeveloperRegistration {
  /// The GCP ids attached to this developer registration
  ///
  /// Output only.
  core.List<core.String>? gcpIds;

  /// Identifier.
  ///
  /// The `name` (ID) of the developer registration. Generated by the Content
  /// API upon creation of a new `DeveloperRegistration`. The `account`
  /// represents the merchant ID of the merchant that owns the registration.
  core.String? name;

  DeveloperRegistration({this.gcpIds, this.name});

  DeveloperRegistration.fromJson(core.Map json_)
    : this(
        gcpIds: (json_['gcpIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final gcpIds = this.gcpIds;
    final name = this.name;
    return {'gcpIds': ?gcpIds, 'name': ?name};
  }
}

/// Request message for the DisableProgram method.
typedef DisableProgramRequest = $Empty;

/// Maximum delivery radius.
///
/// This is only required for the local delivery shipment type.
class Distance {
  /// Unit can differ based on country, it is parameterized to include miles and
  /// kilometers.
  /// Possible string values are:
  /// - "UNIT_UNSPECIFIED" : Unit unspecified
  /// - "MILES" : Unit in miles
  /// - "KILOMETERS" : Unit in kilometers
  core.String? unit;

  /// Integer value of distance.
  core.String? value;

  Distance({this.unit, this.value});

  Distance.fromJson(core.Map json_)
    : this(
        unit: json_['unit'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final unit = this.unit;
    final value = this.value;
    return {'unit': ?unit, 'value': ?value};
  }
}

/// The categories of notifications the user opted into / opted out of.
///
/// The email preferences do not include mandatory announcements as users can't
/// opt out of them.
class EmailPreferences {
  /// Identifier.
  ///
  /// The name of the EmailPreferences. The endpoint is only supported for the
  /// authenticated user.
  core.String? name;

  /// Updates on new features, tips and best practices.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "OPT_IN_STATE_UNSPECIFIED" : Opt-in status is not specified.
  /// - "OPTED_OUT" : User has opted out of receiving this type of email.
  /// - "OPTED_IN" : User has opted in to receiving this type of email.
  /// - "UNCONFIRMED" : User has opted in to receiving this type of email and
  /// the confirmation email has been sent, but user has not yet confirmed the
  /// opt in (applies only to certain countries).
  core.String? newsAndTips;

  EmailPreferences({this.name, this.newsAndTips});

  EmailPreferences.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        newsAndTips: json_['newsAndTips'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final newsAndTips = this.newsAndTips;
    return {'name': ?name, 'newsAndTips': ?newsAndTips};
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Request message for the EnableProgram method.
typedef EnableProgramRequest = $Empty;

/// Response message for the FindLfpProviders method.
class FindLfpProvidersResponse {
  /// The LFP providers from the specified merchant in the specified country.
  core.List<LfpProvider>? lfpProviders;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  FindLfpProvidersResponse({this.lfpProviders, this.nextPageToken});

  FindLfpProvidersResponse.fromJson(core.Map json_)
    : this(
        lfpProviders: (json_['lfpProviders'] as core.List?)
            ?.map(
              (value) => LfpProvider.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final lfpProviders = this.lfpProviders;
    final nextPageToken = this.nextPageToken;
    return {'lfpProviders': ?lfpProviders, 'nextPageToken': ?nextPageToken};
  }
}

/// Collection of information related to a Google Business Profile (GBP)
/// account.
class GbpAccount {
  /// The id of the GBP account.
  core.String? gbpAccountId;

  /// The name of the Business Profile.
  ///
  /// For personal accounts: Email id of the owner. For Business accounts: Name
  /// of the Business Account.
  core.String? gbpAccountName;

  /// Number of listings under this account.
  core.String? listingCount;

  /// Identifier.
  ///
  /// The resource name of the GBP account. Format:
  /// `accounts/{account}/gbpAccount/{gbp_account}`
  core.String? name;

  /// The type of the Business Profile.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "USER" : The GBP account is a user account.
  /// - "BUSINESS_ACCOUNT" : The GBP account is a business account.
  core.String? type;

  GbpAccount({
    this.gbpAccountId,
    this.gbpAccountName,
    this.listingCount,
    this.name,
    this.type,
  });

  GbpAccount.fromJson(core.Map json_)
    : this(
        gbpAccountId: json_['gbpAccountId'] as core.String?,
        gbpAccountName: json_['gbpAccountName'] as core.String?,
        listingCount: json_['listingCount'] as core.String?,
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final gbpAccountId = this.gbpAccountId;
    final gbpAccountName = this.gbpAccountName;
    final listingCount = this.listingCount;
    final name = this.name;
    final type = this.type;
    return {
      'gbpAccountId': ?gbpAccountId,
      'gbpAccountName': ?gbpAccountName,
      'listingCount': ?listingCount,
      'name': ?name,
      'type': ?type,
    };
  }
}

/// A list of geotargets that defines the region area.
class GeoTargetArea {
  /// A non-empty list of
  /// [location IDs](https://developers.google.com/adwords/api/docs/appendix/geotargeting).
  ///
  /// They must all be of the same location type (for example, state).
  ///
  /// Required.
  core.List<core.String>? geotargetCriteriaIds;

  GeoTargetArea({this.geotargetCriteriaIds});

  GeoTargetArea.fromJson(core.Map json_)
    : this(
        geotargetCriteriaIds: (json_['geotargetCriteriaIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final geotargetCriteriaIds = this.geotargetCriteriaIds;
    return {'geotargetCriteriaIds': ?geotargetCriteriaIds};
  }
}

/// Response message for the GetAccountForGcpRegistration method.
class GetAccountForGcpRegistrationResponse {
  /// The name of the merchant account id that the GCP is registered with.
  core.String? name;

  GetAccountForGcpRegistrationResponse({this.name});

  GetAccountForGcpRegistrationResponse.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    return {'name': ?name};
  }
}

/// The current status of establishing of the service.
///
/// (for example, pending approval or approved).
class Handshake {
  /// The most recent account to modify the account service's `approval_status`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ACTOR_UNSPECIFIED" : Unspecified actor.
  /// - "ACCOUNT" : The last change was done by the account who has this
  /// service.
  /// - "OTHER_PARTY" : The last change was done by the other party who this
  /// service points to.
  core.String? actor;

  /// The approval state of this handshake.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "APPROVAL_STATE_UNSPECIFIED" : Unspecified approval status.
  /// - "PENDING" : The service was proposed and is waiting to be confirmed.
  /// - "ESTABLISHED" : Both parties have confirmed the service.
  /// - "REJECTED" : The service proposal was rejected.
  core.String? approvalState;

  Handshake({this.actor, this.approvalState});

  Handshake.fromJson(core.Map json_)
    : this(
        actor: json_['actor'] as core.String?,
        approvalState: json_['approvalState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final actor = this.actor;
    final approvalState = this.approvalState;
    return {'actor': ?actor, 'approvalState': ?approvalState};
  }
}

/// A non-empty list of row or column headers for a table.
///
/// Exactly one of `prices`, `weights`, `num_items`, `postal_code_group_names`,
/// or `location` must be set.
class Headers {
  /// A list of location ID sets.
  ///
  /// Must be non-empty. Can only be set if all other fields are not set.
  ///
  /// Required.
  core.List<LocationIdSet>? locations;

  /// A list of inclusive number of items upper bounds.
  ///
  /// The last value can be `"infinity"`. For example `["10", "50", "infinity"]`
  /// represents the headers "\<= 10 items", "\<= 50 items", and "\> 50 items".
  /// Must be non-empty. Can only be set if all other fields are not set.
  ///
  /// Required.
  core.List<core.String>? numberOfItems;

  /// A list of postal group names.
  ///
  /// The last value can be `"all other locations"`. Example: `["zone 1", "zone
  /// 2", "all other locations"]`. The referred postal code groups must match
  /// the delivery country of the service. Must be non-empty. Can only be set if
  /// all other fields are not set.
  ///
  /// Required.
  core.List<core.String>? postalCodeGroupNames;

  /// A list of inclusive order price upper bounds.
  ///
  /// The last price's value can be infinity by setting price amount_micros =
  /// -1. For example `[{"amount_micros": 10000000, "currency_code": "USD"},
  /// {"amount_micros": 500000000, "currency_code": "USD"}, {"amount_micros":
  /// -1, "currency_code": "USD"}]` represents the headers "\<= $10", "\<=
  /// $500", and "\> $500". All prices within a service must have the same
  /// currency. Must be non-empty. Must be positive except -1. Can only be set
  /// if all other fields are not set.
  ///
  /// Required.
  core.List<Price>? prices;

  /// A list of inclusive order weight upper bounds.
  ///
  /// The last weight's value can be infinity by setting price amount_micros =
  /// -1. For example `[{"amount_micros": 10000000, "unit": "kg"},
  /// {"amount_micros": 50000000, "unit": "kg"}, {"amount_micros": -1, "unit":
  /// "kg"}]` represents the headers "\<= 10kg", "\<= 50kg", and "\> 50kg". All
  /// weights within a service must have the same unit. Must be non-empty. Must
  /// be positive except -1. Can only be set if all other fields are not set.
  ///
  /// Required.
  core.List<Weight>? weights;

  Headers({
    this.locations,
    this.numberOfItems,
    this.postalCodeGroupNames,
    this.prices,
    this.weights,
  });

  Headers.fromJson(core.Map json_)
    : this(
        locations: (json_['locations'] as core.List?)
            ?.map(
              (value) => LocationIdSet.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        numberOfItems: (json_['numberOfItems'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        postalCodeGroupNames: (json_['postalCodeGroupNames'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        prices: (json_['prices'] as core.List?)
            ?.map(
              (value) =>
                  Price.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        weights: (json_['weights'] as core.List?)
            ?.map(
              (value) =>
                  Weight.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final locations = this.locations;
    final numberOfItems = this.numberOfItems;
    final postalCodeGroupNames = this.postalCodeGroupNames;
    final prices = this.prices;
    final weights = this.weights;
    return {
      'locations': ?locations,
      'numberOfItems': ?numberOfItems,
      'postalCodeGroupNames': ?postalCodeGroupNames,
      'prices': ?prices,
      'weights': ?weights,
    };
  }
}

/// The `Homepage` message represents a business's store homepage within the
/// system.
///
/// A business's homepage is the primary domain where customers interact with
/// their store. The homepage can be claimed and verified as a proof of
/// ownership and allows the business to unlock features that require a verified
/// website. For more information, see \[Understanding online store URL
/// verification\](//support.google.com/merchants/answer/176793).
class Homepage {
  /// Whether the homepage is claimed.
  ///
  /// See https://support.google.com/merchants/answer/176793.
  ///
  /// Output only.
  core.bool? claimed;

  /// Identifier.
  ///
  /// The resource name of the store's homepage. Format:
  /// `accounts/{account}/homepage`
  core.String? name;

  /// The URI (typically a URL) of the store's homepage.
  ///
  /// Required.
  core.String? uri;

  Homepage({this.claimed, this.name, this.uri});

  Homepage.fromJson(core.Map json_)
    : this(
        claimed: json_['claimed'] as core.bool?,
        name: json_['name'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final claimed = this.claimed;
    final name = this.name;
    final uri = this.uri;
    return {'claimed': ?claimed, 'name': ?name, 'uri': ?uri};
  }
}

/// All information related to an identity attribute.
class IdentityAttribute {
  /// The declaration of identity for this attribute.
  ///
  /// Required.
  /// Possible string values are:
  /// - "IDENTITY_DECLARATION_UNSPECIFIED" : Default value indicating that no
  /// selection was made.
  /// - "SELF_IDENTIFIES_AS" : Indicates that the account identifies with the
  /// attribute.
  /// - "DOES_NOT_SELF_IDENTIFY_AS" : Indicates that the account does not
  /// identify with the attribute.
  core.String? identityDeclaration;

  IdentityAttribute({this.identityDeclaration});

  IdentityAttribute.fromJson(core.Map json_)
    : this(identityDeclaration: json_['identityDeclaration'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final identityDeclaration = this.identityDeclaration;
    return {'identityDeclaration': ?identityDeclaration};
  }
}

/// Settings for the Automatic Image Improvements.
typedef ImageImprovementsAccountLevelSettings = $Settings;

/// The impact of the issue on a region.
class Impact {
  /// The [CLDR region code](https://cldr.unicode.org/) where this issue
  /// applies.
  core.String? regionCode;

  /// The severity of the issue on the destination and region.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : The severity is unknown.
  /// - "CRITICAL" : The issue causes offers to not serve.
  /// - "ERROR" : The issue might affect offers (in the future) or might be an
  /// indicator of issues with offers.
  /// - "SUGGESTION" : The issue is a suggestion for improvement.
  core.String? severity;

  Impact({this.regionCode, this.severity});

  Impact.fromJson(core.Map json_)
    : this(
        regionCode: json_['regionCode'] as core.String?,
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final regionCode = this.regionCode;
    final severity = this.severity;
    return {'regionCode': ?regionCode, 'severity': ?severity};
  }
}

/// The impact of the issue on a destination.
class ImpactedDestination {
  /// The (negative) impact for various regions on the given destination.
  core.List<Impact>? impacts;

  /// The impacted reporting context.
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

  ImpactedDestination({this.impacts, this.reportingContext});

  ImpactedDestination.fromJson(core.Map json_)
    : this(
        impacts: (json_['impacts'] as core.List?)
            ?.map(
              (value) =>
                  Impact.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        reportingContext: json_['reportingContext'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final impacts = this.impacts;
    final reportingContext = this.reportingContext;
    return {'impacts': ?impacts, 'reportingContext': ?reportingContext};
  }
}

/// Collection of information related to InStock.
class InStock {
  /// The state of the in-stock serving.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "ACTIVE" : The review process has concluded successfully. The reviewed
  /// item is active.
  /// - "FAILED" : The review process failed.
  /// - "RUNNING" : The review process is running.
  /// - "ACTION_REQUIRED" : The review process is waiting for the merchant to
  /// take action.
  core.String? state;

  /// Product landing page URI.
  ///
  /// It is only used for the review of MHLSF in-stock serving. This URI domain
  /// should match with the business's homepage. Required to be empty if the
  /// lsf_type is GHLSF, and required when the lsf_type is MHLSF_FULL or
  /// MHLSF_BASIC.
  ///
  /// Optional.
  core.String? uri;

  InStock({this.state, this.uri});

  InStock.fromJson(core.Map json_)
    : this(
        state: json_['state'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final state = this.state;
    final uri = this.uri;
    return {'state': ?state, 'uri': ?uri};
  }
}

/// Collection of information related to
/// [inventory verification](https://support.google.com/merchants/answer/14684499?ref_topic=15145634&sjid=6892280366904591178-NC).
class InventoryVerification {
  /// The name of the contact for the inventory verification process.
  ///
  /// Required.
  core.String? contact;

  /// The email address of the contact for the inventory verification process.
  ///
  /// Required.
  core.String? contactEmail;

  /// The state of the contact verification.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "ACTIVE" : The review process has concluded successfully. The reviewed
  /// item is active.
  /// - "FAILED" : The review process failed.
  /// - "RUNNING" : The review process is running.
  /// - "ACTION_REQUIRED" : The review process is waiting for the merchant to
  /// take action.
  core.String? contactState;

  /// The state of the inventory verification process.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "ACTION_REQUIRED" : When the merchant needs to initiate the inventory
  /// verification process. The next state is INACTIVE.
  /// - "INACTIVE" : When the merchant is ready to request inventory
  /// verification.
  /// - "RUNNING" : The inventory verification process is running. If the
  /// merchant is rejected, the next state is INACTIVE.
  /// - "SUCCEEDED" : The inventory verification process succeeded.
  /// - "SUSPENDED" : When merchant fails the inventory verification process and
  /// all attempts are exhausted.
  core.String? state;

  InventoryVerification({
    this.contact,
    this.contactEmail,
    this.contactState,
    this.state,
  });

  InventoryVerification.fromJson(core.Map json_)
    : this(
        contact: json_['contact'] as core.String?,
        contactEmail: json_['contactEmail'] as core.String?,
        contactState: json_['contactState'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contact = this.contact;
    final contactEmail = this.contactEmail;
    final contactState = this.contactState;
    final state = this.state;
    return {
      'contact': ?contact,
      'contactEmail': ?contactEmail,
      'contactState': ?contactState,
      'state': ?state,
    };
  }
}

/// Settings for the Automatic Item Updates.
class ItemUpdatesAccountLevelSettings {
  /// If availability updates are enabled, any previous availability values get
  /// overwritten if Google finds an out-of-stock annotation on the offer's
  /// page.
  ///
  /// If additionally `allow_strict_availability_updates` field is set to true,
  /// values get overwritten if Google finds an in-stock annotation on the
  /// offer’s page.
  core.bool? allowAvailabilityUpdates;

  /// If condition updates are enabled, Google always updates item condition
  /// with the condition detected from the details of your product.
  core.bool? allowConditionUpdates;

  /// If price updates are enabled, Google always updates the active price with
  /// the crawled information.
  core.bool? allowPriceUpdates;

  /// If `allow_availability_updates` is enabled, items are automatically
  /// updated in all your Shopping target countries.
  ///
  /// By default, availability updates will only be applied to items that are
  /// 'out of stock' on your website but 'in stock' on Shopping. Set this to
  /// true to also update items that are 'in stock' on your website, but 'out of
  /// stock' on Google Shopping. In order for this field to have an effect, you
  /// must also set `allow_availability_updates`.
  core.bool? allowStrictAvailabilityUpdates;

  ItemUpdatesAccountLevelSettings({
    this.allowAvailabilityUpdates,
    this.allowConditionUpdates,
    this.allowPriceUpdates,
    this.allowStrictAvailabilityUpdates,
  });

  ItemUpdatesAccountLevelSettings.fromJson(core.Map json_)
    : this(
        allowAvailabilityUpdates:
            json_['allowAvailabilityUpdates'] as core.bool?,
        allowConditionUpdates: json_['allowConditionUpdates'] as core.bool?,
        allowPriceUpdates: json_['allowPriceUpdates'] as core.bool?,
        allowStrictAvailabilityUpdates:
            json_['allowStrictAvailabilityUpdates'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowAvailabilityUpdates = this.allowAvailabilityUpdates;
    final allowConditionUpdates = this.allowConditionUpdates;
    final allowPriceUpdates = this.allowPriceUpdates;
    final allowStrictAvailabilityUpdates = this.allowStrictAvailabilityUpdates;
    return {
      'allowAvailabilityUpdates': ?allowAvailabilityUpdates,
      'allowConditionUpdates': ?allowConditionUpdates,
      'allowPriceUpdates': ?allowPriceUpdates,
      'allowStrictAvailabilityUpdates': ?allowStrictAvailabilityUpdates,
    };
  }
}

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
typedef LatLng = $LatLng;

/// Collection of information related to the LFP link.
class LfpLink {
  /// The account ID by which this merchant is known to the LFP provider.
  ///
  /// Required.
  core.String? externalAccountId;

  /// The resource name of the LFP provider.
  ///
  /// Format: `lfpProviders/{lfp_provider}`
  ///
  /// Required.
  core.String? lfpProvider;

  /// The state of the LFP link.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "ACTIVE" : The review process has concluded successfully. The reviewed
  /// item is active.
  /// - "FAILED" : The review process failed.
  /// - "RUNNING" : The review process is running.
  /// - "ACTION_REQUIRED" : The review process is waiting for the merchant to
  /// take action.
  core.String? state;

  LfpLink({this.externalAccountId, this.lfpProvider, this.state});

  LfpLink.fromJson(core.Map json_)
    : this(
        externalAccountId: json_['externalAccountId'] as core.String?,
        lfpProvider: json_['lfpProvider'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final externalAccountId = this.externalAccountId;
    final lfpProvider = this.lfpProvider;
    final state = this.state;
    return {
      'externalAccountId': ?externalAccountId,
      'lfpProvider': ?lfpProvider,
      'state': ?state,
    };
  }
}

/// Collection of information related to a Local Feed Partnership (LFP)
/// provider.
class LfpProvider {
  /// The display name of the LFP provider.
  core.String? displayName;

  /// Identifier.
  ///
  /// The resource name of the LFP provider. Format:
  /// `accounts/{account}/omnichannelSettings/{omnichannel_setting}/lfpProviders/{lfp_provider}`
  core.String? name;

  /// Region code defined by [CLDR](https://cldr.unicode.org/).
  ///
  /// Output only.
  core.String? regionCode;

  LfpProvider({this.displayName, this.name, this.regionCode});

  LfpProvider.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final name = this.name;
    final regionCode = this.regionCode;
    return {
      'displayName': ?displayName,
      'name': ?name,
      'regionCode': ?regionCode,
    };
  }
}

/// Request message for the LinkGbpAccount method.
class LinkGbpAccountRequest {
  /// The email address of the Business Profile account.
  ///
  /// Required.
  core.String? gbpEmail;

  LinkGbpAccountRequest({this.gbpEmail});

  LinkGbpAccountRequest.fromJson(core.Map json_)
    : this(gbpEmail: json_['gbpEmail'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final gbpEmail = this.gbpEmail;
    return {'gbpEmail': ?gbpEmail};
  }
}

/// Response message for the LinkGbpAccount method.
class LinkGbpAccountResponse {
  /// Empty response.
  Empty? response;

  LinkGbpAccountResponse({this.response});

  LinkGbpAccountResponse.fromJson(core.Map json_)
    : this(
        response: json_.containsKey('response')
            ? Empty.fromJson(
                json_['response'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final response = this.response;
    return {'response': ?response};
  }
}

/// Request message for the LinkLfpProvider method.
class LinkLfpProviderRequest {
  /// The external account ID by which this merchant is known to the LFP
  /// provider.
  ///
  /// Required.
  core.String? externalAccountId;

  LinkLfpProviderRequest({this.externalAccountId});

  LinkLfpProviderRequest.fromJson(core.Map json_)
    : this(externalAccountId: json_['externalAccountId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final externalAccountId = this.externalAccountId;
    return {'externalAccountId': ?externalAccountId};
  }
}

/// Response message for the LinkLfpProvider method.
class LinkLfpProviderResponse {
  /// Empty response.
  Empty? response;

  LinkLfpProviderResponse({this.response});

  LinkLfpProviderResponse.fromJson(core.Map json_)
    : this(
        response: json_.containsKey('response')
            ? Empty.fromJson(
                json_['response'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final response = this.response;
    return {'response': ?response};
  }
}

/// Response message for the `ListAccountIssues` method.
class ListAccountIssuesResponse {
  /// The issues from the specified account.
  core.List<AccountIssue>? accountIssues;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListAccountIssuesResponse({this.accountIssues, this.nextPageToken});

  ListAccountIssuesResponse.fromJson(core.Map json_)
    : this(
        accountIssues: (json_['accountIssues'] as core.List?)
            ?.map(
              (value) => AccountIssue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountIssues = this.accountIssues;
    final nextPageToken = this.nextPageToken;
    return {'accountIssues': ?accountIssues, 'nextPageToken': ?nextPageToken};
  }
}

/// Response after trying to list account relationships.
class ListAccountRelationshipsResponse {
  /// The account relationships that match your filter.
  core.List<AccountRelationship>? accountRelationships;

  /// A page token.
  ///
  /// You can send the `page_token` to get the next page. Only included in the
  /// `list` response if there are more pages.
  core.String? nextPageToken;

  ListAccountRelationshipsResponse({
    this.accountRelationships,
    this.nextPageToken,
  });

  ListAccountRelationshipsResponse.fromJson(core.Map json_)
    : this(
        accountRelationships: (json_['accountRelationships'] as core.List?)
            ?.map(
              (value) => AccountRelationship.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountRelationships = this.accountRelationships;
    final nextPageToken = this.nextPageToken;
    return {
      'accountRelationships': ?accountRelationships,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Response after trying to list account services.
class ListAccountServicesResponse {
  /// The account services that match your filter.
  core.List<AccountService>? accountServices;

  /// A page token.
  ///
  /// You can send the `page_token` to get the next page. Only included in the
  /// `list` response if there are more pages.
  core.String? nextPageToken;

  ListAccountServicesResponse({this.accountServices, this.nextPageToken});

  ListAccountServicesResponse.fromJson(core.Map json_)
    : this(
        accountServices: (json_['accountServices'] as core.List?)
            ?.map(
              (value) => AccountService.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountServices = this.accountServices;
    final nextPageToken = this.nextPageToken;
    return {
      'accountServices': ?accountServices,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Response message for the `accounts.list` method.
class ListAccountsResponse {
  /// The accounts matching the `ListAccountsRequest`.
  core.List<Account>? accounts;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListAccountsResponse({this.accounts, this.nextPageToken});

  ListAccountsResponse.fromJson(core.Map json_)
    : this(
        accounts: (json_['accounts'] as core.List?)
            ?.map(
              (value) => Account.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accounts = this.accounts;
    final nextPageToken = this.nextPageToken;
    return {'accounts': ?accounts, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for the ListGbpAccounts method.
class ListGbpAccountsResponse {
  /// The GBP accounts from the specified merchant in the specified country.
  core.List<GbpAccount>? gbpAccounts;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListGbpAccountsResponse({this.gbpAccounts, this.nextPageToken});

  ListGbpAccountsResponse.fromJson(core.Map json_)
    : this(
        gbpAccounts: (json_['gbpAccounts'] as core.List?)
            ?.map(
              (value) => GbpAccount.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final gbpAccounts = this.gbpAccounts;
    final nextPageToken = this.nextPageToken;
    return {'gbpAccounts': ?gbpAccounts, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for the ListOmnichannelSettings method.
class ListOmnichannelSettingsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The omnichannel settings from the specified merchant.
  core.List<OmnichannelSetting>? omnichannelSettings;

  ListOmnichannelSettingsResponse({
    this.nextPageToken,
    this.omnichannelSettings,
  });

  ListOmnichannelSettingsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        omnichannelSettings: (json_['omnichannelSettings'] as core.List?)
            ?.map(
              (value) => OmnichannelSetting.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final omnichannelSettings = this.omnichannelSettings;
    return {
      'nextPageToken': ?nextPageToken,
      'omnichannelSettings': ?omnichannelSettings,
    };
  }
}

/// Response message for the `ListOnlineReturnPolicies` method.
class ListOnlineReturnPoliciesResponse {
  /// A token, which can be sent as `pageToken` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The retrieved return policies.
  core.List<OnlineReturnPolicy>? onlineReturnPolicies;

  ListOnlineReturnPoliciesResponse({
    this.nextPageToken,
    this.onlineReturnPolicies,
  });

  ListOnlineReturnPoliciesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        onlineReturnPolicies: (json_['onlineReturnPolicies'] as core.List?)
            ?.map(
              (value) => OnlineReturnPolicy.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final onlineReturnPolicies = this.onlineReturnPolicies;
    return {
      'nextPageToken': ?nextPageToken,
      'onlineReturnPolicies': ?onlineReturnPolicies,
    };
  }
}

/// Response message for the ListPrograms method.
class ListProgramsResponse {
  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The programs for the given account.
  core.List<Program>? programs;

  ListProgramsResponse({this.nextPageToken, this.programs});

  ListProgramsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        programs: (json_['programs'] as core.List?)
            ?.map(
              (value) => Program.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final programs = this.programs;
    return {'nextPageToken': ?nextPageToken, 'programs': ?programs};
  }
}

/// Response message for the `ListRegions` method.
class ListRegionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The regions from the specified business.
  core.List<Region>? regions;

  ListRegionsResponse({this.nextPageToken, this.regions});

  ListRegionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        regions: (json_['regions'] as core.List?)
            ?.map(
              (value) =>
                  Region.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final regions = this.regions;
    return {'nextPageToken': ?nextPageToken, 'regions': ?regions};
  }
}

/// Response message for the `ListSubAccounts` method.
class ListSubAccountsResponse {
  /// The accounts for which the given parent account is an aggregator.
  core.List<Account>? accounts;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListSubAccountsResponse({this.accounts, this.nextPageToken});

  ListSubAccountsResponse.fromJson(core.Map json_)
    : this(
        accounts: (json_['accounts'] as core.List?)
            ?.map(
              (value) => Account.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accounts = this.accounts;
    final nextPageToken = this.nextPageToken;
    return {'accounts': ?accounts, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for the `ListUsers` method.
class ListUsersResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The users from the specified account.
  core.List<User>? users;

  ListUsersResponse({this.nextPageToken, this.users});

  ListUsersResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        users: (json_['users'] as core.List?)
            ?.map(
              (value) =>
                  User.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final users = this.users;
    return {'nextPageToken': ?nextPageToken, 'users': ?users};
  }
}

/// Time that local delivery ends for the day.
typedef LocalCutoffTime = $LocalCutoffTime;

/// `LocalListingManagement` payload.
typedef LocalListingManagement = $Empty;

/// A list of location ID sets.
///
/// Must be non-empty. Can only be set if all other fields are not set.
class LocationIdSet {
  /// A non-empty list of
  /// [location IDs](https://developers.google.com/adwords/api/docs/appendix/geotargeting).
  ///
  /// They must all be of the same location type (For example, state).
  ///
  /// Required.
  core.List<core.String>? locationIds;

  LocationIdSet({this.locationIds});

  LocationIdSet.fromJson(core.Map json_)
    : this(
        locationIds: (json_['locationIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final locationIds = this.locationIds;
    return {'locationIds': ?locationIds};
  }
}

/// [Loyalty program](https://support.google.com/merchants/answer/12922446)
/// provided by a business.
class LoyaltyProgram {
  /// Loyalty program tier of this shipping service.
  ///
  /// Optional.
  core.List<LoyaltyProgramTiers>? loyaltyProgramTiers;

  /// This is the loyalty program label set in your loyalty program settings in
  /// Merchant Center.
  ///
  /// This sub-attribute allows Google to map your loyalty program to eligible
  /// offers.
  core.String? programLabel;

  LoyaltyProgram({this.loyaltyProgramTiers, this.programLabel});

  LoyaltyProgram.fromJson(core.Map json_)
    : this(
        loyaltyProgramTiers: (json_['loyaltyProgramTiers'] as core.List?)
            ?.map(
              (value) => LoyaltyProgramTiers.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        programLabel: json_['programLabel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final loyaltyProgramTiers = this.loyaltyProgramTiers;
    final programLabel = this.programLabel;
    return {
      'loyaltyProgramTiers': ?loyaltyProgramTiers,
      'programLabel': ?programLabel,
    };
  }
}

/// Subset of a business's loyalty program.
class LoyaltyProgramTiers {
  /// The tier label \[tier_label\] sub-attribute differentiates offer level
  /// benefits between each tier.
  ///
  /// This value is also set in your program settings in Merchant Center, and is
  /// required for data source changes even if your loyalty program only has 1
  /// tier.
  core.String? tierLabel;

  LoyaltyProgramTiers({this.tierLabel});

  LoyaltyProgramTiers.fromJson(core.Map json_)
    : this(tierLabel: json_['tierLabel'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final tierLabel = this.tierLabel;
    return {'tierLabel': ?tierLabel};
  }
}

/// Table of per store minimum order values for the pickup fulfillment type.
class MinimumOrderValueTable {
  /// A list of store code sets sharing the same minimum order value (MOV).
  ///
  /// At least two sets are required and the last one must be empty, which
  /// signifies 'MOV for all other stores'. Each store code can only appear once
  /// across all the sets. All prices within a service must have the same
  /// currency.
  ///
  /// Required.
  core.List<StoreCodeSetWithMov>? storeCodeSetWithMovs;

  MinimumOrderValueTable({this.storeCodeSetWithMovs});

  MinimumOrderValueTable.fromJson(core.Map json_)
    : this(
        storeCodeSetWithMovs: (json_['storeCodeSetWithMovs'] as core.List?)
            ?.map(
              (value) => StoreCodeSetWithMov.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final storeCodeSetWithMovs = this.storeCodeSetWithMovs;
    return {'storeCodeSetWithMovs': ?storeCodeSetWithMovs};
  }
}

/// Collection of information related to the omnichannel settings of a merchant.
class OmnichannelSetting {
  /// The about page URI and state for this country.
  ///
  /// Optional.
  About? about;

  /// The InStock URI and state for this country.
  ///
  /// Optional.
  InStock? inStock;

  /// The inventory verification contact and state for this country.
  ///
  /// Optional.
  InventoryVerification? inventoryVerification;

  /// The established link to a LFP provider.
  ///
  /// Output only.
  LfpLink? lfpLink;

  /// The Local Store Front type for this country.
  ///
  /// Required.
  /// Possible string values are:
  /// - "LSF_TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "GHLSF" : Google-Hosted Local Store Front. Check the
  /// [HC article](https://support.google.com/merchants/answer/14869424) for
  /// more details.
  /// - "MHLSF_BASIC" : Merchant-Hosted Local Store Front Basic. Check the
  /// [HC article](https://support.google.com/merchants/answer/14615867) for
  /// more details.
  /// - "MHLSF_FULL" : Merchant-Hosted Local Store Front Full. Check the
  /// [HC article](https://support.google.com/merchants/answer/14617076) for
  /// more details.
  core.String? lsfType;

  /// Identifier.
  ///
  /// The resource name of the omnichannel setting. Format:
  /// `accounts/{account}/omnichannelSettings/{omnichannel_setting}`
  core.String? name;

  /// The On Display to Order (ODO) policy URI and state for this country.
  ///
  /// Optional.
  OnDisplayToOrder? odo;

  /// The Pickup URI and state for this country.
  ///
  /// Optional.
  Pickup? pickup;

  /// Region code defined by [CLDR](https://cldr.unicode.org/).
  ///
  /// Must be provided in the Create method, and is immutable.
  ///
  /// Required. Immutable.
  core.String? regionCode;

  OmnichannelSetting({
    this.about,
    this.inStock,
    this.inventoryVerification,
    this.lfpLink,
    this.lsfType,
    this.name,
    this.odo,
    this.pickup,
    this.regionCode,
  });

  OmnichannelSetting.fromJson(core.Map json_)
    : this(
        about: json_.containsKey('about')
            ? About.fromJson(
                json_['about'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        inStock: json_.containsKey('inStock')
            ? InStock.fromJson(
                json_['inStock'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        inventoryVerification: json_.containsKey('inventoryVerification')
            ? InventoryVerification.fromJson(
                json_['inventoryVerification']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        lfpLink: json_.containsKey('lfpLink')
            ? LfpLink.fromJson(
                json_['lfpLink'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        lsfType: json_['lsfType'] as core.String?,
        name: json_['name'] as core.String?,
        odo: json_.containsKey('odo')
            ? OnDisplayToOrder.fromJson(
                json_['odo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pickup: json_.containsKey('pickup')
            ? Pickup.fromJson(
                json_['pickup'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final about = this.about;
    final inStock = this.inStock;
    final inventoryVerification = this.inventoryVerification;
    final lfpLink = this.lfpLink;
    final lsfType = this.lsfType;
    final name = this.name;
    final odo = this.odo;
    final pickup = this.pickup;
    final regionCode = this.regionCode;
    return {
      'about': ?about,
      'inStock': ?inStock,
      'inventoryVerification': ?inventoryVerification,
      'lfpLink': ?lfpLink,
      'lsfType': ?lsfType,
      'name': ?name,
      'odo': ?odo,
      'pickup': ?pickup,
      'regionCode': ?regionCode,
    };
  }
}

/// Collection of information related to the on display to order
/// ([ODO](https://support.google.com/merchants/answer/14615056?ref_topic=15145747&sjid=6892280366904591178-NC)).
class OnDisplayToOrder {
  /// The state of the URI.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "ACTIVE" : The review process has concluded successfully. The reviewed
  /// item is active.
  /// - "FAILED" : The review process failed.
  /// - "RUNNING" : The review process is running.
  /// - "ACTION_REQUIRED" : The review process is waiting for the merchant to
  /// take action.
  core.String? state;

  /// The on display to order (ODO) policy URI.
  ///
  /// Required.
  core.String? uri;

  OnDisplayToOrder({this.state, this.uri});

  OnDisplayToOrder.fromJson(core.Map json_)
    : this(
        state: json_['state'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final state = this.state;
    final uri = this.uri;
    return {'state': ?state, 'uri': ?uri};
  }
}

/// [Online return policy](https://support.google.com/merchants/answer/10220642)
/// object.
///
/// This is currently used to represent return policies for ads and free
/// listings programs.
class OnlineReturnPolicy {
  /// This field specifies if business only accepts defective products for
  /// returns.
  ///
  /// Optional.
  core.bool? acceptDefectiveOnly;

  /// This field specifies if business allows customers to exchange products.
  ///
  /// Optional.
  core.bool? acceptExchange;

  /// The countries of sale where the return policy applies.
  ///
  /// The values must be a valid 2 letter ISO 3166 code.
  ///
  /// Required. Immutable.
  core.List<core.String>? countries;

  /// The item conditions accepted for returns must not be empty unless the type
  /// of return policy is 'noReturns'.
  ///
  /// Optional.
  core.List<core.String>? itemConditions;

  /// This field represents the unique user-defined label of the return policy
  /// for the given country.
  ///
  /// It is important to note that the same label cannot be used in different
  /// return policies for the same country. If not given, policies will be
  /// automatically treated as the 'default' for the country. When using label,
  /// you are creating an exception policy in that country to assign a custom
  /// return policy to certain product groups, follow the instructions provided
  /// in the
  /// [Return policy label](https://support.google.com/merchants/answer/9445425).
  /// The label can contain up to 50 characters.
  ///
  /// Optional. Immutable.
  core.String? label;

  /// Identifier.
  ///
  /// The name of the `OnlineReturnPolicy` resource. Format:
  /// `accounts/{account}/onlineReturnPolicies/{return_policy}`
  core.String? name;

  /// The return policy.
  ///
  /// Optional.
  Policy? policy;

  /// The field specifies the number of days it takes for business to process
  /// refunds.
  ///
  /// Optional.
  core.int? processRefundDays;

  /// The restocking fee that applies to all return reason categories.
  ///
  /// This would be treated as a free restocking fee if the value is not set.
  ///
  /// Optional.
  RestockingFee? restockingFee;

  /// The field specifies the return label source.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "RETURN_LABEL_SOURCE_UNSPECIFIED" : Default value. This value is unused.
  /// - "DOWNLOAD_AND_PRINT" : Download and print.
  /// - "IN_THE_PACKAGE" : Label include in the package.
  /// - "CUSTOMER_RESPONSIBILITY" : Customer to provide.
  core.String? returnLabelSource;

  /// The return methods of how customers can return an item.
  ///
  /// This value is required to not be empty unless the type of return policy is
  /// noReturns.
  ///
  /// Optional.
  core.List<core.String>? returnMethods;

  /// Return policy ID generated by Google.
  ///
  /// Output only.
  core.String? returnPolicyId;

  /// The return policy uri.
  ///
  /// This can used by Google to do a sanity check for the policy. It must be a
  /// valid URL.
  ///
  /// Required.
  core.String? returnPolicyUri;

  /// The return shipping fee.
  ///
  /// Should be set only when customer need to download and print the return
  /// label.
  ///
  /// Optional.
  ReturnShippingFee? returnShippingFee;

  /// Overrides to the general policy for orders placed during a specific set of
  /// time intervals.
  ///
  /// Optional.
  core.List<SeasonalOverride>? seasonalOverrides;

  OnlineReturnPolicy({
    this.acceptDefectiveOnly,
    this.acceptExchange,
    this.countries,
    this.itemConditions,
    this.label,
    this.name,
    this.policy,
    this.processRefundDays,
    this.restockingFee,
    this.returnLabelSource,
    this.returnMethods,
    this.returnPolicyId,
    this.returnPolicyUri,
    this.returnShippingFee,
    this.seasonalOverrides,
  });

  OnlineReturnPolicy.fromJson(core.Map json_)
    : this(
        acceptDefectiveOnly: json_['acceptDefectiveOnly'] as core.bool?,
        acceptExchange: json_['acceptExchange'] as core.bool?,
        countries: (json_['countries'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        itemConditions: (json_['itemConditions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        label: json_['label'] as core.String?,
        name: json_['name'] as core.String?,
        policy: json_.containsKey('policy')
            ? Policy.fromJson(
                json_['policy'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        processRefundDays: json_['processRefundDays'] as core.int?,
        restockingFee: json_.containsKey('restockingFee')
            ? RestockingFee.fromJson(
                json_['restockingFee'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        returnLabelSource: json_['returnLabelSource'] as core.String?,
        returnMethods: (json_['returnMethods'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        returnPolicyId: json_['returnPolicyId'] as core.String?,
        returnPolicyUri: json_['returnPolicyUri'] as core.String?,
        returnShippingFee: json_.containsKey('returnShippingFee')
            ? ReturnShippingFee.fromJson(
                json_['returnShippingFee']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        seasonalOverrides: (json_['seasonalOverrides'] as core.List?)
            ?.map(
              (value) => SeasonalOverride.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final acceptDefectiveOnly = this.acceptDefectiveOnly;
    final acceptExchange = this.acceptExchange;
    final countries = this.countries;
    final itemConditions = this.itemConditions;
    final label = this.label;
    final name = this.name;
    final policy = this.policy;
    final processRefundDays = this.processRefundDays;
    final restockingFee = this.restockingFee;
    final returnLabelSource = this.returnLabelSource;
    final returnMethods = this.returnMethods;
    final returnPolicyId = this.returnPolicyId;
    final returnPolicyUri = this.returnPolicyUri;
    final returnShippingFee = this.returnShippingFee;
    final seasonalOverrides = this.seasonalOverrides;
    return {
      'acceptDefectiveOnly': ?acceptDefectiveOnly,
      'acceptExchange': ?acceptExchange,
      'countries': ?countries,
      'itemConditions': ?itemConditions,
      'label': ?label,
      'name': ?name,
      'policy': ?policy,
      'processRefundDays': ?processRefundDays,
      'restockingFee': ?restockingFee,
      'returnLabelSource': ?returnLabelSource,
      'returnMethods': ?returnMethods,
      'returnPolicyId': ?returnPolicyId,
      'returnPolicyUri': ?returnPolicyUri,
      'returnShippingFee': ?returnShippingFee,
      'seasonalOverrides': ?seasonalOverrides,
    };
  }
}

/// An object representing a phone number, suitable as an API wire format.
///
/// This representation: - should not be used for locale-specific formatting of
/// a phone number, such as "+1 (650) 253-0000 ext. 123" - is not designed for
/// efficient storage - may not be suitable for dialing - specialized libraries
/// (see references) should be used to parse the number for that purpose To do
/// something meaningful with this number, such as format it for various
/// use-cases, convert it to an `i18n.phonenumbers.PhoneNumber` object first.
/// For instance, in Java this would be: com.google.type.PhoneNumber wireProto =
/// com.google.type.PhoneNumber.newBuilder().build();
/// com.google.i18n.phonenumbers.Phonenumber.PhoneNumber phoneNumber =
/// PhoneNumberUtil.getInstance().parse(wireProto.getE164Number(), "ZZ"); if
/// (!wireProto.getExtension().isEmpty()) {
/// phoneNumber.setExtension(wireProto.getExtension()); } Reference(s): -
/// https://github.com/google/libphonenumber
class PhoneNumber {
  /// The phone number, represented as a leading plus sign ('+'), followed by a
  /// phone number that uses a relaxed ITU E.164 format consisting of the
  /// country calling code (1 to 3 digits) and the subscriber number, with no
  /// additional spaces or formatting.
  ///
  /// For example: - correct: "+15552220123" - incorrect: "+1 (555) 222-01234
  /// x123" The ITU E.164 format limits the latter to 12 digits, but in practice
  /// not all countries respect that, so we relax that restriction here.
  /// National-only numbers are not allowed. References: -
  /// https://www.itu.int/rec/T-REC-E.164-201011-I -
  /// https://en.wikipedia.org/wiki/E.164. -
  /// https://en.wikipedia.org/wiki/List_of_country_calling_codes
  core.String? e164Number;

  /// The phone number's extension.
  ///
  /// The extension is not standardized in ITU recommendations, except for being
  /// defined as a series of numbers with a maximum length of 40 digits. Other
  /// than digits, some other dialing characters such as ',' (indicating a wait)
  /// or '#' may be stored here. Note that no regions currently use extensions
  /// with short codes, so this field is normally only set in conjunction with
  /// an E.164 number. It is held separately from the E.164 number to allow for
  /// short code extensions in the future.
  core.String? extension;

  /// A short code.
  ///
  /// Reference(s): - https://wikipedia.org/wiki/Short_code
  ShortCode? shortCode;

  PhoneNumber({this.e164Number, this.extension, this.shortCode});

  PhoneNumber.fromJson(core.Map json_)
    : this(
        e164Number: json_['e164Number'] as core.String?,
        extension: json_['extension'] as core.String?,
        shortCode: json_.containsKey('shortCode')
            ? ShortCode.fromJson(
                json_['shortCode'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final e164Number = this.e164Number;
    final extension = this.extension;
    final shortCode = this.shortCode;
    return {
      'e164Number': ?e164Number,
      'extension': ?extension,
      'shortCode': ?shortCode,
    };
  }
}

/// Collection of information related to Pickup.
class Pickup {
  /// The state of the pickup serving.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "ACTIVE" : The review process has concluded successfully. The reviewed
  /// item is active.
  /// - "FAILED" : The review process failed.
  /// - "RUNNING" : The review process is running.
  /// - "ACTION_REQUIRED" : The review process is waiting for the merchant to
  /// take action.
  core.String? state;

  /// Pickup product page URI.
  ///
  /// It is only used for the review of pickup serving. This URI domain should
  /// match with the business's homepage.
  ///
  /// Required.
  core.String? uri;

  Pickup({this.state, this.uri});

  Pickup.fromJson(core.Map json_)
    : this(
        state: json_['state'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final state = this.state;
    final uri = this.uri;
    return {'state': ?state, 'uri': ?uri};
  }
}

/// The available policies.
class Policy {
  /// The number of days items can be returned after delivery, where one day is
  /// defined as 24 hours after the delivery timestamp.
  ///
  /// Required for `NUMBER_OF_DAYS_AFTER_DELIVERY` returns.
  core.String? days;

  /// Policy type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "NUMBER_OF_DAYS_AFTER_DELIVERY" : The number of days within which a
  /// return is valid after delivery.
  /// - "NO_RETURNS" : No returns.
  /// - "LIFETIME_RETURNS" : Life time returns.
  core.String? type;

  Policy({this.days, this.type});

  Policy.fromJson(core.Map json_)
    : this(
        days: json_['days'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final days = this.days;
    final type = this.type;
    return {'days': ?days, 'type': ?type};
  }
}

/// Represents a postal address, such as for postal delivery or payments
/// addresses.
///
/// With a postal address, a postal service can deliver items to a premise, P.O.
/// box, or similar. A postal address is not intended to model geographical
/// locations like roads, towns, or mountains. In typical usage, an address
/// would be created by user input or from importing existing data, depending on
/// the type of process. Advice on address input or editing: - Use an
/// internationalization-ready address widget such as
/// https://github.com/google/libaddressinput. - Users should not be presented
/// with UI elements for input or editing of fields outside countries where that
/// field is used. For more guidance on how to use this schema, see:
/// https://support.google.com/business/answer/6397478.
typedef PostalAddress = $PostalAddress;

/// A list of postal codes that defines the region area.
///
/// Note: All regions defined using postal codes are accessible through the
/// account's `ShippingSettings.postalCodeGroups` resource.
class PostalCodeArea {
  /// A range of postal codes.
  ///
  /// Required.
  core.List<PostalCodeRange>? postalCodes;

  /// [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  /// or the country the postal code group applies to.
  ///
  /// Required.
  core.String? regionCode;

  PostalCodeArea({this.postalCodes, this.regionCode});

  PostalCodeArea.fromJson(core.Map json_)
    : this(
        postalCodes: (json_['postalCodes'] as core.List?)
            ?.map(
              (value) => PostalCodeRange.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final postalCodes = this.postalCodes;
    final regionCode = this.regionCode;
    return {'postalCodes': ?postalCodes, 'regionCode': ?regionCode};
  }
}

/// A range of postal codes that defines the region area.
class PostalCodeRange {
  /// A postal code or a pattern of the form prefix* denoting the inclusive
  /// lower bound of the range defining the area.
  ///
  /// Examples values: `94108`, `9410*`, `9*`.
  ///
  /// Required.
  core.String? begin;

  /// A postal code or a pattern of the form `prefix*` denoting the inclusive
  /// upper bound of the range defining the area.
  ///
  /// It must have the same length as postalCodeRangeBegin: if
  /// postalCodeRangeBegin is a postal code then postalCodeRangeEnd must be a
  /// postal code too; if postalCodeRangeBegin is a pattern then
  /// postalCodeRangeEnd must be a pattern with the same prefix length.
  /// Optional: if not set, then the area is defined as being all the postal
  /// codes matching postalCodeRangeBegin.
  ///
  /// Optional.
  core.String? end;

  PostalCodeRange({this.begin, this.end});

  PostalCodeRange.fromJson(core.Map json_)
    : this(
        begin: json_['begin'] as core.String?,
        end: json_['end'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final begin = this.begin;
    final end = this.end;
    return {'begin': ?begin, 'end': ?end};
  }
}

/// The price represented as a number and currency.
typedef Price = $Price;

/// `ProductsManagement` payload.
typedef ProductsManagement = $Empty;

/// Defines participation in a given program for the specified account.
///
/// Programs provide a mechanism for adding functionality to a Merchant Center
/// accounts. A typical example of this is the
/// [Free product listings](https://support.google.com/merchants/answer/13889434)
/// program, which enables products from a business's store to be shown across
/// Google for free. The following list is the available set of program resource
/// IDs accessible through the API: * `checkout` * `free-listings` *
/// `shopping-ads` * `youtube-shopping-checkout`
class Program {
  /// The regions in which the account is actively participating in the program.
  ///
  /// Active regions are defined as those where all program requirements
  /// affecting the regions have been met. Region codes are defined by
  /// [CLDR](https://cldr.unicode.org/). This is either a country where the
  /// program applies specifically to that country or `001` when the program
  /// applies globally.
  ///
  /// Output only.
  core.List<core.String>? activeRegionCodes;

  /// The URL of a Merchant Center help page describing the program.
  ///
  /// Output only.
  core.String? documentationUri;

  /// Identifier.
  ///
  /// The resource name of the program. Format:
  /// `accounts/{account}/programs/{program}`
  core.String? name;

  /// The participation state of the account in the program.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "NOT_ELIGIBLE" : The account is not eligible to participate in the
  /// program.
  /// - "ELIGIBLE" : The account is eligible to participate in the program.
  /// - "ENABLED" : The program is enabled for the account.
  core.String? state;

  /// The requirements that the account has not yet satisfied that are affecting
  /// participation in the program.
  ///
  /// Output only.
  core.List<Requirement>? unmetRequirements;

  Program({
    this.activeRegionCodes,
    this.documentationUri,
    this.name,
    this.state,
    this.unmetRequirements,
  });

  Program.fromJson(core.Map json_)
    : this(
        activeRegionCodes: (json_['activeRegionCodes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        documentationUri: json_['documentationUri'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        unmetRequirements: (json_['unmetRequirements'] as core.List?)
            ?.map(
              (value) => Requirement.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activeRegionCodes = this.activeRegionCodes;
    final documentationUri = this.documentationUri;
    final name = this.name;
    final state = this.state;
    final unmetRequirements = this.unmetRequirements;
    return {
      'activeRegionCodes': ?activeRegionCodes,
      'documentationUri': ?documentationUri,
      'name': ?name,
      'state': ?state,
      'unmetRequirements': ?unmetRequirements,
    };
  }
}

/// Request to propose an account service.
class ProposeAccountServiceRequest {
  /// The account service to propose.
  ///
  /// Required.
  AccountService? accountService;

  /// The provider of the service.
  ///
  /// Either the reference to an account such as `providers/123` or a well-known
  /// service provider (one of `providers/GOOGLE_ADS` or
  /// `providers/GOOGLE_BUSINESS_PROFILE`).
  ///
  /// Required.
  core.String? provider;

  ProposeAccountServiceRequest({this.accountService, this.provider});

  ProposeAccountServiceRequest.fromJson(core.Map json_)
    : this(
        accountService: json_.containsKey('accountService')
            ? AccountService.fromJson(
                json_['accountService'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        provider: json_['provider'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountService = this.accountService;
    final provider = this.provider;
    return {'accountService': ?accountService, 'provider': ?provider};
  }
}

/// A radius area that defines the region area.
class RadiusArea {
  /// The center of the radius area.
  ///
  /// It represents a latitude/longitude pair in decimal degrees format.
  ///
  /// Required.
  LatLng? latLng;

  /// The radius distance of the area.
  ///
  /// Required.
  core.double? radius;

  /// The unit of the radius.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "RADIUS_UNITS_UNSPECIFIED" : Unused default value
  /// - "MILES" : The distance is measured in miles.
  /// - "KILOMETERS" : The distance is measured in kilometers.
  core.String? radiusUnits;

  /// [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  /// or the country the radius area applies to.
  ///
  /// Required.
  core.String? regionCode;

  RadiusArea({this.latLng, this.radius, this.radiusUnits, this.regionCode});

  RadiusArea.fromJson(core.Map json_)
    : this(
        latLng: json_.containsKey('latLng')
            ? LatLng.fromJson(
                json_['latLng'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        radius: (json_['radius'] as core.num?)?.toDouble(),
        radiusUnits: json_['radiusUnits'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final latLng = this.latLng;
    final radius = this.radius;
    final radiusUnits = this.radiusUnits;
    final regionCode = this.regionCode;
    return {
      'latLng': ?latLng,
      'radius': ?radius,
      'radiusUnits': ?radiusUnits,
      'regionCode': ?regionCode,
    };
  }
}

/// Shipping rate group definitions.
///
/// Only the last one is allowed to have an empty `applicable_shipping_labels`,
/// which means "everything else". The other `applicable_shipping_labels` must
/// not overlap.
class RateGroup {
  /// A list of
  /// [shipping labels](https://support.google.com/merchants/answer/6324504)
  /// defining the products to which this rate group applies to.
  ///
  /// This is a disjunction: only one of the labels has to match for the rate
  /// group to apply. May only be empty for the last rate group of a service.
  ///
  /// Required.
  core.List<core.String>? applicableShippingLabels;

  /// A list of carrier rates that can be referred to by `main_table` or
  /// `single_value`.
  ///
  /// Optional.
  core.List<CarrierRate>? carrierRates;

  /// A table defining the rate group, when `single_value` is not expressive
  /// enough.
  ///
  /// Can only be set if `single_value` is not set.
  Table? mainTable;

  /// Name of the rate group.
  ///
  /// If set has to be unique within shipping service.
  ///
  /// Optional.
  core.String? name;

  /// The value of the rate group (For example flat rate $10).
  ///
  /// Can only be set if `main_table` and `subtables` are not set.
  Value? singleValue;

  /// A list of subtables referred to by `main_table`.
  ///
  /// Can only be set if `main_table` is set.
  ///
  /// Optional.
  core.List<Table>? subtables;

  RateGroup({
    this.applicableShippingLabels,
    this.carrierRates,
    this.mainTable,
    this.name,
    this.singleValue,
    this.subtables,
  });

  RateGroup.fromJson(core.Map json_)
    : this(
        applicableShippingLabels:
            (json_['applicableShippingLabels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        carrierRates: (json_['carrierRates'] as core.List?)
            ?.map(
              (value) => CarrierRate.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        mainTable: json_.containsKey('mainTable')
            ? Table.fromJson(
                json_['mainTable'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        singleValue: json_.containsKey('singleValue')
            ? Value.fromJson(
                json_['singleValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        subtables: (json_['subtables'] as core.List?)
            ?.map(
              (value) =>
                  Table.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final applicableShippingLabels = this.applicableShippingLabels;
    final carrierRates = this.carrierRates;
    final mainTable = this.mainTable;
    final name = this.name;
    final singleValue = this.singleValue;
    final subtables = this.subtables;
    return {
      'applicableShippingLabels': ?applicableShippingLabels,
      'carrierRates': ?carrierRates,
      'mainTable': ?mainTable,
      'name': ?name,
      'singleValue': ?singleValue,
      'subtables': ?subtables,
    };
  }
}

/// Represents a geographic region that you can use as a target with both the
/// `RegionalInventory` and `ShippingSettings` services.
///
/// You can define regions as collections of either postal codes or, in some
/// countries, using predefined geotargets. For more information, see
/// [Set up regions ](https://support.google.com/merchants/answer/7410946#zippy=%2Ccreate-a-new-region)
/// for more information.
class Region {
  /// The display name of the region.
  ///
  /// Optional.
  core.String? displayName;

  /// A list of geotargets that defines the region area.
  ///
  /// Optional.
  GeoTargetArea? geotargetArea;

  /// Identifier.
  ///
  /// The resource name of the region. Format:
  /// `accounts/{account}/regions/{region}`
  core.String? name;

  /// A list of postal codes that defines the region area.
  ///
  /// Optional.
  PostalCodeArea? postalCodeArea;

  /// A radius area that defines the region area.
  ///
  /// Optional.
  RadiusArea? radiusArea;

  /// Indicates if the region is eligible for use in the Regional Inventory
  /// configuration.
  ///
  /// Output only.
  core.bool? regionalInventoryEligible;

  /// Indicates if the region is eligible for use in the Shipping Services
  /// configuration.
  ///
  /// Output only.
  core.bool? shippingEligible;

  Region({
    this.displayName,
    this.geotargetArea,
    this.name,
    this.postalCodeArea,
    this.radiusArea,
    this.regionalInventoryEligible,
    this.shippingEligible,
  });

  Region.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        geotargetArea: json_.containsKey('geotargetArea')
            ? GeoTargetArea.fromJson(
                json_['geotargetArea'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        postalCodeArea: json_.containsKey('postalCodeArea')
            ? PostalCodeArea.fromJson(
                json_['postalCodeArea'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        radiusArea: json_.containsKey('radiusArea')
            ? RadiusArea.fromJson(
                json_['radiusArea'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        regionalInventoryEligible:
            json_['regionalInventoryEligible'] as core.bool?,
        shippingEligible: json_['shippingEligible'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final geotargetArea = this.geotargetArea;
    final name = this.name;
    final postalCodeArea = this.postalCodeArea;
    final radiusArea = this.radiusArea;
    final regionalInventoryEligible = this.regionalInventoryEligible;
    final shippingEligible = this.shippingEligible;
    return {
      'displayName': ?displayName,
      'geotargetArea': ?geotargetArea,
      'name': ?name,
      'postalCodeArea': ?postalCodeArea,
      'radiusArea': ?radiusArea,
      'regionalInventoryEligible': ?regionalInventoryEligible,
      'shippingEligible': ?shippingEligible,
    };
  }
}

/// Request message for the RegisterGCP method.
class RegisterGcpRequest {
  /// If the developer email provided is associated with a user in the merchant
  /// account provided, the user will be updated to have "API developer" access
  /// type and the email preference corresponding to that user will be updated
  /// to have the new "API notifications" preference.
  ///
  /// If the developer email provided is not associated with any user we will
  /// just add it as a contact. The email preference corresponding to that
  /// contact will have the new "API notifications" preference. Make sure the
  /// email used is associated with a Google Account (Google Workspace account
  /// or Gmail account) and is not a service account as service accounts can't
  /// receive emails.
  ///
  /// Immutable.
  core.String? developerEmail;

  RegisterGcpRequest({this.developerEmail});

  RegisterGcpRequest.fromJson(core.Map json_)
    : this(developerEmail: json_['developerEmail'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final developerEmail = this.developerEmail;
    return {'developerEmail': ?developerEmail};
  }
}

/// Request to reject an account service.
typedef RejectAccountServiceRequest = $Empty;

/// Request message for the RequestInventoryVerification method.
typedef RequestInventoryVerificationRequest = $Empty;

/// Response message for the RequestInventoryVerification method.
class RequestInventoryVerificationResponse {
  /// The omnichannel setting that was updated.
  OmnichannelSetting? omnichannelSetting;

  RequestInventoryVerificationResponse({this.omnichannelSetting});

  RequestInventoryVerificationResponse.fromJson(core.Map json_)
    : this(
        omnichannelSetting: json_.containsKey('omnichannelSetting')
            ? OmnichannelSetting.fromJson(
                json_['omnichannelSetting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final omnichannelSetting = this.omnichannelSetting;
    return {'omnichannelSetting': ?omnichannelSetting};
  }
}

/// Describes the terms of service which are required to be accepted.
class Required {
  /// The `TermsOfService` that need to be accepted.
  ///
  /// Required.
  core.String? termsOfService;

  /// Full URL to the terms of service file.
  ///
  /// This field is the same as `TermsOfService.file_uri`, it is added here for
  /// convenience only.
  ///
  /// Required.
  core.String? tosFileUri;

  Required({this.termsOfService, this.tosFileUri});

  Required.fromJson(core.Map json_)
    : this(
        termsOfService: json_['termsOfService'] as core.String?,
        tosFileUri: json_['tosFileUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final termsOfService = this.termsOfService;
    final tosFileUri = this.tosFileUri;
    return {'termsOfService': ?termsOfService, 'tosFileUri': ?tosFileUri};
  }
}

/// Defines a requirement specified for participation in the program.
class Requirement {
  /// The regions that are currently affected by this requirement not being met.
  ///
  /// Region codes are defined by [CLDR](https://cldr.unicode.org/). This is
  /// either a country where the program applies specifically to that country or
  /// `001` when the program applies globally.
  ///
  /// Output only.
  core.List<core.String>? affectedRegionCodes;

  /// The URL of a help page describing the requirement.
  ///
  /// Output only.
  core.String? documentationUri;

  /// Name of the requirement.
  ///
  /// Output only.
  core.String? title;

  Requirement({this.affectedRegionCodes, this.documentationUri, this.title});

  Requirement.fromJson(core.Map json_)
    : this(
        affectedRegionCodes: (json_['affectedRegionCodes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        documentationUri: json_['documentationUri'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final affectedRegionCodes = this.affectedRegionCodes;
    final documentationUri = this.documentationUri;
    final title = this.title;
    return {
      'affectedRegionCodes': ?affectedRegionCodes,
      'documentationUri': ?documentationUri,
      'title': ?title,
    };
  }
}

/// The restocking fee.
///
/// This can be a flat fee or a micro percent.
class RestockingFee {
  /// Fixed restocking fee.
  Price? fixedFee;

  /// Percent of total price in micros.
  ///
  /// 15,000,000 means 15% of the total price would be charged.
  core.int? microPercent;

  RestockingFee({this.fixedFee, this.microPercent});

  RestockingFee.fromJson(core.Map json_)
    : this(
        fixedFee: json_.containsKey('fixedFee')
            ? Price.fromJson(
                json_['fixedFee'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        microPercent: json_['microPercent'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fixedFee = this.fixedFee;
    final microPercent = this.microPercent;
    return {'fixedFee': ?fixedFee, 'microPercent': ?microPercent};
  }
}

/// The return shipping fee.
///
/// This can either be a fixed fee or a boolean to indicate that the customer
/// pays the actual shipping cost.
class ReturnShippingFee {
  /// Fixed return shipping fee amount.
  ///
  /// This value is only applicable when type is `FIXED`. We will treat the
  /// return shipping fee as free if type is `FIXED` and this value is not set.
  Price? fixedFee;

  /// Type of return shipping fee.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "FIXED" : The return shipping fee is a fixed value.
  /// - "CUSTOMER_PAYING_ACTUAL_FEE" : Customers will pay the actual return
  /// shipping fee.
  core.String? type;

  ReturnShippingFee({this.fixedFee, this.type});

  ReturnShippingFee.fromJson(core.Map json_)
    : this(
        fixedFee: json_.containsKey('fixedFee')
            ? Price.fromJson(
                json_['fixedFee'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fixedFee = this.fixedFee;
    final type = this.type;
    return {'fixedFee': ?fixedFee, 'type': ?type};
  }
}

/// Include a list of cells.
class Row {
  /// The list of cells that constitute the row.
  ///
  /// Must have the same length as `columnHeaders` for two-dimensional tables, a
  /// length of 1 for one-dimensional tables.
  ///
  /// Required.
  core.List<Value>? cells;

  Row({this.cells});

  Row.fromJson(core.Map json_)
    : this(
        cells: (json_['cells'] as core.List?)
            ?.map(
              (value) =>
                  Value.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cells = this.cells;
    return {'cells': ?cells};
  }
}

class SeasonalOverride {
  /// seasonal override end date (inclusive).
  ///
  /// Required.
  Date? endDate;

  /// Display name of this seasonal override in Merchant Center.
  ///
  /// Required.
  core.String? label;

  /// Number of days (from the delivery date) that the product can be returned.
  core.int? returnDays;

  /// Fixed end date until which the product can be returned.
  Date? returnUntilDate;

  /// Defines the date range when this seasonal override applies.
  ///
  /// Both start_date and end_date are inclusive. The dates of the seasonal
  /// overrides should not overlap.
  ///
  /// Required.
  Date? startDate;

  SeasonalOverride({
    this.endDate,
    this.label,
    this.returnDays,
    this.returnUntilDate,
    this.startDate,
  });

  SeasonalOverride.fromJson(core.Map json_)
    : this(
        endDate: json_.containsKey('endDate')
            ? Date.fromJson(
                json_['endDate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        label: json_['label'] as core.String?,
        returnDays: json_['returnDays'] as core.int?,
        returnUntilDate: json_.containsKey('returnUntilDate')
            ? Date.fromJson(
                json_['returnUntilDate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        startDate: json_.containsKey('startDate')
            ? Date.fromJson(
                json_['startDate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endDate = this.endDate;
    final label = this.label;
    final returnDays = this.returnDays;
    final returnUntilDate = this.returnUntilDate;
    final startDate = this.startDate;
    return {
      'endDate': ?endDate,
      'label': ?label,
      'returnDays': ?returnDays,
      'returnUntilDate': ?returnUntilDate,
      'startDate': ?startDate,
    };
  }
}

/// Shipping service.
class Service {
  /// A boolean exposing the active status of the shipping service.
  ///
  /// Required.
  core.bool? active;

  /// The CLDR code of the currency to which this service applies.
  ///
  /// Must match that of the prices in rate groups.
  ///
  /// Required.
  core.String? currencyCode;

  /// The CLDR territory code of the countries to which the service applies.
  ///
  /// Required.
  core.List<core.String>? deliveryCountries;

  /// Time spent in various aspects from order to the delivery of the product.
  ///
  /// Required.
  DeliveryTime? deliveryTime;

  /// Loyalty programs that this shipping service is limited to.
  ///
  /// Optional.
  core.List<LoyaltyProgram>? loyaltyPrograms;

  /// Minimum order value for this service.
  ///
  /// If set, indicates that customers will have to spend at least this amount.
  /// All prices within a service must have the same currency. Cannot be set
  /// together with `minimum_order_value_table`.
  ///
  /// Optional.
  Price? minimumOrderValue;

  /// Table of per store minimum order values for the pickup fulfillment type.
  ///
  /// Cannot be set together with `minimum_order_value`.
  ///
  /// Optional.
  MinimumOrderValueTable? minimumOrderValueTable;

  /// Shipping rate group definitions.
  ///
  /// Only the last one is allowed to have an empty
  /// `applicable_shipping_labels`, which means "everything else". The other
  /// `applicable_shipping_labels` must not overlap.
  ///
  /// Optional.
  core.List<RateGroup>? rateGroups;

  /// Free-form name of the service.
  ///
  /// Must be unique within target account.
  ///
  /// Required.
  core.String? serviceName;

  /// Type of locations this service ships orders to.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SHIPMENT_TYPE_UNSPECIFIED" : This service did not specify shipment
  /// type.
  /// - "DELIVERY" : This service ships orders to an address chosen by the
  /// customer.
  /// - "LOCAL_DELIVERY" : This service ships orders to an address chosen by the
  /// customer. The order is shipped from a local store near by.
  /// - "COLLECTION_POINT" : This service ships orders to an address chosen by
  /// the customer. The order is shipped from a collection point.
  core.String? shipmentType;

  /// A list of stores your products are delivered from.
  ///
  /// This is only valid for the local delivery shipment type.
  StoreConfig? storeConfig;

  Service({
    this.active,
    this.currencyCode,
    this.deliveryCountries,
    this.deliveryTime,
    this.loyaltyPrograms,
    this.minimumOrderValue,
    this.minimumOrderValueTable,
    this.rateGroups,
    this.serviceName,
    this.shipmentType,
    this.storeConfig,
  });

  Service.fromJson(core.Map json_)
    : this(
        active: json_['active'] as core.bool?,
        currencyCode: json_['currencyCode'] as core.String?,
        deliveryCountries: (json_['deliveryCountries'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        deliveryTime: json_.containsKey('deliveryTime')
            ? DeliveryTime.fromJson(
                json_['deliveryTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        loyaltyPrograms: (json_['loyaltyPrograms'] as core.List?)
            ?.map(
              (value) => LoyaltyProgram.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        minimumOrderValue: json_.containsKey('minimumOrderValue')
            ? Price.fromJson(
                json_['minimumOrderValue']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        minimumOrderValueTable: json_.containsKey('minimumOrderValueTable')
            ? MinimumOrderValueTable.fromJson(
                json_['minimumOrderValueTable']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        rateGroups: (json_['rateGroups'] as core.List?)
            ?.map(
              (value) => RateGroup.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        serviceName: json_['serviceName'] as core.String?,
        shipmentType: json_['shipmentType'] as core.String?,
        storeConfig: json_.containsKey('storeConfig')
            ? StoreConfig.fromJson(
                json_['storeConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final active = this.active;
    final currencyCode = this.currencyCode;
    final deliveryCountries = this.deliveryCountries;
    final deliveryTime = this.deliveryTime;
    final loyaltyPrograms = this.loyaltyPrograms;
    final minimumOrderValue = this.minimumOrderValue;
    final minimumOrderValueTable = this.minimumOrderValueTable;
    final rateGroups = this.rateGroups;
    final serviceName = this.serviceName;
    final shipmentType = this.shipmentType;
    final storeConfig = this.storeConfig;
    return {
      'active': ?active,
      'currencyCode': ?currencyCode,
      'deliveryCountries': ?deliveryCountries,
      'deliveryTime': ?deliveryTime,
      'loyaltyPrograms': ?loyaltyPrograms,
      'minimumOrderValue': ?minimumOrderValue,
      'minimumOrderValueTable': ?minimumOrderValueTable,
      'rateGroups': ?rateGroups,
      'serviceName': ?serviceName,
      'shipmentType': ?shipmentType,
      'storeConfig': ?storeConfig,
    };
  }
}

/// Set an alias for a relationship between a provider and the account to be
/// created.
class SetAliasForRelationship {
  /// The unique ID of this account in the provider's system.
  ///
  /// The value must be unique across all accounts on the platform for this
  /// provider.
  ///
  /// Required.
  core.String? accountIdAlias;

  /// The provider of the service.
  ///
  /// This is a reference to an account such as `providers/123` or
  /// `accounts/123`. The same provider must be specified in at least one of the
  /// `service` fields.
  ///
  /// Required.
  core.String? provider;

  SetAliasForRelationship({this.accountIdAlias, this.provider});

  SetAliasForRelationship.fromJson(core.Map json_)
    : this(
        accountIdAlias: json_['accountIdAlias'] as core.String?,
        provider: json_['provider'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountIdAlias = this.accountIdAlias;
    final provider = this.provider;
    return {'accountIdAlias': ?accountIdAlias, 'provider': ?provider};
  }
}

/// The Merchant Center account's
/// [shipping settings](https://support.google.com/merchants/answer/6069284).
///
/// The `ShippingSettings` resource lets you retrieve and update the shipping
/// settings of your advanced account and all its associated sub-accounts.
class ShippingSettings {
  /// This field helps avoid async issues.
  ///
  /// It ensures that the shipping setting data doesn't change between the `get`
  /// call and the `insert` call. The user should follow these steps: 1. Set the
  /// etag field as an empty string for the initial shipping setting creation.
  /// 2. After the initial creation, call the `get` method to obtain an etag and
  /// the current shipping setting data before calling `insert`. 3. Modify the
  /// shipping setting information. 4. Call the `insert` method with the
  /// shipping setting information and the etag obtained in step 2. 5. If the
  /// shipping setting data changes between step 2 and step 4, the insert
  /// request will fail because the etag changes every time the shipping setting
  /// data changes. In this case, the user should repeat steps 2-4 with the new
  /// etag.
  ///
  /// Required.
  core.String? etag;

  /// Identifier.
  ///
  /// The resource name of the shipping settings. Format:
  /// `accounts/{account}/shippingSettings`. For example,
  /// `accounts/123456/shippingSettings`.
  core.String? name;

  /// The target account's list of services.
  ///
  /// Optional.
  core.List<Service>? services;

  /// A list of warehouses which can be referred to in `services`.
  ///
  /// Optional.
  core.List<Warehouse>? warehouses;

  ShippingSettings({this.etag, this.name, this.services, this.warehouses});

  ShippingSettings.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        name: json_['name'] as core.String?,
        services: (json_['services'] as core.List?)
            ?.map(
              (value) => Service.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        warehouses: (json_['warehouses'] as core.List?)
            ?.map(
              (value) => Warehouse.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final etag = this.etag;
    final name = this.name;
    final services = this.services;
    final warehouses = this.warehouses;
    return {
      'etag': ?etag,
      'name': ?name,
      'services': ?services,
      'warehouses': ?warehouses,
    };
  }
}

/// An object representing a short code, which is a phone number that is
/// typically much shorter than regular phone numbers and can be used to address
/// messages in MMS and SMS systems, as well as for abbreviated dialing (For
/// example "Text 611 to see how many minutes you have remaining on your
/// plan.").
///
/// Short codes are restricted to a region and are not internationally dialable,
/// which means the same short code can exist in different regions, with
/// different usage and pricing, even if those regions share the same country
/// calling code (For example: US and CA).
class ShortCode {
  /// The short code digits, without a leading plus ('+') or country calling
  /// code.
  ///
  /// For example "611".
  ///
  /// Required.
  core.String? number;

  /// The BCP-47 region code of the location where calls to this short code can
  /// be made, such as "US" and "BB".
  ///
  /// Reference(s): - http://www.unicode.org/reports/tr35/#unicode_region_subtag
  ///
  /// Required.
  core.String? regionCode;

  ShortCode({this.number, this.regionCode});

  ShortCode.fromJson(core.Map json_)
    : this(
        number: json_['number'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final number = this.number;
    final regionCode = this.regionCode;
    return {'number': ?number, 'regionCode': ?regionCode};
  }
}

/// A list of store code sets sharing the same minimum order value.
///
/// At least two sets are required and the last one must be empty, which
/// signifies 'MOV for all other stores'. Each store code can only appear once
/// across all the sets. All prices within a service must have the same
/// currency.
class StoreCodeSetWithMov {
  /// A list of unique store codes or empty for the catch all.
  ///
  /// Optional.
  core.List<core.String>? storeCodes;

  /// The minimum order value for the given stores.
  Price? value;

  StoreCodeSetWithMov({this.storeCodes, this.value});

  StoreCodeSetWithMov.fromJson(core.Map json_)
    : this(
        storeCodes: (json_['storeCodes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        value: json_.containsKey('value')
            ? Price.fromJson(
                json_['value'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final storeCodes = this.storeCodes;
    final value = this.value;
    return {'storeCodes': ?storeCodes, 'value': ?value};
  }
}

/// A list of stores your products are delivered from.
///
/// This is only valid for the local delivery shipment type.
class StoreConfig {
  /// Configs related to local delivery ends for the day.
  CutoffConfig? cutoffConfig;

  /// Maximum delivery radius.
  ///
  /// This is only required for the local delivery shipment type.
  Distance? serviceRadius;

  /// A list of store codes that provide local delivery.
  ///
  /// If empty, then `all_stores` must be true.
  ///
  /// Optional.
  core.List<core.String>? storeCodes;

  /// Indicates whether all stores, or selected stores, listed by this business
  /// provide local delivery.
  /// Possible string values are:
  /// - "STORE_SERVICE_TYPE_UNSPECIFIED" : Did not specify store service type.
  /// - "ALL_STORES" : Indicates whether all stores, current and future, listed
  /// by this business provide local delivery.
  /// - "SELECTED_STORES" : Indicates that only the stores listed in
  /// `store_codes` are eligible for local delivery.
  core.String? storeServiceType;

  StoreConfig({
    this.cutoffConfig,
    this.serviceRadius,
    this.storeCodes,
    this.storeServiceType,
  });

  StoreConfig.fromJson(core.Map json_)
    : this(
        cutoffConfig: json_.containsKey('cutoffConfig')
            ? CutoffConfig.fromJson(
                json_['cutoffConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        serviceRadius: json_.containsKey('serviceRadius')
            ? Distance.fromJson(
                json_['serviceRadius'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        storeCodes: (json_['storeCodes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        storeServiceType: json_['storeServiceType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cutoffConfig = this.cutoffConfig;
    final serviceRadius = this.serviceRadius;
    final storeCodes = this.storeCodes;
    final storeServiceType = this.storeServiceType;
    return {
      'cutoffConfig': ?cutoffConfig,
      'serviceRadius': ?serviceRadius,
      'storeCodes': ?storeCodes,
      'storeServiceType': ?storeServiceType,
    };
  }
}

/// A table defining the rate group, when `single_value` is not expressive
/// enough.
class Table {
  /// Headers of the table's columns.
  ///
  /// Optional: if not set then the table has only one dimension.
  Headers? columnHeaders;

  /// Name of the table.
  ///
  /// Required for subtables, ignored for the main table.
  core.String? name;

  /// Headers of the table's rows.
  ///
  /// Required.
  Headers? rowHeaders;

  /// The list of rows that constitute the table.
  ///
  /// Must have the same length as `row_headers`.
  ///
  /// Required.
  core.List<Row>? rows;

  Table({this.columnHeaders, this.name, this.rowHeaders, this.rows});

  Table.fromJson(core.Map json_)
    : this(
        columnHeaders: json_.containsKey('columnHeaders')
            ? Headers.fromJson(
                json_['columnHeaders'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        rowHeaders: json_.containsKey('rowHeaders')
            ? Headers.fromJson(
                json_['rowHeaders'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        rows: (json_['rows'] as core.List?)
            ?.map(
              (value) =>
                  Row.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final columnHeaders = this.columnHeaders;
    final name = this.name;
    final rowHeaders = this.rowHeaders;
    final rows = this.rows;
    return {
      'columnHeaders': ?columnHeaders,
      'name': ?name,
      'rowHeaders': ?rowHeaders,
      'rows': ?rows,
    };
  }
}

/// The `TermsOfService` message represents a specific version of the terms of
/// service that merchants must accept to access certain features or services.
///
/// For more information, see
/// [Terms of Service](https://support.google.com/merchants/answer/160173). This
/// message is important for the onboarding process, ensuring that merchants
/// agree to the necessary legal agreements for using the service. Merchants can
/// retrieve the latest terms of service for a given `kind` and `region` through
/// `RetrieveLatestTermsOfService`, and accept them as required through
/// `AcceptTermsOfService`.
class TermsOfService {
  /// Whether this terms of service version is external.
  ///
  /// External terms of service versions can only be agreed through external
  /// processes and not directly by the merchant through UI or API.
  core.bool? external_;

  /// URI for terms of service file that needs to be displayed to signing users.
  core.String? fileUri;

  /// The Kind this terms of service version applies to.
  /// Possible string values are:
  /// - "TERMS_OF_SERVICE_KIND_UNSPECIFIED" : Default value. This value is
  /// unused.
  /// - "MERCHANT_CENTER" : Merchant Center application.
  core.String? kind;

  /// Identifier.
  ///
  /// The resource name of the terms of service version. Format:
  /// `termsOfService/{version}`
  core.String? name;

  /// Region code as defined by [CLDR](https://cldr.unicode.org/).
  ///
  /// This is either a country where the ToS applies specifically to that
  /// country or `001` when the same `TermsOfService` can be signed in any
  /// country. However note that when signing a ToS that applies globally we
  /// still expect that a specific country is provided (this should be merchant
  /// business country or program country of participation).
  core.String? regionCode;

  TermsOfService({
    this.external_,
    this.fileUri,
    this.kind,
    this.name,
    this.regionCode,
  });

  TermsOfService.fromJson(core.Map json_)
    : this(
        external_: json_['external'] as core.bool?,
        fileUri: json_['fileUri'] as core.String?,
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final external_ = this.external_;
    final fileUri = this.fileUri;
    final kind = this.kind;
    final name = this.name;
    final regionCode = this.regionCode;
    return {
      'external': ?external_,
      'fileUri': ?fileUri,
      'kind': ?kind,
      'name': ?name,
      'regionCode': ?regionCode,
    };
  }
}

/// This resource represents the agreement state for a given account and terms
/// of service kind.
///
/// The state is as follows: * If the business has accepted a terms of service,
/// `accepted` will be populated, otherwise it will be empty * If the business
/// must sign a terms of service, `required` will be populated, otherwise it
/// will be empty. Note that both `required` and `accepted` can be present. In
/// this case the `accepted` terms of services will have an expiration date set
/// in the `valid_until` field. The `required` terms of services need to be
/// accepted before `valid_until` in order for the account to continue having a
/// valid agreement. When accepting new terms of services we expect third-party
/// providers to display the text associated with the given terms of service
/// agreement (the url to the file containing the text is added in the Required
/// message below as `tos_file_uri`). The actual acceptance of the terms of
/// service is done by calling accept on the `TermsOfService` resource.
/// `valid_until` field.
class TermsOfServiceAgreementState {
  /// The accepted terms of service of this kind and for the associated
  /// region_code
  ///
  /// Optional.
  Accepted? accepted;

  /// Identifier.
  ///
  /// The resource name of the terms of service version. Format:
  /// `accounts/{account}/termsOfServiceAgreementState/{identifier}` The
  /// identifier format is: `{TermsOfServiceKind}-{country}` For example, an
  /// identifier could be: `MERCHANT_CENTER-EU` or `MERCHANT_CENTER-US`.
  core.String? name;

  /// Region code as defined by https://cldr.unicode.org/.
  ///
  /// This is the country the current state applies to.
  ///
  /// Required.
  core.String? regionCode;

  /// The required terms of service
  ///
  /// Optional.
  Required? required;

  /// Terms of Service kind associated with the particular version.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TERMS_OF_SERVICE_KIND_UNSPECIFIED" : Default value. This value is
  /// unused.
  /// - "MERCHANT_CENTER" : Merchant Center application.
  core.String? termsOfServiceKind;

  TermsOfServiceAgreementState({
    this.accepted,
    this.name,
    this.regionCode,
    this.required,
    this.termsOfServiceKind,
  });

  TermsOfServiceAgreementState.fromJson(core.Map json_)
    : this(
        accepted: json_.containsKey('accepted')
            ? Accepted.fromJson(
                json_['accepted'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
        required: json_.containsKey('required')
            ? Required.fromJson(
                json_['required'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        termsOfServiceKind: json_['termsOfServiceKind'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accepted = this.accepted;
    final name = this.name;
    final regionCode = this.regionCode;
    final required = this.required;
    final termsOfServiceKind = this.termsOfServiceKind;
    return {
      'accepted': ?accepted,
      'name': ?name,
      'regionCode': ?regionCode,
      'required': ?required,
      'termsOfServiceKind': ?termsOfServiceKind,
    };
  }
}

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
typedef TimeZone = $TimeZone;

/// Transit time table, number of business days spent in transit based on row
/// and column dimensions.
///
/// Either `min_transit_days`, `max_transit_days` or `transit_time_table` can be
/// set, but not both.
class TransitTable {
  /// A list of region names Region.name .
  ///
  /// The last value can be `"all other locations"`. Example: `["zone 1", "zone
  /// 2", "all other locations"]`. The referred postal code groups must match
  /// the delivery country of the service.
  ///
  /// Required.
  core.List<core.String>? postalCodeGroupNames;

  /// If there's only one dimension set of `postal_code_group_names` or
  /// `transit_time_labels`, there are multiple rows each with one value for
  /// that dimension.
  ///
  /// If there are two dimensions, each row corresponds to a
  /// `postal_code_group_names`, and columns (values) to a
  /// `transit_time_labels`.
  ///
  /// Required.
  core.List<TransitTimeRow>? rows;

  /// A list of transit time labels.
  ///
  /// The last value can be `"all other labels"`. Example: `["food",
  /// "electronics", "all other labels"]`.
  ///
  /// Required.
  core.List<core.String>? transitTimeLabels;

  TransitTable({this.postalCodeGroupNames, this.rows, this.transitTimeLabels});

  TransitTable.fromJson(core.Map json_)
    : this(
        postalCodeGroupNames: (json_['postalCodeGroupNames'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        rows: (json_['rows'] as core.List?)
            ?.map(
              (value) => TransitTimeRow.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        transitTimeLabels: (json_['transitTimeLabels'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final postalCodeGroupNames = this.postalCodeGroupNames;
    final rows = this.rows;
    final transitTimeLabels = this.transitTimeLabels;
    return {
      'postalCodeGroupNames': ?postalCodeGroupNames,
      'rows': ?rows,
      'transitTimeLabels': ?transitTimeLabels,
    };
  }
}

/// If there's only one dimension set of `postal_code_group_names` or
/// `transit_time_labels`, there are multiple rows each with one value for that
/// dimension.
///
/// If there are two dimensions, each row corresponds to a
/// `postal_code_group_names`, and columns (values) to a `transit_time_labels`.
class TransitTimeRow {
  /// Transit time range (min-max) in business days.
  ///
  /// Required.
  core.List<TransitTimeValue>? values;

  TransitTimeRow({this.values});

  TransitTimeRow.fromJson(core.Map json_)
    : this(
        values: (json_['values'] as core.List?)
            ?.map(
              (value) => TransitTimeValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final values = this.values;
    return {'values': ?values};
  }
}

/// Transit time range (min-max) in business days.
class TransitTimeValue {
  /// Must be greater than or equal to `min_transit_days`.
  core.int? maxTransitDays;

  /// Minimum transit time range in business days.
  ///
  /// 0 means same day delivery, 1 means next day delivery.
  core.int? minTransitDays;

  TransitTimeValue({this.maxTransitDays, this.minTransitDays});

  TransitTimeValue.fromJson(core.Map json_)
    : this(
        maxTransitDays: json_['maxTransitDays'] as core.int?,
        minTransitDays: json_['minTransitDays'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final maxTransitDays = this.maxTransitDays;
    final minTransitDays = this.minTransitDays;
    return {
      'maxTransitDays': ?maxTransitDays,
      'minTransitDays': ?minTransitDays,
    };
  }
}

/// Request message for the `UnclaimHomepage` method.
typedef UnclaimHomepageRequest = $Empty;

/// Request message for the UnregisterGCP method.
typedef UnregisterGcpRequest = $Empty;

/// Request message for the `UpdateRegion` method.
class UpdateRegionRequest {
  /// The updated region.
  ///
  /// Required.
  Region? region;

  /// The comma-separated field mask indicating the fields to update.
  ///
  /// Example: `"displayName,postalCodeArea.regionCode"`.
  ///
  /// Optional.
  core.String? updateMask;

  UpdateRegionRequest({this.region, this.updateMask});

  UpdateRegionRequest.fromJson(core.Map json_)
    : this(
        region: json_.containsKey('region')
            ? Region.fromJson(
                json_['region'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final region = this.region;
    final updateMask = this.updateMask;
    return {'region': ?region, 'updateMask': ?updateMask};
  }
}

/// URL settings for cart or checkout URL.
class UriSettings {
  /// Cart URL template.
  ///
  /// When the placeholders are expanded will redirect the buyer to the cart
  /// page on the merchant website with the selected item in cart. For more
  /// details, check the
  /// [help center doc](https://support.google.com/merchants/answer/13945960#method1&zippy=%2Cproduct-level-url-formatting%2Caccount-level-url-formatting)
  core.String? cartUriTemplate;

  /// Checkout URL template.
  ///
  /// When the placeholders are expanded will redirect the buyer to the merchant
  /// checkout page with the item in the cart. For more details, check the
  /// [help center doc](https://support.google.com/merchants/answer/13945960#method1&zippy=%2Cproduct-level-url-formatting%2Caccount-level-url-formatting)
  core.String? checkoutUriTemplate;

  UriSettings({this.cartUriTemplate, this.checkoutUriTemplate});

  UriSettings.fromJson(core.Map json_)
    : this(
        cartUriTemplate: json_['cartUriTemplate'] as core.String?,
        checkoutUriTemplate: json_['checkoutUriTemplate'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cartUriTemplate = this.cartUriTemplate;
    final checkoutUriTemplate = this.checkoutUriTemplate;
    return {
      'cartUriTemplate': ?cartUriTemplate,
      'checkoutUriTemplate': ?checkoutUriTemplate,
    };
  }
}

/// The `User` resource represents a user associated with a Merchant Center
/// account.
///
/// It is used to manage user permissions and access rights within the account.
/// For more information, see \[Frequently asked questions about people and
/// access levels\](//support.google.com/merchants/answer/12160472).
class User {
  /// The
  /// [access rights](https://support.google.com/merchants/answer/12160472?sjid=6789834943175119429-EU#accesstypes)
  /// the user has.
  ///
  /// Required.
  core.List<core.String>? accessRights;

  /// Identifier.
  ///
  /// The resource name of the user. Format: `accounts/{account}/user/{email}`
  /// Use `me` to refer to your own email address, for example
  /// `accounts/{account}/users/me`.
  core.String? name;

  /// The state of the user.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "PENDING" : The user is pending confirmation. In this state, the user
  /// first needs to accept the invitation before performing other actions.
  /// - "VERIFIED" : The user is verified.
  core.String? state;

  User({this.accessRights, this.name, this.state});

  User.fromJson(core.Map json_)
    : this(
        accessRights: (json_['accessRights'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessRights = this.accessRights;
    final name = this.name;
    final state = this.state;
    return {'accessRights': ?accessRights, 'name': ?name, 'state': ?state};
  }
}

/// The single value of a rate group or the value of a rate group table's cell.
///
/// Exactly one of `no_shipping`, `flat_rate`, `price_percentage`,
/// `carrier_rateName`, `subtable_name` must be set.
class Value {
  /// The name of a carrier rate referring to a carrier rate defined in the same
  /// rate group.
  ///
  /// Can only be set if all other fields are not set.
  core.String? carrierRate;

  /// A flat rate.
  ///
  /// Can only be set if all other fields are not set.
  Price? flatRate;

  /// If true, then the product can't be shipped.
  ///
  /// Must be true when set, can only be set if all other fields are not set.
  core.bool? noShipping;

  /// A percentage of the price represented as a number in decimal notation (For
  /// example, `"5.4"`).
  ///
  /// Can only be set if all other fields are not set.
  core.String? pricePercentage;

  /// The name of a subtable.
  ///
  /// Can only be set in table cells (For example, not for single values), and
  /// only if all other fields are not set.
  core.String? subtable;

  Value({
    this.carrierRate,
    this.flatRate,
    this.noShipping,
    this.pricePercentage,
    this.subtable,
  });

  Value.fromJson(core.Map json_)
    : this(
        carrierRate: json_['carrierRate'] as core.String?,
        flatRate: json_.containsKey('flatRate')
            ? Price.fromJson(
                json_['flatRate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        noShipping: json_['noShipping'] as core.bool?,
        pricePercentage: json_['pricePercentage'] as core.String?,
        subtable: json_['subtable'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final carrierRate = this.carrierRate;
    final flatRate = this.flatRate;
    final noShipping = this.noShipping;
    final pricePercentage = this.pricePercentage;
    final subtable = this.subtable;
    return {
      'carrierRate': ?carrierRate,
      'flatRate': ?flatRate,
      'noShipping': ?noShipping,
      'pricePercentage': ?pricePercentage,
      'subtable': ?subtable,
    };
  }
}

/// Settings related to the verification email that is sent after adding a user.
class VerificationMailSettings {
  /// Mode of the verification mail.
  ///
  /// If not set, the default is `SEND_VERIFICATION_MAIL`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "VERIFICATION_MAIL_MODE_UNSPECIFIED" : Default first member of every
  /// enum. Do not use.
  /// - "SEND_VERIFICATION_MAIL" : An invitation email is sent to the user added
  /// shortly after.
  /// - "SUPPRESS_VERIFICATION_MAIL" : No invitation email is sent. This can be
  /// useful if the user is expected to accept the invitation through the API
  /// without needing another notification.
  core.String? verificationMailMode;

  VerificationMailSettings({this.verificationMailMode});

  VerificationMailSettings.fromJson(core.Map json_)
    : this(verificationMailMode: json_['verificationMailMode'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final verificationMailMode = this.verificationMailMode;
    return {'verificationMailMode': ?verificationMailMode};
  }
}

/// Request message for the `VerifySelf` method.
typedef VerifySelfRequest = $Empty;

/// A fulfillment warehouse, which stores and handles inventory.
class Warehouse {
  /// Business days of the warehouse.
  ///
  /// If not set, will be Monday to Friday by default.
  BusinessDayConfig? businessDayConfig;

  /// The latest time of day that an order can be accepted and begin processing.
  ///
  /// Later orders will be processed in the next day. The time is based on the
  /// warehouse postal code.
  ///
  /// Required.
  WarehouseCutoffTime? cutoffTime;

  /// The number of days it takes for this warehouse to pack up and ship an
  /// item.
  ///
  /// This is on the warehouse level, but can be overridden on the offer level
  /// based on the attributes of an item.
  ///
  /// Required.
  core.String? handlingDays;

  /// The name of the warehouse.
  ///
  /// Must be unique within account.
  ///
  /// Required.
  core.String? name;

  /// Shipping address of the warehouse.
  ///
  /// Required.
  Address? shippingAddress;

  Warehouse({
    this.businessDayConfig,
    this.cutoffTime,
    this.handlingDays,
    this.name,
    this.shippingAddress,
  });

  Warehouse.fromJson(core.Map json_)
    : this(
        businessDayConfig: json_.containsKey('businessDayConfig')
            ? BusinessDayConfig.fromJson(
                json_['businessDayConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        cutoffTime: json_.containsKey('cutoffTime')
            ? WarehouseCutoffTime.fromJson(
                json_['cutoffTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        handlingDays: json_['handlingDays'] as core.String?,
        name: json_['name'] as core.String?,
        shippingAddress: json_.containsKey('shippingAddress')
            ? Address.fromJson(
                json_['shippingAddress'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final businessDayConfig = this.businessDayConfig;
    final cutoffTime = this.cutoffTime;
    final handlingDays = this.handlingDays;
    final name = this.name;
    final shippingAddress = this.shippingAddress;
    return {
      'businessDayConfig': ?businessDayConfig,
      'cutoffTime': ?cutoffTime,
      'handlingDays': ?handlingDays,
      'name': ?name,
      'shippingAddress': ?shippingAddress,
    };
  }
}

/// Indicates that the delivery time should be calculated per warehouse
/// (shipping origin location) based on the settings of the selected carrier.
///
/// When set, no other transit time related field in `delivery_time` should be
/// set.
class WarehouseBasedDeliveryTime {
  /// Carrier, such as `"UPS"` or `"Fedex"`.
  ///
  /// [supported carriers](https://support.google.com/merchants/answer/7050921#zippy=%2Ccarrier-rates-au-de-uk-and-us-only)
  ///
  /// Required.
  core.String? carrier;

  /// Carrier service, such as `"ground"` or `"2 days"`.
  ///
  /// The name of the service must be in the eddSupportedServices list.
  ///
  /// Required.
  core.String? carrierService;

  /// Warehouse name.
  ///
  /// This should match warehouse.
  ///
  /// Required.
  core.String? warehouse;

  WarehouseBasedDeliveryTime({
    this.carrier,
    this.carrierService,
    this.warehouse,
  });

  WarehouseBasedDeliveryTime.fromJson(core.Map json_)
    : this(
        carrier: json_['carrier'] as core.String?,
        carrierService: json_['carrierService'] as core.String?,
        warehouse: json_['warehouse'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final carrier = this.carrier;
    final carrierService = this.carrierService;
    final warehouse = this.warehouse;
    return {
      'carrier': ?carrier,
      'carrierService': ?carrierService,
      'warehouse': ?warehouse,
    };
  }
}

/// The latest time of day that an order can be accepted and begin processing.
///
/// Later orders will be processed in the next day. The time is based on the
/// warehouse postal code.
class WarehouseCutoffTime {
  /// Hour of the cutoff time until which an order has to be placed to be
  /// processed in the same day by the warehouse.
  ///
  /// Hour is based on the timezone of warehouse.
  ///
  /// Required.
  core.int? hour;

  /// Minute of the cutoff time until which an order has to be placed to be
  /// processed in the same day by the warehouse.
  ///
  /// Minute is based on the timezone of warehouse.
  ///
  /// Required.
  core.int? minute;

  WarehouseCutoffTime({this.hour, this.minute});

  WarehouseCutoffTime.fromJson(core.Map json_)
    : this(
        hour: json_['hour'] as core.int?,
        minute: json_['minute'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final hour = this.hour;
    final minute = this.minute;
    return {'hour': ?hour, 'minute': ?minute};
  }
}

/// The weight represented as the value in string and the unit.
class Weight {
  /// The weight represented as a number in micros (1 million micros is an
  /// equivalent to one's currency standard unit, for example, 1 kg = 1000000
  /// micros).
  ///
  /// This field can also be set as infinity by setting to -1. This field only
  /// support -1 and positive value.
  ///
  /// Required.
  core.String? amountMicros;

  /// The weight unit.
  ///
  /// Acceptable values are: kg and lb
  ///
  /// Required.
  /// Possible string values are:
  /// - "WEIGHT_UNIT_UNSPECIFIED" : unit unspecified
  /// - "POUND" : lb unit.
  /// - "KILOGRAM" : kg unit.
  core.String? unit;

  Weight({this.amountMicros, this.unit});

  Weight.fromJson(core.Map json_)
    : this(
        amountMicros: json_['amountMicros'] as core.String?,
        unit: json_['unit'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final amountMicros = this.amountMicros;
    final unit = this.unit;
    return {'amountMicros': ?amountMicros, 'unit': ?unit};
  }
}
