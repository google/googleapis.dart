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

/// Google Analytics Admin API - v1alpha
///
/// Manage properties in Google Analytics. Warning: Creating multiple Customer
/// Applications, Accounts, or Projects to simulate or act as a single Customer
/// Application, Account, or Project (respectively) or to circumvent
/// Service-specific usage limits or quotas is a direct violation of Google
/// Cloud Platform Terms of Service as well as Google APIs Terms of Service.
/// These actions can result in immediate termination of your GCP project(s)
/// without any warning.
///
/// For more information, see
/// <http://code.google.com/apis/analytics/docs/mgmt/home.html>
///
/// Create an instance of [GoogleAnalyticsAdminApi] to access these resources:
///
/// - [AccountSummariesResource]
/// - [AccountsResource]
///   - [AccountsAccessBindingsResource]
/// - [PropertiesResource]
///   - [PropertiesAccessBindingsResource]
///   - [PropertiesAdSenseLinksResource]
///   - [PropertiesAudiencesResource]
///   - [PropertiesBigQueryLinksResource]
///   - [PropertiesCalculatedMetricsResource]
///   - [PropertiesChannelGroupsResource]
///   - [PropertiesConversionEventsResource]
///   - [PropertiesCustomDimensionsResource]
///   - [PropertiesCustomMetricsResource]
///   - [PropertiesDataStreamsResource]
///     - [PropertiesDataStreamsEventCreateRulesResource]
///     - [PropertiesDataStreamsEventEditRulesResource]
///     - [PropertiesDataStreamsMeasurementProtocolSecretsResource]
///     - [PropertiesDataStreamsSKAdNetworkConversionValueSchemaResource]
///   - [PropertiesDisplayVideo360AdvertiserLinkProposalsResource]
///   - [PropertiesDisplayVideo360AdvertiserLinksResource]
///   - [PropertiesExpandedDataSetsResource]
///   - [PropertiesFirebaseLinksResource]
///   - [PropertiesGoogleAdsLinksResource]
///   - [PropertiesKeyEventsResource]
///   - [PropertiesReportingDataAnnotationsResource]
///   - [PropertiesRollupPropertySourceLinksResource]
///   - [PropertiesSearchAds360LinksResource]
///   - [PropertiesSubpropertyEventFiltersResource]
///   - [PropertiesSubpropertySyncConfigsResource]
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

/// Manage properties in Google Analytics.
///
/// Warning: Creating multiple Customer Applications, Accounts, or Projects to
/// simulate or act as a single Customer Application, Account, or Project
/// (respectively) or to circumvent Service-specific usage limits or quotas is a
/// direct violation of Google Cloud Platform Terms of Service as well as Google
/// APIs Terms of Service. These actions can result in immediate termination of
/// your GCP project(s) without any warning.
class GoogleAnalyticsAdminApi {
  /// Edit Google Analytics management entities
  static const analyticsEditScope =
      'https://www.googleapis.com/auth/analytics.edit';

  /// Manage Google Analytics Account users by email address
  static const analyticsManageUsersScope =
      'https://www.googleapis.com/auth/analytics.manage.users';

  /// View Google Analytics user permissions
  static const analyticsManageUsersReadonlyScope =
      'https://www.googleapis.com/auth/analytics.manage.users.readonly';

  /// See and download your Google Analytics data
  static const analyticsReadonlyScope =
      'https://www.googleapis.com/auth/analytics.readonly';

  final commons.ApiRequester _requester;

  AccountSummariesResource get accountSummaries =>
      AccountSummariesResource(_requester);
  AccountsResource get accounts => AccountsResource(_requester);
  PropertiesResource get properties => PropertiesResource(_requester);

  GoogleAnalyticsAdminApi(
    http.Client client, {
    core.String rootUrl = 'https://analyticsadmin.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class AccountSummariesResource {
  final commons.ApiRequester _requester;

  AccountSummariesResource(commons.ApiRequester client) : _requester = client;

  /// Returns summaries of all accounts accessible by the caller.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of AccountSummary resources to return. The
  /// service may return fewer than this value, even if there are additional
  /// pages. If unspecified, at most 50 resources will be returned. The maximum
  /// value is 200; (higher values will be coerced to the maximum)
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListAccountSummaries` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListAccountSummaries`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListAccountSummariesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListAccountSummariesResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1alpha/accountSummaries';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListAccountSummariesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsAccessBindingsResource get accessBindings =>
      AccountsAccessBindingsResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;

  /// Marks target Account as soft-deleted (ie: "trashed") and returns it.
  ///
  /// This API does not have a method to restore soft-deleted accounts. However,
  /// they can be restored using the Trash Can UI. If the accounts are not
  /// restored before the expiration time, the account and all child resources
  /// (eg: Properties, GoogleAdsLinks, Streams, AccessBindings) will be
  /// permanently purged. https://support.google.com/analytics/answer/6154772
  /// Returns an error if the target is not found.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Account to soft-delete. Format:
  /// accounts/{account} Example: "accounts/100"
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lookup for a single Account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the account to lookup. Format:
  /// accounts/{account} Example: "accounts/100"
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAccount> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaAccount.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get data sharing settings on an account.
  ///
  /// Data sharing settings are singletons.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the settings to lookup. Format:
  /// accounts/{account}/dataSharingSettings Example:
  /// `accounts/1000/dataSharingSettings`
  /// Value must have pattern `^accounts/\[^/\]+/dataSharingSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaDataSharingSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDataSharingSettings>
  getDataSharingSettings(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaDataSharingSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns all accounts accessible by the caller.
  ///
  /// Note that these accounts might not currently have GA properties.
  /// Soft-deleted (ie: "trashed") accounts are excluded by default. Returns an
  /// empty list if no relevant accounts are found.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of resources to return. The service may
  /// return fewer than this value, even if there are additional pages. If
  /// unspecified, at most 50 resources will be returned. The maximum value is
  /// 200; (higher values will be coerced to the maximum)
  ///
  /// [pageToken] - A page token, received from a previous `ListAccounts` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListAccounts` must match the call that provided
  /// the page token.
  ///
  /// [showDeleted] - Whether to include soft-deleted (ie: "trashed") Accounts
  /// in the results. Accounts can be inspected to determine whether they are
  /// deleted or not.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListAccountsResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'showDeleted': ?showDeleted == null ? null : ['${showDeleted}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1alpha/accounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListAccountsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this account. Format:
  /// accounts/{account} Example: "accounts/100"
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (for example, "field_to_update"). Omitted fields
  /// will not be updated. To replace the entire entity, use one path with the
  /// string "*" to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAccount> patch(
    GoogleAnalyticsAdminV1alphaAccount request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaAccount.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Requests a ticket for creating an account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse>
  provisionAccountTicket(
    GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1alpha/accounts:provisionAccountTicket';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns a customized report of data access records.
  ///
  /// The report provides records of each time a user reads Google Analytics
  /// reporting data. Access records are retained for up to 2 years. Data Access
  /// Reports can be requested for a property. Reports may be requested for any
  /// property, but dimensions that aren't related to quota can only be
  /// requested on Google Analytics 360 properties. This method is only
  /// available to Administrators. These data access records include GA UI
  /// Reporting, GA UI Explorations, GA Data API, and other products like
  /// Firebase & Admob that can retrieve data from Google Analytics through a
  /// linkage. These records don't include property configuration changes like
  /// adding a stream or changing a property's time zone. For configuration
  /// change history, see
  /// [searchChangeHistoryEvents](https://developers.google.com/analytics/devguides/config/admin/v1/rest/v1alpha/accounts/searchChangeHistoryEvents).
  /// To give your feedback on this API, complete the
  /// [Google Analytics Access Reports feedback](https://docs.google.com/forms/d/e/1FAIpQLSdmEBUrMzAEdiEKk5TV5dEHvDUZDRlgWYdQdAeSdtR4hVjEhw/viewform)
  /// form.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [entity] - The Data Access Report supports requesting at the property
  /// level or account level. If requested at the account level, Data Access
  /// Reports include all access for all properties under that account. To
  /// request at the property level, entity should be for example
  /// 'properties/123' if "123" is your Google Analytics property ID. To request
  /// at the account level, entity should be for example 'accounts/1234' if
  /// "1234" is your Google Analytics Account ID.
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaRunAccessReportResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaRunAccessReportResponse>
  runAccessReport(
    GoogleAnalyticsAdminV1alphaRunAccessReportRequest request,
    core.String entity, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$entity') + ':runAccessReport';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaRunAccessReportResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Searches through all changes to an account or its children given the
  /// specified set of filters.
  ///
  /// Only returns the subset of changes supported by the API. The UI may return
  /// additional changes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [account] - Required. The account resource for which to return change
  /// history resources. Format: accounts/{account} Example: `accounts/100`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse>
  searchChangeHistoryEvents(
    GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest request,
    core.String account, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$account') +
        ':searchChangeHistoryEvents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsAccessBindingsResource {
  final commons.ApiRequester _requester;

  AccountsAccessBindingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates information about multiple access bindings to an account or
  /// property.
  ///
  /// This method is transactional. If any AccessBinding cannot be created, none
  /// of the AccessBindings will be created.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account or property that owns the access
  /// bindings. The parent field in the CreateAccessBindingRequest messages must
  /// either be empty or match this field. Formats: - accounts/{account} -
  /// properties/{property}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse>
  batchCreate(
    GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/accessBindings:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes information about multiple users' links to an account or property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account or property that owns the access
  /// bindings. The parent of all provided values for the 'names' field in
  /// DeleteAccessBindingRequest messages must match this field. Formats: -
  /// accounts/{account} - properties/{property}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> batchDelete(
    GoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/accessBindings:batchDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets information about multiple access bindings to an account or property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account or property that owns the access
  /// bindings. The parent of all provided values for the 'names' field must
  /// match this field. Formats: - accounts/{account} - properties/{property}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [names] - Required. The names of the access bindings to retrieve. A
  /// maximum of 1000 access bindings can be retrieved in a batch. Formats: -
  /// accounts/{account}/accessBindings/{accessBinding} -
  /// properties/{property}/accessBindings/{accessBinding}
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse>
  batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'names': ?names,
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/accessBindings:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates information about multiple access bindings to an account or
  /// property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account or property that owns the access
  /// bindings. The parent of all provided AccessBinding in
  /// UpdateAccessBindingRequest messages must match this field. Formats: -
  /// accounts/{account} - properties/{property}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse>
  batchUpdate(
    GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/accessBindings:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates an access binding on an account or property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Formats: - accounts/{account} - properties/{property}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAccessBinding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAccessBinding> create(
    GoogleAnalyticsAdminV1alphaAccessBinding request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/accessBindings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaAccessBinding.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an access binding on an account or property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Formats: -
  /// accounts/{account}/accessBindings/{accessBinding} -
  /// properties/{property}/accessBindings/{accessBinding}
  /// Value must have pattern `^accounts/\[^/\]+/accessBindings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets information about an access binding.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the access binding to retrieve. Formats: -
  /// accounts/{account}/accessBindings/{accessBinding} -
  /// properties/{property}/accessBindings/{accessBinding}
  /// Value must have pattern `^accounts/\[^/\]+/accessBindings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAccessBinding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAccessBinding> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaAccessBinding.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all access bindings on an account or property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Formats: - accounts/{account} - properties/{property}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of access bindings to return. The service
  /// may return fewer than this value. If unspecified, at most 200 access
  /// bindings will be returned. The maximum value is 500; values above 500 will
  /// be coerced to 500.
  ///
  /// [pageToken] - A page token, received from a previous `ListAccessBindings`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListAccessBindings` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListAccessBindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListAccessBindingsResponse> list(
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
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/accessBindings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListAccessBindingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an access binding on an account or property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this binding. Format:
  /// accounts/{account}/accessBindings/{access_binding} or
  /// properties/{property}/accessBindings/{access_binding} Example:
  /// "accounts/100/accessBindings/200"
  /// Value must have pattern `^accounts/\[^/\]+/accessBindings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAccessBinding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAccessBinding> patch(
    GoogleAnalyticsAdminV1alphaAccessBinding request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaAccessBinding.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesResource {
  final commons.ApiRequester _requester;

  PropertiesAccessBindingsResource get accessBindings =>
      PropertiesAccessBindingsResource(_requester);
  PropertiesAdSenseLinksResource get adSenseLinks =>
      PropertiesAdSenseLinksResource(_requester);
  PropertiesAudiencesResource get audiences =>
      PropertiesAudiencesResource(_requester);
  PropertiesBigQueryLinksResource get bigQueryLinks =>
      PropertiesBigQueryLinksResource(_requester);
  PropertiesCalculatedMetricsResource get calculatedMetrics =>
      PropertiesCalculatedMetricsResource(_requester);
  PropertiesChannelGroupsResource get channelGroups =>
      PropertiesChannelGroupsResource(_requester);
  PropertiesConversionEventsResource get conversionEvents =>
      PropertiesConversionEventsResource(_requester);
  PropertiesCustomDimensionsResource get customDimensions =>
      PropertiesCustomDimensionsResource(_requester);
  PropertiesCustomMetricsResource get customMetrics =>
      PropertiesCustomMetricsResource(_requester);
  PropertiesDataStreamsResource get dataStreams =>
      PropertiesDataStreamsResource(_requester);
  PropertiesDisplayVideo360AdvertiserLinkProposalsResource
  get displayVideo360AdvertiserLinkProposals =>
      PropertiesDisplayVideo360AdvertiserLinkProposalsResource(_requester);
  PropertiesDisplayVideo360AdvertiserLinksResource
  get displayVideo360AdvertiserLinks =>
      PropertiesDisplayVideo360AdvertiserLinksResource(_requester);
  PropertiesExpandedDataSetsResource get expandedDataSets =>
      PropertiesExpandedDataSetsResource(_requester);
  PropertiesFirebaseLinksResource get firebaseLinks =>
      PropertiesFirebaseLinksResource(_requester);
  PropertiesGoogleAdsLinksResource get googleAdsLinks =>
      PropertiesGoogleAdsLinksResource(_requester);
  PropertiesKeyEventsResource get keyEvents =>
      PropertiesKeyEventsResource(_requester);
  PropertiesReportingDataAnnotationsResource get reportingDataAnnotations =>
      PropertiesReportingDataAnnotationsResource(_requester);
  PropertiesRollupPropertySourceLinksResource get rollupPropertySourceLinks =>
      PropertiesRollupPropertySourceLinksResource(_requester);
  PropertiesSearchAds360LinksResource get searchAds360Links =>
      PropertiesSearchAds360LinksResource(_requester);
  PropertiesSubpropertyEventFiltersResource get subpropertyEventFilters =>
      PropertiesSubpropertyEventFiltersResource(_requester);
  PropertiesSubpropertySyncConfigsResource get subpropertySyncConfigs =>
      PropertiesSubpropertySyncConfigsResource(_requester);

  PropertiesResource(commons.ApiRequester client) : _requester = client;

  /// Acknowledges the terms of user data collection for the specified property.
  ///
  /// This acknowledgement must be completed (either in the Google Analytics UI
  /// or through this API) before MeasurementProtocolSecret resources may be
  /// created.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [property] - Required. The property for which to acknowledge user data
  /// collection.
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse>
  acknowledgeUserDataCollection(
    GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest request,
    core.String property, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$property') +
        ':acknowledgeUserDataCollection';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a Google Analytics property with the specified location and
  /// attributes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaProperty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaProperty> create(
    GoogleAnalyticsAdminV1alphaProperty request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1alpha/properties';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaProperty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Create a roll-up property and all roll-up property source links.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse>
  createRollupProperty(
    GoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1alpha/properties:createRollupProperty';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Marks target Property as soft-deleted (ie: "trashed") and returns it.
  ///
  /// This API does not have a method to restore soft-deleted properties.
  /// However, they can be restored using the Trash Can UI. If the properties
  /// are not restored before the expiration time, the Property and all child
  /// resources (eg: GoogleAdsLinks, Streams, AccessBindings) will be
  /// permanently purged. https://support.google.com/analytics/answer/6154772
  /// Returns an error if the target is not found.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Property to soft-delete. Format:
  /// properties/{property_id} Example: "properties/1000"
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaProperty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaProperty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaProperty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lookup for a single GA Property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the property to lookup. Format:
  /// properties/{property_id} Example: "properties/1000"
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaProperty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaProperty> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaProperty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lookup for a AttributionSettings singleton.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the attribution settings to retrieve.
  /// Format: properties/{property}/attributionSettings
  /// Value must have pattern `^properties/\[^/\]+/attributionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAttributionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAttributionSettings>
  getAttributionSettings(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaAttributionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the singleton data retention settings for this property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the settings to lookup. Format:
  /// properties/{property}/dataRetentionSettings Example:
  /// "properties/1000/dataRetentionSettings"
  /// Value must have pattern `^properties/\[^/\]+/dataRetentionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaDataRetentionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDataRetentionSettings>
  getDataRetentionSettings(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaDataRetentionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lookup for Google Signals settings for a property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the google signals settings to retrieve.
  /// Format: properties/{property}/googleSignalsSettings
  /// Value must have pattern `^properties/\[^/\]+/googleSignalsSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaGoogleSignalsSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaGoogleSignalsSettings>
  getGoogleSignalsSettings(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaGoogleSignalsSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the reporting identity settings for this property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the settings to lookup. Format:
  /// properties/{property}/reportingIdentitySettings Example:
  /// "properties/1000/reportingIdentitySettings"
  /// Value must have pattern `^properties/\[^/\]+/reportingIdentitySettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaReportingIdentitySettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaReportingIdentitySettings>
  getReportingIdentitySettings(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaReportingIdentitySettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns child Properties under the specified parent Account.
  ///
  /// Properties will be excluded if the caller does not have access.
  /// Soft-deleted (ie: "trashed") properties are excluded by default. Returns
  /// an empty list if no relevant properties are found.
  ///
  /// Request parameters:
  ///
  /// [filter] - Required. An expression for filtering the results of the
  /// request. Fields eligible for filtering are: `parent:`(The resource name of
  /// the parent account/property) or `ancestor:`(The resource name of the
  /// parent account) or `firebase_project:`(The id or number of the linked
  /// firebase project). Some examples of filters: ``` | Filter | Description |
  /// |-----------------------------|-------------------------------------------|
  /// | parent:accounts/123 | The account with account id: 123. | |
  /// parent:properties/123 | The property with property id: 123. | |
  /// ancestor:accounts/123 | The account with account id: 123. | |
  /// firebase_project:project-id | The firebase project with id: project-id. |
  /// | firebase_project:123 | The firebase project with number: 123. | ```
  ///
  /// [pageSize] - The maximum number of resources to return. The service may
  /// return fewer than this value, even if there are additional pages. If
  /// unspecified, at most 50 resources will be returned. The maximum value is
  /// 200; (higher values will be coerced to the maximum)
  ///
  /// [pageToken] - A page token, received from a previous `ListProperties`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListProperties` must match the call that
  /// provided the page token.
  ///
  /// [showDeleted] - Whether to include soft-deleted (ie: "trashed") Properties
  /// in the results. Properties can be inspected to determine whether they are
  /// deleted or not.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListPropertiesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListPropertiesResponse> list({
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'showDeleted': ?showDeleted == null ? null : ['${showDeleted}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1alpha/properties';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListPropertiesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this property. Format:
  /// properties/{property_id} Example: "properties/1000"
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaProperty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaProperty> patch(
    GoogleAnalyticsAdminV1alphaProperty request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaProperty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Create a subproperty and a subproperty event filter that applies to the
  /// created subproperty.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse>
  provisionSubproperty(
    GoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1alpha/properties:provisionSubproperty';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns a customized report of data access records.
  ///
  /// The report provides records of each time a user reads Google Analytics
  /// reporting data. Access records are retained for up to 2 years. Data Access
  /// Reports can be requested for a property. Reports may be requested for any
  /// property, but dimensions that aren't related to quota can only be
  /// requested on Google Analytics 360 properties. This method is only
  /// available to Administrators. These data access records include GA UI
  /// Reporting, GA UI Explorations, GA Data API, and other products like
  /// Firebase & Admob that can retrieve data from Google Analytics through a
  /// linkage. These records don't include property configuration changes like
  /// adding a stream or changing a property's time zone. For configuration
  /// change history, see
  /// [searchChangeHistoryEvents](https://developers.google.com/analytics/devguides/config/admin/v1/rest/v1alpha/accounts/searchChangeHistoryEvents).
  /// To give your feedback on this API, complete the
  /// [Google Analytics Access Reports feedback](https://docs.google.com/forms/d/e/1FAIpQLSdmEBUrMzAEdiEKk5TV5dEHvDUZDRlgWYdQdAeSdtR4hVjEhw/viewform)
  /// form.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [entity] - The Data Access Report supports requesting at the property
  /// level or account level. If requested at the account level, Data Access
  /// Reports include all access for all properties under that account. To
  /// request at the property level, entity should be for example
  /// 'properties/123' if "123" is your Google Analytics property ID. To request
  /// at the account level, entity should be for example 'accounts/1234' if
  /// "1234" is your Google Analytics Account ID.
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaRunAccessReportResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaRunAccessReportResponse>
  runAccessReport(
    GoogleAnalyticsAdminV1alphaRunAccessReportRequest request,
    core.String entity, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$entity') + ':runAccessReport';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaRunAccessReportResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Submits a request for user deletion for a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the property to submit user deletion for.
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse>
  submitUserDeletion(
    GoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$name') + ':submitUserDeletion';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates attribution settings on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this attribution settings resource.
  /// Format: properties/{property_id}/attributionSettings Example:
  /// "properties/1000/attributionSettings"
  /// Value must have pattern `^properties/\[^/\]+/attributionSettings$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAttributionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAttributionSettings>
  updateAttributionSettings(
    GoogleAnalyticsAdminV1alphaAttributionSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaAttributionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the singleton data retention settings for this property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name for this DataRetentionSetting
  /// resource. Format: properties/{property}/dataRetentionSettings
  /// Value must have pattern `^properties/\[^/\]+/dataRetentionSettings$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaDataRetentionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDataRetentionSettings>
  updateDataRetentionSettings(
    GoogleAnalyticsAdminV1alphaDataRetentionSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaDataRetentionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates Google Signals settings for a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this setting. Format:
  /// properties/{property_id}/googleSignalsSettings Example:
  /// "properties/1000/googleSignalsSettings"
  /// Value must have pattern `^properties/\[^/\]+/googleSignalsSettings$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaGoogleSignalsSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaGoogleSignalsSettings>
  updateGoogleSignalsSettings(
    GoogleAnalyticsAdminV1alphaGoogleSignalsSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaGoogleSignalsSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesAccessBindingsResource {
  final commons.ApiRequester _requester;

  PropertiesAccessBindingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates information about multiple access bindings to an account or
  /// property.
  ///
  /// This method is transactional. If any AccessBinding cannot be created, none
  /// of the AccessBindings will be created.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account or property that owns the access
  /// bindings. The parent field in the CreateAccessBindingRequest messages must
  /// either be empty or match this field. Formats: - accounts/{account} -
  /// properties/{property}
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse>
  batchCreate(
    GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/accessBindings:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes information about multiple users' links to an account or property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account or property that owns the access
  /// bindings. The parent of all provided values for the 'names' field in
  /// DeleteAccessBindingRequest messages must match this field. Formats: -
  /// accounts/{account} - properties/{property}
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> batchDelete(
    GoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/accessBindings:batchDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets information about multiple access bindings to an account or property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account or property that owns the access
  /// bindings. The parent of all provided values for the 'names' field must
  /// match this field. Formats: - accounts/{account} - properties/{property}
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [names] - Required. The names of the access bindings to retrieve. A
  /// maximum of 1000 access bindings can be retrieved in a batch. Formats: -
  /// accounts/{account}/accessBindings/{accessBinding} -
  /// properties/{property}/accessBindings/{accessBinding}
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse>
  batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'names': ?names,
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/accessBindings:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates information about multiple access bindings to an account or
  /// property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account or property that owns the access
  /// bindings. The parent of all provided AccessBinding in
  /// UpdateAccessBindingRequest messages must match this field. Formats: -
  /// accounts/{account} - properties/{property}
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse>
  batchUpdate(
    GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/accessBindings:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates an access binding on an account or property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Formats: - accounts/{account} - properties/{property}
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAccessBinding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAccessBinding> create(
    GoogleAnalyticsAdminV1alphaAccessBinding request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/accessBindings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaAccessBinding.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an access binding on an account or property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Formats: -
  /// accounts/{account}/accessBindings/{accessBinding} -
  /// properties/{property}/accessBindings/{accessBinding}
  /// Value must have pattern `^properties/\[^/\]+/accessBindings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets information about an access binding.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the access binding to retrieve. Formats: -
  /// accounts/{account}/accessBindings/{accessBinding} -
  /// properties/{property}/accessBindings/{accessBinding}
  /// Value must have pattern `^properties/\[^/\]+/accessBindings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAccessBinding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAccessBinding> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaAccessBinding.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all access bindings on an account or property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Formats: - accounts/{account} - properties/{property}
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of access bindings to return. The service
  /// may return fewer than this value. If unspecified, at most 200 access
  /// bindings will be returned. The maximum value is 500; values above 500 will
  /// be coerced to 500.
  ///
  /// [pageToken] - A page token, received from a previous `ListAccessBindings`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListAccessBindings` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListAccessBindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListAccessBindingsResponse> list(
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
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/accessBindings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListAccessBindingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an access binding on an account or property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this binding. Format:
  /// accounts/{account}/accessBindings/{access_binding} or
  /// properties/{property}/accessBindings/{access_binding} Example:
  /// "accounts/100/accessBindings/200"
  /// Value must have pattern `^properties/\[^/\]+/accessBindings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAccessBinding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAccessBinding> patch(
    GoogleAnalyticsAdminV1alphaAccessBinding request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaAccessBinding.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesAdSenseLinksResource {
  final commons.ApiRequester _requester;

  PropertiesAdSenseLinksResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates an AdSenseLink.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The property for which to create an AdSense Link.
  /// Format: properties/{propertyId} Example: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAdSenseLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAdSenseLink> create(
    GoogleAnalyticsAdminV1alphaAdSenseLink request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/adSenseLinks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaAdSenseLink.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an AdSenseLink.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Unique identifier for the AdSense Link to be deleted.
  /// Format: properties/{propertyId}/adSenseLinks/{linkId} Example:
  /// properties/1234/adSenseLinks/5678
  /// Value must have pattern `^properties/\[^/\]+/adSenseLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Looks up a single AdSenseLink.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Unique identifier for the AdSense Link requested.
  /// Format: properties/{propertyId}/adSenseLinks/{linkId} Example:
  /// properties/1234/adSenseLinks/5678
  /// Value must have pattern `^properties/\[^/\]+/adSenseLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAdSenseLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAdSenseLink> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaAdSenseLink.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists AdSenseLinks on a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the parent property. Format:
  /// properties/{propertyId} Example: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200 (higher
  /// values will be coerced to the maximum).
  ///
  /// [pageToken] - A page token received from a previous `ListAdSenseLinks`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListAdSenseLinks` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListAdSenseLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListAdSenseLinksResponse> list(
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/adSenseLinks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListAdSenseLinksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesAudiencesResource {
  final commons.ApiRequester _requester;

  PropertiesAudiencesResource(commons.ApiRequester client)
    : _requester = client;

  /// Archives an Audience on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Example format: properties/1234/audiences/5678
  /// Value must have pattern `^properties/\[^/\]+/audiences/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> archive(
    GoogleAnalyticsAdminV1alphaArchiveAudienceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + ':archive';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates an Audience.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAudience].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAudience> create(
    GoogleAnalyticsAdminV1alphaAudience request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/audiences';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaAudience.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lookup for a single Audience.
  ///
  /// Audiences created before 2020 may not be supported. Default audiences will
  /// not show filter definitions.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Audience to get. Example format:
  /// properties/1234/audiences/5678
  /// Value must have pattern `^properties/\[^/\]+/audiences/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAudience].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAudience> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaAudience.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Audiences on a property.
  ///
  /// Audiences created before 2020 may not be supported. Default audiences will
  /// not show filter definitions.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200 (higher
  /// values will be coerced to the maximum).
  ///
  /// [pageToken] - A page token, received from a previous `ListAudiences` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListAudiences` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListAudiencesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListAudiencesResponse> list(
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/audiences';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListAudiencesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an Audience on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name for this Audience resource.
  /// Format: properties/{propertyId}/audiences/{audienceId}
  /// Value must have pattern `^properties/\[^/\]+/audiences/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAudience].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAudience> patch(
    GoogleAnalyticsAdminV1alphaAudience request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaAudience.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesBigQueryLinksResource {
  final commons.ApiRequester _requester;

  PropertiesBigQueryLinksResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a BigQueryLink.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaBigQueryLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaBigQueryLink> create(
    GoogleAnalyticsAdminV1alphaBigQueryLink request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/bigQueryLinks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaBigQueryLink.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a BigQueryLink on a property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The BigQueryLink to delete. Example format:
  /// properties/1234/bigQueryLinks/5678
  /// Value must have pattern `^properties/\[^/\]+/bigQueryLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lookup for a single BigQuery Link.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the BigQuery link to lookup. Format:
  /// properties/{property_id}/bigQueryLinks/{bigquery_link_id} Example:
  /// properties/123/bigQueryLinks/456
  /// Value must have pattern `^properties/\[^/\]+/bigQueryLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaBigQueryLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaBigQueryLink> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaBigQueryLink.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists BigQuery Links on a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the property to list BigQuery links
  /// under. Format: properties/{property_id} Example: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. The service may
  /// return fewer than this value, even if there are additional pages. If
  /// unspecified, at most 50 resources will be returned. The maximum value is
  /// 200; (higher values will be coerced to the maximum)
  ///
  /// [pageToken] - A page token, received from a previous `ListBigQueryLinks`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListBigQueryLinks` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListBigQueryLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListBigQueryLinksResponse> list(
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/bigQueryLinks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListBigQueryLinksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a BigQueryLink.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this BigQuery link. Format:
  /// 'properties/{property_id}/bigQueryLinks/{bigquery_link_id}' Format:
  /// 'properties/1234/bigQueryLinks/abc567'
  /// Value must have pattern `^properties/\[^/\]+/bigQueryLinks/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaBigQueryLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaBigQueryLink> patch(
    GoogleAnalyticsAdminV1alphaBigQueryLink request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaBigQueryLink.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesCalculatedMetricsResource {
  final commons.ApiRequester _requester;

  PropertiesCalculatedMetricsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a CalculatedMetric.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: properties/{property_id} Example:
  /// properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [calculatedMetricId] - Required. The ID to use for the calculated metric
  /// which will become the final component of the calculated metric's resource
  /// name. This value should be 1-80 characters and valid characters are
  /// /\[a-zA-Z0-9_\]/, no spaces allowed. calculated_metric_id must be unique
  /// between all calculated metrics under a property. The calculated_metric_id
  /// is used when referencing this calculated metric from external APIs, for
  /// example, "calcMetric:{calculated_metric_id}".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaCalculatedMetric].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaCalculatedMetric> create(
    GoogleAnalyticsAdminV1alphaCalculatedMetric request,
    core.String parent, {
    core.String? calculatedMetricId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'calculatedMetricId': ?calculatedMetricId == null
          ? null
          : [calculatedMetricId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/calculatedMetrics';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaCalculatedMetric.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a CalculatedMetric on a property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CalculatedMetric to delete. Format:
  /// properties/{property_id}/calculatedMetrics/{calculated_metric_id} Example:
  /// properties/1234/calculatedMetrics/Metric01
  /// Value must have pattern `^properties/\[^/\]+/calculatedMetrics/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lookup for a single CalculatedMetric.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CalculatedMetric to get. Format:
  /// properties/{property_id}/calculatedMetrics/{calculated_metric_id} Example:
  /// properties/1234/calculatedMetrics/Metric01
  /// Value must have pattern `^properties/\[^/\]+/calculatedMetrics/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaCalculatedMetric].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaCalculatedMetric> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaCalculatedMetric.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists CalculatedMetrics on a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of resources to return. If
  /// unspecified, at most 50 resources will be returned. The maximum value is
  /// 200 (higher values will be coerced to the maximum).
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListCalculatedMetrics` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListCalculatedMetrics` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse> list(
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
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/calculatedMetrics';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a CalculatedMetric on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name for this CalculatedMetric. Format:
  /// 'properties/{property_id}/calculatedMetrics/{calculated_metric_id}'
  /// Value must have pattern `^properties/\[^/\]+/calculatedMetrics/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Omitted fields
  /// will not be updated. To replace the entire entity, use one path with the
  /// string "*" to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaCalculatedMetric].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaCalculatedMetric> patch(
    GoogleAnalyticsAdminV1alphaCalculatedMetric request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaCalculatedMetric.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesChannelGroupsResource {
  final commons.ApiRequester _requester;

  PropertiesChannelGroupsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a ChannelGroup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The property for which to create a ChannelGroup.
  /// Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaChannelGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaChannelGroup> create(
    GoogleAnalyticsAdminV1alphaChannelGroup request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/channelGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaChannelGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a ChannelGroup on a property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The ChannelGroup to delete. Example format:
  /// properties/1234/channelGroups/5678
  /// Value must have pattern `^properties/\[^/\]+/channelGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lookup for a single ChannelGroup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The ChannelGroup to get. Example format:
  /// properties/1234/channelGroups/5678
  /// Value must have pattern `^properties/\[^/\]+/channelGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaChannelGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaChannelGroup> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaChannelGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists ChannelGroups on a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The property for which to list ChannelGroups. Example
  /// format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200 (higher
  /// values will be coerced to the maximum).
  ///
  /// [pageToken] - A page token, received from a previous `ListChannelGroups`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListChannelGroups` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListChannelGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListChannelGroupsResponse> list(
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/channelGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListChannelGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a ChannelGroup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name for this Channel Group resource.
  /// Format: properties/{property}/channelGroups/{channel_group}
  /// Value must have pattern `^properties/\[^/\]+/channelGroups/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaChannelGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaChannelGroup> patch(
    GoogleAnalyticsAdminV1alphaChannelGroup request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaChannelGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

@core.Deprecated(
  'Not supported. Member documentation may have more information.',
)
class PropertiesConversionEventsResource {
  final commons.ApiRequester _requester;

  PropertiesConversionEventsResource(commons.ApiRequester client)
    : _requester = client;

  /// Deprecated: Use `CreateKeyEvent` instead.
  ///
  /// Creates a conversion event with the specified attributes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent property where this
  /// conversion event will be created. Format: properties/123
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaConversionEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleAnalyticsAdminV1alphaConversionEvent> create(
    GoogleAnalyticsAdminV1alphaConversionEvent request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/conversionEvents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaConversionEvent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deprecated: Use `DeleteKeyEvent` instead.
  ///
  /// Deletes a conversion event in a property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the conversion event to delete.
  /// Format: properties/{property}/conversionEvents/{conversion_event} Example:
  /// "properties/123/conversionEvents/456"
  /// Value must have pattern `^properties/\[^/\]+/conversionEvents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deprecated: Use `GetKeyEvent` instead.
  ///
  /// Retrieve a single conversion event.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the conversion event to retrieve.
  /// Format: properties/{property}/conversionEvents/{conversion_event} Example:
  /// "properties/123/conversionEvents/456"
  /// Value must have pattern `^properties/\[^/\]+/conversionEvents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaConversionEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleAnalyticsAdminV1alphaConversionEvent> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaConversionEvent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deprecated: Use `ListKeyEvents` instead.
  ///
  /// Returns a list of conversion events in the specified parent property.
  /// Returns an empty list if no conversion events are found.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent property. Example:
  /// 'properties/123'
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200; (higher
  /// values will be coerced to the maximum)
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListConversionEvents` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListConversionEvents`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListConversionEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleAnalyticsAdminV1alphaListConversionEventsResponse> list(
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
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/conversionEvents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListConversionEventsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deprecated: Use `UpdateKeyEvent` instead.
  ///
  /// Updates a conversion event with the specified attributes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this conversion event. Format:
  /// properties/{property}/conversionEvents/{conversion_event}
  /// Value must have pattern `^properties/\[^/\]+/conversionEvents/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaConversionEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleAnalyticsAdminV1alphaConversionEvent> patch(
    GoogleAnalyticsAdminV1alphaConversionEvent request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaConversionEvent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesCustomDimensionsResource {
  final commons.ApiRequester _requester;

  PropertiesCustomDimensionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Archives a CustomDimension on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CustomDimension to archive. Example
  /// format: properties/1234/customDimensions/5678
  /// Value must have pattern `^properties/\[^/\]+/customDimensions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> archive(
    GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + ':archive';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a CustomDimension.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaCustomDimension].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaCustomDimension> create(
    GoogleAnalyticsAdminV1alphaCustomDimension request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/customDimensions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaCustomDimension.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lookup for a single CustomDimension.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CustomDimension to get. Example format:
  /// properties/1234/customDimensions/5678
  /// Value must have pattern `^properties/\[^/\]+/customDimensions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaCustomDimension].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaCustomDimension> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaCustomDimension.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists CustomDimensions on a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200 (higher
  /// values will be coerced to the maximum).
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListCustomDimensions` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListCustomDimensions`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse> list(
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
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/customDimensions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a CustomDimension on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name for this CustomDimension resource.
  /// Format: properties/{property}/customDimensions/{customDimension}
  /// Value must have pattern `^properties/\[^/\]+/customDimensions/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Omitted fields
  /// will not be updated. To replace the entire entity, use one path with the
  /// string "*" to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaCustomDimension].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaCustomDimension> patch(
    GoogleAnalyticsAdminV1alphaCustomDimension request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaCustomDimension.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesCustomMetricsResource {
  final commons.ApiRequester _requester;

  PropertiesCustomMetricsResource(commons.ApiRequester client)
    : _requester = client;

  /// Archives a CustomMetric on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CustomMetric to archive. Example
  /// format: properties/1234/customMetrics/5678
  /// Value must have pattern `^properties/\[^/\]+/customMetrics/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> archive(
    GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + ':archive';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a CustomMetric.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaCustomMetric].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaCustomMetric> create(
    GoogleAnalyticsAdminV1alphaCustomMetric request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/customMetrics';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaCustomMetric.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lookup for a single CustomMetric.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CustomMetric to get. Example format:
  /// properties/1234/customMetrics/5678
  /// Value must have pattern `^properties/\[^/\]+/customMetrics/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaCustomMetric].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaCustomMetric> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaCustomMetric.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists CustomMetrics on a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200 (higher
  /// values will be coerced to the maximum).
  ///
  /// [pageToken] - A page token, received from a previous `ListCustomMetrics`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListCustomMetrics` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListCustomMetricsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListCustomMetricsResponse> list(
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/customMetrics';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListCustomMetricsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a CustomMetric on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name for this CustomMetric resource.
  /// Format: properties/{property}/customMetrics/{customMetric}
  /// Value must have pattern `^properties/\[^/\]+/customMetrics/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Omitted fields
  /// will not be updated. To replace the entire entity, use one path with the
  /// string "*" to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaCustomMetric].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaCustomMetric> patch(
    GoogleAnalyticsAdminV1alphaCustomMetric request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaCustomMetric.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesDataStreamsResource {
  final commons.ApiRequester _requester;

  PropertiesDataStreamsEventCreateRulesResource get eventCreateRules =>
      PropertiesDataStreamsEventCreateRulesResource(_requester);
  PropertiesDataStreamsEventEditRulesResource get eventEditRules =>
      PropertiesDataStreamsEventEditRulesResource(_requester);
  PropertiesDataStreamsMeasurementProtocolSecretsResource
  get measurementProtocolSecrets =>
      PropertiesDataStreamsMeasurementProtocolSecretsResource(_requester);
  PropertiesDataStreamsSKAdNetworkConversionValueSchemaResource
  get sKAdNetworkConversionValueSchema =>
      PropertiesDataStreamsSKAdNetworkConversionValueSchemaResource(_requester);

  PropertiesDataStreamsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a DataStream.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaDataStream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDataStream> create(
    GoogleAnalyticsAdminV1alphaDataStream request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/dataStreams';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaDataStream.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a DataStream on a property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DataStream to delete. Example format:
  /// properties/1234/dataStreams/5678
  /// Value must have pattern `^properties/\[^/\]+/dataStreams/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lookup for a single DataStream.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DataStream to get. Example format:
  /// properties/1234/dataStreams/5678
  /// Value must have pattern `^properties/\[^/\]+/dataStreams/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaDataStream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDataStream> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaDataStream.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lookup for a single DataRedactionSettings.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the settings to lookup. Format:
  /// properties/{property}/dataStreams/{data_stream}/dataRedactionSettings
  /// Example: "properties/1000/dataStreams/2000/dataRedactionSettings"
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/dataRedactionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaDataRedactionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDataRedactionSettings>
  getDataRedactionSettings(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaDataRedactionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the enhanced measurement settings for this data stream.
  ///
  /// Note that the stream must enable enhanced measurement for these settings
  /// to take effect.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the settings to lookup. Format:
  /// properties/{property}/dataStreams/{data_stream}/enhancedMeasurementSettings
  /// Example: "properties/1000/dataStreams/2000/enhancedMeasurementSettings"
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/enhancedMeasurementSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings>
  getEnhancedMeasurementSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the Site Tag for the specified web stream.
  ///
  /// Site Tags are immutable singletons.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the site tag to lookup. Note that site tags
  /// are singletons and do not have unique IDs. Format:
  /// properties/{property_id}/dataStreams/{stream_id}/globalSiteTag Example:
  /// `properties/123/dataStreams/456/globalSiteTag`
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/globalSiteTag$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaGlobalSiteTag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaGlobalSiteTag> getGlobalSiteTag(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaGlobalSiteTag.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists DataStreams on a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200 (higher
  /// values will be coerced to the maximum).
  ///
  /// [pageToken] - A page token, received from a previous `ListDataStreams`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListDataStreams` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListDataStreamsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListDataStreamsResponse> list(
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/dataStreams';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListDataStreamsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a DataStream on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this Data Stream. Format:
  /// properties/{property_id}/dataStreams/{stream_id} Example:
  /// "properties/1000/dataStreams/2000"
  /// Value must have pattern `^properties/\[^/\]+/dataStreams/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Omitted fields
  /// will not be updated. To replace the entire entity, use one path with the
  /// string "*" to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaDataStream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDataStream> patch(
    GoogleAnalyticsAdminV1alphaDataStream request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaDataStream.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a DataRedactionSettings on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Name of this Data Redaction Settings resource.
  /// Format:
  /// properties/{property_id}/dataStreams/{data_stream}/dataRedactionSettings
  /// Example: "properties/1000/dataStreams/2000/dataRedactionSettings"
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/dataRedactionSettings$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaDataRedactionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDataRedactionSettings>
  updateDataRedactionSettings(
    GoogleAnalyticsAdminV1alphaDataRedactionSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaDataRedactionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the enhanced measurement settings for this data stream.
  ///
  /// Note that the stream must enable enhanced measurement for these settings
  /// to take effect.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the Enhanced Measurement Settings.
  /// Format:
  /// properties/{property_id}/dataStreams/{data_stream}/enhancedMeasurementSettings
  /// Example: "properties/1000/dataStreams/2000/enhancedMeasurementSettings"
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/enhancedMeasurementSettings$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings>
  updateEnhancedMeasurementSettings(
    GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesDataStreamsEventCreateRulesResource {
  final commons.ApiRequester _requester;

  PropertiesDataStreamsEventCreateRulesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates an EventCreateRule.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/123/dataStreams/456
  /// Value must have pattern `^properties/\[^/\]+/dataStreams/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaEventCreateRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaEventCreateRule> create(
    GoogleAnalyticsAdminV1alphaEventCreateRule request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/eventCreateRules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaEventCreateRule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an EventCreateRule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Example format:
  /// properties/123/dataStreams/456/eventCreateRules/789
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/eventCreateRules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lookup for a single EventCreateRule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the EventCreateRule to get. Example format:
  /// properties/123/dataStreams/456/eventCreateRules/789
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/eventCreateRules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaEventCreateRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaEventCreateRule> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaEventCreateRule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists EventCreateRules on a web data stream.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/123/dataStreams/456
  /// Value must have pattern `^properties/\[^/\]+/dataStreams/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200 (higher
  /// values will be coerced to the maximum).
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListEventCreateRules` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListEventCreateRules`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListEventCreateRulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListEventCreateRulesResponse> list(
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
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/eventCreateRules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListEventCreateRulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an EventCreateRule.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name for this EventCreateRule resource.
  /// Format:
  /// properties/{property}/dataStreams/{data_stream}/eventCreateRules/{event_create_rule}
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/eventCreateRules/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaEventCreateRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaEventCreateRule> patch(
    GoogleAnalyticsAdminV1alphaEventCreateRule request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaEventCreateRule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesDataStreamsEventEditRulesResource {
  final commons.ApiRequester _requester;

  PropertiesDataStreamsEventEditRulesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates an EventEditRule.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/123/dataStreams/456
  /// Value must have pattern `^properties/\[^/\]+/dataStreams/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaEventEditRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaEventEditRule> create(
    GoogleAnalyticsAdminV1alphaEventEditRule request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/eventEditRules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaEventEditRule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an EventEditRule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Example format:
  /// properties/123/dataStreams/456/eventEditRules/789
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/eventEditRules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lookup for a single EventEditRule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the EventEditRule to get. Example format:
  /// properties/123/dataStreams/456/eventEditRules/789
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/eventEditRules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaEventEditRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaEventEditRule> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaEventEditRule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists EventEditRules on a web data stream.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/123/dataStreams/456
  /// Value must have pattern `^properties/\[^/\]+/dataStreams/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of resources to return. If
  /// unspecified, at most 50 resources will be returned. The maximum value is
  /// 200 (higher values will be coerced to the maximum).
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListEventEditRules` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListEventEditRules`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListEventEditRulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListEventEditRulesResponse> list(
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
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/eventEditRules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListEventEditRulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an EventEditRule.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Resource name for this EventEditRule resource.
  /// Format:
  /// properties/{property}/dataStreams/{data_stream}/eventEditRules/{event_edit_rule}
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/eventEditRules/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaEventEditRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaEventEditRule> patch(
    GoogleAnalyticsAdminV1alphaEventEditRule request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaEventEditRule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Changes the processing order of event edit rules on the specified stream.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/123/dataStreams/456
  /// Value must have pattern `^properties/\[^/\]+/dataStreams/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> reorder(
    GoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/eventEditRules:reorder';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesDataStreamsMeasurementProtocolSecretsResource {
  final commons.ApiRequester _requester;

  PropertiesDataStreamsMeasurementProtocolSecretsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a measurement protocol secret.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this secret will be
  /// created. Format: properties/{property}/dataStreams/{dataStream}
  /// Value must have pattern `^properties/\[^/\]+/dataStreams/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret> create(
    GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/measurementProtocolSecrets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes target MeasurementProtocolSecret.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the MeasurementProtocolSecret to delete.
  /// Format:
  /// properties/{property}/dataStreams/{dataStream}/measurementProtocolSecrets/{measurementProtocolSecret}
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/measurementProtocolSecrets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lookup for a single MeasurementProtocolSecret.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the measurement protocol secret to lookup.
  /// Format:
  /// properties/{property}/dataStreams/{dataStream}/measurementProtocolSecrets/{measurementProtocolSecret}
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/measurementProtocolSecrets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns child MeasurementProtocolSecrets under the specified parent
  /// Property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent stream. Format:
  /// properties/{property}/dataStreams/{dataStream}/measurementProtocolSecrets
  /// Value must have pattern `^properties/\[^/\]+/dataStreams/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 10 resources will be returned. The maximum value is 10. Higher values
  /// will be coerced to the maximum.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListMeasurementProtocolSecrets` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListMeasurementProtocolSecrets` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse
  >
  list(
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
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/measurementProtocolSecrets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a measurement protocol secret.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this secret. This secret may be a
  /// child of any type of stream. Format:
  /// properties/{property}/dataStreams/{dataStream}/measurementProtocolSecrets/{measurementProtocolSecret}
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/measurementProtocolSecrets/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Omitted fields
  /// will not be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret> patch(
    GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesDataStreamsSKAdNetworkConversionValueSchemaResource {
  final commons.ApiRequester _requester;

  PropertiesDataStreamsSKAdNetworkConversionValueSchemaResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a SKAdNetworkConversionValueSchema.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this schema will be
  /// created. Format: properties/{property}/dataStreams/{dataStream}
  /// Value must have pattern `^properties/\[^/\]+/dataStreams/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema>
  create(
    GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/sKAdNetworkConversionValueSchema';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes target SKAdNetworkConversionValueSchema.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the SKAdNetworkConversionValueSchema to
  /// delete. Format:
  /// properties/{property}/dataStreams/{dataStream}/sKAdNetworkConversionValueSchema/{skadnetwork_conversion_value_schema}
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/sKAdNetworkConversionValueSchema/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Looks up a single SKAdNetworkConversionValueSchema.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of SKAdNetwork conversion value
  /// schema to look up. Format:
  /// properties/{property}/dataStreams/{dataStream}/sKAdNetworkConversionValueSchema/{skadnetwork_conversion_value_schema}
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/sKAdNetworkConversionValueSchema/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists SKAdNetworkConversionValueSchema on a stream.
  ///
  /// Properties can have at most one SKAdNetworkConversionValueSchema.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The DataStream resource to list schemas for. Format:
  /// properties/{property_id}/dataStreams/{dataStream} Example:
  /// properties/1234/dataStreams/5678
  /// Value must have pattern `^properties/\[^/\]+/dataStreams/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. The service may
  /// return fewer than this value, even if there are additional pages. If
  /// unspecified, at most 50 resources will be returned. The maximum value is
  /// 200; (higher values will be coerced to the maximum)
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListSKAdNetworkConversionValueSchemas` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListSKAdNetworkConversionValueSchema` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse
  >
  list(
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
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/sKAdNetworkConversionValueSchema';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a SKAdNetworkConversionValueSchema.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the schema. This will be child of
  /// ONLY an iOS stream, and there can be at most one such child under an iOS
  /// stream. Format:
  /// properties/{property}/dataStreams/{dataStream}/sKAdNetworkConversionValueSchema
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/sKAdNetworkConversionValueSchema/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Omitted fields
  /// will not be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema>
  patch(
    GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesDisplayVideo360AdvertiserLinkProposalsResource {
  final commons.ApiRequester _requester;

  PropertiesDisplayVideo360AdvertiserLinkProposalsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Approves a DisplayVideo360AdvertiserLinkProposal.
  ///
  /// The DisplayVideo360AdvertiserLinkProposal will be deleted and a new
  /// DisplayVideo360AdvertiserLink will be created.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DisplayVideo360AdvertiserLinkProposal
  /// to approve. Example format:
  /// properties/1234/displayVideo360AdvertiserLinkProposals/5678
  /// Value must have pattern
  /// `^properties/\[^/\]+/displayVideo360AdvertiserLinkProposals/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse
  >
  approve(
    GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest
    request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + ':approve';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Cancels a DisplayVideo360AdvertiserLinkProposal.
  ///
  /// Cancelling can mean either: - Declining a proposal initiated from Display
  /// & Video 360 - Withdrawing a proposal initiated from Google Analytics After
  /// being cancelled, a proposal will eventually be deleted automatically.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DisplayVideo360AdvertiserLinkProposal
  /// to cancel. Example format:
  /// properties/1234/displayVideo360AdvertiserLinkProposals/5678
  /// Value must have pattern
  /// `^properties/\[^/\]+/displayVideo360AdvertiserLinkProposals/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal>
  cancel(
    GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest
    request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a DisplayVideo360AdvertiserLinkProposal.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal>
  create(
    GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/displayVideo360AdvertiserLinkProposals';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a DisplayVideo360AdvertiserLinkProposal on a property.
  ///
  /// This can only be used on cancelled proposals.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DisplayVideo360AdvertiserLinkProposal
  /// to delete. Example format:
  /// properties/1234/displayVideo360AdvertiserLinkProposals/5678
  /// Value must have pattern
  /// `^properties/\[^/\]+/displayVideo360AdvertiserLinkProposals/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lookup for a single DisplayVideo360AdvertiserLinkProposal.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DisplayVideo360AdvertiserLinkProposal
  /// to get. Example format:
  /// properties/1234/displayVideo360AdvertiserLinkProposals/5678
  /// Value must have pattern
  /// `^properties/\[^/\]+/displayVideo360AdvertiserLinkProposals/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal>
  get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists DisplayVideo360AdvertiserLinkProposals on a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200 (higher
  /// values will be coerced to the maximum).
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListDisplayVideo360AdvertiserLinkProposals` call. Provide this to
  /// retrieve the subsequent page. When paginating, all other parameters
  /// provided to `ListDisplayVideo360AdvertiserLinkProposals` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse
  >
  list(
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
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/displayVideo360AdvertiserLinkProposals';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesDisplayVideo360AdvertiserLinksResource {
  final commons.ApiRequester _requester;

  PropertiesDisplayVideo360AdvertiserLinksResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a DisplayVideo360AdvertiserLink.
  ///
  /// This can only be utilized by users who have proper authorization both on
  /// the Google Analytics property and on the Display & Video 360 advertiser.
  /// Users who do not have access to the Display & Video 360 advertiser should
  /// instead seek to create a DisplayVideo360LinkProposal.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink> create(
    GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/displayVideo360AdvertiserLinks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a DisplayVideo360AdvertiserLink on a property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DisplayVideo360AdvertiserLink to
  /// delete. Example format:
  /// properties/1234/displayVideo360AdvertiserLinks/5678
  /// Value must have pattern
  /// `^properties/\[^/\]+/displayVideo360AdvertiserLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Look up a single DisplayVideo360AdvertiserLink
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DisplayVideo360AdvertiserLink to get.
  /// Example format: properties/1234/displayVideo360AdvertiserLink/5678
  /// Value must have pattern
  /// `^properties/\[^/\]+/displayVideo360AdvertiserLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all DisplayVideo360AdvertiserLinks on a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200 (higher
  /// values will be coerced to the maximum).
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListDisplayVideo360AdvertiserLinks` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListDisplayVideo360AdvertiserLinks` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse
  >
  list(
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
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/displayVideo360AdvertiserLinks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a DisplayVideo360AdvertiserLink on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name for this
  /// DisplayVideo360AdvertiserLink resource. Format:
  /// properties/{propertyId}/displayVideo360AdvertiserLinks/{linkId} Note:
  /// linkId is not the Display & Video 360 Advertiser ID
  /// Value must have pattern
  /// `^properties/\[^/\]+/displayVideo360AdvertiserLinks/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Omitted fields
  /// will not be updated. To replace the entire entity, use one path with the
  /// string "*" to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink> patch(
    GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesExpandedDataSetsResource {
  final commons.ApiRequester _requester;

  PropertiesExpandedDataSetsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a ExpandedDataSet.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaExpandedDataSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaExpandedDataSet> create(
    GoogleAnalyticsAdminV1alphaExpandedDataSet request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/expandedDataSets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaExpandedDataSet.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a ExpandedDataSet on a property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Example format: properties/1234/expandedDataSets/5678
  /// Value must have pattern `^properties/\[^/\]+/expandedDataSets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lookup for a single ExpandedDataSet.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ExpandedDataSet to get. Example format:
  /// properties/1234/expandedDataSets/5678
  /// Value must have pattern `^properties/\[^/\]+/expandedDataSets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaExpandedDataSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaExpandedDataSet> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaExpandedDataSet.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists ExpandedDataSets on a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200 (higher
  /// values will be coerced to the maximum).
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListExpandedDataSets` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListExpandedDataSet`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse> list(
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
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/expandedDataSets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a ExpandedDataSet on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name for this ExpandedDataSet resource.
  /// Format: properties/{property_id}/expandedDataSets/{expanded_data_set}
  /// Value must have pattern `^properties/\[^/\]+/expandedDataSets/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaExpandedDataSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaExpandedDataSet> patch(
    GoogleAnalyticsAdminV1alphaExpandedDataSet request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaExpandedDataSet.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesFirebaseLinksResource {
  final commons.ApiRequester _requester;

  PropertiesFirebaseLinksResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a FirebaseLink.
  ///
  /// Properties can have at most one FirebaseLink.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: properties/{property_id} Example:
  /// `properties/1234`
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaFirebaseLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaFirebaseLink> create(
    GoogleAnalyticsAdminV1alphaFirebaseLink request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/firebaseLinks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaFirebaseLink.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a FirebaseLink on a property
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// properties/{property_id}/firebaseLinks/{firebase_link_id} Example:
  /// `properties/1234/firebaseLinks/5678`
  /// Value must have pattern `^properties/\[^/\]+/firebaseLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists FirebaseLinks on a property.
  ///
  /// Properties can have at most one FirebaseLink.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: properties/{property_id} Example:
  /// `properties/1234`
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. The service may
  /// return fewer than this value, even if there are additional pages. If
  /// unspecified, at most 50 resources will be returned. The maximum value is
  /// 200; (higher values will be coerced to the maximum)
  ///
  /// [pageToken] - A page token, received from a previous `ListFirebaseLinks`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListFirebaseLinks` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse> list(
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/firebaseLinks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesGoogleAdsLinksResource {
  final commons.ApiRequester _requester;

  PropertiesGoogleAdsLinksResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a GoogleAdsLink.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaGoogleAdsLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaGoogleAdsLink> create(
    GoogleAnalyticsAdminV1alphaGoogleAdsLink request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/googleAdsLinks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaGoogleAdsLink.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a GoogleAdsLink on a property
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Example format: properties/1234/googleAdsLinks/5678
  /// Value must have pattern `^properties/\[^/\]+/googleAdsLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists GoogleAdsLinks on a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200 (higher
  /// values will be coerced to the maximum).
  ///
  /// [pageToken] - A page token, received from a previous `ListGoogleAdsLinks`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListGoogleAdsLinks` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse> list(
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
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/googleAdsLinks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a GoogleAdsLink on a property
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Format:
  /// properties/{propertyId}/googleAdsLinks/{googleAdsLinkId} Note:
  /// googleAdsLinkId is not the Google Ads customer ID.
  /// Value must have pattern `^properties/\[^/\]+/googleAdsLinks/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaGoogleAdsLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaGoogleAdsLink> patch(
    GoogleAnalyticsAdminV1alphaGoogleAdsLink request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaGoogleAdsLink.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesKeyEventsResource {
  final commons.ApiRequester _requester;

  PropertiesKeyEventsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a Key Event.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent property where this
  /// Key Event will be created. Format: properties/123
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaKeyEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaKeyEvent> create(
    GoogleAnalyticsAdminV1alphaKeyEvent request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/keyEvents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaKeyEvent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a Key Event.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Key Event to delete. Format:
  /// properties/{property}/keyEvents/{key_event} Example:
  /// "properties/123/keyEvents/456"
  /// Value must have pattern `^properties/\[^/\]+/keyEvents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieve a single Key Event.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Key Event to retrieve. Format:
  /// properties/{property}/keyEvents/{key_event} Example:
  /// "properties/123/keyEvents/456"
  /// Value must have pattern `^properties/\[^/\]+/keyEvents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaKeyEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaKeyEvent> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaKeyEvent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns a list of Key Events in the specified parent property.
  ///
  /// Returns an empty list if no Key Events are found.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent property. Example:
  /// 'properties/123'
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200; (higher
  /// values will be coerced to the maximum)
  ///
  /// [pageToken] - A page token, received from a previous `ListKeyEvents` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListKeyEvents` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListKeyEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListKeyEventsResponse> list(
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/keyEvents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListKeyEventsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Key Event.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this key event. Format:
  /// properties/{property}/keyEvents/{key_event}
  /// Value must have pattern `^properties/\[^/\]+/keyEvents/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaKeyEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaKeyEvent> patch(
    GoogleAnalyticsAdminV1alphaKeyEvent request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaKeyEvent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesReportingDataAnnotationsResource {
  final commons.ApiRequester _requester;

  PropertiesReportingDataAnnotationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a Reporting Data Annotation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The property for which to create a Reporting Data
  /// Annotation. Format: properties/property_id Example: properties/123
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaReportingDataAnnotation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaReportingDataAnnotation> create(
    GoogleAnalyticsAdminV1alphaReportingDataAnnotation request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/reportingDataAnnotations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaReportingDataAnnotation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a Reporting Data Annotation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Reporting Data Annotation to
  /// delete. Format:
  /// properties/property_id/reportingDataAnnotations/reporting_data_annotation
  /// Example: properties/123/reportingDataAnnotations/456
  /// Value must have pattern
  /// `^properties/\[^/\]+/reportingDataAnnotations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lookup a single Reporting Data Annotation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Reporting Data Annotation to
  /// lookup. Format:
  /// properties/property_id/reportingDataAnnotations/reportingDataAnnotation
  /// Example: properties/123/reportingDataAnnotations/456
  /// Value must have pattern
  /// `^properties/\[^/\]+/reportingDataAnnotations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaReportingDataAnnotation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaReportingDataAnnotation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaReportingDataAnnotation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List all Reporting Data Annotations on a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the property. Format:
  /// properties/property_id Example: properties/123
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter that restricts which reporting data
  /// annotations under the parent property are listed. Supported fields are: *
  /// 'name' * `title` * `description` * `annotation_date` *
  /// `annotation_date_range` * `color` Additionally, this API provides the
  /// following helper functions: * annotation_duration() : the duration that
  /// this annotation marks,
  /// [durations](https://github.com/protocolbuffers/protobuf/blob/main/src/google/protobuf/duration.proto).
  /// expect a numeric representation of seconds followed by an `s` suffix. *
  /// is_annotation_in_range(start_date, end_date) : if the annotation is in the
  /// range specified by the `start_date` and `end_date`. The dates are in
  /// ISO-8601 format, for example `2031-06-28`. Supported operations: * `=` :
  /// equals * `!=` : not equals * `<` : less than * `>` : greater than * `<=` :
  /// less than or equals * `>=` : greater than or equals * `:` : has operator *
  /// `=~` : [regular expression](https://github.com/google/re2/wiki/Syntax)
  /// match * `!~` :
  /// [regular expression](https://github.com/google/re2/wiki/Syntax) does not
  /// match * `NOT` : Logical not * `AND` : Logical and * `OR` : Logical or
  /// Examples: 1. `title="Holiday Sale"` 2. `description=~"[Bb]ig
  /// [Gg]ame.*[Ss]ale"` 3. `is_annotation_in_range("2025-12-25", "2026-01-16")
  /// = true` 4. `annotation_duration() >= 172800s AND title:BOGO`
  ///
  /// [pageSize] - Optional. The maximum number of resources to return. The
  /// service may return fewer than this value, even if there are additional
  /// pages. If unspecified, at most 50 resources will be returned. The maximum
  /// value is 200; (higher values will be coerced to the maximum)
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListReportingDataAnnotations` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListReportingDataAnnotations` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse>
  list(
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
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/reportingDataAnnotations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Reporting Data Annotation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Identifier. Resource name of this Reporting Data
  /// Annotation. Format:
  /// 'properties/{property_id}/reportingDataAnnotations/{reporting_data_annotation}'
  /// Format: 'properties/123/reportingDataAnnotations/456'
  /// Value must have pattern
  /// `^properties/\[^/\]+/reportingDataAnnotations/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to update. Field names must be
  /// in snake case (for example, "field_to_update"). Omitted fields will not be
  /// updated. To replace the entire entity, use one path with the string "*" to
  /// match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaReportingDataAnnotation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaReportingDataAnnotation> patch(
    GoogleAnalyticsAdminV1alphaReportingDataAnnotation request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaReportingDataAnnotation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesRollupPropertySourceLinksResource {
  final commons.ApiRequester _requester;

  PropertiesRollupPropertySourceLinksResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a roll-up property source link.
  ///
  /// Only roll-up properties can have source links, so this method will throw
  /// an error if used on other types of properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: properties/{property_id} Example:
  /// properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaRollupPropertySourceLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaRollupPropertySourceLink> create(
    GoogleAnalyticsAdminV1alphaRollupPropertySourceLink request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/rollupPropertySourceLinks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaRollupPropertySourceLink.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a roll-up property source link.
  ///
  /// Only roll-up properties can have source links, so this method will throw
  /// an error if used on other types of properties.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// properties/{property_id}/rollupPropertySourceLinks/{rollup_property_source_link_id}
  /// Example: properties/1234/rollupPropertySourceLinks/5678
  /// Value must have pattern
  /// `^properties/\[^/\]+/rollupPropertySourceLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lookup for a single roll-up property source Link.
  ///
  /// Only roll-up properties can have source links, so this method will throw
  /// an error if used on other types of properties.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the roll-up property source link to lookup.
  /// Format:
  /// properties/{property_id}/rollupPropertySourceLinks/{rollup_property_source_link_id}
  /// Example: properties/123/rollupPropertySourceLinks/456
  /// Value must have pattern
  /// `^properties/\[^/\]+/rollupPropertySourceLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaRollupPropertySourceLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaRollupPropertySourceLink> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaRollupPropertySourceLink.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists roll-up property source Links on a property.
  ///
  /// Only roll-up properties can have source links, so this method will throw
  /// an error if used on other types of properties.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the roll-up property to list roll-up
  /// property source links under. Format: properties/{property_id} Example:
  /// properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of resources to return. The
  /// service may return fewer than this value, even if there are additional
  /// pages. If unspecified, at most 50 resources will be returned. The maximum
  /// value is 200; (higher values will be coerced to the maximum)
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListRollupPropertySourceLinks` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListRollupPropertySourceLinks` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse>
  list(
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
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/rollupPropertySourceLinks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesSearchAds360LinksResource {
  final commons.ApiRequester _requester;

  PropertiesSearchAds360LinksResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a SearchAds360Link.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaSearchAds360Link].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaSearchAds360Link> create(
    GoogleAnalyticsAdminV1alphaSearchAds360Link request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/searchAds360Links';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaSearchAds360Link.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a SearchAds360Link on a property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the SearchAds360Link to delete. Example
  /// format: properties/1234/SearchAds360Links/5678
  /// Value must have pattern `^properties/\[^/\]+/searchAds360Links/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Look up a single SearchAds360Link
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the SearchAds360Link to get. Example
  /// format: properties/1234/SearchAds360Link/5678
  /// Value must have pattern `^properties/\[^/\]+/searchAds360Links/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaSearchAds360Link].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaSearchAds360Link> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaSearchAds360Link.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all SearchAds360Links on a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200 (higher
  /// values will be coerced to the maximum).
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListSearchAds360Links` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListSearchAds360Links` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse> list(
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
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/searchAds360Links';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a SearchAds360Link on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name for this SearchAds360Link
  /// resource. Format: properties/{propertyId}/searchAds360Links/{linkId} Note:
  /// linkId is not the Search Ads 360 advertiser ID
  /// Value must have pattern `^properties/\[^/\]+/searchAds360Links/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Omitted fields
  /// will not be updated. To replace the entire entity, use one path with the
  /// string "*" to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaSearchAds360Link].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaSearchAds360Link> patch(
    GoogleAnalyticsAdminV1alphaSearchAds360Link request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaSearchAds360Link.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesSubpropertyEventFiltersResource {
  final commons.ApiRequester _requester;

  PropertiesSubpropertyEventFiltersResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a subproperty Event Filter.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The ordinary property for which to create a
  /// subproperty event filter. Format: properties/property_id Example:
  /// properties/123
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaSubpropertyEventFilter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaSubpropertyEventFilter> create(
    GoogleAnalyticsAdminV1alphaSubpropertyEventFilter request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/subpropertyEventFilters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaSubpropertyEventFilter.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a subproperty event filter.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the subproperty event filter to
  /// delete. Format:
  /// properties/property_id/subpropertyEventFilters/subproperty_event_filter
  /// Example: properties/123/subpropertyEventFilters/456
  /// Value must have pattern
  /// `^properties/\[^/\]+/subpropertyEventFilters/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lookup for a single subproperty Event Filter.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the subproperty event filter to
  /// lookup. Format:
  /// properties/property_id/subpropertyEventFilters/subproperty_event_filter
  /// Example: properties/123/subpropertyEventFilters/456
  /// Value must have pattern
  /// `^properties/\[^/\]+/subpropertyEventFilters/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaSubpropertyEventFilter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaSubpropertyEventFilter> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaSubpropertyEventFilter.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List all subproperty Event Filters on a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the ordinary property. Format:
  /// properties/property_id Example: properties/123
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of resources to return. The
  /// service may return fewer than this value, even if there are additional
  /// pages. If unspecified, at most 50 resources will be returned. The maximum
  /// value is 200; (higher values will be coerced to the maximum)
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListSubpropertyEventFilters` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListSubpropertyEventFilters` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse>
  list(
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
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/subpropertyEventFilters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a subproperty Event Filter.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Format:
  /// properties/{ordinary_property_id}/subpropertyEventFilters/{sub_property_event_filter}
  /// Example: properties/1234/subpropertyEventFilters/5678
  /// Value must have pattern
  /// `^properties/\[^/\]+/subpropertyEventFilters/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to update. Field names must be
  /// in snake case (for example, "field_to_update"). Omitted fields will not be
  /// updated. To replace the entire entity, use one path with the string "*" to
  /// match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaSubpropertyEventFilter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaSubpropertyEventFilter> patch(
    GoogleAnalyticsAdminV1alphaSubpropertyEventFilter request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaSubpropertyEventFilter.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PropertiesSubpropertySyncConfigsResource {
  final commons.ApiRequester _requester;

  PropertiesSubpropertySyncConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// Lookup for a single `SubpropertySyncConfig`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the SubpropertySyncConfig to lookup.
  /// Format:
  /// properties/{ordinary_property_id}/subpropertySyncConfigs/{subproperty_id}
  /// Example: properties/1234/subpropertySyncConfigs/5678
  /// Value must have pattern
  /// `^properties/\[^/\]+/subpropertySyncConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaSubpropertySyncConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaSubpropertySyncConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaSubpropertySyncConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List all `SubpropertySyncConfig` resources for a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the property. Format:
  /// properties/property_id Example: properties/123
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of resources to return. The
  /// service may return fewer than this value, even if there are additional
  /// pages. If unspecified, at most 50 resources will be returned. The maximum
  /// value is 200; (higher values will be coerced to the maximum)
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListSubpropertySyncConfig` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListSubpropertySyncConfig` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse>
  list(
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
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/subpropertySyncConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a `SubpropertySyncConfig`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Identifier. Format:
  /// properties/{ordinary_property_id}/subpropertySyncConfigs/{subproperty_id}
  /// Example: properties/1234/subpropertySyncConfigs/5678
  /// Value must have pattern
  /// `^properties/\[^/\]+/subpropertySyncConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to update. Field names must be
  /// in snake case (for example, "field_to_update"). Omitted fields will not be
  /// updated. To replace the entire entity, use one path with the string "*" to
  /// match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaSubpropertySyncConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaSubpropertySyncConfig> patch(
    GoogleAnalyticsAdminV1alphaSubpropertySyncConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1alphaSubpropertySyncConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// To express that the result needs to be between two numbers (inclusive).
class GoogleAnalyticsAdminV1alphaAccessBetweenFilter {
  /// Begins with this number.
  GoogleAnalyticsAdminV1alphaNumericValue? fromValue;

  /// Ends with this number.
  GoogleAnalyticsAdminV1alphaNumericValue? toValue;

  GoogleAnalyticsAdminV1alphaAccessBetweenFilter({
    this.fromValue,
    this.toValue,
  });

  GoogleAnalyticsAdminV1alphaAccessBetweenFilter.fromJson(core.Map json_)
    : this(
        fromValue: json_.containsKey('fromValue')
            ? GoogleAnalyticsAdminV1alphaNumericValue.fromJson(
                json_['fromValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        toValue: json_.containsKey('toValue')
            ? GoogleAnalyticsAdminV1alphaNumericValue.fromJson(
                json_['toValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fromValue = this.fromValue;
    final toValue = this.toValue;
    return {'fromValue': ?fromValue, 'toValue': ?toValue};
  }
}

/// A binding of a user to a set of roles.
class GoogleAnalyticsAdminV1alphaAccessBinding {
  /// Resource name of this binding.
  ///
  /// Format: accounts/{account}/accessBindings/{access_binding} or
  /// properties/{property}/accessBindings/{access_binding} Example:
  /// "accounts/100/accessBindings/200"
  ///
  /// Output only.
  core.String? name;

  /// A list of roles for to grant to the parent resource.
  ///
  /// Valid values: predefinedRoles/viewer predefinedRoles/analyst
  /// predefinedRoles/editor predefinedRoles/admin predefinedRoles/no-cost-data
  /// predefinedRoles/no-revenue-data For users, if an empty list of roles is
  /// set, this AccessBinding will be deleted.
  core.List<core.String>? roles;

  /// If set, the email address of the user to set roles for.
  ///
  /// Format: "someuser@gmail.com"
  core.String? user;

  GoogleAnalyticsAdminV1alphaAccessBinding({this.name, this.roles, this.user});

  GoogleAnalyticsAdminV1alphaAccessBinding.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        roles: (json_['roles'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        user: json_['user'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final roles = this.roles;
    final user = this.user;
    return {'name': ?name, 'roles': ?roles, 'user': ?user};
  }
}

/// A contiguous range of days: startDate, startDate + 1, ..., endDate.
typedef GoogleAnalyticsAdminV1alphaAccessDateRange = $AccessDateRange;

/// Dimensions are attributes of your data.
///
/// For example, the dimension `userEmail` indicates the email of the user that
/// accessed reporting data. Dimension values in report responses are strings.
typedef GoogleAnalyticsAdminV1alphaAccessDimension = $AccessDimension;

/// Describes a dimension column in the report.
///
/// Dimensions requested in a report produce column entries within rows and
/// DimensionHeaders. However, dimensions used exclusively within filters or
/// expressions do not produce columns in a report; correspondingly, those
/// dimensions do not produce headers.
typedef GoogleAnalyticsAdminV1alphaAccessDimensionHeader =
    $AccessDimensionHeader;

/// The value of a dimension.
typedef GoogleAnalyticsAdminV1alphaAccessDimensionValue = $AccessDimensionValue;

/// An expression to filter dimension or metric values.
class GoogleAnalyticsAdminV1alphaAccessFilter {
  /// A filter for two values.
  GoogleAnalyticsAdminV1alphaAccessBetweenFilter? betweenFilter;

  /// The dimension name or metric name.
  core.String? fieldName;

  /// A filter for in list values.
  GoogleAnalyticsAdminV1alphaAccessInListFilter? inListFilter;

  /// A filter for numeric or date values.
  GoogleAnalyticsAdminV1alphaAccessNumericFilter? numericFilter;

  /// Strings related filter.
  GoogleAnalyticsAdminV1alphaAccessStringFilter? stringFilter;

  GoogleAnalyticsAdminV1alphaAccessFilter({
    this.betweenFilter,
    this.fieldName,
    this.inListFilter,
    this.numericFilter,
    this.stringFilter,
  });

  GoogleAnalyticsAdminV1alphaAccessFilter.fromJson(core.Map json_)
    : this(
        betweenFilter: json_.containsKey('betweenFilter')
            ? GoogleAnalyticsAdminV1alphaAccessBetweenFilter.fromJson(
                json_['betweenFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        fieldName: json_['fieldName'] as core.String?,
        inListFilter: json_.containsKey('inListFilter')
            ? GoogleAnalyticsAdminV1alphaAccessInListFilter.fromJson(
                json_['inListFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        numericFilter: json_.containsKey('numericFilter')
            ? GoogleAnalyticsAdminV1alphaAccessNumericFilter.fromJson(
                json_['numericFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        stringFilter: json_.containsKey('stringFilter')
            ? GoogleAnalyticsAdminV1alphaAccessStringFilter.fromJson(
                json_['stringFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final betweenFilter = this.betweenFilter;
    final fieldName = this.fieldName;
    final inListFilter = this.inListFilter;
    final numericFilter = this.numericFilter;
    final stringFilter = this.stringFilter;
    return {
      'betweenFilter': ?betweenFilter,
      'fieldName': ?fieldName,
      'inListFilter': ?inListFilter,
      'numericFilter': ?numericFilter,
      'stringFilter': ?stringFilter,
    };
  }
}

/// Expresses dimension or metric filters.
///
/// The fields in the same expression need to be either all dimensions or all
/// metrics.
class GoogleAnalyticsAdminV1alphaAccessFilterExpression {
  /// A primitive filter.
  ///
  /// In the same FilterExpression, all of the filter's field names need to be
  /// either all dimensions or all metrics.
  GoogleAnalyticsAdminV1alphaAccessFilter? accessFilter;

  /// Each of the FilterExpressions in the and_group has an AND relationship.
  GoogleAnalyticsAdminV1alphaAccessFilterExpressionList? andGroup;

  /// The FilterExpression is NOT of not_expression.
  GoogleAnalyticsAdminV1alphaAccessFilterExpression? notExpression;

  /// Each of the FilterExpressions in the or_group has an OR relationship.
  GoogleAnalyticsAdminV1alphaAccessFilterExpressionList? orGroup;

  GoogleAnalyticsAdminV1alphaAccessFilterExpression({
    this.accessFilter,
    this.andGroup,
    this.notExpression,
    this.orGroup,
  });

  GoogleAnalyticsAdminV1alphaAccessFilterExpression.fromJson(core.Map json_)
    : this(
        accessFilter: json_.containsKey('accessFilter')
            ? GoogleAnalyticsAdminV1alphaAccessFilter.fromJson(
                json_['accessFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        andGroup: json_.containsKey('andGroup')
            ? GoogleAnalyticsAdminV1alphaAccessFilterExpressionList.fromJson(
                json_['andGroup'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        notExpression: json_.containsKey('notExpression')
            ? GoogleAnalyticsAdminV1alphaAccessFilterExpression.fromJson(
                json_['notExpression'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        orGroup: json_.containsKey('orGroup')
            ? GoogleAnalyticsAdminV1alphaAccessFilterExpressionList.fromJson(
                json_['orGroup'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessFilter = this.accessFilter;
    final andGroup = this.andGroup;
    final notExpression = this.notExpression;
    final orGroup = this.orGroup;
    return {
      'accessFilter': ?accessFilter,
      'andGroup': ?andGroup,
      'notExpression': ?notExpression,
      'orGroup': ?orGroup,
    };
  }
}

/// A list of filter expressions.
class GoogleAnalyticsAdminV1alphaAccessFilterExpressionList {
  /// A list of filter expressions.
  core.List<GoogleAnalyticsAdminV1alphaAccessFilterExpression>? expressions;

  GoogleAnalyticsAdminV1alphaAccessFilterExpressionList({this.expressions});

  GoogleAnalyticsAdminV1alphaAccessFilterExpressionList.fromJson(core.Map json_)
    : this(
        expressions: (json_['expressions'] as core.List?)
            ?.map(
              (value) =>
                  GoogleAnalyticsAdminV1alphaAccessFilterExpression.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final expressions = this.expressions;
    return {'expressions': ?expressions};
  }
}

/// The result needs to be in a list of string values.
typedef GoogleAnalyticsAdminV1alphaAccessInListFilter = $InListFilter;

/// The quantitative measurements of a report.
///
/// For example, the metric `accessCount` is the total number of data access
/// records.
typedef GoogleAnalyticsAdminV1alphaAccessMetric = $AccessMetric;

/// Describes a metric column in the report.
///
/// Visible metrics requested in a report produce column entries within rows and
/// MetricHeaders. However, metrics used exclusively within filters or
/// expressions do not produce columns in a report; correspondingly, those
/// metrics do not produce headers.
typedef GoogleAnalyticsAdminV1alphaAccessMetricHeader = $AccessMetricHeader;

/// The value of a metric.
typedef GoogleAnalyticsAdminV1alphaAccessMetricValue = $AccessMetricValue;

/// Filters for numeric or date values.
class GoogleAnalyticsAdminV1alphaAccessNumericFilter {
  /// The operation type for this filter.
  /// Possible string values are:
  /// - "OPERATION_UNSPECIFIED" : Unspecified.
  /// - "EQUAL" : Equal
  /// - "LESS_THAN" : Less than
  /// - "LESS_THAN_OR_EQUAL" : Less than or equal
  /// - "GREATER_THAN" : Greater than
  /// - "GREATER_THAN_OR_EQUAL" : Greater than or equal
  core.String? operation;

  /// A numeric value or a date value.
  GoogleAnalyticsAdminV1alphaNumericValue? value;

  GoogleAnalyticsAdminV1alphaAccessNumericFilter({this.operation, this.value});

  GoogleAnalyticsAdminV1alphaAccessNumericFilter.fromJson(core.Map json_)
    : this(
        operation: json_['operation'] as core.String?,
        value: json_.containsKey('value')
            ? GoogleAnalyticsAdminV1alphaNumericValue.fromJson(
                json_['value'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final operation = this.operation;
    final value = this.value;
    return {'operation': ?operation, 'value': ?value};
  }
}

/// Order bys define how rows will be sorted in the response.
///
/// For example, ordering rows by descending access count is one ordering, and
/// ordering rows by the country string is a different ordering.
class GoogleAnalyticsAdminV1alphaAccessOrderBy {
  /// If true, sorts by descending order.
  ///
  /// If false or unspecified, sorts in ascending order.
  core.bool? desc;

  /// Sorts results by a dimension's values.
  GoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy? dimension;

  /// Sorts results by a metric's values.
  GoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy? metric;

  GoogleAnalyticsAdminV1alphaAccessOrderBy({
    this.desc,
    this.dimension,
    this.metric,
  });

  GoogleAnalyticsAdminV1alphaAccessOrderBy.fromJson(core.Map json_)
    : this(
        desc: json_['desc'] as core.bool?,
        dimension: json_.containsKey('dimension')
            ? GoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy.fromJson(
                json_['dimension'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metric: json_.containsKey('metric')
            ? GoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy.fromJson(
                json_['metric'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final desc = this.desc;
    final dimension = this.dimension;
    final metric = this.metric;
    return {'desc': ?desc, 'dimension': ?dimension, 'metric': ?metric};
  }
}

/// Sorts by dimension values.
typedef GoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy =
    $DimensionOrderBy;

/// Sorts by metric values.
typedef GoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy = $MetricOrderBy;

/// Current state of all quotas for this Analytics property.
///
/// If any quota for a property is exhausted, all requests to that property will
/// return Resource Exhausted errors.
class GoogleAnalyticsAdminV1alphaAccessQuota {
  /// Properties can use up to 50 concurrent requests.
  GoogleAnalyticsAdminV1alphaAccessQuotaStatus? concurrentRequests;

  /// Properties and cloud project pairs can have up to 50 server errors per
  /// hour.
  GoogleAnalyticsAdminV1alphaAccessQuotaStatus? serverErrorsPerProjectPerHour;

  /// Properties can use 250,000 tokens per day.
  ///
  /// Most requests consume fewer than 10 tokens.
  GoogleAnalyticsAdminV1alphaAccessQuotaStatus? tokensPerDay;

  /// Properties can use 50,000 tokens per hour.
  ///
  /// An API request consumes a single number of tokens, and that number is
  /// deducted from all of the hourly, daily, and per project hourly quotas.
  GoogleAnalyticsAdminV1alphaAccessQuotaStatus? tokensPerHour;

  /// Properties can use up to 25% of their tokens per project per hour.
  ///
  /// This amounts to Analytics 360 Properties can use 12,500 tokens per project
  /// per hour. An API request consumes a single number of tokens, and that
  /// number is deducted from all of the hourly, daily, and per project hourly
  /// quotas.
  GoogleAnalyticsAdminV1alphaAccessQuotaStatus? tokensPerProjectPerHour;

  GoogleAnalyticsAdminV1alphaAccessQuota({
    this.concurrentRequests,
    this.serverErrorsPerProjectPerHour,
    this.tokensPerDay,
    this.tokensPerHour,
    this.tokensPerProjectPerHour,
  });

  GoogleAnalyticsAdminV1alphaAccessQuota.fromJson(core.Map json_)
    : this(
        concurrentRequests: json_.containsKey('concurrentRequests')
            ? GoogleAnalyticsAdminV1alphaAccessQuotaStatus.fromJson(
                json_['concurrentRequests']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        serverErrorsPerProjectPerHour:
            json_.containsKey('serverErrorsPerProjectPerHour')
            ? GoogleAnalyticsAdminV1alphaAccessQuotaStatus.fromJson(
                json_['serverErrorsPerProjectPerHour']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        tokensPerDay: json_.containsKey('tokensPerDay')
            ? GoogleAnalyticsAdminV1alphaAccessQuotaStatus.fromJson(
                json_['tokensPerDay'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tokensPerHour: json_.containsKey('tokensPerHour')
            ? GoogleAnalyticsAdminV1alphaAccessQuotaStatus.fromJson(
                json_['tokensPerHour'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tokensPerProjectPerHour: json_.containsKey('tokensPerProjectPerHour')
            ? GoogleAnalyticsAdminV1alphaAccessQuotaStatus.fromJson(
                json_['tokensPerProjectPerHour']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final concurrentRequests = this.concurrentRequests;
    final serverErrorsPerProjectPerHour = this.serverErrorsPerProjectPerHour;
    final tokensPerDay = this.tokensPerDay;
    final tokensPerHour = this.tokensPerHour;
    final tokensPerProjectPerHour = this.tokensPerProjectPerHour;
    return {
      'concurrentRequests': ?concurrentRequests,
      'serverErrorsPerProjectPerHour': ?serverErrorsPerProjectPerHour,
      'tokensPerDay': ?tokensPerDay,
      'tokensPerHour': ?tokensPerHour,
      'tokensPerProjectPerHour': ?tokensPerProjectPerHour,
    };
  }
}

/// Current state for a particular quota group.
typedef GoogleAnalyticsAdminV1alphaAccessQuotaStatus = $QuotaStatus;

/// Access report data for each row.
class GoogleAnalyticsAdminV1alphaAccessRow {
  /// List of dimension values.
  ///
  /// These values are in the same order as specified in the request.
  core.List<GoogleAnalyticsAdminV1alphaAccessDimensionValue>? dimensionValues;

  /// List of metric values.
  ///
  /// These values are in the same order as specified in the request.
  core.List<GoogleAnalyticsAdminV1alphaAccessMetricValue>? metricValues;

  GoogleAnalyticsAdminV1alphaAccessRow({
    this.dimensionValues,
    this.metricValues,
  });

  GoogleAnalyticsAdminV1alphaAccessRow.fromJson(core.Map json_)
    : this(
        dimensionValues: (json_['dimensionValues'] as core.List?)
            ?.map(
              (value) =>
                  GoogleAnalyticsAdminV1alphaAccessDimensionValue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        metricValues: (json_['metricValues'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaAccessMetricValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dimensionValues = this.dimensionValues;
    final metricValues = this.metricValues;
    return {'dimensionValues': ?dimensionValues, 'metricValues': ?metricValues};
  }
}

/// The filter for strings.
typedef GoogleAnalyticsAdminV1alphaAccessStringFilter = $StringFilter;

/// A resource message representing a Google Analytics account.
typedef GoogleAnalyticsAdminV1alphaAccount = $Account;

/// A virtual resource representing an overview of an account and all its child
/// Google Analytics properties.
class GoogleAnalyticsAdminV1alphaAccountSummary {
  /// Resource name of account referred to by this account summary Format:
  /// accounts/{account_id} Example: "accounts/1000"
  core.String? account;

  /// Display name for the account referred to in this account summary.
  core.String? displayName;

  /// Resource name for this account summary.
  ///
  /// Format: accountSummaries/{account_id} Example: "accountSummaries/1000"
  core.String? name;

  /// List of summaries for child accounts of this account.
  core.List<GoogleAnalyticsAdminV1alphaPropertySummary>? propertySummaries;

  GoogleAnalyticsAdminV1alphaAccountSummary({
    this.account,
    this.displayName,
    this.name,
    this.propertySummaries,
  });

  GoogleAnalyticsAdminV1alphaAccountSummary.fromJson(core.Map json_)
    : this(
        account: json_['account'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        propertySummaries: (json_['propertySummaries'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaPropertySummary.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final account = this.account;
    final displayName = this.displayName;
    final name = this.name;
    final propertySummaries = this.propertySummaries;
    return {
      'account': ?account,
      'displayName': ?displayName,
      'name': ?name,
      'propertySummaries': ?propertySummaries,
    };
  }
}

/// Request message for AcknowledgeUserDataCollection RPC.
typedef GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest =
    $AcknowledgeUserDataCollectionRequest;

/// Response message for AcknowledgeUserDataCollection RPC.
typedef GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse =
    $Empty;

/// A link between a Google Analytics property and an AdSense for Content ad
/// client.
class GoogleAnalyticsAdminV1alphaAdSenseLink {
  /// The AdSense ad client code that the Google Analytics property is linked
  /// to.
  ///
  /// Example format: "ca-pub-1234567890"
  ///
  /// Immutable.
  core.String? adClientCode;

  /// The resource name for this AdSense Link resource.
  ///
  /// Format: properties/{propertyId}/adSenseLinks/{linkId} Example:
  /// properties/1234/adSenseLinks/6789
  ///
  /// Output only.
  core.String? name;

  GoogleAnalyticsAdminV1alphaAdSenseLink({this.adClientCode, this.name});

  GoogleAnalyticsAdminV1alphaAdSenseLink.fromJson(core.Map json_)
    : this(
        adClientCode: json_['adClientCode'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adClientCode = this.adClientCode;
    final name = this.name;
    return {'adClientCode': ?adClientCode, 'name': ?name};
  }
}

/// Request message for ApproveDisplayVideo360AdvertiserLinkProposal RPC.
typedef GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest =
    $Empty;

/// Response message for ApproveDisplayVideo360AdvertiserLinkProposal RPC.
class GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse {
  /// The DisplayVideo360AdvertiserLink created as a result of approving the
  /// proposal.
  GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink?
  displayVideo360AdvertiserLink;

  GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse({
    this.displayVideo360AdvertiserLink,
  });

  GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse.fromJson(
    core.Map json_,
  ) : this(
        displayVideo360AdvertiserLink:
            json_.containsKey('displayVideo360AdvertiserLink')
            ? GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink.fromJson(
                json_['displayVideo360AdvertiserLink']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayVideo360AdvertiserLink = this.displayVideo360AdvertiserLink;
    return {'displayVideo360AdvertiserLink': ?displayVideo360AdvertiserLink};
  }
}

/// Request message for ArchiveAudience RPC.
typedef GoogleAnalyticsAdminV1alphaArchiveAudienceRequest = $Empty;

/// Request message for ArchiveCustomDimension RPC.
typedef GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest = $Empty;

/// Request message for ArchiveCustomMetric RPC.
typedef GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest = $Empty;

/// The attribution settings used for a given property.
///
/// This is a singleton resource.
class GoogleAnalyticsAdminV1alphaAttributionSettings {
  /// The lookback window configuration for acquisition conversion events.
  ///
  /// The default window size is 30 days.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ACQUISITION_CONVERSION_EVENT_LOOKBACK_WINDOW_UNSPECIFIED" : Lookback
  /// window size unspecified.
  /// - "ACQUISITION_CONVERSION_EVENT_LOOKBACK_WINDOW_7_DAYS" : 7-day lookback
  /// window.
  /// - "ACQUISITION_CONVERSION_EVENT_LOOKBACK_WINDOW_30_DAYS" : 30-day lookback
  /// window.
  core.String? acquisitionConversionEventLookbackWindow;

  /// The Conversion Export Scope for data exported to linked Ads Accounts.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ADS_WEB_CONVERSION_DATA_EXPORT_SCOPE_UNSPECIFIED" : Default value. This
  /// value is unused.
  /// - "NOT_SELECTED_YET" : No data export scope selected yet. Export scope can
  /// never be changed back to this value.
  /// - "PAID_AND_ORGANIC_CHANNELS" : Paid and organic channels are eligible to
  /// receive conversion credit, but only credit assigned to Google Ads channels
  /// will appear in your Ads accounts. To learn more, see
  /// [Paid and Organic channels](https://support.google.com/analytics/answer/10632359).
  /// - "GOOGLE_PAID_CHANNELS" : Only Google Ads paid channels are eligible to
  /// receive conversion credit. To learn more, see
  /// [Google Paid channels](https://support.google.com/analytics/answer/10632359).
  core.String? adsWebConversionDataExportScope;

  /// Resource name of this attribution settings resource.
  ///
  /// Format: properties/{property_id}/attributionSettings Example:
  /// "properties/1000/attributionSettings"
  ///
  /// Output only.
  core.String? name;

  /// The lookback window for all other, non-acquisition conversion events.
  ///
  /// The default window size is 90 days.
  ///
  /// Required.
  /// Possible string values are:
  /// - "OTHER_CONVERSION_EVENT_LOOKBACK_WINDOW_UNSPECIFIED" : Lookback window
  /// size unspecified.
  /// - "OTHER_CONVERSION_EVENT_LOOKBACK_WINDOW_30_DAYS" : 30-day lookback
  /// window.
  /// - "OTHER_CONVERSION_EVENT_LOOKBACK_WINDOW_60_DAYS" : 60-day lookback
  /// window.
  /// - "OTHER_CONVERSION_EVENT_LOOKBACK_WINDOW_90_DAYS" : 90-day lookback
  /// window.
  core.String? otherConversionEventLookbackWindow;

  /// The reporting attribution model used to calculate conversion credit in
  /// this property's reports.
  ///
  /// Changing the attribution model will apply to both historical and future
  /// data. These changes will be reflected in reports with conversion and
  /// revenue data. User and session data will be unaffected.
  ///
  /// Required.
  /// Possible string values are:
  /// - "REPORTING_ATTRIBUTION_MODEL_UNSPECIFIED" : Reporting attribution model
  /// unspecified.
  /// - "PAID_AND_ORGANIC_CHANNELS_DATA_DRIVEN" : Data-driven attribution
  /// distributes credit for the conversion based on data for each conversion
  /// event. Each Data-driven model is specific to each advertiser and each
  /// conversion event. Previously CROSS_CHANNEL_DATA_DRIVEN
  /// - "PAID_AND_ORGANIC_CHANNELS_LAST_CLICK" : Ignores direct traffic and
  /// attributes 100% of the conversion value to the last channel that the
  /// customer clicked through (or engaged view through for YouTube) before
  /// converting. Previously CROSS_CHANNEL_LAST_CLICK
  /// - "GOOGLE_PAID_CHANNELS_LAST_CLICK" : Attributes 100% of the conversion
  /// value to the last Google Paid channel that the customer clicked through
  /// before converting. Previously ADS_PREFERRED_LAST_CLICK
  core.String? reportingAttributionModel;

  GoogleAnalyticsAdminV1alphaAttributionSettings({
    this.acquisitionConversionEventLookbackWindow,
    this.adsWebConversionDataExportScope,
    this.name,
    this.otherConversionEventLookbackWindow,
    this.reportingAttributionModel,
  });

  GoogleAnalyticsAdminV1alphaAttributionSettings.fromJson(core.Map json_)
    : this(
        acquisitionConversionEventLookbackWindow:
            json_['acquisitionConversionEventLookbackWindow'] as core.String?,
        adsWebConversionDataExportScope:
            json_['adsWebConversionDataExportScope'] as core.String?,
        name: json_['name'] as core.String?,
        otherConversionEventLookbackWindow:
            json_['otherConversionEventLookbackWindow'] as core.String?,
        reportingAttributionModel:
            json_['reportingAttributionModel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final acquisitionConversionEventLookbackWindow =
        this.acquisitionConversionEventLookbackWindow;
    final adsWebConversionDataExportScope =
        this.adsWebConversionDataExportScope;
    final name = this.name;
    final otherConversionEventLookbackWindow =
        this.otherConversionEventLookbackWindow;
    final reportingAttributionModel = this.reportingAttributionModel;
    return {
      'acquisitionConversionEventLookbackWindow':
          ?acquisitionConversionEventLookbackWindow,
      'adsWebConversionDataExportScope': ?adsWebConversionDataExportScope,
      'name': ?name,
      'otherConversionEventLookbackWindow': ?otherConversionEventLookbackWindow,
      'reportingAttributionModel': ?reportingAttributionModel,
    };
  }
}

/// A resource message representing an Audience.
class GoogleAnalyticsAdminV1alphaAudience {
  /// It is automatically set by GA to false if this is an NPA Audience and is
  /// excluded from ads personalization.
  ///
  /// Output only.
  core.bool? adsPersonalizationEnabled;

  /// Time when the Audience was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The description of the Audience.
  ///
  /// Required.
  core.String? description;

  /// The display name of the Audience.
  ///
  /// Required.
  core.String? displayName;

  /// Specifies an event to log when a user joins the Audience.
  ///
  /// If not set, no event is logged when a user joins the Audience.
  ///
  /// Optional.
  GoogleAnalyticsAdminV1alphaAudienceEventTrigger? eventTrigger;

  /// Specifies how long an exclusion lasts for users that meet the exclusion
  /// filter.
  ///
  /// It is applied to all EXCLUDE filter clauses and is ignored when there is
  /// no EXCLUDE filter clause in the Audience.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "AUDIENCE_EXCLUSION_DURATION_MODE_UNSPECIFIED" : Not specified.
  /// - "EXCLUDE_TEMPORARILY" : Exclude users from the Audience during periods
  /// when they meet the filter clause.
  /// - "EXCLUDE_PERMANENTLY" : Exclude users from the Audience if they've ever
  /// met the filter clause.
  core.String? exclusionDurationMode;

  /// Unordered list.
  ///
  /// Filter clauses that define the Audience. All clauses will be AND’ed
  /// together.
  ///
  /// Required. Immutable.
  core.List<GoogleAnalyticsAdminV1alphaAudienceFilterClause>? filterClauses;

  /// The duration a user should stay in an Audience.
  ///
  /// It cannot be set to more than 540 days.
  ///
  /// Required. Immutable.
  core.int? membershipDurationDays;

  /// The resource name for this Audience resource.
  ///
  /// Format: properties/{propertyId}/audiences/{audienceId}
  ///
  /// Output only.
  core.String? name;

  GoogleAnalyticsAdminV1alphaAudience({
    this.adsPersonalizationEnabled,
    this.createTime,
    this.description,
    this.displayName,
    this.eventTrigger,
    this.exclusionDurationMode,
    this.filterClauses,
    this.membershipDurationDays,
    this.name,
  });

  GoogleAnalyticsAdminV1alphaAudience.fromJson(core.Map json_)
    : this(
        adsPersonalizationEnabled:
            json_['adsPersonalizationEnabled'] as core.bool?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        eventTrigger: json_.containsKey('eventTrigger')
            ? GoogleAnalyticsAdminV1alphaAudienceEventTrigger.fromJson(
                json_['eventTrigger'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        exclusionDurationMode: json_['exclusionDurationMode'] as core.String?,
        filterClauses: (json_['filterClauses'] as core.List?)
            ?.map(
              (value) =>
                  GoogleAnalyticsAdminV1alphaAudienceFilterClause.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        membershipDurationDays: json_['membershipDurationDays'] as core.int?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adsPersonalizationEnabled = this.adsPersonalizationEnabled;
    final createTime = this.createTime;
    final description = this.description;
    final displayName = this.displayName;
    final eventTrigger = this.eventTrigger;
    final exclusionDurationMode = this.exclusionDurationMode;
    final filterClauses = this.filterClauses;
    final membershipDurationDays = this.membershipDurationDays;
    final name = this.name;
    return {
      'adsPersonalizationEnabled': ?adsPersonalizationEnabled,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'eventTrigger': ?eventTrigger,
      'exclusionDurationMode': ?exclusionDurationMode,
      'filterClauses': ?filterClauses,
      'membershipDurationDays': ?membershipDurationDays,
      'name': ?name,
    };
  }
}

/// A specific filter for a single dimension or metric.
class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter {
  /// Indicates whether this filter needs dynamic evaluation or not.
  ///
  /// If set to true, users join the Audience if they ever met the condition
  /// (static evaluation). If unset or set to false, user evaluation for an
  /// Audience is dynamic; users are added to an Audience when they meet the
  /// conditions and then removed when they no longer meet them. This can only
  /// be set when Audience scope is ACROSS_ALL_SESSIONS.
  ///
  /// Optional.
  core.bool? atAnyPointInTime;

  /// A filter for numeric or date values between certain values on a dimension
  /// or metric.
  GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter?
  betweenFilter;

  /// The dimension name or metric name to filter.
  ///
  /// If the field name refers to a custom dimension or metric, a scope prefix
  /// will be added to the front of the custom dimensions or metric name. For
  /// more on scope prefixes or custom dimensions/metrics, reference the
  /// [Google Analytics Data API documentation](https://developers.google.com/analytics/devguides/reporting/data/v1/api-schema#custom_dimensions).
  ///
  /// Required. Immutable.
  core.String? fieldName;

  /// If set, specifies the time window for which to evaluate data in number of
  /// days.
  ///
  /// If not set, then audience data is evaluated against lifetime data (For
  /// example, infinite time window). For example, if set to 1 day, only the
  /// current day's data is evaluated. The reference point is the current day
  /// when at_any_point_in_time is unset or false. It can only be set when
  /// Audience scope is ACROSS_ALL_SESSIONS and cannot be greater than 60 days.
  ///
  /// Optional.
  core.int? inAnyNDayPeriod;

  /// A filter for a string dimension that matches a particular list of options.
  GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter?
  inListFilter;

  /// A filter for numeric or date values on a dimension or metric.
  GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter?
  numericFilter;

  /// A filter for a string-type dimension that matches a particular pattern.
  GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter?
  stringFilter;

  GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter({
    this.atAnyPointInTime,
    this.betweenFilter,
    this.fieldName,
    this.inAnyNDayPeriod,
    this.inListFilter,
    this.numericFilter,
    this.stringFilter,
  });

  GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter.fromJson(
    core.Map json_,
  ) : this(
        atAnyPointInTime: json_['atAnyPointInTime'] as core.bool?,
        betweenFilter: json_.containsKey('betweenFilter')
            ? GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter.fromJson(
                json_['betweenFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        fieldName: json_['fieldName'] as core.String?,
        inAnyNDayPeriod: json_['inAnyNDayPeriod'] as core.int?,
        inListFilter: json_.containsKey('inListFilter')
            ? GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter.fromJson(
                json_['inListFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        numericFilter: json_.containsKey('numericFilter')
            ? GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter.fromJson(
                json_['numericFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        stringFilter: json_.containsKey('stringFilter')
            ? GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter.fromJson(
                json_['stringFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final atAnyPointInTime = this.atAnyPointInTime;
    final betweenFilter = this.betweenFilter;
    final fieldName = this.fieldName;
    final inAnyNDayPeriod = this.inAnyNDayPeriod;
    final inListFilter = this.inListFilter;
    final numericFilter = this.numericFilter;
    final stringFilter = this.stringFilter;
    return {
      'atAnyPointInTime': ?atAnyPointInTime,
      'betweenFilter': ?betweenFilter,
      'fieldName': ?fieldName,
      'inAnyNDayPeriod': ?inAnyNDayPeriod,
      'inListFilter': ?inListFilter,
      'numericFilter': ?numericFilter,
      'stringFilter': ?stringFilter,
    };
  }
}

/// A filter for numeric or date values between certain values on a dimension or
/// metric.
class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter {
  /// Begins with this number, inclusive.
  ///
  /// Required.
  GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue?
  fromValue;

  /// Ends with this number, inclusive.
  ///
  /// Required.
  GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue?
  toValue;

  GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter({
    this.fromValue,
    this.toValue,
  });

  GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterBetweenFilter.fromJson(
    core.Map json_,
  ) : this(
        fromValue: json_.containsKey('fromValue')
            ? GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue.fromJson(
                json_['fromValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        toValue: json_.containsKey('toValue')
            ? GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue.fromJson(
                json_['toValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fromValue = this.fromValue;
    final toValue = this.toValue;
    return {'fromValue': ?fromValue, 'toValue': ?toValue};
  }
}

/// A filter for a string dimension that matches a particular list of options.
class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter {
  /// If true, the match is case-sensitive.
  ///
  /// If false, the match is case-insensitive.
  ///
  /// Optional.
  core.bool? caseSensitive;

  /// The list of possible string values to match against.
  ///
  /// Must be non-empty.
  ///
  /// Required.
  core.List<core.String>? values;

  GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter({
    this.caseSensitive,
    this.values,
  });

  GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterInListFilter.fromJson(
    core.Map json_,
  ) : this(
        caseSensitive: json_['caseSensitive'] as core.bool?,
        values: (json_['values'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final caseSensitive = this.caseSensitive;
    final values = this.values;
    return {'caseSensitive': ?caseSensitive, 'values': ?values};
  }
}

/// A filter for numeric or date values on a dimension or metric.
class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter {
  /// The operation applied to a numeric filter.
  ///
  /// Required.
  /// Possible string values are:
  /// - "OPERATION_UNSPECIFIED" : Unspecified.
  /// - "EQUAL" : Equal.
  /// - "LESS_THAN" : Less than.
  /// - "GREATER_THAN" : Greater than.
  core.String? operation;

  /// The numeric or date value to match against.
  ///
  /// Required.
  GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue? value;

  GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter({
    this.operation,
    this.value,
  });

  GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericFilter.fromJson(
    core.Map json_,
  ) : this(
        operation: json_['operation'] as core.String?,
        value: json_.containsKey('value')
            ? GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue.fromJson(
                json_['value'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final operation = this.operation;
    final value = this.value;
    return {'operation': ?operation, 'value': ?value};
  }
}

/// To represent a number.
class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue {
  /// Double value.
  core.double? doubleValue;

  /// Integer value.
  core.String? int64Value;

  GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue({
    this.doubleValue,
    this.int64Value,
  });

  GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterNumericValue.fromJson(
    core.Map json_,
  ) : this(
        doubleValue: (json_['doubleValue'] as core.num?)?.toDouble(),
        int64Value: json_['int64Value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final doubleValue = this.doubleValue;
    final int64Value = this.int64Value;
    return {'doubleValue': ?doubleValue, 'int64Value': ?int64Value};
  }
}

/// A filter for a string-type dimension that matches a particular pattern.
class GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter {
  /// If true, the match is case-sensitive.
  ///
  /// If false, the match is case-insensitive.
  ///
  /// Optional.
  core.bool? caseSensitive;

  /// The match type for the string filter.
  ///
  /// Required.
  /// Possible string values are:
  /// - "MATCH_TYPE_UNSPECIFIED" : Unspecified
  /// - "EXACT" : Exact match of the string value.
  /// - "BEGINS_WITH" : Begins with the string value.
  /// - "ENDS_WITH" : Ends with the string value.
  /// - "CONTAINS" : Contains the string value.
  /// - "FULL_REGEXP" : Full regular expression matches with the string value.
  core.String? matchType;

  /// The string value to be matched against.
  ///
  /// Required.
  core.String? value;

  GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter({
    this.caseSensitive,
    this.matchType,
    this.value,
  });

  GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter.fromJson(
    core.Map json_,
  ) : this(
        caseSensitive: json_['caseSensitive'] as core.bool?,
        matchType: json_['matchType'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final caseSensitive = this.caseSensitive;
    final matchType = this.matchType;
    final value = this.value;
    return {
      'caseSensitive': ?caseSensitive,
      'matchType': ?matchType,
      'value': ?value,
    };
  }
}

/// A filter that matches events of a single event name.
///
/// If an event parameter is specified, only the subset of events that match
/// both the single event name and the parameter filter expressions match this
/// event filter.
class GoogleAnalyticsAdminV1alphaAudienceEventFilter {
  /// The name of the event to match against.
  ///
  /// Required. Immutable.
  core.String? eventName;

  /// If specified, this filter matches events that match both the single event
  /// name and the parameter filter expressions.
  ///
  /// AudienceEventFilter inside the parameter filter expression cannot be set
  /// (For example, nested event filters are not supported). This should be a
  /// single and_group of dimension_or_metric_filter or not_expression; ANDs of
  /// ORs are not supported. Also, if it includes a filter for "eventCount",
  /// only that one will be considered; all the other filters will be ignored.
  ///
  /// Optional.
  GoogleAnalyticsAdminV1alphaAudienceFilterExpression?
  eventParameterFilterExpression;

  GoogleAnalyticsAdminV1alphaAudienceEventFilter({
    this.eventName,
    this.eventParameterFilterExpression,
  });

  GoogleAnalyticsAdminV1alphaAudienceEventFilter.fromJson(core.Map json_)
    : this(
        eventName: json_['eventName'] as core.String?,
        eventParameterFilterExpression:
            json_.containsKey('eventParameterFilterExpression')
            ? GoogleAnalyticsAdminV1alphaAudienceFilterExpression.fromJson(
                json_['eventParameterFilterExpression']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eventName = this.eventName;
    final eventParameterFilterExpression = this.eventParameterFilterExpression;
    return {
      'eventName': ?eventName,
      'eventParameterFilterExpression': ?eventParameterFilterExpression,
    };
  }
}

/// Specifies an event to log when a user joins the Audience.
class GoogleAnalyticsAdminV1alphaAudienceEventTrigger {
  /// The event name that will be logged.
  ///
  /// Required.
  core.String? eventName;

  /// When to log the event.
  ///
  /// Required.
  /// Possible string values are:
  /// - "LOG_CONDITION_UNSPECIFIED" : Log condition is not specified.
  /// - "AUDIENCE_JOINED" : The event should be logged only when a user is
  /// joined.
  /// - "AUDIENCE_MEMBERSHIP_RENEWED" : The event should be logged whenever the
  /// Audience condition is met, even if the user is already a member of the
  /// Audience.
  core.String? logCondition;

  GoogleAnalyticsAdminV1alphaAudienceEventTrigger({
    this.eventName,
    this.logCondition,
  });

  GoogleAnalyticsAdminV1alphaAudienceEventTrigger.fromJson(core.Map json_)
    : this(
        eventName: json_['eventName'] as core.String?,
        logCondition: json_['logCondition'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eventName = this.eventName;
    final logCondition = this.logCondition;
    return {'eventName': ?eventName, 'logCondition': ?logCondition};
  }
}

/// A clause for defining either a simple or sequence filter.
///
/// A filter can be inclusive (For example, users satisfying the filter clause
/// are included in the Audience) or exclusive (For example, users satisfying
/// the filter clause are excluded from the Audience).
class GoogleAnalyticsAdminV1alphaAudienceFilterClause {
  /// Specifies whether this is an include or exclude filter clause.
  ///
  /// Required.
  /// Possible string values are:
  /// - "AUDIENCE_CLAUSE_TYPE_UNSPECIFIED" : Unspecified clause type.
  /// - "INCLUDE" : Users will be included in the Audience if the filter clause
  /// is met.
  /// - "EXCLUDE" : Users will be excluded from the Audience if the filter
  /// clause is met.
  core.String? clauseType;

  /// Filters that must occur in a specific order for the user to be a member of
  /// the Audience.
  GoogleAnalyticsAdminV1alphaAudienceSequenceFilter? sequenceFilter;

  /// A simple filter that a user must satisfy to be a member of the Audience.
  GoogleAnalyticsAdminV1alphaAudienceSimpleFilter? simpleFilter;

  GoogleAnalyticsAdminV1alphaAudienceFilterClause({
    this.clauseType,
    this.sequenceFilter,
    this.simpleFilter,
  });

  GoogleAnalyticsAdminV1alphaAudienceFilterClause.fromJson(core.Map json_)
    : this(
        clauseType: json_['clauseType'] as core.String?,
        sequenceFilter: json_.containsKey('sequenceFilter')
            ? GoogleAnalyticsAdminV1alphaAudienceSequenceFilter.fromJson(
                json_['sequenceFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        simpleFilter: json_.containsKey('simpleFilter')
            ? GoogleAnalyticsAdminV1alphaAudienceSimpleFilter.fromJson(
                json_['simpleFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clauseType = this.clauseType;
    final sequenceFilter = this.sequenceFilter;
    final simpleFilter = this.simpleFilter;
    return {
      'clauseType': ?clauseType,
      'sequenceFilter': ?sequenceFilter,
      'simpleFilter': ?simpleFilter,
    };
  }
}

/// A logical expression of Audience dimension, metric, or event filters.
class GoogleAnalyticsAdminV1alphaAudienceFilterExpression {
  /// A list of expressions to be AND’ed together.
  ///
  /// It can only contain AudienceFilterExpressions with or_group. This must be
  /// set for the top level AudienceFilterExpression.
  GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList? andGroup;

  /// A filter on a single dimension or metric.
  ///
  /// This cannot be set on the top level AudienceFilterExpression.
  GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter?
  dimensionOrMetricFilter;

  /// Creates a filter that matches a specific event.
  ///
  /// This cannot be set on the top level AudienceFilterExpression.
  GoogleAnalyticsAdminV1alphaAudienceEventFilter? eventFilter;

  /// A filter expression to be NOT'ed (For example, inverted, complemented).
  ///
  /// It can only include a dimension_or_metric_filter. This cannot be set on
  /// the top level AudienceFilterExpression.
  GoogleAnalyticsAdminV1alphaAudienceFilterExpression? notExpression;

  /// A list of expressions to OR’ed together.
  ///
  /// It cannot contain AudienceFilterExpressions with and_group or or_group.
  GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList? orGroup;

  GoogleAnalyticsAdminV1alphaAudienceFilterExpression({
    this.andGroup,
    this.dimensionOrMetricFilter,
    this.eventFilter,
    this.notExpression,
    this.orGroup,
  });

  GoogleAnalyticsAdminV1alphaAudienceFilterExpression.fromJson(core.Map json_)
    : this(
        andGroup: json_.containsKey('andGroup')
            ? GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList.fromJson(
                json_['andGroup'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dimensionOrMetricFilter: json_.containsKey('dimensionOrMetricFilter')
            ? GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilter.fromJson(
                json_['dimensionOrMetricFilter']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        eventFilter: json_.containsKey('eventFilter')
            ? GoogleAnalyticsAdminV1alphaAudienceEventFilter.fromJson(
                json_['eventFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        notExpression: json_.containsKey('notExpression')
            ? GoogleAnalyticsAdminV1alphaAudienceFilterExpression.fromJson(
                json_['notExpression'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        orGroup: json_.containsKey('orGroup')
            ? GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList.fromJson(
                json_['orGroup'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final andGroup = this.andGroup;
    final dimensionOrMetricFilter = this.dimensionOrMetricFilter;
    final eventFilter = this.eventFilter;
    final notExpression = this.notExpression;
    final orGroup = this.orGroup;
    return {
      'andGroup': ?andGroup,
      'dimensionOrMetricFilter': ?dimensionOrMetricFilter,
      'eventFilter': ?eventFilter,
      'notExpression': ?notExpression,
      'orGroup': ?orGroup,
    };
  }
}

/// A list of Audience filter expressions.
class GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList {
  /// A list of Audience filter expressions.
  core.List<GoogleAnalyticsAdminV1alphaAudienceFilterExpression>?
  filterExpressions;

  GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList({
    this.filterExpressions,
  });

  GoogleAnalyticsAdminV1alphaAudienceFilterExpressionList.fromJson(
    core.Map json_,
  ) : this(
        filterExpressions: (json_['filterExpressions'] as core.List?)
            ?.map(
              (value) =>
                  GoogleAnalyticsAdminV1alphaAudienceFilterExpression.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final filterExpressions = this.filterExpressions;
    return {'filterExpressions': ?filterExpressions};
  }
}

/// Defines filters that must occur in a specific order for the user to be a
/// member of the Audience.
class GoogleAnalyticsAdminV1alphaAudienceSequenceFilter {
  /// Specifies the scope for this filter.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "AUDIENCE_FILTER_SCOPE_UNSPECIFIED" : Scope is not specified.
  /// - "AUDIENCE_FILTER_SCOPE_WITHIN_SAME_EVENT" : User joins the Audience if
  /// the filter condition is met within one event.
  /// - "AUDIENCE_FILTER_SCOPE_WITHIN_SAME_SESSION" : User joins the Audience if
  /// the filter condition is met within one session.
  /// - "AUDIENCE_FILTER_SCOPE_ACROSS_ALL_SESSIONS" : User joins the Audience if
  /// the filter condition is met by any event across any session.
  core.String? scope;

  /// Defines the time period in which the whole sequence must occur.
  ///
  /// Optional.
  core.String? sequenceMaximumDuration;

  /// An ordered sequence of steps.
  ///
  /// A user must complete each step in order to join the sequence filter.
  ///
  /// Required.
  core.List<
    GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep
  >?
  sequenceSteps;

  GoogleAnalyticsAdminV1alphaAudienceSequenceFilter({
    this.scope,
    this.sequenceMaximumDuration,
    this.sequenceSteps,
  });

  GoogleAnalyticsAdminV1alphaAudienceSequenceFilter.fromJson(core.Map json_)
    : this(
        scope: json_['scope'] as core.String?,
        sequenceMaximumDuration:
            json_['sequenceMaximumDuration'] as core.String?,
        sequenceSteps: (json_['sequenceSteps'] as core.List?)
            ?.map(
              (value) =>
                  GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final scope = this.scope;
    final sequenceMaximumDuration = this.sequenceMaximumDuration;
    final sequenceSteps = this.sequenceSteps;
    return {
      'scope': ?scope,
      'sequenceMaximumDuration': ?sequenceMaximumDuration,
      'sequenceSteps': ?sequenceSteps,
    };
  }
}

/// A condition that must occur in the specified step order for this user to
/// match the sequence.
class GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep {
  /// When set, this step must be satisfied within the constraint_duration of
  /// the previous step (For example, t\[i\] - t\[i-1\] \<=
  /// constraint_duration).
  ///
  /// If not set, there is no duration requirement (the duration is effectively
  /// unlimited). It is ignored for the first step.
  ///
  /// Optional.
  core.String? constraintDuration;

  /// A logical expression of Audience dimension, metric, or event filters in
  /// each step.
  ///
  /// Required. Immutable.
  GoogleAnalyticsAdminV1alphaAudienceFilterExpression? filterExpression;

  /// If true, the event satisfying this step must be the very next event after
  /// the event satisfying the last step.
  ///
  /// If unset or false, this step indirectly follows the prior step; for
  /// example, there may be events between the prior step and this step. It is
  /// ignored for the first step.
  ///
  /// Optional.
  core.bool? immediatelyFollows;

  /// Specifies the scope for this step.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "AUDIENCE_FILTER_SCOPE_UNSPECIFIED" : Scope is not specified.
  /// - "AUDIENCE_FILTER_SCOPE_WITHIN_SAME_EVENT" : User joins the Audience if
  /// the filter condition is met within one event.
  /// - "AUDIENCE_FILTER_SCOPE_WITHIN_SAME_SESSION" : User joins the Audience if
  /// the filter condition is met within one session.
  /// - "AUDIENCE_FILTER_SCOPE_ACROSS_ALL_SESSIONS" : User joins the Audience if
  /// the filter condition is met by any event across any session.
  core.String? scope;

  GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep({
    this.constraintDuration,
    this.filterExpression,
    this.immediatelyFollows,
    this.scope,
  });

  GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep.fromJson(
    core.Map json_,
  ) : this(
        constraintDuration: json_['constraintDuration'] as core.String?,
        filterExpression: json_.containsKey('filterExpression')
            ? GoogleAnalyticsAdminV1alphaAudienceFilterExpression.fromJson(
                json_['filterExpression']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        immediatelyFollows: json_['immediatelyFollows'] as core.bool?,
        scope: json_['scope'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final constraintDuration = this.constraintDuration;
    final filterExpression = this.filterExpression;
    final immediatelyFollows = this.immediatelyFollows;
    final scope = this.scope;
    return {
      'constraintDuration': ?constraintDuration,
      'filterExpression': ?filterExpression,
      'immediatelyFollows': ?immediatelyFollows,
      'scope': ?scope,
    };
  }
}

/// Defines a simple filter that a user must satisfy to be a member of the
/// Audience.
class GoogleAnalyticsAdminV1alphaAudienceSimpleFilter {
  /// A logical expression of Audience dimension, metric, or event filters.
  ///
  /// Required. Immutable.
  GoogleAnalyticsAdminV1alphaAudienceFilterExpression? filterExpression;

  /// Specifies the scope for this filter.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "AUDIENCE_FILTER_SCOPE_UNSPECIFIED" : Scope is not specified.
  /// - "AUDIENCE_FILTER_SCOPE_WITHIN_SAME_EVENT" : User joins the Audience if
  /// the filter condition is met within one event.
  /// - "AUDIENCE_FILTER_SCOPE_WITHIN_SAME_SESSION" : User joins the Audience if
  /// the filter condition is met within one session.
  /// - "AUDIENCE_FILTER_SCOPE_ACROSS_ALL_SESSIONS" : User joins the Audience if
  /// the filter condition is met by any event across any session.
  core.String? scope;

  GoogleAnalyticsAdminV1alphaAudienceSimpleFilter({
    this.filterExpression,
    this.scope,
  });

  GoogleAnalyticsAdminV1alphaAudienceSimpleFilter.fromJson(core.Map json_)
    : this(
        filterExpression: json_.containsKey('filterExpression')
            ? GoogleAnalyticsAdminV1alphaAudienceFilterExpression.fromJson(
                json_['filterExpression']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        scope: json_['scope'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final filterExpression = this.filterExpression;
    final scope = this.scope;
    return {'filterExpression': ?filterExpression, 'scope': ?scope};
  }
}

/// Request message for BatchCreateAccessBindings RPC.
class GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest {
  /// The requests specifying the access bindings to create.
  ///
  /// A maximum of 1000 access bindings can be created in a batch.
  ///
  /// Required.
  core.List<GoogleAnalyticsAdminV1alphaCreateAccessBindingRequest>? requests;

  GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest({this.requests});

  GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest.fromJson(
    core.Map json_,
  ) : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) =>
                  GoogleAnalyticsAdminV1alphaCreateAccessBindingRequest.fromJson(
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

/// Response message for BatchCreateAccessBindings RPC.
class GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse {
  /// The access bindings created.
  core.List<GoogleAnalyticsAdminV1alphaAccessBinding>? accessBindings;

  GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse({
    this.accessBindings,
  });

  GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse.fromJson(
    core.Map json_,
  ) : this(
        accessBindings: (json_['accessBindings'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaAccessBinding.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessBindings = this.accessBindings;
    return {'accessBindings': ?accessBindings};
  }
}

/// Request message for BatchDeleteAccessBindings RPC.
class GoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest {
  /// The requests specifying the access bindings to delete.
  ///
  /// A maximum of 1000 access bindings can be deleted in a batch.
  ///
  /// Required.
  core.List<GoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest>? requests;

  GoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest({this.requests});

  GoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest.fromJson(
    core.Map json_,
  ) : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) =>
                  GoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest.fromJson(
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

/// Response message for BatchGetAccessBindings RPC.
class GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse {
  /// The requested access bindings.
  core.List<GoogleAnalyticsAdminV1alphaAccessBinding>? accessBindings;

  GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse({
    this.accessBindings,
  });

  GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse.fromJson(
    core.Map json_,
  ) : this(
        accessBindings: (json_['accessBindings'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaAccessBinding.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessBindings = this.accessBindings;
    return {'accessBindings': ?accessBindings};
  }
}

/// Request message for BatchUpdateAccessBindings RPC.
class GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest {
  /// The requests specifying the access bindings to update.
  ///
  /// A maximum of 1000 access bindings can be updated in a batch.
  ///
  /// Required.
  core.List<GoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest>? requests;

  GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest({this.requests});

  GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest.fromJson(
    core.Map json_,
  ) : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) =>
                  GoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest.fromJson(
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

/// Response message for BatchUpdateAccessBindings RPC.
class GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse {
  /// The access bindings updated.
  core.List<GoogleAnalyticsAdminV1alphaAccessBinding>? accessBindings;

  GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse({
    this.accessBindings,
  });

  GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse.fromJson(
    core.Map json_,
  ) : this(
        accessBindings: (json_['accessBindings'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaAccessBinding.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessBindings = this.accessBindings;
    return {'accessBindings': ?accessBindings};
  }
}

/// A link between a Google Analytics property and BigQuery project.
class GoogleAnalyticsAdminV1alphaBigQueryLink {
  /// Time when the link was created.
  ///
  /// Output only.
  core.String? createTime;

  /// If set true, enables daily data export to the linked Google Cloud project.
  core.bool? dailyExportEnabled;

  /// The geographic location where the created BigQuery dataset should reside.
  ///
  /// See https://cloud.google.com/bigquery/docs/locations for supported
  /// locations.
  ///
  /// Required. Immutable.
  core.String? datasetLocation;

  /// The list of event names that will be excluded from exports.
  core.List<core.String>? excludedEvents;

  /// The list of streams under the parent property for which data will be
  /// exported.
  ///
  /// Format: properties/{property_id}/dataStreams/{stream_id} Example:
  /// \['properties/1000/dataStreams/2000'\]
  core.List<core.String>? exportStreams;

  /// If set true, enables fresh daily export to the linked Google Cloud
  /// project.
  core.bool? freshDailyExportEnabled;

  /// If set true, exported data will include advertising identifiers for mobile
  /// app streams.
  core.bool? includeAdvertisingId;

  /// Resource name of this BigQuery link.
  ///
  /// Format: 'properties/{property_id}/bigQueryLinks/{bigquery_link_id}'
  /// Format: 'properties/1234/bigQueryLinks/abc567'
  ///
  /// Output only.
  core.String? name;

  /// The linked Google Cloud project.
  ///
  /// When creating a BigQueryLink, you may provide this resource name using
  /// either a project number or project ID. Once this resource has been
  /// created, the returned project will always have a project that contains a
  /// project number. Format: 'projects/{project number}' Example:
  /// 'projects/1234'
  ///
  /// Immutable.
  core.String? project;

  /// If set true, enables streaming export to the linked Google Cloud project.
  core.bool? streamingExportEnabled;

  GoogleAnalyticsAdminV1alphaBigQueryLink({
    this.createTime,
    this.dailyExportEnabled,
    this.datasetLocation,
    this.excludedEvents,
    this.exportStreams,
    this.freshDailyExportEnabled,
    this.includeAdvertisingId,
    this.name,
    this.project,
    this.streamingExportEnabled,
  });

  GoogleAnalyticsAdminV1alphaBigQueryLink.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        dailyExportEnabled: json_['dailyExportEnabled'] as core.bool?,
        datasetLocation: json_['datasetLocation'] as core.String?,
        excludedEvents: (json_['excludedEvents'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        exportStreams: (json_['exportStreams'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        freshDailyExportEnabled: json_['freshDailyExportEnabled'] as core.bool?,
        includeAdvertisingId: json_['includeAdvertisingId'] as core.bool?,
        name: json_['name'] as core.String?,
        project: json_['project'] as core.String?,
        streamingExportEnabled: json_['streamingExportEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final dailyExportEnabled = this.dailyExportEnabled;
    final datasetLocation = this.datasetLocation;
    final excludedEvents = this.excludedEvents;
    final exportStreams = this.exportStreams;
    final freshDailyExportEnabled = this.freshDailyExportEnabled;
    final includeAdvertisingId = this.includeAdvertisingId;
    final name = this.name;
    final project = this.project;
    final streamingExportEnabled = this.streamingExportEnabled;
    return {
      'createTime': ?createTime,
      'dailyExportEnabled': ?dailyExportEnabled,
      'datasetLocation': ?datasetLocation,
      'excludedEvents': ?excludedEvents,
      'exportStreams': ?exportStreams,
      'freshDailyExportEnabled': ?freshDailyExportEnabled,
      'includeAdvertisingId': ?includeAdvertisingId,
      'name': ?name,
      'project': ?project,
      'streamingExportEnabled': ?streamingExportEnabled,
    };
  }
}

/// A definition for a calculated metric.
class GoogleAnalyticsAdminV1alphaCalculatedMetric {
  /// The ID to use for the calculated metric.
  ///
  /// In the UI, this is referred to as the "API name." The calculated_metric_id
  /// is used when referencing this calculated metric from external APIs. For
  /// example, "calcMetric:{calculated_metric_id}".
  ///
  /// Output only.
  core.String? calculatedMetricId;

  /// Description for this calculated metric.
  ///
  /// Max length of 4096 characters.
  ///
  /// Optional.
  core.String? description;

  /// Display name for this calculated metric as shown in the Google Analytics
  /// UI.
  ///
  /// Max length 82 characters.
  ///
  /// Required.
  core.String? displayName;

  /// The calculated metric's definition.
  ///
  /// Maximum number of unique referenced custom metrics is 5. Formulas supports
  /// the following operations: + (addition), - (subtraction), - (negative), *
  /// (multiplication), / (division), () (parenthesis). Any valid real numbers
  /// are acceptable that fit in a Long (64bit integer) or a Double (64 bit
  /// floating point number). Example formula: "( customEvent:parameter_name +
  /// cartPurchaseQuantity ) / 2.0"
  ///
  /// Required.
  core.String? formula;

  /// If true, this calculated metric has a invalid metric reference.
  ///
  /// Anything using a calculated metric with invalid_metric_reference set to
  /// true may fail, produce warnings, or produce unexpected results.
  ///
  /// Output only.
  core.bool? invalidMetricReference;

  /// The type for the calculated metric's value.
  ///
  /// Required.
  /// Possible string values are:
  /// - "METRIC_UNIT_UNSPECIFIED" : MetricUnit unspecified or missing.
  /// - "STANDARD" : This metric uses default units.
  /// - "CURRENCY" : This metric measures a currency.
  /// - "FEET" : This metric measures feet.
  /// - "MILES" : This metric measures miles.
  /// - "METERS" : This metric measures meters.
  /// - "KILOMETERS" : This metric measures kilometers.
  /// - "MILLISECONDS" : This metric measures milliseconds.
  /// - "SECONDS" : This metric measures seconds.
  /// - "MINUTES" : This metric measures minutes.
  /// - "HOURS" : This metric measures hours.
  core.String? metricUnit;

  /// Resource name for this CalculatedMetric.
  ///
  /// Format:
  /// 'properties/{property_id}/calculatedMetrics/{calculated_metric_id}'
  ///
  /// Output only.
  core.String? name;

  /// Types of restricted data that this metric contains.
  ///
  /// Output only.
  core.List<core.String>? restrictedMetricType;

  GoogleAnalyticsAdminV1alphaCalculatedMetric({
    this.calculatedMetricId,
    this.description,
    this.displayName,
    this.formula,
    this.invalidMetricReference,
    this.metricUnit,
    this.name,
    this.restrictedMetricType,
  });

  GoogleAnalyticsAdminV1alphaCalculatedMetric.fromJson(core.Map json_)
    : this(
        calculatedMetricId: json_['calculatedMetricId'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        formula: json_['formula'] as core.String?,
        invalidMetricReference: json_['invalidMetricReference'] as core.bool?,
        metricUnit: json_['metricUnit'] as core.String?,
        name: json_['name'] as core.String?,
        restrictedMetricType: (json_['restrictedMetricType'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final calculatedMetricId = this.calculatedMetricId;
    final description = this.description;
    final displayName = this.displayName;
    final formula = this.formula;
    final invalidMetricReference = this.invalidMetricReference;
    final metricUnit = this.metricUnit;
    final name = this.name;
    final restrictedMetricType = this.restrictedMetricType;
    return {
      'calculatedMetricId': ?calculatedMetricId,
      'description': ?description,
      'displayName': ?displayName,
      'formula': ?formula,
      'invalidMetricReference': ?invalidMetricReference,
      'metricUnit': ?metricUnit,
      'name': ?name,
      'restrictedMetricType': ?restrictedMetricType,
    };
  }
}

/// Request message for CancelDisplayVideo360AdvertiserLinkProposal RPC.
typedef GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest =
    $Empty;

/// A description of a change to a single Google Analytics resource.
class GoogleAnalyticsAdminV1alphaChangeHistoryChange {
  /// The type of action that changed this resource.
  /// Possible string values are:
  /// - "ACTION_TYPE_UNSPECIFIED" : Action type unknown or not specified.
  /// - "CREATED" : Resource was created in this change.
  /// - "UPDATED" : Resource was updated in this change.
  /// - "DELETED" : Resource was deleted in this change.
  core.String? action;

  /// Resource name of the resource whose changes are described by this entry.
  core.String? resource;

  /// Resource contents from after the change was made.
  ///
  /// If this resource was deleted in this change, this field will be missing.
  GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource?
  resourceAfterChange;

  /// Resource contents from before the change was made.
  ///
  /// If this resource was created in this change, this field will be missing.
  GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource?
  resourceBeforeChange;

  GoogleAnalyticsAdminV1alphaChangeHistoryChange({
    this.action,
    this.resource,
    this.resourceAfterChange,
    this.resourceBeforeChange,
  });

  GoogleAnalyticsAdminV1alphaChangeHistoryChange.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        resource: json_['resource'] as core.String?,
        resourceAfterChange: json_.containsKey('resourceAfterChange')
            ? GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource.fromJson(
                json_['resourceAfterChange']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        resourceBeforeChange: json_.containsKey('resourceBeforeChange')
            ? GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource.fromJson(
                json_['resourceBeforeChange']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final action = this.action;
    final resource = this.resource;
    final resourceAfterChange = this.resourceAfterChange;
    final resourceBeforeChange = this.resourceBeforeChange;
    return {
      'action': ?action,
      'resource': ?resource,
      'resourceAfterChange': ?resourceAfterChange,
      'resourceBeforeChange': ?resourceBeforeChange,
    };
  }
}

/// A snapshot of a resource as before or after the result of a change in change
/// history.
class GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource {
  /// A snapshot of an Account resource in change history.
  GoogleAnalyticsAdminV1alphaAccount? account;

  /// A snapshot of an AdSenseLink resource in change history.
  GoogleAnalyticsAdminV1alphaAdSenseLink? adsenseLink;

  /// A snapshot of AttributionSettings resource in change history.
  GoogleAnalyticsAdminV1alphaAttributionSettings? attributionSettings;

  /// A snapshot of an Audience resource in change history.
  GoogleAnalyticsAdminV1alphaAudience? audience;

  /// A snapshot of a BigQuery link resource in change history.
  GoogleAnalyticsAdminV1alphaBigQueryLink? bigqueryLink;

  /// A snapshot of a CalculatedMetric resource in change history.
  GoogleAnalyticsAdminV1alphaCalculatedMetric? calculatedMetric;

  /// A snapshot of a ChannelGroup resource in change history.
  GoogleAnalyticsAdminV1alphaChannelGroup? channelGroup;

  /// A snapshot of a ConversionEvent resource in change history.
  GoogleAnalyticsAdminV1alphaConversionEvent? conversionEvent;

  /// A snapshot of a CustomDimension resource in change history.
  GoogleAnalyticsAdminV1alphaCustomDimension? customDimension;

  /// A snapshot of a CustomMetric resource in change history.
  GoogleAnalyticsAdminV1alphaCustomMetric? customMetric;

  /// A snapshot of DataRedactionSettings resource in change history.
  GoogleAnalyticsAdminV1alphaDataRedactionSettings? dataRedactionSettings;

  /// A snapshot of a data retention settings resource in change history.
  GoogleAnalyticsAdminV1alphaDataRetentionSettings? dataRetentionSettings;

  /// A snapshot of a DataStream resource in change history.
  GoogleAnalyticsAdminV1alphaDataStream? dataStream;

  /// A snapshot of a DisplayVideo360AdvertiserLink resource in change history.
  GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink?
  displayVideo360AdvertiserLink;

  /// A snapshot of a DisplayVideo360AdvertiserLinkProposal resource in change
  /// history.
  GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal?
  displayVideo360AdvertiserLinkProposal;

  /// A snapshot of EnhancedMeasurementSettings resource in change history.
  GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings?
  enhancedMeasurementSettings;

  /// A snapshot of an EventCreateRule resource in change history.
  GoogleAnalyticsAdminV1alphaEventCreateRule? eventCreateRule;

  /// A snapshot of an ExpandedDataSet resource in change history.
  GoogleAnalyticsAdminV1alphaExpandedDataSet? expandedDataSet;

  /// A snapshot of a FirebaseLink resource in change history.
  GoogleAnalyticsAdminV1alphaFirebaseLink? firebaseLink;

  /// A snapshot of a GoogleAdsLink resource in change history.
  GoogleAnalyticsAdminV1alphaGoogleAdsLink? googleAdsLink;

  /// A snapshot of a GoogleSignalsSettings resource in change history.
  GoogleAnalyticsAdminV1alphaGoogleSignalsSettings? googleSignalsSettings;

  /// A snapshot of a KeyEvent resource in change history.
  GoogleAnalyticsAdminV1alphaKeyEvent? keyEvent;

  /// A snapshot of a MeasurementProtocolSecret resource in change history.
  GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret?
  measurementProtocolSecret;

  /// A snapshot of a Property resource in change history.
  GoogleAnalyticsAdminV1alphaProperty? property;

  /// A snapshot of a ReportingDataAnnotation resource in change history.
  GoogleAnalyticsAdminV1alphaReportingDataAnnotation? reportingDataAnnotation;

  /// A snapshot of a ReportingIdentitySettings resource in change history.
  GoogleAnalyticsAdminV1alphaReportingIdentitySettings?
  reportingIdentitySettings;

  /// A snapshot of a SearchAds360Link resource in change history.
  GoogleAnalyticsAdminV1alphaSearchAds360Link? searchAds360Link;

  /// A snapshot of SKAdNetworkConversionValueSchema resource in change history.
  GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema?
  skadnetworkConversionValueSchema;

  /// A snapshot of a SubpropertySyncConfig resource in change history.
  GoogleAnalyticsAdminV1alphaSubpropertySyncConfig? subpropertySyncConfig;

  GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource({
    this.account,
    this.adsenseLink,
    this.attributionSettings,
    this.audience,
    this.bigqueryLink,
    this.calculatedMetric,
    this.channelGroup,
    this.conversionEvent,
    this.customDimension,
    this.customMetric,
    this.dataRedactionSettings,
    this.dataRetentionSettings,
    this.dataStream,
    this.displayVideo360AdvertiserLink,
    this.displayVideo360AdvertiserLinkProposal,
    this.enhancedMeasurementSettings,
    this.eventCreateRule,
    this.expandedDataSet,
    this.firebaseLink,
    this.googleAdsLink,
    this.googleSignalsSettings,
    this.keyEvent,
    this.measurementProtocolSecret,
    this.property,
    this.reportingDataAnnotation,
    this.reportingIdentitySettings,
    this.searchAds360Link,
    this.skadnetworkConversionValueSchema,
    this.subpropertySyncConfig,
  });

  GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource.fromJson(
    core.Map json_,
  ) : this(
        account: json_.containsKey('account')
            ? GoogleAnalyticsAdminV1alphaAccount.fromJson(
                json_['account'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        adsenseLink: json_.containsKey('adsenseLink')
            ? GoogleAnalyticsAdminV1alphaAdSenseLink.fromJson(
                json_['adsenseLink'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        attributionSettings: json_.containsKey('attributionSettings')
            ? GoogleAnalyticsAdminV1alphaAttributionSettings.fromJson(
                json_['attributionSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        audience: json_.containsKey('audience')
            ? GoogleAnalyticsAdminV1alphaAudience.fromJson(
                json_['audience'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        bigqueryLink: json_.containsKey('bigqueryLink')
            ? GoogleAnalyticsAdminV1alphaBigQueryLink.fromJson(
                json_['bigqueryLink'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        calculatedMetric: json_.containsKey('calculatedMetric')
            ? GoogleAnalyticsAdminV1alphaCalculatedMetric.fromJson(
                json_['calculatedMetric']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        channelGroup: json_.containsKey('channelGroup')
            ? GoogleAnalyticsAdminV1alphaChannelGroup.fromJson(
                json_['channelGroup'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        conversionEvent: json_.containsKey('conversionEvent')
            ? GoogleAnalyticsAdminV1alphaConversionEvent.fromJson(
                json_['conversionEvent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        customDimension: json_.containsKey('customDimension')
            ? GoogleAnalyticsAdminV1alphaCustomDimension.fromJson(
                json_['customDimension'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        customMetric: json_.containsKey('customMetric')
            ? GoogleAnalyticsAdminV1alphaCustomMetric.fromJson(
                json_['customMetric'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataRedactionSettings: json_.containsKey('dataRedactionSettings')
            ? GoogleAnalyticsAdminV1alphaDataRedactionSettings.fromJson(
                json_['dataRedactionSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataRetentionSettings: json_.containsKey('dataRetentionSettings')
            ? GoogleAnalyticsAdminV1alphaDataRetentionSettings.fromJson(
                json_['dataRetentionSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataStream: json_.containsKey('dataStream')
            ? GoogleAnalyticsAdminV1alphaDataStream.fromJson(
                json_['dataStream'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        displayVideo360AdvertiserLink:
            json_.containsKey('displayVideo360AdvertiserLink')
            ? GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink.fromJson(
                json_['displayVideo360AdvertiserLink']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        displayVideo360AdvertiserLinkProposal:
            json_.containsKey('displayVideo360AdvertiserLinkProposal')
            ? GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal.fromJson(
                json_['displayVideo360AdvertiserLinkProposal']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        enhancedMeasurementSettings:
            json_.containsKey('enhancedMeasurementSettings')
            ? GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings.fromJson(
                json_['enhancedMeasurementSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        eventCreateRule: json_.containsKey('eventCreateRule')
            ? GoogleAnalyticsAdminV1alphaEventCreateRule.fromJson(
                json_['eventCreateRule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        expandedDataSet: json_.containsKey('expandedDataSet')
            ? GoogleAnalyticsAdminV1alphaExpandedDataSet.fromJson(
                json_['expandedDataSet'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        firebaseLink: json_.containsKey('firebaseLink')
            ? GoogleAnalyticsAdminV1alphaFirebaseLink.fromJson(
                json_['firebaseLink'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        googleAdsLink: json_.containsKey('googleAdsLink')
            ? GoogleAnalyticsAdminV1alphaGoogleAdsLink.fromJson(
                json_['googleAdsLink'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        googleSignalsSettings: json_.containsKey('googleSignalsSettings')
            ? GoogleAnalyticsAdminV1alphaGoogleSignalsSettings.fromJson(
                json_['googleSignalsSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        keyEvent: json_.containsKey('keyEvent')
            ? GoogleAnalyticsAdminV1alphaKeyEvent.fromJson(
                json_['keyEvent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        measurementProtocolSecret:
            json_.containsKey('measurementProtocolSecret')
            ? GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret.fromJson(
                json_['measurementProtocolSecret']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        property: json_.containsKey('property')
            ? GoogleAnalyticsAdminV1alphaProperty.fromJson(
                json_['property'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        reportingDataAnnotation: json_.containsKey('reportingDataAnnotation')
            ? GoogleAnalyticsAdminV1alphaReportingDataAnnotation.fromJson(
                json_['reportingDataAnnotation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        reportingIdentitySettings:
            json_.containsKey('reportingIdentitySettings')
            ? GoogleAnalyticsAdminV1alphaReportingIdentitySettings.fromJson(
                json_['reportingIdentitySettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        searchAds360Link: json_.containsKey('searchAds360Link')
            ? GoogleAnalyticsAdminV1alphaSearchAds360Link.fromJson(
                json_['searchAds360Link']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        skadnetworkConversionValueSchema:
            json_.containsKey('skadnetworkConversionValueSchema')
            ? GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema.fromJson(
                json_['skadnetworkConversionValueSchema']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        subpropertySyncConfig: json_.containsKey('subpropertySyncConfig')
            ? GoogleAnalyticsAdminV1alphaSubpropertySyncConfig.fromJson(
                json_['subpropertySyncConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final account = this.account;
    final adsenseLink = this.adsenseLink;
    final attributionSettings = this.attributionSettings;
    final audience = this.audience;
    final bigqueryLink = this.bigqueryLink;
    final calculatedMetric = this.calculatedMetric;
    final channelGroup = this.channelGroup;
    final conversionEvent = this.conversionEvent;
    final customDimension = this.customDimension;
    final customMetric = this.customMetric;
    final dataRedactionSettings = this.dataRedactionSettings;
    final dataRetentionSettings = this.dataRetentionSettings;
    final dataStream = this.dataStream;
    final displayVideo360AdvertiserLink = this.displayVideo360AdvertiserLink;
    final displayVideo360AdvertiserLinkProposal =
        this.displayVideo360AdvertiserLinkProposal;
    final enhancedMeasurementSettings = this.enhancedMeasurementSettings;
    final eventCreateRule = this.eventCreateRule;
    final expandedDataSet = this.expandedDataSet;
    final firebaseLink = this.firebaseLink;
    final googleAdsLink = this.googleAdsLink;
    final googleSignalsSettings = this.googleSignalsSettings;
    final keyEvent = this.keyEvent;
    final measurementProtocolSecret = this.measurementProtocolSecret;
    final property = this.property;
    final reportingDataAnnotation = this.reportingDataAnnotation;
    final reportingIdentitySettings = this.reportingIdentitySettings;
    final searchAds360Link = this.searchAds360Link;
    final skadnetworkConversionValueSchema =
        this.skadnetworkConversionValueSchema;
    final subpropertySyncConfig = this.subpropertySyncConfig;
    return {
      'account': ?account,
      'adsenseLink': ?adsenseLink,
      'attributionSettings': ?attributionSettings,
      'audience': ?audience,
      'bigqueryLink': ?bigqueryLink,
      'calculatedMetric': ?calculatedMetric,
      'channelGroup': ?channelGroup,
      'conversionEvent': ?conversionEvent,
      'customDimension': ?customDimension,
      'customMetric': ?customMetric,
      'dataRedactionSettings': ?dataRedactionSettings,
      'dataRetentionSettings': ?dataRetentionSettings,
      'dataStream': ?dataStream,
      'displayVideo360AdvertiserLink': ?displayVideo360AdvertiserLink,
      'displayVideo360AdvertiserLinkProposal':
          ?displayVideo360AdvertiserLinkProposal,
      'enhancedMeasurementSettings': ?enhancedMeasurementSettings,
      'eventCreateRule': ?eventCreateRule,
      'expandedDataSet': ?expandedDataSet,
      'firebaseLink': ?firebaseLink,
      'googleAdsLink': ?googleAdsLink,
      'googleSignalsSettings': ?googleSignalsSettings,
      'keyEvent': ?keyEvent,
      'measurementProtocolSecret': ?measurementProtocolSecret,
      'property': ?property,
      'reportingDataAnnotation': ?reportingDataAnnotation,
      'reportingIdentitySettings': ?reportingIdentitySettings,
      'searchAds360Link': ?searchAds360Link,
      'skadnetworkConversionValueSchema': ?skadnetworkConversionValueSchema,
      'subpropertySyncConfig': ?subpropertySyncConfig,
    };
  }
}

/// A set of changes within a Google Analytics account or its child properties
/// that resulted from the same cause.
///
/// Common causes would be updates made in the Google Analytics UI, changes from
/// customer support, or automatic Google Analytics system changes.
class GoogleAnalyticsAdminV1alphaChangeHistoryEvent {
  /// The type of actor that made this change.
  /// Possible string values are:
  /// - "ACTOR_TYPE_UNSPECIFIED" : Unknown or unspecified actor type.
  /// - "USER" : Changes made by the user specified in actor_email.
  /// - "SYSTEM" : Changes made by the Google Analytics system.
  /// - "SUPPORT" : Changes made by Google Analytics support team staff.
  core.String? actorType;

  /// Time when change was made.
  core.String? changeTime;

  /// A list of changes made in this change history event that fit the filters
  /// specified in SearchChangeHistoryEventsRequest.
  core.List<GoogleAnalyticsAdminV1alphaChangeHistoryChange>? changes;

  /// If true, then the list of changes returned was filtered, and does not
  /// represent all changes that occurred in this event.
  core.bool? changesFiltered;

  /// ID of this change history event.
  ///
  /// This ID is unique across Google Analytics.
  core.String? id;

  /// Email address of the Google account that made the change.
  ///
  /// This will be a valid email address if the actor field is set to USER, and
  /// empty otherwise. Google accounts that have been deleted will cause an
  /// error.
  core.String? userActorEmail;

  GoogleAnalyticsAdminV1alphaChangeHistoryEvent({
    this.actorType,
    this.changeTime,
    this.changes,
    this.changesFiltered,
    this.id,
    this.userActorEmail,
  });

  GoogleAnalyticsAdminV1alphaChangeHistoryEvent.fromJson(core.Map json_)
    : this(
        actorType: json_['actorType'] as core.String?,
        changeTime: json_['changeTime'] as core.String?,
        changes: (json_['changes'] as core.List?)
            ?.map(
              (value) =>
                  GoogleAnalyticsAdminV1alphaChangeHistoryChange.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        changesFiltered: json_['changesFiltered'] as core.bool?,
        id: json_['id'] as core.String?,
        userActorEmail: json_['userActorEmail'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final actorType = this.actorType;
    final changeTime = this.changeTime;
    final changes = this.changes;
    final changesFiltered = this.changesFiltered;
    final id = this.id;
    final userActorEmail = this.userActorEmail;
    return {
      'actorType': ?actorType,
      'changeTime': ?changeTime,
      'changes': ?changes,
      'changesFiltered': ?changesFiltered,
      'id': ?id,
      'userActorEmail': ?userActorEmail,
    };
  }
}

/// A resource message representing a Channel Group.
class GoogleAnalyticsAdminV1alphaChannelGroup {
  /// The description of the Channel Group.
  ///
  /// Max length of 256 characters.
  core.String? description;

  /// The display name of the Channel Group.
  ///
  /// Max length of 80 characters.
  ///
  /// Required.
  core.String? displayName;

  /// The grouping rules of channels.
  ///
  /// Maximum number of rules is 50.
  ///
  /// Required.
  core.List<GoogleAnalyticsAdminV1alphaGroupingRule>? groupingRule;

  /// The resource name for this Channel Group resource.
  ///
  /// Format: properties/{property}/channelGroups/{channel_group}
  ///
  /// Output only.
  core.String? name;

  /// If true, this channel group will be used as the default channel group for
  /// reports.
  ///
  /// Only one channel group can be set as `primary` at any time. If the
  /// `primary` field gets set on a channel group, it will get unset on the
  /// previous primary channel group. The Google Analytics predefined channel
  /// group is the primary by default.
  ///
  /// Optional.
  core.bool? primary;

  /// If true, then this channel group is the Default Channel Group predefined
  /// by Google Analytics.
  ///
  /// Display name and grouping rules cannot be updated for this channel group.
  ///
  /// Output only.
  core.bool? systemDefined;

  GoogleAnalyticsAdminV1alphaChannelGroup({
    this.description,
    this.displayName,
    this.groupingRule,
    this.name,
    this.primary,
    this.systemDefined,
  });

  GoogleAnalyticsAdminV1alphaChannelGroup.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        groupingRule: (json_['groupingRule'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaGroupingRule.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        name: json_['name'] as core.String?,
        primary: json_['primary'] as core.bool?,
        systemDefined: json_['systemDefined'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final displayName = this.displayName;
    final groupingRule = this.groupingRule;
    final name = this.name;
    final primary = this.primary;
    final systemDefined = this.systemDefined;
    return {
      'description': ?description,
      'displayName': ?displayName,
      'groupingRule': ?groupingRule,
      'name': ?name,
      'primary': ?primary,
      'systemDefined': ?systemDefined,
    };
  }
}

/// A specific filter for a single dimension.
class GoogleAnalyticsAdminV1alphaChannelGroupFilter {
  /// The dimension name to filter.
  ///
  /// Required. Immutable.
  core.String? fieldName;

  /// A filter for a string dimension that matches a particular list of options.
  GoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter? inListFilter;

  /// A filter for a string-type dimension that matches a particular pattern.
  GoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter? stringFilter;

  GoogleAnalyticsAdminV1alphaChannelGroupFilter({
    this.fieldName,
    this.inListFilter,
    this.stringFilter,
  });

  GoogleAnalyticsAdminV1alphaChannelGroupFilter.fromJson(core.Map json_)
    : this(
        fieldName: json_['fieldName'] as core.String?,
        inListFilter: json_.containsKey('inListFilter')
            ? GoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter.fromJson(
                json_['inListFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        stringFilter: json_.containsKey('stringFilter')
            ? GoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter.fromJson(
                json_['stringFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fieldName = this.fieldName;
    final inListFilter = this.inListFilter;
    final stringFilter = this.stringFilter;
    return {
      'fieldName': ?fieldName,
      'inListFilter': ?inListFilter,
      'stringFilter': ?stringFilter,
    };
  }
}

/// A logical expression of Channel Group dimension filters.
class GoogleAnalyticsAdminV1alphaChannelGroupFilterExpression {
  /// A list of expressions to be AND’ed together.
  ///
  /// It can only contain ChannelGroupFilterExpressions with or_group. This must
  /// be set for the top level ChannelGroupFilterExpression.
  GoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList? andGroup;

  /// A filter on a single dimension.
  ///
  /// This cannot be set on the top level ChannelGroupFilterExpression.
  GoogleAnalyticsAdminV1alphaChannelGroupFilter? filter;

  /// A filter expression to be NOT'ed (that is inverted, complemented).
  ///
  /// It can only include a dimension_or_metric_filter. This cannot be set on
  /// the top level ChannelGroupFilterExpression.
  GoogleAnalyticsAdminV1alphaChannelGroupFilterExpression? notExpression;

  /// A list of expressions to OR’ed together.
  ///
  /// It cannot contain ChannelGroupFilterExpressions with and_group or
  /// or_group.
  GoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList? orGroup;

  GoogleAnalyticsAdminV1alphaChannelGroupFilterExpression({
    this.andGroup,
    this.filter,
    this.notExpression,
    this.orGroup,
  });

  GoogleAnalyticsAdminV1alphaChannelGroupFilterExpression.fromJson(
    core.Map json_,
  ) : this(
        andGroup: json_.containsKey('andGroup')
            ? GoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList.fromJson(
                json_['andGroup'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        filter: json_.containsKey('filter')
            ? GoogleAnalyticsAdminV1alphaChannelGroupFilter.fromJson(
                json_['filter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        notExpression: json_.containsKey('notExpression')
            ? GoogleAnalyticsAdminV1alphaChannelGroupFilterExpression.fromJson(
                json_['notExpression'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        orGroup: json_.containsKey('orGroup')
            ? GoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList.fromJson(
                json_['orGroup'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final andGroup = this.andGroup;
    final filter = this.filter;
    final notExpression = this.notExpression;
    final orGroup = this.orGroup;
    return {
      'andGroup': ?andGroup,
      'filter': ?filter,
      'notExpression': ?notExpression,
      'orGroup': ?orGroup,
    };
  }
}

/// A list of Channel Group filter expressions.
class GoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList {
  /// A list of Channel Group filter expressions.
  core.List<GoogleAnalyticsAdminV1alphaChannelGroupFilterExpression>?
  filterExpressions;

  GoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList({
    this.filterExpressions,
  });

  GoogleAnalyticsAdminV1alphaChannelGroupFilterExpressionList.fromJson(
    core.Map json_,
  ) : this(
        filterExpressions: (json_['filterExpressions'] as core.List?)
            ?.map(
              (value) =>
                  GoogleAnalyticsAdminV1alphaChannelGroupFilterExpression.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final filterExpressions = this.filterExpressions;
    return {'filterExpressions': ?filterExpressions};
  }
}

/// A filter for a string dimension that matches a particular list of options.
///
/// The match is case insensitive.
class GoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter {
  /// The list of possible string values to match against.
  ///
  /// Must be non-empty.
  ///
  /// Required.
  core.List<core.String>? values;

  GoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter({this.values});

  GoogleAnalyticsAdminV1alphaChannelGroupFilterInListFilter.fromJson(
    core.Map json_,
  ) : this(
        values: (json_['values'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final values = this.values;
    return {'values': ?values};
  }
}

/// Filter where the field value is a String.
///
/// The match is case insensitive.
class GoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter {
  /// The match type for the string filter.
  ///
  /// Required.
  /// Possible string values are:
  /// - "MATCH_TYPE_UNSPECIFIED" : Default match type.
  /// - "EXACT" : Exact match of the string value.
  /// - "BEGINS_WITH" : Begins with the string value.
  /// - "ENDS_WITH" : Ends with the string value.
  /// - "CONTAINS" : Contains the string value.
  /// - "FULL_REGEXP" : Full regular expression match with the string value.
  /// - "PARTIAL_REGEXP" : Partial regular expression match with the string
  /// value.
  core.String? matchType;

  /// The string value to be matched against.
  ///
  /// Required.
  core.String? value;

  GoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter({
    this.matchType,
    this.value,
  });

  GoogleAnalyticsAdminV1alphaChannelGroupFilterStringFilter.fromJson(
    core.Map json_,
  ) : this(
        matchType: json_['matchType'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final matchType = this.matchType;
    final value = this.value;
    return {'matchType': ?matchType, 'value': ?value};
  }
}

/// A conversion event in a Google Analytics property.
class GoogleAnalyticsAdminV1alphaConversionEvent {
  /// The method by which conversions will be counted across multiple events
  /// within a session.
  ///
  /// If this value is not provided, it will be set to `ONCE_PER_EVENT`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CONVERSION_COUNTING_METHOD_UNSPECIFIED" : Counting method not
  /// specified.
  /// - "ONCE_PER_EVENT" : Each Event instance is considered a Conversion.
  /// - "ONCE_PER_SESSION" : An Event instance is considered a Conversion at
  /// most once per session per user.
  core.String? countingMethod;

  /// Time when this conversion event was created in the property.
  ///
  /// Output only.
  core.String? createTime;

  /// If set to true, this conversion event refers to a custom event.
  ///
  /// If set to false, this conversion event refers to a default event in GA.
  /// Default events typically have special meaning in GA. Default events are
  /// usually created for you by the GA system, but in some cases can be created
  /// by property admins. Custom events count towards the maximum number of
  /// custom conversion events that may be created per property.
  ///
  /// Output only.
  core.bool? custom;

  /// Defines a default value/currency for a conversion event.
  ///
  /// Optional.
  GoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue?
  defaultConversionValue;

  /// If set, this event can currently be deleted with DeleteConversionEvent.
  ///
  /// Output only.
  core.bool? deletable;

  /// The event name for this conversion event.
  ///
  /// Examples: 'click', 'purchase'
  ///
  /// Immutable.
  core.String? eventName;

  /// Resource name of this conversion event.
  ///
  /// Format: properties/{property}/conversionEvents/{conversion_event}
  ///
  /// Output only.
  core.String? name;

  GoogleAnalyticsAdminV1alphaConversionEvent({
    this.countingMethod,
    this.createTime,
    this.custom,
    this.defaultConversionValue,
    this.deletable,
    this.eventName,
    this.name,
  });

  GoogleAnalyticsAdminV1alphaConversionEvent.fromJson(core.Map json_)
    : this(
        countingMethod: json_['countingMethod'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        custom: json_['custom'] as core.bool?,
        defaultConversionValue: json_.containsKey('defaultConversionValue')
            ? GoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue.fromJson(
                json_['defaultConversionValue']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deletable: json_['deletable'] as core.bool?,
        eventName: json_['eventName'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final countingMethod = this.countingMethod;
    final createTime = this.createTime;
    final custom = this.custom;
    final defaultConversionValue = this.defaultConversionValue;
    final deletable = this.deletable;
    final eventName = this.eventName;
    final name = this.name;
    return {
      'countingMethod': ?countingMethod,
      'createTime': ?createTime,
      'custom': ?custom,
      'defaultConversionValue': ?defaultConversionValue,
      'deletable': ?deletable,
      'eventName': ?eventName,
      'name': ?name,
    };
  }
}

/// Defines a default value/currency for a conversion event.
///
/// Both value and currency must be provided.
typedef GoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue =
    $ConversionEventDefaultConversionValue;

/// Conversion value settings for a postback window for SKAdNetwork conversion
/// value schema.
class GoogleAnalyticsAdminV1alphaConversionValues {
  /// A coarse grained conversion value.
  ///
  /// This value is not guaranteed to be unique.
  ///
  /// Required.
  /// Possible string values are:
  /// - "COARSE_VALUE_UNSPECIFIED" : Coarse value not specified.
  /// - "COARSE_VALUE_LOW" : Coarse value of low.
  /// - "COARSE_VALUE_MEDIUM" : Coarse value of medium.
  /// - "COARSE_VALUE_HIGH" : Coarse value of high.
  core.String? coarseValue;

  /// Display name of the SKAdNetwork conversion value.
  ///
  /// The max allowed display name length is 50 UTF-16 code units.
  core.String? displayName;

  /// Event conditions that must be met for this Conversion Value to be
  /// achieved.
  ///
  /// The conditions in this list are ANDed together. It must have minimum of 1
  /// entry and maximum of 3 entries, if the postback window is enabled.
  core.List<GoogleAnalyticsAdminV1alphaEventMapping>? eventMappings;

  /// The fine-grained conversion value.
  ///
  /// This is applicable only to the first postback window. Its valid values are
  /// \[0,63\], both inclusive. It must be set for postback window 1, and must
  /// not be set for postback window 2 & 3. This value is not guaranteed to be
  /// unique. If the configuration for the first postback window is re-used for
  /// second or third postback windows this field has no effect.
  core.int? fineValue;

  /// If true, the SDK should lock to this conversion value for the current
  /// postback window.
  core.bool? lockEnabled;

  GoogleAnalyticsAdminV1alphaConversionValues({
    this.coarseValue,
    this.displayName,
    this.eventMappings,
    this.fineValue,
    this.lockEnabled,
  });

  GoogleAnalyticsAdminV1alphaConversionValues.fromJson(core.Map json_)
    : this(
        coarseValue: json_['coarseValue'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        eventMappings: (json_['eventMappings'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaEventMapping.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        fineValue: json_['fineValue'] as core.int?,
        lockEnabled: json_['lockEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final coarseValue = this.coarseValue;
    final displayName = this.displayName;
    final eventMappings = this.eventMappings;
    final fineValue = this.fineValue;
    final lockEnabled = this.lockEnabled;
    return {
      'coarseValue': ?coarseValue,
      'displayName': ?displayName,
      'eventMappings': ?eventMappings,
      'fineValue': ?fineValue,
      'lockEnabled': ?lockEnabled,
    };
  }
}

/// Request message for CreateAccessBinding RPC.
class GoogleAnalyticsAdminV1alphaCreateAccessBindingRequest {
  /// The access binding to create.
  ///
  /// Required.
  GoogleAnalyticsAdminV1alphaAccessBinding? accessBinding;

  /// Formats: - accounts/{account} - properties/{property}
  ///
  /// Required.
  core.String? parent;

  GoogleAnalyticsAdminV1alphaCreateAccessBindingRequest({
    this.accessBinding,
    this.parent,
  });

  GoogleAnalyticsAdminV1alphaCreateAccessBindingRequest.fromJson(core.Map json_)
    : this(
        accessBinding: json_.containsKey('accessBinding')
            ? GoogleAnalyticsAdminV1alphaAccessBinding.fromJson(
                json_['accessBinding'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        parent: json_['parent'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessBinding = this.accessBinding;
    final parent = this.parent;
    return {'accessBinding': ?accessBinding, 'parent': ?parent};
  }
}

/// Request message for CreateRollupProperty RPC.
class GoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest {
  /// The roll-up property to create.
  ///
  /// Required.
  GoogleAnalyticsAdminV1alphaProperty? rollupProperty;

  /// The resource names of properties that will be sources to the created
  /// roll-up property.
  ///
  /// Optional.
  core.List<core.String>? sourceProperties;

  GoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest({
    this.rollupProperty,
    this.sourceProperties,
  });

  GoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest.fromJson(
    core.Map json_,
  ) : this(
        rollupProperty: json_.containsKey('rollupProperty')
            ? GoogleAnalyticsAdminV1alphaProperty.fromJson(
                json_['rollupProperty'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sourceProperties: (json_['sourceProperties'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final rollupProperty = this.rollupProperty;
    final sourceProperties = this.sourceProperties;
    return {
      'rollupProperty': ?rollupProperty,
      'sourceProperties': ?sourceProperties,
    };
  }
}

/// Response message for CreateRollupProperty RPC.
class GoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse {
  /// The created roll-up property.
  GoogleAnalyticsAdminV1alphaProperty? rollupProperty;

  /// The created roll-up property source links.
  core.List<GoogleAnalyticsAdminV1alphaRollupPropertySourceLink>?
  rollupPropertySourceLinks;

  GoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse({
    this.rollupProperty,
    this.rollupPropertySourceLinks,
  });

  GoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse.fromJson(
    core.Map json_,
  ) : this(
        rollupProperty: json_.containsKey('rollupProperty')
            ? GoogleAnalyticsAdminV1alphaProperty.fromJson(
                json_['rollupProperty'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        rollupPropertySourceLinks:
            (json_['rollupPropertySourceLinks'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAnalyticsAdminV1alphaRollupPropertySourceLink.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final rollupProperty = this.rollupProperty;
    final rollupPropertySourceLinks = this.rollupPropertySourceLinks;
    return {
      'rollupProperty': ?rollupProperty,
      'rollupPropertySourceLinks': ?rollupPropertySourceLinks,
    };
  }
}

/// A definition for a CustomDimension.
typedef GoogleAnalyticsAdminV1alphaCustomDimension = $CustomDimension;

/// A definition for a custom metric.
typedef GoogleAnalyticsAdminV1alphaCustomMetric = $CustomMetric;

/// Settings for client-side data redaction.
///
/// Singleton resource under a Web Stream.
class GoogleAnalyticsAdminV1alphaDataRedactionSettings {
  /// If enabled, any event parameter or user property values that look like an
  /// email will be redacted.
  core.bool? emailRedactionEnabled;

  /// Name of this Data Redaction Settings resource.
  ///
  /// Format:
  /// properties/{property_id}/dataStreams/{data_stream}/dataRedactionSettings
  /// Example: "properties/1000/dataStreams/2000/dataRedactionSettings"
  ///
  /// Output only.
  core.String? name;

  /// The query parameter keys to apply redaction logic to if present in the
  /// URL.
  ///
  /// Query parameter matching is case-insensitive. Must contain at least one
  /// element if query_parameter_replacement_enabled is true. Keys cannot
  /// contain commas.
  core.List<core.String>? queryParameterKeys;

  /// Query Parameter redaction removes the key and value portions of a query
  /// parameter if it is in the configured set of query parameters.
  ///
  /// If enabled, URL query replacement logic will be run for the Stream. Any
  /// query parameters defined in query_parameter_keys will be redacted.
  core.bool? queryParameterRedactionEnabled;

  GoogleAnalyticsAdminV1alphaDataRedactionSettings({
    this.emailRedactionEnabled,
    this.name,
    this.queryParameterKeys,
    this.queryParameterRedactionEnabled,
  });

  GoogleAnalyticsAdminV1alphaDataRedactionSettings.fromJson(core.Map json_)
    : this(
        emailRedactionEnabled: json_['emailRedactionEnabled'] as core.bool?,
        name: json_['name'] as core.String?,
        queryParameterKeys: (json_['queryParameterKeys'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        queryParameterRedactionEnabled:
            json_['queryParameterRedactionEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final emailRedactionEnabled = this.emailRedactionEnabled;
    final name = this.name;
    final queryParameterKeys = this.queryParameterKeys;
    final queryParameterRedactionEnabled = this.queryParameterRedactionEnabled;
    return {
      'emailRedactionEnabled': ?emailRedactionEnabled,
      'name': ?name,
      'queryParameterKeys': ?queryParameterKeys,
      'queryParameterRedactionEnabled': ?queryParameterRedactionEnabled,
    };
  }
}

/// Settings values for data retention.
///
/// This is a singleton resource.
typedef GoogleAnalyticsAdminV1alphaDataRetentionSettings =
    $DataRetentionSettings;

/// A resource message representing data sharing settings of a Google Analytics
/// account.
typedef GoogleAnalyticsAdminV1alphaDataSharingSettings = $DataSharingSettings;

/// A resource message representing a data stream.
class GoogleAnalyticsAdminV1alphaDataStream {
  /// Data specific to Android app streams.
  ///
  /// Must be populated if type is ANDROID_APP_DATA_STREAM.
  GoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData?
  androidAppStreamData;

  /// Time when this stream was originally created.
  ///
  /// Output only.
  core.String? createTime;

  /// Human-readable display name for the Data Stream.
  ///
  /// Required for web data streams. The max allowed display name length is 255
  /// UTF-16 code units.
  core.String? displayName;

  /// Data specific to iOS app streams.
  ///
  /// Must be populated if type is IOS_APP_DATA_STREAM.
  GoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData? iosAppStreamData;

  /// Resource name of this Data Stream.
  ///
  /// Format: properties/{property_id}/dataStreams/{stream_id} Example:
  /// "properties/1000/dataStreams/2000"
  ///
  /// Output only.
  core.String? name;

  /// The type of this DataStream resource.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "DATA_STREAM_TYPE_UNSPECIFIED" : Type unknown or not specified.
  /// - "WEB_DATA_STREAM" : Web data stream.
  /// - "ANDROID_APP_DATA_STREAM" : Android app data stream.
  /// - "IOS_APP_DATA_STREAM" : iOS app data stream.
  core.String? type;

  /// Time when stream payload fields were last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Data specific to web streams.
  ///
  /// Must be populated if type is WEB_DATA_STREAM.
  GoogleAnalyticsAdminV1alphaDataStreamWebStreamData? webStreamData;

  GoogleAnalyticsAdminV1alphaDataStream({
    this.androidAppStreamData,
    this.createTime,
    this.displayName,
    this.iosAppStreamData,
    this.name,
    this.type,
    this.updateTime,
    this.webStreamData,
  });

  GoogleAnalyticsAdminV1alphaDataStream.fromJson(core.Map json_)
    : this(
        androidAppStreamData: json_.containsKey('androidAppStreamData')
            ? GoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData.fromJson(
                json_['androidAppStreamData']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        iosAppStreamData: json_.containsKey('iosAppStreamData')
            ? GoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData.fromJson(
                json_['iosAppStreamData']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        webStreamData: json_.containsKey('webStreamData')
            ? GoogleAnalyticsAdminV1alphaDataStreamWebStreamData.fromJson(
                json_['webStreamData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final androidAppStreamData = this.androidAppStreamData;
    final createTime = this.createTime;
    final displayName = this.displayName;
    final iosAppStreamData = this.iosAppStreamData;
    final name = this.name;
    final type = this.type;
    final updateTime = this.updateTime;
    final webStreamData = this.webStreamData;
    return {
      'androidAppStreamData': ?androidAppStreamData,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'iosAppStreamData': ?iosAppStreamData,
      'name': ?name,
      'type': ?type,
      'updateTime': ?updateTime,
      'webStreamData': ?webStreamData,
    };
  }
}

/// Data specific to Android app streams.
typedef GoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData =
    $DataStreamAndroidAppStreamData;

/// Data specific to iOS app streams.
typedef GoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData =
    $DataStreamIosAppStreamData;

/// Data specific to web streams.
typedef GoogleAnalyticsAdminV1alphaDataStreamWebStreamData =
    $DataStreamWebStreamData;

/// Request message for DeleteAccessBinding RPC.
class GoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest {
  /// Formats: - accounts/{account}/accessBindings/{accessBinding} -
  /// properties/{property}/accessBindings/{accessBinding}
  ///
  /// Required.
  core.String? name;

  GoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest({this.name});

  GoogleAnalyticsAdminV1alphaDeleteAccessBindingRequest.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    return {'name': ?name};
  }
}

/// A link between a Google Analytics property and a Display & Video 360
/// advertiser.
class GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink {
  /// Enables personalized advertising features with this integration.
  ///
  /// If this field is not set on create/update, it will be defaulted to true.
  core.bool? adsPersonalizationEnabled;

  /// The display name of the Display & Video 360 Advertiser.
  ///
  /// Output only.
  core.String? advertiserDisplayName;

  /// The Display & Video 360 Advertiser's advertiser ID.
  ///
  /// Immutable.
  core.String? advertiserId;

  /// Enables the import of campaign data from Display & Video 360 into the
  /// Google Analytics property.
  ///
  /// After link creation, this can only be updated from the Display & Video 360
  /// product. If this field is not set on create, it will be defaulted to true.
  ///
  /// Immutable.
  core.bool? campaignDataSharingEnabled;

  /// Enables the import of cost data from Display & Video 360 into the Google
  /// Analytics property.
  ///
  /// This can only be enabled if `campaign_data_sharing_enabled` is true. After
  /// link creation, this can only be updated from the Display & Video 360
  /// product. If this field is not set on create, it will be defaulted to true.
  ///
  /// Immutable.
  core.bool? costDataSharingEnabled;

  /// The resource name for this DisplayVideo360AdvertiserLink resource.
  ///
  /// Format: properties/{propertyId}/displayVideo360AdvertiserLinks/{linkId}
  /// Note: linkId is not the Display & Video 360 Advertiser ID
  ///
  /// Output only.
  core.String? name;

  GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink({
    this.adsPersonalizationEnabled,
    this.advertiserDisplayName,
    this.advertiserId,
    this.campaignDataSharingEnabled,
    this.costDataSharingEnabled,
    this.name,
  });

  GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink.fromJson(
    core.Map json_,
  ) : this(
        adsPersonalizationEnabled:
            json_['adsPersonalizationEnabled'] as core.bool?,
        advertiserDisplayName: json_['advertiserDisplayName'] as core.String?,
        advertiserId: json_['advertiserId'] as core.String?,
        campaignDataSharingEnabled:
            json_['campaignDataSharingEnabled'] as core.bool?,
        costDataSharingEnabled: json_['costDataSharingEnabled'] as core.bool?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adsPersonalizationEnabled = this.adsPersonalizationEnabled;
    final advertiserDisplayName = this.advertiserDisplayName;
    final advertiserId = this.advertiserId;
    final campaignDataSharingEnabled = this.campaignDataSharingEnabled;
    final costDataSharingEnabled = this.costDataSharingEnabled;
    final name = this.name;
    return {
      'adsPersonalizationEnabled': ?adsPersonalizationEnabled,
      'advertiserDisplayName': ?advertiserDisplayName,
      'advertiserId': ?advertiserId,
      'campaignDataSharingEnabled': ?campaignDataSharingEnabled,
      'costDataSharingEnabled': ?costDataSharingEnabled,
      'name': ?name,
    };
  }
}

/// A proposal for a link between a Google Analytics property and a Display &
/// Video 360 advertiser.
///
/// A proposal is converted to a DisplayVideo360AdvertiserLink once approved.
/// Google Analytics admins approve inbound proposals while Display & Video 360
/// admins approve outbound proposals.
class GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal {
  /// Enables personalized advertising features with this integration.
  ///
  /// If this field is not set on create, it will be defaulted to true.
  ///
  /// Immutable.
  core.bool? adsPersonalizationEnabled;

  /// The display name of the Display & Video Advertiser.
  ///
  /// Only populated for proposals that originated from Display & Video 360.
  ///
  /// Output only.
  core.String? advertiserDisplayName;

  /// The Display & Video 360 Advertiser's advertiser ID.
  ///
  /// Immutable.
  core.String? advertiserId;

  /// Enables the import of campaign data from Display & Video 360.
  ///
  /// If this field is not set on create, it will be defaulted to true.
  ///
  /// Immutable.
  core.bool? campaignDataSharingEnabled;

  /// Enables the import of cost data from Display & Video 360.
  ///
  /// This can only be enabled if campaign_data_sharing_enabled is enabled. If
  /// this field is not set on create, it will be defaulted to true.
  ///
  /// Immutable.
  core.bool? costDataSharingEnabled;

  /// The status information for this link proposal.
  ///
  /// Output only.
  GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails?
  linkProposalStatusDetails;

  /// The resource name for this DisplayVideo360AdvertiserLinkProposal resource.
  ///
  /// Format:
  /// properties/{propertyId}/displayVideo360AdvertiserLinkProposals/{proposalId}
  /// Note: proposalId is not the Display & Video 360 Advertiser ID
  ///
  /// Output only.
  core.String? name;

  /// Input only.
  ///
  /// On a proposal being sent to Display & Video 360, this field must be set to
  /// the email address of an admin on the target advertiser. This is used to
  /// verify that the Google Analytics admin is aware of at least one admin on
  /// the Display & Video 360 Advertiser. This does not restrict approval of the
  /// proposal to a single user. Any admin on the Display & Video 360 Advertiser
  /// may approve the proposal.
  core.String? validationEmail;

  GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal({
    this.adsPersonalizationEnabled,
    this.advertiserDisplayName,
    this.advertiserId,
    this.campaignDataSharingEnabled,
    this.costDataSharingEnabled,
    this.linkProposalStatusDetails,
    this.name,
    this.validationEmail,
  });

  GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal.fromJson(
    core.Map json_,
  ) : this(
        adsPersonalizationEnabled:
            json_['adsPersonalizationEnabled'] as core.bool?,
        advertiserDisplayName: json_['advertiserDisplayName'] as core.String?,
        advertiserId: json_['advertiserId'] as core.String?,
        campaignDataSharingEnabled:
            json_['campaignDataSharingEnabled'] as core.bool?,
        costDataSharingEnabled: json_['costDataSharingEnabled'] as core.bool?,
        linkProposalStatusDetails:
            json_.containsKey('linkProposalStatusDetails')
            ? GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails.fromJson(
                json_['linkProposalStatusDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        validationEmail: json_['validationEmail'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adsPersonalizationEnabled = this.adsPersonalizationEnabled;
    final advertiserDisplayName = this.advertiserDisplayName;
    final advertiserId = this.advertiserId;
    final campaignDataSharingEnabled = this.campaignDataSharingEnabled;
    final costDataSharingEnabled = this.costDataSharingEnabled;
    final linkProposalStatusDetails = this.linkProposalStatusDetails;
    final name = this.name;
    final validationEmail = this.validationEmail;
    return {
      'adsPersonalizationEnabled': ?adsPersonalizationEnabled,
      'advertiserDisplayName': ?advertiserDisplayName,
      'advertiserId': ?advertiserId,
      'campaignDataSharingEnabled': ?campaignDataSharingEnabled,
      'costDataSharingEnabled': ?costDataSharingEnabled,
      'linkProposalStatusDetails': ?linkProposalStatusDetails,
      'name': ?name,
      'validationEmail': ?validationEmail,
    };
  }
}

/// Singleton resource under a web DataStream, configuring measurement of
/// additional site interactions and content.
class GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings {
  /// If enabled, capture a file download event each time a link is clicked with
  /// a common document, compressed file, application, video, or audio
  /// extension.
  core.bool? fileDownloadsEnabled;

  /// If enabled, capture a form interaction event each time a visitor interacts
  /// with a form on your website.
  ///
  /// False by default.
  core.bool? formInteractionsEnabled;

  /// Resource name of the Enhanced Measurement Settings.
  ///
  /// Format:
  /// properties/{property_id}/dataStreams/{data_stream}/enhancedMeasurementSettings
  /// Example: "properties/1000/dataStreams/2000/enhancedMeasurementSettings"
  ///
  /// Output only.
  core.String? name;

  /// If enabled, capture an outbound click event each time a visitor clicks a
  /// link that leads them away from your domain.
  core.bool? outboundClicksEnabled;

  /// If enabled, capture a page view event each time the website changes the
  /// browser history state.
  core.bool? pageChangesEnabled;

  /// If enabled, capture scroll events each time a visitor gets to the bottom
  /// of a page.
  core.bool? scrollsEnabled;

  /// URL query parameters to interpret as site search parameters.
  ///
  /// Max length is 1024 characters. Must not be empty.
  ///
  /// Required.
  core.String? searchQueryParameter;

  /// If enabled, capture a view search results event each time a visitor
  /// performs a search on your site (based on a query parameter).
  core.bool? siteSearchEnabled;

  /// Indicates whether Enhanced Measurement Settings will be used to
  /// automatically measure interactions and content on this web stream.
  ///
  /// Changing this value does not affect the settings themselves, but
  /// determines whether they are respected.
  core.bool? streamEnabled;

  /// Additional URL query parameters.
  ///
  /// Max length is 1024 characters.
  core.String? uriQueryParameter;

  /// If enabled, capture video play, progress, and complete events as visitors
  /// view embedded videos on your site.
  core.bool? videoEngagementEnabled;

  GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings({
    this.fileDownloadsEnabled,
    this.formInteractionsEnabled,
    this.name,
    this.outboundClicksEnabled,
    this.pageChangesEnabled,
    this.scrollsEnabled,
    this.searchQueryParameter,
    this.siteSearchEnabled,
    this.streamEnabled,
    this.uriQueryParameter,
    this.videoEngagementEnabled,
  });

  GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings.fromJson(
    core.Map json_,
  ) : this(
        fileDownloadsEnabled: json_['fileDownloadsEnabled'] as core.bool?,
        formInteractionsEnabled: json_['formInteractionsEnabled'] as core.bool?,
        name: json_['name'] as core.String?,
        outboundClicksEnabled: json_['outboundClicksEnabled'] as core.bool?,
        pageChangesEnabled: json_['pageChangesEnabled'] as core.bool?,
        scrollsEnabled: json_['scrollsEnabled'] as core.bool?,
        searchQueryParameter: json_['searchQueryParameter'] as core.String?,
        siteSearchEnabled: json_['siteSearchEnabled'] as core.bool?,
        streamEnabled: json_['streamEnabled'] as core.bool?,
        uriQueryParameter: json_['uriQueryParameter'] as core.String?,
        videoEngagementEnabled: json_['videoEngagementEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fileDownloadsEnabled = this.fileDownloadsEnabled;
    final formInteractionsEnabled = this.formInteractionsEnabled;
    final name = this.name;
    final outboundClicksEnabled = this.outboundClicksEnabled;
    final pageChangesEnabled = this.pageChangesEnabled;
    final scrollsEnabled = this.scrollsEnabled;
    final searchQueryParameter = this.searchQueryParameter;
    final siteSearchEnabled = this.siteSearchEnabled;
    final streamEnabled = this.streamEnabled;
    final uriQueryParameter = this.uriQueryParameter;
    final videoEngagementEnabled = this.videoEngagementEnabled;
    return {
      'fileDownloadsEnabled': ?fileDownloadsEnabled,
      'formInteractionsEnabled': ?formInteractionsEnabled,
      'name': ?name,
      'outboundClicksEnabled': ?outboundClicksEnabled,
      'pageChangesEnabled': ?pageChangesEnabled,
      'scrollsEnabled': ?scrollsEnabled,
      'searchQueryParameter': ?searchQueryParameter,
      'siteSearchEnabled': ?siteSearchEnabled,
      'streamEnabled': ?streamEnabled,
      'uriQueryParameter': ?uriQueryParameter,
      'videoEngagementEnabled': ?videoEngagementEnabled,
    };
  }
}

/// An Event Create Rule defines conditions that will trigger the creation of an
/// entirely new event based upon matched criteria of a source event.
///
/// Additional mutations of the parameters from the source event can be defined.
/// Unlike Event Edit rules, Event Creation Rules have no defined order. They
/// will all be run independently. Event Edit and Event Create rules can't be
/// used to modify an event created from an Event Create rule.
class GoogleAnalyticsAdminV1alphaEventCreateRule {
  /// The name of the new event to be created.
  ///
  /// This value must: * be less than 40 characters * consist only of letters,
  /// digits or _ (underscores) * start with a letter
  ///
  /// Required.
  core.String? destinationEvent;

  /// Must have at least one condition, and can have up to 10 max.
  ///
  /// Conditions on the source event must match for this rule to be applied.
  ///
  /// Required.
  core.List<GoogleAnalyticsAdminV1alphaMatchingCondition>? eventConditions;

  /// Resource name for this EventCreateRule resource.
  ///
  /// Format:
  /// properties/{property}/dataStreams/{data_stream}/eventCreateRules/{event_create_rule}
  ///
  /// Output only.
  core.String? name;

  /// Parameter mutations define parameter behavior on the new event, and are
  /// applied in order.
  ///
  /// A maximum of 20 mutations can be applied.
  core.List<GoogleAnalyticsAdminV1alphaParameterMutation>? parameterMutations;

  /// If true, the source parameters are copied to the new event.
  ///
  /// If false, or unset, all non-internal parameters are not copied from the
  /// source event. Parameter mutations are applied after the parameters have
  /// been copied.
  core.bool? sourceCopyParameters;

  GoogleAnalyticsAdminV1alphaEventCreateRule({
    this.destinationEvent,
    this.eventConditions,
    this.name,
    this.parameterMutations,
    this.sourceCopyParameters,
  });

  GoogleAnalyticsAdminV1alphaEventCreateRule.fromJson(core.Map json_)
    : this(
        destinationEvent: json_['destinationEvent'] as core.String?,
        eventConditions: (json_['eventConditions'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaMatchingCondition.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        name: json_['name'] as core.String?,
        parameterMutations: (json_['parameterMutations'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaParameterMutation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        sourceCopyParameters: json_['sourceCopyParameters'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final destinationEvent = this.destinationEvent;
    final eventConditions = this.eventConditions;
    final name = this.name;
    final parameterMutations = this.parameterMutations;
    final sourceCopyParameters = this.sourceCopyParameters;
    return {
      'destinationEvent': ?destinationEvent,
      'eventConditions': ?eventConditions,
      'name': ?name,
      'parameterMutations': ?parameterMutations,
      'sourceCopyParameters': ?sourceCopyParameters,
    };
  }
}

/// An Event Edit Rule defines conditions that will trigger the creation of an
/// entirely new event based upon matched criteria of a source event.
///
/// Additional mutations of the parameters from the source event can be defined.
/// Unlike Event Create rules, Event Edit Rules are applied in their defined
/// order. Event Edit rules can't be used to modify an event created from an
/// Event Create rule.
class GoogleAnalyticsAdminV1alphaEventEditRule {
  /// The display name of this event edit rule.
  ///
  /// Maximum of 255 characters.
  ///
  /// Required.
  core.String? displayName;

  /// Conditions on the source event must match for this rule to be applied.
  ///
  /// Must have at least one condition, and can have up to 10 max.
  ///
  /// Required.
  core.List<GoogleAnalyticsAdminV1alphaMatchingCondition>? eventConditions;

  /// Identifier.
  ///
  /// Resource name for this EventEditRule resource. Format:
  /// properties/{property}/dataStreams/{data_stream}/eventEditRules/{event_edit_rule}
  core.String? name;

  /// Parameter mutations define parameter behavior on the new event, and are
  /// applied in order.
  ///
  /// A maximum of 20 mutations can be applied.
  ///
  /// Required.
  core.List<GoogleAnalyticsAdminV1alphaParameterMutation>? parameterMutations;

  /// The order for which this rule will be processed.
  ///
  /// Rules with an order value lower than this will be processed before this
  /// rule, rules with an order value higher than this will be processed after
  /// this rule. New event edit rules will be assigned an order value at the end
  /// of the order. This value does not apply to event create rules.
  ///
  /// Output only.
  core.String? processingOrder;

  GoogleAnalyticsAdminV1alphaEventEditRule({
    this.displayName,
    this.eventConditions,
    this.name,
    this.parameterMutations,
    this.processingOrder,
  });

  GoogleAnalyticsAdminV1alphaEventEditRule.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        eventConditions: (json_['eventConditions'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaMatchingCondition.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        name: json_['name'] as core.String?,
        parameterMutations: (json_['parameterMutations'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaParameterMutation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        processingOrder: json_['processingOrder'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final eventConditions = this.eventConditions;
    final name = this.name;
    final parameterMutations = this.parameterMutations;
    final processingOrder = this.processingOrder;
    return {
      'displayName': ?displayName,
      'eventConditions': ?eventConditions,
      'name': ?name,
      'parameterMutations': ?parameterMutations,
      'processingOrder': ?processingOrder,
    };
  }
}

/// Event setting conditions to match an event.
class GoogleAnalyticsAdminV1alphaEventMapping {
  /// Name of the Google Analytics event.
  ///
  /// It must always be set. The max allowed display name length is 40 UTF-16
  /// code units.
  ///
  /// Required.
  core.String? eventName;

  /// The maximum number of times the event occurred.
  ///
  /// If not set, maximum event count won't be checked.
  core.String? maxEventCount;

  /// The maximum revenue generated due to the event.
  ///
  /// Revenue currency will be defined at the property level. If not set,
  /// maximum event value won't be checked.
  core.double? maxEventValue;

  /// At least one of the following four min/max values must be set.
  ///
  /// The values set will be ANDed together to qualify an event. The minimum
  /// number of times the event occurred. If not set, minimum event count won't
  /// be checked.
  core.String? minEventCount;

  /// The minimum revenue generated due to the event.
  ///
  /// Revenue currency will be defined at the property level. If not set,
  /// minimum event value won't be checked.
  core.double? minEventValue;

  GoogleAnalyticsAdminV1alphaEventMapping({
    this.eventName,
    this.maxEventCount,
    this.maxEventValue,
    this.minEventCount,
    this.minEventValue,
  });

  GoogleAnalyticsAdminV1alphaEventMapping.fromJson(core.Map json_)
    : this(
        eventName: json_['eventName'] as core.String?,
        maxEventCount: json_['maxEventCount'] as core.String?,
        maxEventValue: (json_['maxEventValue'] as core.num?)?.toDouble(),
        minEventCount: json_['minEventCount'] as core.String?,
        minEventValue: (json_['minEventValue'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eventName = this.eventName;
    final maxEventCount = this.maxEventCount;
    final maxEventValue = this.maxEventValue;
    final minEventCount = this.minEventCount;
    final minEventValue = this.minEventValue;
    return {
      'eventName': ?eventName,
      'maxEventCount': ?maxEventCount,
      'maxEventValue': ?maxEventValue,
      'minEventCount': ?minEventCount,
      'minEventValue': ?minEventValue,
    };
  }
}

/// A resource message representing an `ExpandedDataSet`.
class GoogleAnalyticsAdminV1alphaExpandedDataSet {
  /// Time when expanded data set began (or will begin) collecing data.
  ///
  /// Output only.
  core.String? dataCollectionStartTime;

  /// The description of the ExpandedDataSet.
  ///
  /// Max 50 chars.
  ///
  /// Optional.
  core.String? description;

  /// A logical expression of ExpandedDataSet filters applied to dimension
  /// included in the ExpandedDataSet.
  ///
  /// This filter is used to reduce the number of rows and thus the chance of
  /// encountering `other` row.
  ///
  /// Immutable.
  GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression?
  dimensionFilterExpression;

  /// The list of dimensions included in the ExpandedDataSet.
  ///
  /// See the
  /// [API Dimensions](https://developers.google.com/analytics/devguides/reporting/data/v1/api-schema#dimensions)
  /// for the list of dimension names.
  ///
  /// Immutable.
  core.List<core.String>? dimensionNames;

  /// The display name of the ExpandedDataSet.
  ///
  /// Max 200 chars.
  ///
  /// Required.
  core.String? displayName;

  /// The list of metrics included in the ExpandedDataSet.
  ///
  /// See the
  /// [API Metrics](https://developers.google.com/analytics/devguides/reporting/data/v1/api-schema#metrics)
  /// for the list of dimension names.
  ///
  /// Immutable.
  core.List<core.String>? metricNames;

  /// The resource name for this ExpandedDataSet resource.
  ///
  /// Format: properties/{property_id}/expandedDataSets/{expanded_data_set}
  ///
  /// Output only.
  core.String? name;

  GoogleAnalyticsAdminV1alphaExpandedDataSet({
    this.dataCollectionStartTime,
    this.description,
    this.dimensionFilterExpression,
    this.dimensionNames,
    this.displayName,
    this.metricNames,
    this.name,
  });

  GoogleAnalyticsAdminV1alphaExpandedDataSet.fromJson(core.Map json_)
    : this(
        dataCollectionStartTime:
            json_['dataCollectionStartTime'] as core.String?,
        description: json_['description'] as core.String?,
        dimensionFilterExpression:
            json_.containsKey('dimensionFilterExpression')
            ? GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression.fromJson(
                json_['dimensionFilterExpression']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dimensionNames: (json_['dimensionNames'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        displayName: json_['displayName'] as core.String?,
        metricNames: (json_['metricNames'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataCollectionStartTime = this.dataCollectionStartTime;
    final description = this.description;
    final dimensionFilterExpression = this.dimensionFilterExpression;
    final dimensionNames = this.dimensionNames;
    final displayName = this.displayName;
    final metricNames = this.metricNames;
    final name = this.name;
    return {
      'dataCollectionStartTime': ?dataCollectionStartTime,
      'description': ?description,
      'dimensionFilterExpression': ?dimensionFilterExpression,
      'dimensionNames': ?dimensionNames,
      'displayName': ?displayName,
      'metricNames': ?metricNames,
      'name': ?name,
    };
  }
}

/// A specific filter for a single dimension
class GoogleAnalyticsAdminV1alphaExpandedDataSetFilter {
  /// The dimension name to filter.
  ///
  /// Required.
  core.String? fieldName;

  /// A filter for a string dimension that matches a particular list of options.
  GoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter? inListFilter;

  /// A filter for a string-type dimension that matches a particular pattern.
  GoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter? stringFilter;

  GoogleAnalyticsAdminV1alphaExpandedDataSetFilter({
    this.fieldName,
    this.inListFilter,
    this.stringFilter,
  });

  GoogleAnalyticsAdminV1alphaExpandedDataSetFilter.fromJson(core.Map json_)
    : this(
        fieldName: json_['fieldName'] as core.String?,
        inListFilter: json_.containsKey('inListFilter')
            ? GoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter.fromJson(
                json_['inListFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        stringFilter: json_.containsKey('stringFilter')
            ? GoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter.fromJson(
                json_['stringFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fieldName = this.fieldName;
    final inListFilter = this.inListFilter;
    final stringFilter = this.stringFilter;
    return {
      'fieldName': ?fieldName,
      'inListFilter': ?inListFilter,
      'stringFilter': ?stringFilter,
    };
  }
}

/// A logical expression of EnhancedDataSet dimension filters.
class GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression {
  /// A list of expressions to be AND’ed together.
  ///
  /// It must contain a ExpandedDataSetFilterExpression with either
  /// not_expression or dimension_filter. This must be set for the top level
  /// ExpandedDataSetFilterExpression.
  GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList? andGroup;

  /// A filter on a single dimension.
  ///
  /// This cannot be set on the top level ExpandedDataSetFilterExpression.
  GoogleAnalyticsAdminV1alphaExpandedDataSetFilter? filter;

  /// A filter expression to be NOT'ed (that is, inverted, complemented).
  ///
  /// It must include a dimension_filter. This cannot be set on the top level
  /// ExpandedDataSetFilterExpression.
  GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression? notExpression;

  GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression({
    this.andGroup,
    this.filter,
    this.notExpression,
  });

  GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression.fromJson(
    core.Map json_,
  ) : this(
        andGroup: json_.containsKey('andGroup')
            ? GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList.fromJson(
                json_['andGroup'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        filter: json_.containsKey('filter')
            ? GoogleAnalyticsAdminV1alphaExpandedDataSetFilter.fromJson(
                json_['filter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        notExpression: json_.containsKey('notExpression')
            ? GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression.fromJson(
                json_['notExpression'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final andGroup = this.andGroup;
    final filter = this.filter;
    final notExpression = this.notExpression;
    return {
      'andGroup': ?andGroup,
      'filter': ?filter,
      'notExpression': ?notExpression,
    };
  }
}

/// A list of ExpandedDataSet filter expressions.
class GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList {
  /// A list of ExpandedDataSet filter expressions.
  core.List<GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression>?
  filterExpressions;

  GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList({
    this.filterExpressions,
  });

  GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpressionList.fromJson(
    core.Map json_,
  ) : this(
        filterExpressions: (json_['filterExpressions'] as core.List?)
            ?.map(
              (value) =>
                  GoogleAnalyticsAdminV1alphaExpandedDataSetFilterExpression.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final filterExpressions = this.filterExpressions;
    return {'filterExpressions': ?filterExpressions};
  }
}

/// A filter for a string dimension that matches a particular list of options.
class GoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter {
  /// If true, the match is case-sensitive.
  ///
  /// If false, the match is case-insensitive. Must be true.
  ///
  /// Optional.
  core.bool? caseSensitive;

  /// The list of possible string values to match against.
  ///
  /// Must be non-empty.
  ///
  /// Required.
  core.List<core.String>? values;

  GoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter({
    this.caseSensitive,
    this.values,
  });

  GoogleAnalyticsAdminV1alphaExpandedDataSetFilterInListFilter.fromJson(
    core.Map json_,
  ) : this(
        caseSensitive: json_['caseSensitive'] as core.bool?,
        values: (json_['values'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final caseSensitive = this.caseSensitive;
    final values = this.values;
    return {'caseSensitive': ?caseSensitive, 'values': ?values};
  }
}

/// A filter for a string-type dimension that matches a particular pattern.
class GoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter {
  /// If true, the match is case-sensitive.
  ///
  /// If false, the match is case-insensitive. Must be true when match_type is
  /// EXACT. Must be false when match_type is CONTAINS.
  ///
  /// Optional.
  core.bool? caseSensitive;

  /// The match type for the string filter.
  ///
  /// Required.
  /// Possible string values are:
  /// - "MATCH_TYPE_UNSPECIFIED" : Unspecified
  /// - "EXACT" : Exact match of the string value.
  /// - "CONTAINS" : Contains the string value.
  core.String? matchType;

  /// The string value to be matched against.
  ///
  /// Required.
  core.String? value;

  GoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter({
    this.caseSensitive,
    this.matchType,
    this.value,
  });

  GoogleAnalyticsAdminV1alphaExpandedDataSetFilterStringFilter.fromJson(
    core.Map json_,
  ) : this(
        caseSensitive: json_['caseSensitive'] as core.bool?,
        matchType: json_['matchType'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final caseSensitive = this.caseSensitive;
    final matchType = this.matchType;
    final value = this.value;
    return {
      'caseSensitive': ?caseSensitive,
      'matchType': ?matchType,
      'value': ?value,
    };
  }
}

/// A link between a Google Analytics property and a Firebase project.
typedef GoogleAnalyticsAdminV1alphaFirebaseLink = $FirebaseLink;

/// Read-only resource with the tag for sending data from a website to a
/// DataStream.
///
/// Only present for web DataStream resources.
class GoogleAnalyticsAdminV1alphaGlobalSiteTag {
  /// Resource name for this GlobalSiteTag resource.
  ///
  /// Format: properties/{property_id}/dataStreams/{stream_id}/globalSiteTag
  /// Example: "properties/123/dataStreams/456/globalSiteTag"
  ///
  /// Output only.
  core.String? name;

  /// JavaScript code snippet to be pasted as the first item into the head tag
  /// of every webpage to measure.
  ///
  /// Immutable.
  core.String? snippet;

  GoogleAnalyticsAdminV1alphaGlobalSiteTag({this.name, this.snippet});

  GoogleAnalyticsAdminV1alphaGlobalSiteTag.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        snippet: json_['snippet'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final snippet = this.snippet;
    return {'name': ?name, 'snippet': ?snippet};
  }
}

/// A link between a Google Analytics property and a Google Ads account.
typedef GoogleAnalyticsAdminV1alphaGoogleAdsLink = $GoogleAdsLink;

/// Settings values for Google Signals.
///
/// This is a singleton resource.
class GoogleAnalyticsAdminV1alphaGoogleSignalsSettings {
  /// Terms of Service acceptance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "GOOGLE_SIGNALS_CONSENT_UNSPECIFIED" : Google Signals consent value
  /// defaults to GOOGLE_SIGNALS_CONSENT_UNSPECIFIED. This will be treated as
  /// GOOGLE_SIGNALS_CONSENT_NOT_CONSENTED.
  /// - "GOOGLE_SIGNALS_CONSENT_CONSENTED" : Terms of service have been accepted
  /// - "GOOGLE_SIGNALS_CONSENT_NOT_CONSENTED" : Terms of service have not been
  /// accepted
  core.String? consent;

  /// Resource name of this setting.
  ///
  /// Format: properties/{property_id}/googleSignalsSettings Example:
  /// "properties/1000/googleSignalsSettings"
  ///
  /// Output only.
  core.String? name;

  /// Status of this setting.
  /// Possible string values are:
  /// - "GOOGLE_SIGNALS_STATE_UNSPECIFIED" : Google Signals status defaults to
  /// GOOGLE_SIGNALS_STATE_UNSPECIFIED to represent that the user has not made
  /// an explicit choice.
  /// - "GOOGLE_SIGNALS_ENABLED" : Google Signals is enabled.
  /// - "GOOGLE_SIGNALS_DISABLED" : Google Signals is disabled.
  core.String? state;

  GoogleAnalyticsAdminV1alphaGoogleSignalsSettings({
    this.consent,
    this.name,
    this.state,
  });

  GoogleAnalyticsAdminV1alphaGoogleSignalsSettings.fromJson(core.Map json_)
    : this(
        consent: json_['consent'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final consent = this.consent;
    final name = this.name;
    final state = this.state;
    return {'consent': ?consent, 'name': ?name, 'state': ?state};
  }
}

/// The rules that govern how traffic is grouped into one channel.
class GoogleAnalyticsAdminV1alphaGroupingRule {
  /// Customer defined display name for the channel.
  ///
  /// Required.
  core.String? displayName;

  /// The Filter Expression that defines the Grouping Rule.
  ///
  /// Required.
  GoogleAnalyticsAdminV1alphaChannelGroupFilterExpression? expression;

  GoogleAnalyticsAdminV1alphaGroupingRule({this.displayName, this.expression});

  GoogleAnalyticsAdminV1alphaGroupingRule.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        expression: json_.containsKey('expression')
            ? GoogleAnalyticsAdminV1alphaChannelGroupFilterExpression.fromJson(
                json_['expression'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final expression = this.expression;
    return {'displayName': ?displayName, 'expression': ?expression};
  }
}

/// A key event in a Google Analytics property.
class GoogleAnalyticsAdminV1alphaKeyEvent {
  /// The method by which Key Events will be counted across multiple events
  /// within a session.
  ///
  /// Required.
  /// Possible string values are:
  /// - "COUNTING_METHOD_UNSPECIFIED" : Counting method not specified.
  /// - "ONCE_PER_EVENT" : Each Event instance is considered a Key Event.
  /// - "ONCE_PER_SESSION" : An Event instance is considered a Key Event at most
  /// once per session per user.
  core.String? countingMethod;

  /// Time when this key event was created in the property.
  ///
  /// Output only.
  core.String? createTime;

  /// If set to true, this key event refers to a custom event.
  ///
  /// If set to false, this key event refers to a default event in GA. Default
  /// events typically have special meaning in GA. Default events are usually
  /// created for you by the GA system, but in some cases can be created by
  /// property admins. Custom events count towards the maximum number of custom
  /// key events that may be created per property.
  ///
  /// Output only.
  core.bool? custom;

  /// Defines a default value/currency for a key event.
  ///
  /// Optional.
  GoogleAnalyticsAdminV1alphaKeyEventDefaultValue? defaultValue;

  /// If set to true, this event can be deleted.
  ///
  /// Output only.
  core.bool? deletable;

  /// The event name for this key event.
  ///
  /// Examples: 'click', 'purchase'
  ///
  /// Immutable.
  core.String? eventName;

  /// Resource name of this key event.
  ///
  /// Format: properties/{property}/keyEvents/{key_event}
  ///
  /// Output only.
  core.String? name;

  GoogleAnalyticsAdminV1alphaKeyEvent({
    this.countingMethod,
    this.createTime,
    this.custom,
    this.defaultValue,
    this.deletable,
    this.eventName,
    this.name,
  });

  GoogleAnalyticsAdminV1alphaKeyEvent.fromJson(core.Map json_)
    : this(
        countingMethod: json_['countingMethod'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        custom: json_['custom'] as core.bool?,
        defaultValue: json_.containsKey('defaultValue')
            ? GoogleAnalyticsAdminV1alphaKeyEventDefaultValue.fromJson(
                json_['defaultValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        deletable: json_['deletable'] as core.bool?,
        eventName: json_['eventName'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final countingMethod = this.countingMethod;
    final createTime = this.createTime;
    final custom = this.custom;
    final defaultValue = this.defaultValue;
    final deletable = this.deletable;
    final eventName = this.eventName;
    final name = this.name;
    return {
      'countingMethod': ?countingMethod,
      'createTime': ?createTime,
      'custom': ?custom,
      'defaultValue': ?defaultValue,
      'deletable': ?deletable,
      'eventName': ?eventName,
      'name': ?name,
    };
  }
}

/// Defines a default value/currency for a key event.
typedef GoogleAnalyticsAdminV1alphaKeyEventDefaultValue = $KeyEventDefaultValue;

/// Status information for a link proposal.
class GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails {
  /// The source of this proposal.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LINK_PROPOSAL_INITIATING_PRODUCT_UNSPECIFIED" : Unspecified product.
  /// - "GOOGLE_ANALYTICS" : This proposal was created by a user from Google
  /// Analytics.
  /// - "LINKED_PRODUCT" : This proposal was created by a user from a linked
  /// product (not Google Analytics).
  core.String? linkProposalInitiatingProduct;

  /// The state of this proposal.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LINK_PROPOSAL_STATE_UNSPECIFIED" : Unspecified state
  /// - "AWAITING_REVIEW_FROM_GOOGLE_ANALYTICS" : This proposal is awaiting
  /// review from a Google Analytics user. This proposal will automatically
  /// expire after some time.
  /// - "AWAITING_REVIEW_FROM_LINKED_PRODUCT" : This proposal is awaiting review
  /// from a user of a linked product. This proposal will automatically expire
  /// after some time.
  /// - "WITHDRAWN" : This proposal has been withdrawn by an admin on the
  /// initiating product. This proposal will be automatically deleted after some
  /// time.
  /// - "DECLINED" : This proposal has been declined by an admin on the
  /// receiving product. This proposal will be automatically deleted after some
  /// time.
  /// - "EXPIRED" : This proposal expired due to lack of response from an admin
  /// on the receiving product. This proposal will be automatically deleted
  /// after some time.
  /// - "OBSOLETE" : This proposal has become obsolete because a link was
  /// directly created to the same external product resource that this proposal
  /// specifies. This proposal will be automatically deleted after some time.
  core.String? linkProposalState;

  /// The email address of the user that proposed this linkage.
  ///
  /// Output only.
  core.String? requestorEmail;

  GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails({
    this.linkProposalInitiatingProduct,
    this.linkProposalState,
    this.requestorEmail,
  });

  GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails.fromJson(core.Map json_)
    : this(
        linkProposalInitiatingProduct:
            json_['linkProposalInitiatingProduct'] as core.String?,
        linkProposalState: json_['linkProposalState'] as core.String?,
        requestorEmail: json_['requestorEmail'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final linkProposalInitiatingProduct = this.linkProposalInitiatingProduct;
    final linkProposalState = this.linkProposalState;
    final requestorEmail = this.requestorEmail;
    return {
      'linkProposalInitiatingProduct': ?linkProposalInitiatingProduct,
      'linkProposalState': ?linkProposalState,
      'requestorEmail': ?requestorEmail,
    };
  }
}

/// Response message for ListAccessBindings RPC.
class GoogleAnalyticsAdminV1alphaListAccessBindingsResponse {
  /// List of AccessBindings.
  ///
  /// These will be ordered stably, but in an arbitrary order.
  core.List<GoogleAnalyticsAdminV1alphaAccessBinding>? accessBindings;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListAccessBindingsResponse({
    this.accessBindings,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListAccessBindingsResponse.fromJson(core.Map json_)
    : this(
        accessBindings: (json_['accessBindings'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaAccessBinding.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessBindings = this.accessBindings;
    final nextPageToken = this.nextPageToken;
    return {'accessBindings': ?accessBindings, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for ListAccountSummaries RPC.
class GoogleAnalyticsAdminV1alphaListAccountSummariesResponse {
  /// Account summaries of all accounts the caller has access to.
  core.List<GoogleAnalyticsAdminV1alphaAccountSummary>? accountSummaries;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListAccountSummariesResponse({
    this.accountSummaries,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListAccountSummariesResponse.fromJson(
    core.Map json_,
  ) : this(
        accountSummaries: (json_['accountSummaries'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaAccountSummary.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountSummaries = this.accountSummaries;
    final nextPageToken = this.nextPageToken;
    return {
      'accountSummaries': ?accountSummaries,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Request message for ListAccounts RPC.
class GoogleAnalyticsAdminV1alphaListAccountsResponse {
  /// Results that were accessible to the caller.
  core.List<GoogleAnalyticsAdminV1alphaAccount>? accounts;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListAccountsResponse({
    this.accounts,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListAccountsResponse.fromJson(core.Map json_)
    : this(
        accounts: (json_['accounts'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaAccount.fromJson(
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

/// Response message for ListAdSenseLinks method.
class GoogleAnalyticsAdminV1alphaListAdSenseLinksResponse {
  /// List of AdSenseLinks.
  core.List<GoogleAnalyticsAdminV1alphaAdSenseLink>? adsenseLinks;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListAdSenseLinksResponse({
    this.adsenseLinks,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListAdSenseLinksResponse.fromJson(core.Map json_)
    : this(
        adsenseLinks: (json_['adsenseLinks'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaAdSenseLink.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adsenseLinks = this.adsenseLinks;
    final nextPageToken = this.nextPageToken;
    return {'adsenseLinks': ?adsenseLinks, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for ListAudiences RPC.
class GoogleAnalyticsAdminV1alphaListAudiencesResponse {
  /// List of Audiences.
  core.List<GoogleAnalyticsAdminV1alphaAudience>? audiences;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListAudiencesResponse({
    this.audiences,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListAudiencesResponse.fromJson(core.Map json_)
    : this(
        audiences: (json_['audiences'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaAudience.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audiences = this.audiences;
    final nextPageToken = this.nextPageToken;
    return {'audiences': ?audiences, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for ListBigQueryLinks RPC
class GoogleAnalyticsAdminV1alphaListBigQueryLinksResponse {
  /// List of BigQueryLinks.
  core.List<GoogleAnalyticsAdminV1alphaBigQueryLink>? bigqueryLinks;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListBigQueryLinksResponse({
    this.bigqueryLinks,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListBigQueryLinksResponse.fromJson(core.Map json_)
    : this(
        bigqueryLinks: (json_['bigqueryLinks'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaBigQueryLink.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bigqueryLinks = this.bigqueryLinks;
    final nextPageToken = this.nextPageToken;
    return {'bigqueryLinks': ?bigqueryLinks, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for ListCalculatedMetrics RPC.
class GoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse {
  /// List of CalculatedMetrics.
  core.List<GoogleAnalyticsAdminV1alphaCalculatedMetric>? calculatedMetrics;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse({
    this.calculatedMetrics,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse.fromJson(
    core.Map json_,
  ) : this(
        calculatedMetrics: (json_['calculatedMetrics'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaCalculatedMetric.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final calculatedMetrics = this.calculatedMetrics;
    final nextPageToken = this.nextPageToken;
    return {
      'calculatedMetrics': ?calculatedMetrics,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Response message for ListChannelGroups RPC.
class GoogleAnalyticsAdminV1alphaListChannelGroupsResponse {
  /// List of ChannelGroup.
  ///
  /// These will be ordered stably, but in an arbitrary order.
  core.List<GoogleAnalyticsAdminV1alphaChannelGroup>? channelGroups;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListChannelGroupsResponse({
    this.channelGroups,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListChannelGroupsResponse.fromJson(core.Map json_)
    : this(
        channelGroups: (json_['channelGroups'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaChannelGroup.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final channelGroups = this.channelGroups;
    final nextPageToken = this.nextPageToken;
    return {'channelGroups': ?channelGroups, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for ListConversionEvents RPC.
class GoogleAnalyticsAdminV1alphaListConversionEventsResponse {
  /// The requested conversion events
  core.List<GoogleAnalyticsAdminV1alphaConversionEvent>? conversionEvents;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListConversionEventsResponse({
    this.conversionEvents,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListConversionEventsResponse.fromJson(
    core.Map json_,
  ) : this(
        conversionEvents: (json_['conversionEvents'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaConversionEvent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conversionEvents = this.conversionEvents;
    final nextPageToken = this.nextPageToken;
    return {
      'conversionEvents': ?conversionEvents,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Response message for ListCustomDimensions RPC.
class GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse {
  /// List of CustomDimensions.
  core.List<GoogleAnalyticsAdminV1alphaCustomDimension>? customDimensions;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse({
    this.customDimensions,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse.fromJson(
    core.Map json_,
  ) : this(
        customDimensions: (json_['customDimensions'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaCustomDimension.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customDimensions = this.customDimensions;
    final nextPageToken = this.nextPageToken;
    return {
      'customDimensions': ?customDimensions,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Response message for ListCustomMetrics RPC.
class GoogleAnalyticsAdminV1alphaListCustomMetricsResponse {
  /// List of CustomMetrics.
  core.List<GoogleAnalyticsAdminV1alphaCustomMetric>? customMetrics;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListCustomMetricsResponse({
    this.customMetrics,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListCustomMetricsResponse.fromJson(core.Map json_)
    : this(
        customMetrics: (json_['customMetrics'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaCustomMetric.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customMetrics = this.customMetrics;
    final nextPageToken = this.nextPageToken;
    return {'customMetrics': ?customMetrics, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for ListDataStreams RPC.
class GoogleAnalyticsAdminV1alphaListDataStreamsResponse {
  /// List of DataStreams.
  core.List<GoogleAnalyticsAdminV1alphaDataStream>? dataStreams;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListDataStreamsResponse({
    this.dataStreams,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListDataStreamsResponse.fromJson(core.Map json_)
    : this(
        dataStreams: (json_['dataStreams'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaDataStream.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataStreams = this.dataStreams;
    final nextPageToken = this.nextPageToken;
    return {'dataStreams': ?dataStreams, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for ListDisplayVideo360AdvertiserLinkProposals RPC.
class GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse {
  /// List of DisplayVideo360AdvertiserLinkProposals.
  core.List<GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal>?
  displayVideo360AdvertiserLinkProposals;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse({
    this.displayVideo360AdvertiserLinkProposals,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse.fromJson(
    core.Map json_,
  ) : this(
        displayVideo360AdvertiserLinkProposals:
            (json_['displayVideo360AdvertiserLinkProposals'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayVideo360AdvertiserLinkProposals =
        this.displayVideo360AdvertiserLinkProposals;
    final nextPageToken = this.nextPageToken;
    return {
      'displayVideo360AdvertiserLinkProposals':
          ?displayVideo360AdvertiserLinkProposals,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Response message for ListDisplayVideo360AdvertiserLinks RPC.
class GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse {
  /// List of DisplayVideo360AdvertiserLinks.
  core.List<GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink>?
  displayVideo360AdvertiserLinks;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse({
    this.displayVideo360AdvertiserLinks,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse.fromJson(
    core.Map json_,
  ) : this(
        displayVideo360AdvertiserLinks:
            (json_['displayVideo360AdvertiserLinks'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayVideo360AdvertiserLinks = this.displayVideo360AdvertiserLinks;
    final nextPageToken = this.nextPageToken;
    return {
      'displayVideo360AdvertiserLinks': ?displayVideo360AdvertiserLinks,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Response message for ListEventCreateRules RPC.
class GoogleAnalyticsAdminV1alphaListEventCreateRulesResponse {
  /// List of EventCreateRules.
  ///
  /// These will be ordered stably, but in an arbitrary order.
  core.List<GoogleAnalyticsAdminV1alphaEventCreateRule>? eventCreateRules;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListEventCreateRulesResponse({
    this.eventCreateRules,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListEventCreateRulesResponse.fromJson(
    core.Map json_,
  ) : this(
        eventCreateRules: (json_['eventCreateRules'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaEventCreateRule.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eventCreateRules = this.eventCreateRules;
    final nextPageToken = this.nextPageToken;
    return {
      'eventCreateRules': ?eventCreateRules,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Response message for ListEventEditRules RPC.
class GoogleAnalyticsAdminV1alphaListEventEditRulesResponse {
  /// List of EventEditRules.
  ///
  /// These will be ordered stably, but in an arbitrary order.
  core.List<GoogleAnalyticsAdminV1alphaEventEditRule>? eventEditRules;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListEventEditRulesResponse({
    this.eventEditRules,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListEventEditRulesResponse.fromJson(core.Map json_)
    : this(
        eventEditRules: (json_['eventEditRules'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaEventEditRule.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eventEditRules = this.eventEditRules;
    final nextPageToken = this.nextPageToken;
    return {'eventEditRules': ?eventEditRules, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for ListExpandedDataSets RPC.
class GoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse {
  /// List of ExpandedDataSet.
  ///
  /// These will be ordered stably, but in an arbitrary order.
  core.List<GoogleAnalyticsAdminV1alphaExpandedDataSet>? expandedDataSets;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse({
    this.expandedDataSets,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse.fromJson(
    core.Map json_,
  ) : this(
        expandedDataSets: (json_['expandedDataSets'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaExpandedDataSet.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final expandedDataSets = this.expandedDataSets;
    final nextPageToken = this.nextPageToken;
    return {
      'expandedDataSets': ?expandedDataSets,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Response message for ListFirebaseLinks RPC
class GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse {
  /// List of FirebaseLinks.
  ///
  /// This will have at most one value.
  core.List<GoogleAnalyticsAdminV1alphaFirebaseLink>? firebaseLinks;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages. Currently, Google
  /// Analytics supports only one FirebaseLink per property, so this will never
  /// be populated.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse({
    this.firebaseLinks,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse.fromJson(core.Map json_)
    : this(
        firebaseLinks: (json_['firebaseLinks'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaFirebaseLink.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final firebaseLinks = this.firebaseLinks;
    final nextPageToken = this.nextPageToken;
    return {'firebaseLinks': ?firebaseLinks, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for ListGoogleAdsLinks RPC.
class GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse {
  /// List of GoogleAdsLinks.
  core.List<GoogleAnalyticsAdminV1alphaGoogleAdsLink>? googleAdsLinks;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse({
    this.googleAdsLinks,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse.fromJson(core.Map json_)
    : this(
        googleAdsLinks: (json_['googleAdsLinks'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaGoogleAdsLink.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final googleAdsLinks = this.googleAdsLinks;
    final nextPageToken = this.nextPageToken;
    return {'googleAdsLinks': ?googleAdsLinks, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for ListKeyEvents RPC.
class GoogleAnalyticsAdminV1alphaListKeyEventsResponse {
  /// The requested Key Events
  core.List<GoogleAnalyticsAdminV1alphaKeyEvent>? keyEvents;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListKeyEventsResponse({
    this.keyEvents,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListKeyEventsResponse.fromJson(core.Map json_)
    : this(
        keyEvents: (json_['keyEvents'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaKeyEvent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final keyEvents = this.keyEvents;
    final nextPageToken = this.nextPageToken;
    return {'keyEvents': ?keyEvents, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for ListMeasurementProtocolSecret RPC
class GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse {
  /// A list of secrets for the parent stream specified in the request.
  core.List<GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret>?
  measurementProtocolSecrets;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse({
    this.measurementProtocolSecrets,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse.fromJson(
    core.Map json_,
  ) : this(
        measurementProtocolSecrets:
            (json_['measurementProtocolSecrets'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final measurementProtocolSecrets = this.measurementProtocolSecrets;
    final nextPageToken = this.nextPageToken;
    return {
      'measurementProtocolSecrets': ?measurementProtocolSecrets,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Response message for ListProperties RPC.
class GoogleAnalyticsAdminV1alphaListPropertiesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Results that matched the filter criteria and were accessible to the
  /// caller.
  core.List<GoogleAnalyticsAdminV1alphaProperty>? properties;

  GoogleAnalyticsAdminV1alphaListPropertiesResponse({
    this.nextPageToken,
    this.properties,
  });

  GoogleAnalyticsAdminV1alphaListPropertiesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        properties: (json_['properties'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaProperty.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final properties = this.properties;
    return {'nextPageToken': ?nextPageToken, 'properties': ?properties};
  }
}

/// Response message for ListReportingDataAnnotation RPC.
class GoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of Reporting Data Annotations.
  core.List<GoogleAnalyticsAdminV1alphaReportingDataAnnotation>?
  reportingDataAnnotations;

  GoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse({
    this.nextPageToken,
    this.reportingDataAnnotations,
  });

  GoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        reportingDataAnnotations:
            (json_['reportingDataAnnotations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAnalyticsAdminV1alphaReportingDataAnnotation.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final reportingDataAnnotations = this.reportingDataAnnotations;
    return {
      'nextPageToken': ?nextPageToken,
      'reportingDataAnnotations': ?reportingDataAnnotations,
    };
  }
}

/// Response message for ListRollupPropertySourceLinks RPC.
class GoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of RollupPropertySourceLinks.
  core.List<GoogleAnalyticsAdminV1alphaRollupPropertySourceLink>?
  rollupPropertySourceLinks;

  GoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse({
    this.nextPageToken,
    this.rollupPropertySourceLinks,
  });

  GoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        rollupPropertySourceLinks:
            (json_['rollupPropertySourceLinks'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAnalyticsAdminV1alphaRollupPropertySourceLink.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final rollupPropertySourceLinks = this.rollupPropertySourceLinks;
    return {
      'nextPageToken': ?nextPageToken,
      'rollupPropertySourceLinks': ?rollupPropertySourceLinks,
    };
  }
}

/// Response message for ListSKAdNetworkConversionValueSchemas RPC
class GoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages. Currently, Google
  /// Analytics supports only one SKAdNetworkConversionValueSchema per
  /// dataStream, so this will never be populated.
  core.String? nextPageToken;

  /// List of SKAdNetworkConversionValueSchemas.
  ///
  /// This will have at most one value.
  core.List<GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema>?
  skadnetworkConversionValueSchemas;

  GoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse({
    this.nextPageToken,
    this.skadnetworkConversionValueSchemas,
  });

  GoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        skadnetworkConversionValueSchemas:
            (json_['skadnetworkConversionValueSchemas'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final skadnetworkConversionValueSchemas =
        this.skadnetworkConversionValueSchemas;
    return {
      'nextPageToken': ?nextPageToken,
      'skadnetworkConversionValueSchemas': ?skadnetworkConversionValueSchemas,
    };
  }
}

/// Response message for ListSearchAds360Links RPC.
class GoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of SearchAds360Links.
  core.List<GoogleAnalyticsAdminV1alphaSearchAds360Link>? searchAds360Links;

  GoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse({
    this.nextPageToken,
    this.searchAds360Links,
  });

  GoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        searchAds360Links: (json_['searchAds360Links'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaSearchAds360Link.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final searchAds360Links = this.searchAds360Links;
    return {
      'nextPageToken': ?nextPageToken,
      'searchAds360Links': ?searchAds360Links,
    };
  }
}

/// Response message for ListSubpropertyEventFilter RPC.
class GoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of subproperty event filters.
  core.List<GoogleAnalyticsAdminV1alphaSubpropertyEventFilter>?
  subpropertyEventFilters;

  GoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse({
    this.nextPageToken,
    this.subpropertyEventFilters,
  });

  GoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        subpropertyEventFilters: (json_['subpropertyEventFilters'] as core.List?)
            ?.map(
              (value) =>
                  GoogleAnalyticsAdminV1alphaSubpropertyEventFilter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final subpropertyEventFilters = this.subpropertyEventFilters;
    return {
      'nextPageToken': ?nextPageToken,
      'subpropertyEventFilters': ?subpropertyEventFilters,
    };
  }
}

/// Response message for ListSubpropertySyncConfigs RPC.
class GoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of `SubpropertySyncConfig` resources.
  core.List<GoogleAnalyticsAdminV1alphaSubpropertySyncConfig>?
  subpropertySyncConfigs;

  GoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse({
    this.nextPageToken,
    this.subpropertySyncConfigs,
  });

  GoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        subpropertySyncConfigs: (json_['subpropertySyncConfigs'] as core.List?)
            ?.map(
              (value) =>
                  GoogleAnalyticsAdminV1alphaSubpropertySyncConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final subpropertySyncConfigs = this.subpropertySyncConfigs;
    return {
      'nextPageToken': ?nextPageToken,
      'subpropertySyncConfigs': ?subpropertySyncConfigs,
    };
  }
}

/// Defines a condition for when an Event Edit or Event Creation rule applies to
/// an event.
class GoogleAnalyticsAdminV1alphaMatchingCondition {
  /// The type of comparison to be applied to the value.
  ///
  /// Required.
  /// Possible string values are:
  /// - "COMPARISON_TYPE_UNSPECIFIED" : Unknown
  /// - "EQUALS" : Equals, case sensitive
  /// - "EQUALS_CASE_INSENSITIVE" : Equals, case insensitive
  /// - "CONTAINS" : Contains, case sensitive
  /// - "CONTAINS_CASE_INSENSITIVE" : Contains, case insensitive
  /// - "STARTS_WITH" : Starts with, case sensitive
  /// - "STARTS_WITH_CASE_INSENSITIVE" : Starts with, case insensitive
  /// - "ENDS_WITH" : Ends with, case sensitive
  /// - "ENDS_WITH_CASE_INSENSITIVE" : Ends with, case insensitive
  /// - "GREATER_THAN" : Greater than
  /// - "GREATER_THAN_OR_EQUAL" : Greater than or equal
  /// - "LESS_THAN" : Less than
  /// - "LESS_THAN_OR_EQUAL" : Less than or equal
  /// - "REGULAR_EXPRESSION" : regular expression. Only supported for web
  /// streams.
  /// - "REGULAR_EXPRESSION_CASE_INSENSITIVE" : regular expression, case
  /// insensitive. Only supported for web streams.
  core.String? comparisonType;

  /// The name of the field that is compared against for the condition.
  ///
  /// If 'event_name' is specified this condition will apply to the name of the
  /// event. Otherwise the condition will apply to a parameter with the
  /// specified name. This value cannot contain spaces.
  ///
  /// Required.
  core.String? field;

  /// Whether or not the result of the comparison should be negated.
  ///
  /// For example, if `negated` is true, then 'equals' comparisons would
  /// function as 'not equals'.
  core.bool? negated;

  /// The value being compared against for this condition.
  ///
  /// The runtime implementation may perform type coercion of this value to
  /// evaluate this condition based on the type of the parameter value.
  ///
  /// Required.
  core.String? value;

  GoogleAnalyticsAdminV1alphaMatchingCondition({
    this.comparisonType,
    this.field,
    this.negated,
    this.value,
  });

  GoogleAnalyticsAdminV1alphaMatchingCondition.fromJson(core.Map json_)
    : this(
        comparisonType: json_['comparisonType'] as core.String?,
        field: json_['field'] as core.String?,
        negated: json_['negated'] as core.bool?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final comparisonType = this.comparisonType;
    final field = this.field;
    final negated = this.negated;
    final value = this.value;
    return {
      'comparisonType': ?comparisonType,
      'field': ?field,
      'negated': ?negated,
      'value': ?value,
    };
  }
}

/// A secret value used for sending hits to Measurement Protocol.
typedef GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret =
    $MeasurementProtocolSecret;

/// To represent a number.
typedef GoogleAnalyticsAdminV1alphaNumericValue = $NumericValue;

/// Defines an event parameter to mutate.
class GoogleAnalyticsAdminV1alphaParameterMutation {
  /// The name of the parameter to mutate.
  ///
  /// This value must: * be less than 40 characters. * be unique across across
  /// all mutations within the rule * consist only of letters, digits or _
  /// (underscores) For event edit rules, the name may also be set to
  /// 'event_name' to modify the event_name in place.
  ///
  /// Required.
  core.String? parameter;

  /// The value mutation to perform.
  ///
  /// * Must be less than 100 characters. * To specify a constant value for the
  /// param, use the value's string. * To copy value from another parameter, use
  /// syntax like "\[\[other_parameter\]\]" For more details, see this
  /// [help center article](https://support.google.com/analytics/answer/10085872#modify-an-event&zippy=%2Cin-this-article%2Cmodify-parameters).
  ///
  /// Required.
  core.String? parameterValue;

  GoogleAnalyticsAdminV1alphaParameterMutation({
    this.parameter,
    this.parameterValue,
  });

  GoogleAnalyticsAdminV1alphaParameterMutation.fromJson(core.Map json_)
    : this(
        parameter: json_['parameter'] as core.String?,
        parameterValue: json_['parameterValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final parameter = this.parameter;
    final parameterValue = this.parameterValue;
    return {'parameter': ?parameter, 'parameterValue': ?parameterValue};
  }
}

/// Settings for a SKAdNetwork conversion postback window.
class GoogleAnalyticsAdminV1alphaPostbackWindow {
  /// Ordering of the repeated field will be used to prioritize the conversion
  /// value settings.
  ///
  /// Lower indexed entries are prioritized higher. The first conversion value
  /// setting that evaluates to true will be selected. It must have at least one
  /// entry if enable_postback_window_settings is set to true. It can have
  /// maximum of 128 entries.
  core.List<GoogleAnalyticsAdminV1alphaConversionValues>? conversionValues;

  /// If enable_postback_window_settings is true, conversion_values must be
  /// populated and will be used for determining when and how to set the
  /// Conversion Value on a client device and exporting schema to linked Ads
  /// accounts.
  ///
  /// If false, the settings are not used, but are retained in case they may be
  /// used in the future. This must always be true for postback_window_one.
  core.bool? postbackWindowSettingsEnabled;

  GoogleAnalyticsAdminV1alphaPostbackWindow({
    this.conversionValues,
    this.postbackWindowSettingsEnabled,
  });

  GoogleAnalyticsAdminV1alphaPostbackWindow.fromJson(core.Map json_)
    : this(
        conversionValues: (json_['conversionValues'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaConversionValues.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        postbackWindowSettingsEnabled:
            json_['postbackWindowSettingsEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conversionValues = this.conversionValues;
    final postbackWindowSettingsEnabled = this.postbackWindowSettingsEnabled;
    return {
      'conversionValues': ?conversionValues,
      'postbackWindowSettingsEnabled': ?postbackWindowSettingsEnabled,
    };
  }
}

/// A resource message representing a Google Analytics property.
typedef GoogleAnalyticsAdminV1alphaProperty = $Property;

/// A virtual resource representing metadata for a Google Analytics property.
typedef GoogleAnalyticsAdminV1alphaPropertySummary = $PropertySummary;

/// Request message for ProvisionAccountTicket RPC.
class GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest {
  /// The account to create.
  GoogleAnalyticsAdminV1alphaAccount? account;

  /// Redirect URI where the user will be sent after accepting Terms of Service.
  ///
  /// Must be configured in Cloud Console as a Redirect URI.
  core.String? redirectUri;

  GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest({
    this.account,
    this.redirectUri,
  });

  GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest.fromJson(
    core.Map json_,
  ) : this(
        account: json_.containsKey('account')
            ? GoogleAnalyticsAdminV1alphaAccount.fromJson(
                json_['account'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        redirectUri: json_['redirectUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final account = this.account;
    final redirectUri = this.redirectUri;
    return {'account': ?account, 'redirectUri': ?redirectUri};
  }
}

/// Response message for ProvisionAccountTicket RPC.
typedef GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse =
    $ProvisionAccountTicketResponse;

/// Request message for CreateSubproperty RPC.
class GoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest {
  /// The subproperty feature synchronization mode for Custom Dimensions and
  /// Metrics
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SYNCHRONIZATION_MODE_UNSPECIFIED" : Synchronization mode unknown or not
  /// specified.
  /// - "NONE" : Entities are not synchronized. Local edits are allowed on the
  /// subproperty.
  /// - "ALL" : Entities are synchronized from parent property. Local mutations
  /// are not allowed on the subproperty (Create / Update / Delete)
  core.String? customDimensionAndMetricSynchronizationMode;

  /// The subproperty to create.
  ///
  /// Required.
  GoogleAnalyticsAdminV1alphaProperty? subproperty;

  /// The subproperty event filter to create on an ordinary property.
  ///
  /// Optional.
  GoogleAnalyticsAdminV1alphaSubpropertyEventFilter? subpropertyEventFilter;

  GoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest({
    this.customDimensionAndMetricSynchronizationMode,
    this.subproperty,
    this.subpropertyEventFilter,
  });

  GoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest.fromJson(
    core.Map json_,
  ) : this(
        customDimensionAndMetricSynchronizationMode:
            json_['customDimensionAndMetricSynchronizationMode']
                as core.String?,
        subproperty: json_.containsKey('subproperty')
            ? GoogleAnalyticsAdminV1alphaProperty.fromJson(
                json_['subproperty'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        subpropertyEventFilter: json_.containsKey('subpropertyEventFilter')
            ? GoogleAnalyticsAdminV1alphaSubpropertyEventFilter.fromJson(
                json_['subpropertyEventFilter']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customDimensionAndMetricSynchronizationMode =
        this.customDimensionAndMetricSynchronizationMode;
    final subproperty = this.subproperty;
    final subpropertyEventFilter = this.subpropertyEventFilter;
    return {
      'customDimensionAndMetricSynchronizationMode':
          ?customDimensionAndMetricSynchronizationMode,
      'subproperty': ?subproperty,
      'subpropertyEventFilter': ?subpropertyEventFilter,
    };
  }
}

/// Response message for ProvisionSubproperty RPC.
class GoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse {
  /// The created subproperty.
  GoogleAnalyticsAdminV1alphaProperty? subproperty;

  /// The created subproperty event filter.
  GoogleAnalyticsAdminV1alphaSubpropertyEventFilter? subpropertyEventFilter;

  GoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse({
    this.subproperty,
    this.subpropertyEventFilter,
  });

  GoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse.fromJson(
    core.Map json_,
  ) : this(
        subproperty: json_.containsKey('subproperty')
            ? GoogleAnalyticsAdminV1alphaProperty.fromJson(
                json_['subproperty'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        subpropertyEventFilter: json_.containsKey('subpropertyEventFilter')
            ? GoogleAnalyticsAdminV1alphaSubpropertyEventFilter.fromJson(
                json_['subpropertyEventFilter']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final subproperty = this.subproperty;
    final subpropertyEventFilter = this.subpropertyEventFilter;
    return {
      'subproperty': ?subproperty,
      'subpropertyEventFilter': ?subpropertyEventFilter,
    };
  }
}

/// Request message for ReorderEventEditRules RPC.
class GoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest {
  /// EventEditRule resource names for the specified data stream, in the needed
  /// processing order.
  ///
  /// All EventEditRules for the stream must be present in the list.
  ///
  /// Required.
  core.List<core.String>? eventEditRules;

  GoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest({
    this.eventEditRules,
  });

  GoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest.fromJson(
    core.Map json_,
  ) : this(
        eventEditRules: (json_['eventEditRules'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eventEditRules = this.eventEditRules;
    return {'eventEditRules': ?eventEditRules};
  }
}

/// A Reporting Data Annotation is a comment connected to certain dates for
/// reporting data.
class GoogleAnalyticsAdminV1alphaReportingDataAnnotation {
  /// If set, the Reporting Data Annotation is for a specific date represented
  /// by this field.
  ///
  /// The date must be a valid date with year, month and day set. The date may
  /// be in the past, present, or future.
  GoogleTypeDate? annotationDate;

  /// If set, the Reporting Data Annotation is for a range of dates represented
  /// by this field.
  GoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange?
  annotationDateRange;

  /// The color used for display of this Reporting Data Annotation.
  ///
  /// Required.
  /// Possible string values are:
  /// - "COLOR_UNSPECIFIED" : Color unknown or not specified.
  /// - "PURPLE" : Purple color.
  /// - "BROWN" : Brown color.
  /// - "BLUE" : Blue color.
  /// - "GREEN" : Green color.
  /// - "RED" : Red color.
  /// - "CYAN" : Cyan color.
  /// - "ORANGE" : Orange color. (Only used for system-generated annotations)
  core.String? color;

  /// Description for this Reporting Data Annotation.
  ///
  /// Optional.
  core.String? description;

  /// Identifier.
  ///
  /// Resource name of this Reporting Data Annotation. Format:
  /// 'properties/{property_id}/reportingDataAnnotations/{reporting_data_annotation}'
  /// Format: 'properties/123/reportingDataAnnotations/456'
  ///
  /// Required.
  core.String? name;

  /// If true, this annotation was generated by the Google Analytics system.
  ///
  /// System-generated annotations cannot be updated or deleted.
  ///
  /// Output only.
  core.bool? systemGenerated;

  /// Human-readable title for this Reporting Data Annotation.
  ///
  /// Required.
  core.String? title;

  GoogleAnalyticsAdminV1alphaReportingDataAnnotation({
    this.annotationDate,
    this.annotationDateRange,
    this.color,
    this.description,
    this.name,
    this.systemGenerated,
    this.title,
  });

  GoogleAnalyticsAdminV1alphaReportingDataAnnotation.fromJson(core.Map json_)
    : this(
        annotationDate: json_.containsKey('annotationDate')
            ? GoogleTypeDate.fromJson(
                json_['annotationDate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        annotationDateRange: json_.containsKey('annotationDateRange')
            ? GoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange.fromJson(
                json_['annotationDateRange']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        color: json_['color'] as core.String?,
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        systemGenerated: json_['systemGenerated'] as core.bool?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final annotationDate = this.annotationDate;
    final annotationDateRange = this.annotationDateRange;
    final color = this.color;
    final description = this.description;
    final name = this.name;
    final systemGenerated = this.systemGenerated;
    final title = this.title;
    return {
      'annotationDate': ?annotationDate,
      'annotationDateRange': ?annotationDateRange,
      'color': ?color,
      'description': ?description,
      'name': ?name,
      'systemGenerated': ?systemGenerated,
      'title': ?title,
    };
  }
}

/// Represents a Reporting Data Annotation's date range, both start and end
/// dates are inclusive.
///
/// Time zones are based on the parent property.
class GoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange {
  /// The end date for this range.
  ///
  /// Must be a valid date with year, month, and day set. This date must be
  /// greater than or equal to the start date.
  ///
  /// Required.
  GoogleTypeDate? endDate;

  /// The start date for this range.
  ///
  /// Must be a valid date with year, month, and day set. The date may be in the
  /// past, present, or future.
  ///
  /// Required.
  GoogleTypeDate? startDate;

  GoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange({
    this.endDate,
    this.startDate,
  });

  GoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange.fromJson(
    core.Map json_,
  ) : this(
        endDate: json_.containsKey('endDate')
            ? GoogleTypeDate.fromJson(
                json_['endDate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        startDate: json_.containsKey('startDate')
            ? GoogleTypeDate.fromJson(
                json_['startDate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endDate = this.endDate;
    final startDate = this.startDate;
    return {'endDate': ?endDate, 'startDate': ?startDate};
  }
}

/// A resource containing settings related to reporting identity.
class GoogleAnalyticsAdminV1alphaReportingIdentitySettings {
  /// Identifier.
  ///
  /// Resource name for this reporting identity settings singleton resource.
  /// Format: properties/{property_id}/reportingIdentitySettings Example:
  /// "properties/1234/reportingIdentitySettings"
  ///
  /// Output only.
  core.String? name;

  /// The strategy used for identifying user identities in reports.
  /// Possible string values are:
  /// - "IDENTITY_BLENDING_STRATEGY_UNSPECIFIED" : Unspecified blending
  /// strategy.
  /// - "BLENDED" : Blended reporting identity strategy.
  /// - "OBSERVED" : Observed reporting identity strategy.
  /// - "DEVICE_BASED" : Device-based reporting identity strategy.
  core.String? reportingIdentity;

  GoogleAnalyticsAdminV1alphaReportingIdentitySettings({
    this.name,
    this.reportingIdentity,
  });

  GoogleAnalyticsAdminV1alphaReportingIdentitySettings.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        reportingIdentity: json_['reportingIdentity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final reportingIdentity = this.reportingIdentity;
    return {'name': ?name, 'reportingIdentity': ?reportingIdentity};
  }
}

/// A link that references a source property under the parent rollup property.
class GoogleAnalyticsAdminV1alphaRollupPropertySourceLink {
  /// Resource name of this RollupPropertySourceLink.
  ///
  /// Format:
  /// 'properties/{property_id}/rollupPropertySourceLinks/{rollup_property_source_link}'
  /// Format: 'properties/123/rollupPropertySourceLinks/456'
  ///
  /// Output only.
  core.String? name;

  /// Resource name of the source property.
  ///
  /// Format: properties/{property_id} Example: "properties/789"
  ///
  /// Immutable.
  core.String? sourceProperty;

  GoogleAnalyticsAdminV1alphaRollupPropertySourceLink({
    this.name,
    this.sourceProperty,
  });

  GoogleAnalyticsAdminV1alphaRollupPropertySourceLink.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        sourceProperty: json_['sourceProperty'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final sourceProperty = this.sourceProperty;
    return {'name': ?name, 'sourceProperty': ?sourceProperty};
  }
}

/// The request for a Data Access Record Report.
class GoogleAnalyticsAdminV1alphaRunAccessReportRequest {
  /// Date ranges of access records to read.
  ///
  /// If multiple date ranges are requested, each response row will contain a
  /// zero based date range index. If two date ranges overlap, the access
  /// records for the overlapping days is included in the response rows for both
  /// date ranges. Requests are allowed up to 2 date ranges.
  core.List<GoogleAnalyticsAdminV1alphaAccessDateRange>? dateRanges;

  /// Dimension filters let you restrict report response to specific dimension
  /// values which match the filter.
  ///
  /// For example, filtering on access records of a single user. To learn more,
  /// see
  /// [Fundamentals of Dimension Filters](https://developers.google.com/analytics/devguides/reporting/data/v1/basics#dimension_filters)
  /// for examples. Metrics cannot be used in this filter.
  GoogleAnalyticsAdminV1alphaAccessFilterExpression? dimensionFilter;

  /// The dimensions requested and displayed in the response.
  ///
  /// Requests are allowed up to 9 dimensions.
  core.List<GoogleAnalyticsAdminV1alphaAccessDimension>? dimensions;

  /// Decides whether to return the users within user groups.
  ///
  /// This field works only when include_all_users is set to true. If true, it
  /// will return all users with access to the specified property or account. If
  /// false, only the users with direct access will be returned.
  ///
  /// Optional.
  core.bool? expandGroups;

  /// Determines whether to include users who have never made an API call in the
  /// response.
  ///
  /// If true, all users with access to the specified property or account are
  /// included in the response, regardless of whether they have made an API call
  /// or not. If false, only the users who have made an API call will be
  /// included.
  ///
  /// Optional.
  core.bool? includeAllUsers;

  /// The number of rows to return.
  ///
  /// If unspecified, 10,000 rows are returned. The API returns a maximum of
  /// 100,000 rows per request, no matter how many you ask for. `limit` must be
  /// positive. The API may return fewer rows than the requested `limit`, if
  /// there aren't as many remaining rows as the `limit`. For instance, there
  /// are fewer than 300 possible values for the dimension `country`, so when
  /// reporting on only `country`, you can't get more than 300 rows, even if you
  /// set `limit` to a higher value. To learn more about this pagination
  /// parameter, see
  /// [Pagination](https://developers.google.com/analytics/devguides/reporting/data/v1/basics#pagination).
  core.String? limit;

  /// Metric filters allow you to restrict report response to specific metric
  /// values which match the filter.
  ///
  /// Metric filters are applied after aggregating the report's rows, similar to
  /// SQL having-clause. Dimensions cannot be used in this filter.
  GoogleAnalyticsAdminV1alphaAccessFilterExpression? metricFilter;

  /// The metrics requested and displayed in the response.
  ///
  /// Requests are allowed up to 10 metrics.
  core.List<GoogleAnalyticsAdminV1alphaAccessMetric>? metrics;

  /// The row count of the start row.
  ///
  /// The first row is counted as row 0. If offset is unspecified, it is treated
  /// as 0. If offset is zero, then this method will return the first page of
  /// results with `limit` entries. To learn more about this pagination
  /// parameter, see
  /// [Pagination](https://developers.google.com/analytics/devguides/reporting/data/v1/basics#pagination).
  core.String? offset;

  /// Specifies how rows are ordered in the response.
  core.List<GoogleAnalyticsAdminV1alphaAccessOrderBy>? orderBys;

  /// Toggles whether to return the current state of this Analytics Property's
  /// quota.
  ///
  /// Quota is returned in \[AccessQuota\](#AccessQuota). For account-level
  /// requests, this field must be false.
  core.bool? returnEntityQuota;

  /// This request's time zone if specified.
  ///
  /// If unspecified, the property's time zone is used. The request's time zone
  /// is used to interpret the start & end dates of the report. Formatted as
  /// strings from the IANA Time Zone database
  /// (https://www.iana.org/time-zones); for example "America/New_York" or
  /// "Asia/Tokyo".
  core.String? timeZone;

  GoogleAnalyticsAdminV1alphaRunAccessReportRequest({
    this.dateRanges,
    this.dimensionFilter,
    this.dimensions,
    this.expandGroups,
    this.includeAllUsers,
    this.limit,
    this.metricFilter,
    this.metrics,
    this.offset,
    this.orderBys,
    this.returnEntityQuota,
    this.timeZone,
  });

  GoogleAnalyticsAdminV1alphaRunAccessReportRequest.fromJson(core.Map json_)
    : this(
        dateRanges: (json_['dateRanges'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaAccessDateRange.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        dimensionFilter: json_.containsKey('dimensionFilter')
            ? GoogleAnalyticsAdminV1alphaAccessFilterExpression.fromJson(
                json_['dimensionFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dimensions: (json_['dimensions'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaAccessDimension.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        expandGroups: json_['expandGroups'] as core.bool?,
        includeAllUsers: json_['includeAllUsers'] as core.bool?,
        limit: json_['limit'] as core.String?,
        metricFilter: json_.containsKey('metricFilter')
            ? GoogleAnalyticsAdminV1alphaAccessFilterExpression.fromJson(
                json_['metricFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metrics: (json_['metrics'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaAccessMetric.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        offset: json_['offset'] as core.String?,
        orderBys: (json_['orderBys'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaAccessOrderBy.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        returnEntityQuota: json_['returnEntityQuota'] as core.bool?,
        timeZone: json_['timeZone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dateRanges = this.dateRanges;
    final dimensionFilter = this.dimensionFilter;
    final dimensions = this.dimensions;
    final expandGroups = this.expandGroups;
    final includeAllUsers = this.includeAllUsers;
    final limit = this.limit;
    final metricFilter = this.metricFilter;
    final metrics = this.metrics;
    final offset = this.offset;
    final orderBys = this.orderBys;
    final returnEntityQuota = this.returnEntityQuota;
    final timeZone = this.timeZone;
    return {
      'dateRanges': ?dateRanges,
      'dimensionFilter': ?dimensionFilter,
      'dimensions': ?dimensions,
      'expandGroups': ?expandGroups,
      'includeAllUsers': ?includeAllUsers,
      'limit': ?limit,
      'metricFilter': ?metricFilter,
      'metrics': ?metrics,
      'offset': ?offset,
      'orderBys': ?orderBys,
      'returnEntityQuota': ?returnEntityQuota,
      'timeZone': ?timeZone,
    };
  }
}

/// The customized Data Access Record Report response.
class GoogleAnalyticsAdminV1alphaRunAccessReportResponse {
  /// The header for a column in the report that corresponds to a specific
  /// dimension.
  ///
  /// The number of DimensionHeaders and ordering of DimensionHeaders matches
  /// the dimensions present in rows.
  core.List<GoogleAnalyticsAdminV1alphaAccessDimensionHeader>? dimensionHeaders;

  /// The header for a column in the report that corresponds to a specific
  /// metric.
  ///
  /// The number of MetricHeaders and ordering of MetricHeaders matches the
  /// metrics present in rows.
  core.List<GoogleAnalyticsAdminV1alphaAccessMetricHeader>? metricHeaders;

  /// The quota state for this Analytics property including this request.
  ///
  /// This field doesn't work with account-level requests.
  GoogleAnalyticsAdminV1alphaAccessQuota? quota;

  /// The total number of rows in the query result.
  ///
  /// `rowCount` is independent of the number of rows returned in the response,
  /// the `limit` request parameter, and the `offset` request parameter. For
  /// example if a query returns 175 rows and includes `limit` of 50 in the API
  /// request, the response will contain `rowCount` of 175 but only 50 rows. To
  /// learn more about this pagination parameter, see
  /// [Pagination](https://developers.google.com/analytics/devguides/reporting/data/v1/basics#pagination).
  core.int? rowCount;

  /// Rows of dimension value combinations and metric values in the report.
  core.List<GoogleAnalyticsAdminV1alphaAccessRow>? rows;

  GoogleAnalyticsAdminV1alphaRunAccessReportResponse({
    this.dimensionHeaders,
    this.metricHeaders,
    this.quota,
    this.rowCount,
    this.rows,
  });

  GoogleAnalyticsAdminV1alphaRunAccessReportResponse.fromJson(core.Map json_)
    : this(
        dimensionHeaders: (json_['dimensionHeaders'] as core.List?)
            ?.map(
              (value) =>
                  GoogleAnalyticsAdminV1alphaAccessDimensionHeader.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        metricHeaders: (json_['metricHeaders'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaAccessMetricHeader.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        quota: json_.containsKey('quota')
            ? GoogleAnalyticsAdminV1alphaAccessQuota.fromJson(
                json_['quota'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        rowCount: json_['rowCount'] as core.int?,
        rows: (json_['rows'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaAccessRow.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dimensionHeaders = this.dimensionHeaders;
    final metricHeaders = this.metricHeaders;
    final quota = this.quota;
    final rowCount = this.rowCount;
    final rows = this.rows;
    return {
      'dimensionHeaders': ?dimensionHeaders,
      'metricHeaders': ?metricHeaders,
      'quota': ?quota,
      'rowCount': ?rowCount,
      'rows': ?rows,
    };
  }
}

/// SKAdNetwork conversion value schema of an iOS stream.
class GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema {
  /// If enabled, the GA SDK will set conversion values using this schema
  /// definition, and schema will be exported to any Google Ads accounts linked
  /// to this property.
  ///
  /// If disabled, the GA SDK will not automatically set conversion values, and
  /// also the schema will not be exported to Ads.
  core.bool? applyConversionValues;

  /// Resource name of the schema.
  ///
  /// This will be child of ONLY an iOS stream, and there can be at most one
  /// such child under an iOS stream. Format:
  /// properties/{property}/dataStreams/{dataStream}/sKAdNetworkConversionValueSchema
  ///
  /// Output only.
  core.String? name;

  /// The conversion value settings for the first postback window.
  ///
  /// These differ from values for postback window two and three in that they
  /// contain a "Fine" grained conversion value (a numeric value). Conversion
  /// values for this postback window must be set. The other windows are
  /// optional and may inherit this window's settings if unset or disabled.
  ///
  /// Required.
  GoogleAnalyticsAdminV1alphaPostbackWindow? postbackWindowOne;

  /// The conversion value settings for the third postback window.
  ///
  /// This field should only be set if the user chose to define different
  /// conversion values for this postback window. It is allowed to configure
  /// window 3 without setting window 2. In case window 1 & 2 settings are set
  /// and enable_postback_window_settings for this postback window is set to
  /// false, the schema will inherit settings from postback_window_two.
  GoogleAnalyticsAdminV1alphaPostbackWindow? postbackWindowThree;

  /// The conversion value settings for the second postback window.
  ///
  /// This field should only be configured if there is a need to define
  /// different conversion values for this postback window. If
  /// enable_postback_window_settings is set to false for this postback window,
  /// the values from postback_window_one will be used.
  GoogleAnalyticsAdminV1alphaPostbackWindow? postbackWindowTwo;

  GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema({
    this.applyConversionValues,
    this.name,
    this.postbackWindowOne,
    this.postbackWindowThree,
    this.postbackWindowTwo,
  });

  GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema.fromJson(
    core.Map json_,
  ) : this(
        applyConversionValues: json_['applyConversionValues'] as core.bool?,
        name: json_['name'] as core.String?,
        postbackWindowOne: json_.containsKey('postbackWindowOne')
            ? GoogleAnalyticsAdminV1alphaPostbackWindow.fromJson(
                json_['postbackWindowOne']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        postbackWindowThree: json_.containsKey('postbackWindowThree')
            ? GoogleAnalyticsAdminV1alphaPostbackWindow.fromJson(
                json_['postbackWindowThree']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        postbackWindowTwo: json_.containsKey('postbackWindowTwo')
            ? GoogleAnalyticsAdminV1alphaPostbackWindow.fromJson(
                json_['postbackWindowTwo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final applyConversionValues = this.applyConversionValues;
    final name = this.name;
    final postbackWindowOne = this.postbackWindowOne;
    final postbackWindowThree = this.postbackWindowThree;
    final postbackWindowTwo = this.postbackWindowTwo;
    return {
      'applyConversionValues': ?applyConversionValues,
      'name': ?name,
      'postbackWindowOne': ?postbackWindowOne,
      'postbackWindowThree': ?postbackWindowThree,
      'postbackWindowTwo': ?postbackWindowTwo,
    };
  }
}

/// A link between a Google Analytics property and a Search Ads 360 entity.
class GoogleAnalyticsAdminV1alphaSearchAds360Link {
  /// Enables personalized advertising features with this integration.
  ///
  /// If this field is not set on create, it will be defaulted to true.
  core.bool? adsPersonalizationEnabled;

  /// The display name of the Search Ads 360 Advertiser.
  ///
  /// Allows users to easily identify the linked resource.
  ///
  /// Output only.
  core.String? advertiserDisplayName;

  /// This field represents the Advertiser ID of the Search Ads 360 Advertiser.
  ///
  /// that has been linked.
  ///
  /// Immutable.
  core.String? advertiserId;

  /// Enables the import of campaign data from Search Ads 360 into the Google
  /// Analytics property.
  ///
  /// After link creation, this can only be updated from the Search Ads 360
  /// product. If this field is not set on create, it will be defaulted to true.
  ///
  /// Immutable.
  core.bool? campaignDataSharingEnabled;

  /// Enables the import of cost data from Search Ads 360 to the Google
  /// Analytics property.
  ///
  /// This can only be enabled if campaign_data_sharing_enabled is enabled.
  /// After link creation, this can only be updated from the Search Ads 360
  /// product. If this field is not set on create, it will be defaulted to true.
  ///
  /// Immutable.
  core.bool? costDataSharingEnabled;

  /// The resource name for this SearchAds360Link resource.
  ///
  /// Format: properties/{propertyId}/searchAds360Links/{linkId} Note: linkId is
  /// not the Search Ads 360 advertiser ID
  ///
  /// Output only.
  core.String? name;

  /// Enables export of site stats with this integration.
  ///
  /// If this field is not set on create, it will be defaulted to true.
  core.bool? siteStatsSharingEnabled;

  GoogleAnalyticsAdminV1alphaSearchAds360Link({
    this.adsPersonalizationEnabled,
    this.advertiserDisplayName,
    this.advertiserId,
    this.campaignDataSharingEnabled,
    this.costDataSharingEnabled,
    this.name,
    this.siteStatsSharingEnabled,
  });

  GoogleAnalyticsAdminV1alphaSearchAds360Link.fromJson(core.Map json_)
    : this(
        adsPersonalizationEnabled:
            json_['adsPersonalizationEnabled'] as core.bool?,
        advertiserDisplayName: json_['advertiserDisplayName'] as core.String?,
        advertiserId: json_['advertiserId'] as core.String?,
        campaignDataSharingEnabled:
            json_['campaignDataSharingEnabled'] as core.bool?,
        costDataSharingEnabled: json_['costDataSharingEnabled'] as core.bool?,
        name: json_['name'] as core.String?,
        siteStatsSharingEnabled: json_['siteStatsSharingEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adsPersonalizationEnabled = this.adsPersonalizationEnabled;
    final advertiserDisplayName = this.advertiserDisplayName;
    final advertiserId = this.advertiserId;
    final campaignDataSharingEnabled = this.campaignDataSharingEnabled;
    final costDataSharingEnabled = this.costDataSharingEnabled;
    final name = this.name;
    final siteStatsSharingEnabled = this.siteStatsSharingEnabled;
    return {
      'adsPersonalizationEnabled': ?adsPersonalizationEnabled,
      'advertiserDisplayName': ?advertiserDisplayName,
      'advertiserId': ?advertiserId,
      'campaignDataSharingEnabled': ?campaignDataSharingEnabled,
      'costDataSharingEnabled': ?costDataSharingEnabled,
      'name': ?name,
      'siteStatsSharingEnabled': ?siteStatsSharingEnabled,
    };
  }
}

/// Request message for SearchChangeHistoryEvents RPC.
class GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest {
  /// If set, only return changes that match one or more of these types of
  /// actions.
  ///
  /// Optional.
  core.List<core.String>? action;

  /// If set, only return changes if they are made by a user in this list.
  ///
  /// Optional.
  core.List<core.String>? actorEmail;

  /// If set, only return changes made after this time (inclusive).
  ///
  /// Optional.
  core.String? earliestChangeTime;

  /// If set, only return changes made before this time (inclusive).
  ///
  /// Optional.
  core.String? latestChangeTime;

  /// The maximum number of ChangeHistoryEvent items to return.
  ///
  /// If unspecified, at most 50 items will be returned. The maximum value is
  /// 200 (higher values will be coerced to the maximum). Note that the service
  /// may return a page with fewer items than this value specifies (potentially
  /// even zero), and that there still may be additional pages. If you want a
  /// particular number of items, you'll need to continue requesting additional
  /// pages using `page_token` until you get the needed number.
  ///
  /// Optional.
  core.int? pageSize;

  /// A page token, received from a previous `SearchChangeHistoryEvents` call.
  ///
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `SearchChangeHistoryEvents` must match the call
  /// that provided the page token.
  ///
  /// Optional.
  core.String? pageToken;

  /// Resource name for a child property.
  ///
  /// If set, only return changes made to this property or its child resources.
  /// Format: properties/{propertyId} Example: `properties/100`
  ///
  /// Optional.
  core.String? property;

  /// If set, only return changes if they are for a resource that matches at
  /// least one of these types.
  ///
  /// Optional.
  core.List<core.String>? resourceType;

  GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest({
    this.action,
    this.actorEmail,
    this.earliestChangeTime,
    this.latestChangeTime,
    this.pageSize,
    this.pageToken,
    this.property,
    this.resourceType,
  });

  GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest.fromJson(
    core.Map json_,
  ) : this(
        action: (json_['action'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        actorEmail: (json_['actorEmail'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        earliestChangeTime: json_['earliestChangeTime'] as core.String?,
        latestChangeTime: json_['latestChangeTime'] as core.String?,
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        property: json_['property'] as core.String?,
        resourceType: (json_['resourceType'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final action = this.action;
    final actorEmail = this.actorEmail;
    final earliestChangeTime = this.earliestChangeTime;
    final latestChangeTime = this.latestChangeTime;
    final pageSize = this.pageSize;
    final pageToken = this.pageToken;
    final property = this.property;
    final resourceType = this.resourceType;
    return {
      'action': ?action,
      'actorEmail': ?actorEmail,
      'earliestChangeTime': ?earliestChangeTime,
      'latestChangeTime': ?latestChangeTime,
      'pageSize': ?pageSize,
      'pageToken': ?pageToken,
      'property': ?property,
      'resourceType': ?resourceType,
    };
  }
}

/// Response message for SearchAccounts RPC.
class GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse {
  /// Results that were accessible to the caller.
  core.List<GoogleAnalyticsAdminV1alphaChangeHistoryEvent>? changeHistoryEvents;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse({
    this.changeHistoryEvents,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse.fromJson(
    core.Map json_,
  ) : this(
        changeHistoryEvents: (json_['changeHistoryEvents'] as core.List?)
            ?.map(
              (value) => GoogleAnalyticsAdminV1alphaChangeHistoryEvent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final changeHistoryEvents = this.changeHistoryEvents;
    final nextPageToken = this.nextPageToken;
    return {
      'changeHistoryEvents': ?changeHistoryEvents,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Request message for SubmitUserDeletion RPC.
class GoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest {
  /// Firebase
  /// [application instance ID](https://firebase.google.com/docs/reference/android/com/google/firebase/analytics/FirebaseAnalytics.html#getAppInstanceId).
  core.String? appInstanceId;

  /// Google Analytics
  /// [client ID](https://support.google.com/analytics/answer/11593727).
  core.String? clientId;

  /// Google Analytics
  /// [user ID](https://firebase.google.com/docs/analytics/userid).
  core.String? userId;

  /// \[User-provided
  /// data\](https://support.google.com/analytics/answer/14077171).
  ///
  /// May contain either one email address or one phone number. Email addresses
  /// should be normalized as such: * lowercase * remove periods before @ for
  /// gmail.com/googlemail.com addresses * remove all spaces Phone numbers
  /// should be normalized as such: * remove all non digit characters * add +
  /// prefix
  core.String? userProvidedData;

  GoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest({
    this.appInstanceId,
    this.clientId,
    this.userId,
    this.userProvidedData,
  });

  GoogleAnalyticsAdminV1alphaSubmitUserDeletionRequest.fromJson(core.Map json_)
    : this(
        appInstanceId: json_['appInstanceId'] as core.String?,
        clientId: json_['clientId'] as core.String?,
        userId: json_['userId'] as core.String?,
        userProvidedData: json_['userProvidedData'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appInstanceId = this.appInstanceId;
    final clientId = this.clientId;
    final userId = this.userId;
    final userProvidedData = this.userProvidedData;
    return {
      'appInstanceId': ?appInstanceId,
      'clientId': ?clientId,
      'userId': ?userId,
      'userProvidedData': ?userProvidedData,
    };
  }
}

/// Response message for SubmitUserDeletion RPC.
class GoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse {
  /// Marks the moment for which all visitor data before this point should be
  /// deleted.
  ///
  /// This is set to the time at which the deletion request was received.
  core.String? deletionRequestTime;

  GoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse({
    this.deletionRequestTime,
  });

  GoogleAnalyticsAdminV1alphaSubmitUserDeletionResponse.fromJson(core.Map json_)
    : this(deletionRequestTime: json_['deletionRequestTime'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final deletionRequestTime = this.deletionRequestTime;
    return {'deletionRequestTime': ?deletionRequestTime};
  }
}

/// A resource message representing a Google Analytics subproperty event filter.
class GoogleAnalyticsAdminV1alphaSubpropertyEventFilter {
  /// Resource name of the Subproperty that uses this filter.
  ///
  /// Immutable.
  core.String? applyToProperty;

  /// Unordered list.
  ///
  /// Filter clauses that define the SubpropertyEventFilter. All clauses are
  /// AND'ed together to determine what data is sent to the subproperty.
  ///
  /// Required.
  core.List<GoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause>?
  filterClauses;

  /// Format:
  /// properties/{ordinary_property_id}/subpropertyEventFilters/{sub_property_event_filter}
  /// Example: properties/1234/subpropertyEventFilters/5678
  ///
  /// Output only.
  core.String? name;

  GoogleAnalyticsAdminV1alphaSubpropertyEventFilter({
    this.applyToProperty,
    this.filterClauses,
    this.name,
  });

  GoogleAnalyticsAdminV1alphaSubpropertyEventFilter.fromJson(core.Map json_)
    : this(
        applyToProperty: json_['applyToProperty'] as core.String?,
        filterClauses: (json_['filterClauses'] as core.List?)
            ?.map(
              (value) =>
                  GoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final applyToProperty = this.applyToProperty;
    final filterClauses = this.filterClauses;
    final name = this.name;
    return {
      'applyToProperty': ?applyToProperty,
      'filterClauses': ?filterClauses,
      'name': ?name,
    };
  }
}

/// A clause for defining a filter.
///
/// A filter may be inclusive (events satisfying the filter clause are included
/// in the subproperty's data) or exclusive (events satisfying the filter clause
/// are excluded from the subproperty's data).
class GoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause {
  /// The type for the filter clause.
  ///
  /// Required.
  /// Possible string values are:
  /// - "FILTER_CLAUSE_TYPE_UNSPECIFIED" : Filter clause type unknown or not
  /// specified.
  /// - "INCLUDE" : Events will be included in the Sub property if the filter
  /// clause is met.
  /// - "EXCLUDE" : Events will be excluded from the Sub property if the filter
  /// clause is met.
  core.String? filterClauseType;

  /// The logical expression for what events are sent to the subproperty.
  ///
  /// Required.
  GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression? filterExpression;

  GoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause({
    this.filterClauseType,
    this.filterExpression,
  });

  GoogleAnalyticsAdminV1alphaSubpropertyEventFilterClause.fromJson(
    core.Map json_,
  ) : this(
        filterClauseType: json_['filterClauseType'] as core.String?,
        filterExpression: json_.containsKey('filterExpression')
            ? GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression.fromJson(
                json_['filterExpression']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final filterClauseType = this.filterClauseType;
    final filterExpression = this.filterExpression;
    return {
      'filterClauseType': ?filterClauseType,
      'filterExpression': ?filterExpression,
    };
  }
}

/// A specific filter expression
class GoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition {
  /// The field that is being filtered.
  ///
  /// Required.
  core.String? fieldName;

  /// A filter for null values.
  core.bool? nullFilter;

  /// A filter for a string-type dimension that matches a particular pattern.
  GoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter?
  stringFilter;

  GoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition({
    this.fieldName,
    this.nullFilter,
    this.stringFilter,
  });

  GoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition.fromJson(
    core.Map json_,
  ) : this(
        fieldName: json_['fieldName'] as core.String?,
        nullFilter: json_['nullFilter'] as core.bool?,
        stringFilter: json_.containsKey('stringFilter')
            ? GoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter.fromJson(
                json_['stringFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fieldName = this.fieldName;
    final nullFilter = this.nullFilter;
    final stringFilter = this.stringFilter;
    return {
      'fieldName': ?fieldName,
      'nullFilter': ?nullFilter,
      'stringFilter': ?stringFilter,
    };
  }
}

/// A filter for a string-type dimension that matches a particular pattern.
class GoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter {
  /// If true, the string value is case sensitive.
  ///
  /// If false, the match is case-insensitive.
  ///
  /// Optional.
  core.bool? caseSensitive;

  /// The match type for the string filter.
  ///
  /// Required.
  /// Possible string values are:
  /// - "MATCH_TYPE_UNSPECIFIED" : Match type unknown or not specified.
  /// - "EXACT" : Exact match of the string value.
  /// - "BEGINS_WITH" : Begins with the string value.
  /// - "ENDS_WITH" : Ends with the string value.
  /// - "CONTAINS" : Contains the string value.
  /// - "FULL_REGEXP" : Full regular expression matches with the string value.
  /// - "PARTIAL_REGEXP" : Partial regular expression matches with the string
  /// value.
  core.String? matchType;

  /// The string value used for the matching.
  ///
  /// Required.
  core.String? value;

  GoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter({
    this.caseSensitive,
    this.matchType,
    this.value,
  });

  GoogleAnalyticsAdminV1alphaSubpropertyEventFilterConditionStringFilter.fromJson(
    core.Map json_,
  ) : this(
        caseSensitive: json_['caseSensitive'] as core.bool?,
        matchType: json_['matchType'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final caseSensitive = this.caseSensitive;
    final matchType = this.matchType;
    final value = this.value;
    return {
      'caseSensitive': ?caseSensitive,
      'matchType': ?matchType,
      'value': ?value,
    };
  }
}

/// A logical expression of Subproperty event filters.
class GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression {
  /// Creates a filter that matches a specific event.
  ///
  /// This cannot be set on the top level SubpropertyEventFilterExpression.
  GoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition? filterCondition;

  /// A filter expression to be NOT'ed (inverted, complemented).
  ///
  /// It can only include a filter. This cannot be set on the top level
  /// SubpropertyEventFilterExpression.
  GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression? notExpression;

  /// A list of expressions to OR’ed together.
  ///
  /// Must only contain not_expression or filter_condition expressions.
  GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList? orGroup;

  GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression({
    this.filterCondition,
    this.notExpression,
    this.orGroup,
  });

  GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression.fromJson(
    core.Map json_,
  ) : this(
        filterCondition: json_.containsKey('filterCondition')
            ? GoogleAnalyticsAdminV1alphaSubpropertyEventFilterCondition.fromJson(
                json_['filterCondition'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        notExpression: json_.containsKey('notExpression')
            ? GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression.fromJson(
                json_['notExpression'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        orGroup: json_.containsKey('orGroup')
            ? GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList.fromJson(
                json_['orGroup'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final filterCondition = this.filterCondition;
    final notExpression = this.notExpression;
    final orGroup = this.orGroup;
    return {
      'filterCondition': ?filterCondition,
      'notExpression': ?notExpression,
      'orGroup': ?orGroup,
    };
  }
}

/// A list of Subproperty event filter expressions.
class GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList {
  /// Unordered list.
  ///
  /// A list of Subproperty event filter expressions
  ///
  /// Required.
  core.List<GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression>?
  filterExpressions;

  GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList({
    this.filterExpressions,
  });

  GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpressionList.fromJson(
    core.Map json_,
  ) : this(
        filterExpressions: (json_['filterExpressions'] as core.List?)
            ?.map(
              (value) =>
                  GoogleAnalyticsAdminV1alphaSubpropertyEventFilterExpression.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final filterExpressions = this.filterExpressions;
    return {'filterExpressions': ?filterExpressions};
  }
}

/// Subproperty synchronization configuration controls how ordinary property
/// configurations are synchronized to subproperties.
///
/// This resource is provisioned automatically for each subproperty.
class GoogleAnalyticsAdminV1alphaSubpropertySyncConfig {
  /// Resource name of the subproperty that these settings apply to.
  ///
  /// Output only. Immutable.
  core.String? applyToProperty;

  /// Specifies the Custom Dimension / Metric synchronization mode for the
  /// subproperty.
  ///
  /// If set to ALL, Custom Dimension / Metric synchronization will be
  /// immediately enabled. Local configuration of Custom Dimensions / Metrics
  /// will not be allowed on the subproperty so long as the synchronization mode
  /// is set to ALL. If set to NONE, Custom Dimensions / Metric synchronization
  /// is disabled. Custom Dimensions / Metrics must be configured explicitly on
  /// the Subproperty.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SYNCHRONIZATION_MODE_UNSPECIFIED" : Synchronization mode unknown or not
  /// specified.
  /// - "NONE" : Entities are not synchronized. Local edits are allowed on the
  /// subproperty.
  /// - "ALL" : Entities are synchronized from parent property. Local mutations
  /// are not allowed on the subproperty (Create / Update / Delete)
  core.String? customDimensionAndMetricSyncMode;

  /// Identifier.
  ///
  /// Format:
  /// properties/{ordinary_property_id}/subpropertySyncConfigs/{subproperty_id}
  /// Example: properties/1234/subpropertySyncConfigs/5678
  ///
  /// Output only.
  core.String? name;

  GoogleAnalyticsAdminV1alphaSubpropertySyncConfig({
    this.applyToProperty,
    this.customDimensionAndMetricSyncMode,
    this.name,
  });

  GoogleAnalyticsAdminV1alphaSubpropertySyncConfig.fromJson(core.Map json_)
    : this(
        applyToProperty: json_['applyToProperty'] as core.String?,
        customDimensionAndMetricSyncMode:
            json_['customDimensionAndMetricSyncMode'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final applyToProperty = this.applyToProperty;
    final customDimensionAndMetricSyncMode =
        this.customDimensionAndMetricSyncMode;
    final name = this.name;
    return {
      'applyToProperty': ?applyToProperty,
      'customDimensionAndMetricSyncMode': ?customDimensionAndMetricSyncMode,
      'name': ?name,
    };
  }
}

/// Request message for UpdateAccessBinding RPC.
class GoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest {
  /// The access binding to update.
  ///
  /// Required.
  GoogleAnalyticsAdminV1alphaAccessBinding? accessBinding;

  GoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest({this.accessBinding});

  GoogleAnalyticsAdminV1alphaUpdateAccessBindingRequest.fromJson(core.Map json_)
    : this(
        accessBinding: json_.containsKey('accessBinding')
            ? GoogleAnalyticsAdminV1alphaAccessBinding.fromJson(
                json_['accessBinding'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessBinding = this.accessBinding;
    return {'accessBinding': ?accessBinding};
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

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
typedef GoogleTypeDate = $Date;
