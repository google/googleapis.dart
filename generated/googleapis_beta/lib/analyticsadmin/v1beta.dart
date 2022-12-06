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

/// Google Analytics Admin API - v1beta
///
/// For more information, see
/// <http://code.google.com/apis/analytics/docs/mgmt/home.html>
///
/// Create an instance of [GoogleAnalyticsAdminApi] to access these resources:
///
/// - [AccountSummariesResource]
/// - [AccountsResource]
/// - [PropertiesResource]
///   - [PropertiesConversionEventsResource]
///   - [PropertiesCustomDimensionsResource]
///   - [PropertiesCustomMetricsResource]
///   - [PropertiesDataStreamsResource]
///     - [PropertiesDataStreamsMeasurementProtocolSecretsResource]
///   - [PropertiesFirebaseLinksResource]
///   - [PropertiesGoogleAdsLinksResource]
library analyticsadmin.v1beta;

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

class GoogleAnalyticsAdminApi {
  /// Edit Google Analytics management entities
  static const analyticsEditScope =
      'https://www.googleapis.com/auth/analytics.edit';

  /// See and download your Google Analytics data
  static const analyticsReadonlyScope =
      'https://www.googleapis.com/auth/analytics.readonly';

  final commons.ApiRequester _requester;

  AccountSummariesResource get accountSummaries =>
      AccountSummariesResource(_requester);
  AccountsResource get accounts => AccountsResource(_requester);
  PropertiesResource get properties => PropertiesResource(_requester);

  GoogleAnalyticsAdminApi(http.Client client,
      {core.String rootUrl = 'https://analyticsadmin.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
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
  /// Completes with a [GoogleAnalyticsAdminV1betaListAccountSummariesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaListAccountSummariesResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta/accountSummaries';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaListAccountSummariesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsResource(commons.ApiRequester client) : _requester = client;

  /// Marks target Account as soft-deleted (ie: "trashed") and returns it.
  ///
  /// This API does not have a method to restore soft-deleted accounts. However,
  /// they can be restored using the Trash Can UI. If the accounts are not
  /// restored before the expiration time, the account and all child resources
  /// (eg: Properties, GoogleAdsLinks, Streams, UserLinks) will be permanently
  /// purged. https://support.google.com/analytics/answer/6154772 Returns an
  /// error if the target is not found.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAnalyticsAdminV1betaAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaAccount> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaAccount.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get data sharing settings on an account.
  ///
  /// Data sharing settings are singletons.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the settings to lookup. Format:
  /// accounts/{account}/dataSharingSettings Example:
  /// "accounts/1000/dataSharingSettings"
  /// Value must have pattern `^accounts/\[^/\]+/dataSharingSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1betaDataSharingSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaDataSharingSettings>
      getDataSharingSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaDataSharingSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns all accounts accessible by the caller.
  ///
  /// Note that these accounts might not currently have GA4 properties.
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
  /// Completes with a [GoogleAnalyticsAdminV1betaListAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaListAccountsResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta/accounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaListAccountsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1betaAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaAccount> patch(
    GoogleAnalyticsAdminV1betaAccount request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaAccount.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse>
      provisionAccountTicket(
    GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta/accounts:provisionAccountTicket';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Searches through all changes to an account or its children given the
  /// specified set of filters.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [account] - Required. The account resource for which to return change
  /// history resources.
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse>
      searchChangeHistoryEvents(
    GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest request,
    core.String account, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' +
        core.Uri.encodeFull('$account') +
        ':searchChangeHistoryEvents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesResource {
  final commons.ApiRequester _requester;

  PropertiesConversionEventsResource get conversionEvents =>
      PropertiesConversionEventsResource(_requester);
  PropertiesCustomDimensionsResource get customDimensions =>
      PropertiesCustomDimensionsResource(_requester);
  PropertiesCustomMetricsResource get customMetrics =>
      PropertiesCustomMetricsResource(_requester);
  PropertiesDataStreamsResource get dataStreams =>
      PropertiesDataStreamsResource(_requester);
  PropertiesFirebaseLinksResource get firebaseLinks =>
      PropertiesFirebaseLinksResource(_requester);
  PropertiesGoogleAdsLinksResource get googleAdsLinks =>
      PropertiesGoogleAdsLinksResource(_requester);

  PropertiesResource(commons.ApiRequester client) : _requester = client;

  /// Acknowledges the terms of user data collection for the specified property.
  ///
  /// This acknowledgement must be completed (either in the Google Analytics UI
  /// or via this API) before MeasurementProtocolSecret resources may be
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
  /// [GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse>
      acknowledgeUserDataCollection(
    GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest request,
    core.String property, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' +
        core.Uri.encodeFull('$property') +
        ':acknowledgeUserDataCollection';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates an "GA4" property with the specified location and attributes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1betaProperty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaProperty> create(
    GoogleAnalyticsAdminV1betaProperty request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta/properties';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaProperty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks target Property as soft-deleted (ie: "trashed") and returns it.
  ///
  /// This API does not have a method to restore soft-deleted properties.
  /// However, they can be restored using the Trash Can UI. If the properties
  /// are not restored before the expiration time, the Property and all child
  /// resources (eg: GoogleAdsLinks, Streams, UserLinks) will be permanently
  /// purged. https://support.google.com/analytics/answer/6154772 Returns an
  /// error if the target is not found, or is not a GA4 Property.
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
  /// Completes with a [GoogleAnalyticsAdminV1betaProperty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaProperty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaProperty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lookup for a single "GA4" Property.
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
  /// Completes with a [GoogleAnalyticsAdminV1betaProperty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaProperty> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaProperty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAnalyticsAdminV1betaDataRetentionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaDataRetentionSettings>
      getDataRetentionSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaDataRetentionSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns child Properties under the specified parent Account.
  ///
  /// Only "GA4" properties will be returned. Properties will be excluded if the
  /// caller does not have access. Soft-deleted (ie: "trashed") properties are
  /// excluded by default. Returns an empty list if no relevant properties are
  /// found.
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
  /// Completes with a [GoogleAnalyticsAdminV1betaListPropertiesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaListPropertiesResponse> list({
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta/properties';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaListPropertiesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAnalyticsAdminV1betaProperty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaProperty> patch(
    GoogleAnalyticsAdminV1betaProperty request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaProperty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAnalyticsAdminV1betaDataRetentionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaDataRetentionSettings>
      updateDataRetentionSettings(
    GoogleAnalyticsAdminV1betaDataRetentionSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaDataRetentionSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesConversionEventsResource {
  final commons.ApiRequester _requester;

  PropertiesConversionEventsResource(commons.ApiRequester client)
      : _requester = client;

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
  /// Completes with a [GoogleAnalyticsAdminV1betaConversionEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaConversionEvent> create(
    GoogleAnalyticsAdminV1betaConversionEvent request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/conversionEvents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaConversionEvent.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

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
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

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
  /// Completes with a [GoogleAnalyticsAdminV1betaConversionEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaConversionEvent> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaConversionEvent.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of conversion events in the specified parent property.
  ///
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
  /// Completes with a [GoogleAnalyticsAdminV1betaListConversionEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaListConversionEventsResponse> list(
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
        'v1beta/' + core.Uri.encodeFull('$parent') + '/conversionEvents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaListConversionEventsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name') + ':archive';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAnalyticsAdminV1betaCustomDimension].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaCustomDimension> create(
    GoogleAnalyticsAdminV1betaCustomDimension request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/customDimensions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaCustomDimension.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAnalyticsAdminV1betaCustomDimension].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaCustomDimension> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaCustomDimension.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAnalyticsAdminV1betaListCustomDimensionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaListCustomDimensionsResponse> list(
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
        'v1beta/' + core.Uri.encodeFull('$parent') + '/customDimensions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaListCustomDimensionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAnalyticsAdminV1betaCustomDimension].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaCustomDimension> patch(
    GoogleAnalyticsAdminV1betaCustomDimension request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaCustomDimension.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name') + ':archive';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAnalyticsAdminV1betaCustomMetric].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaCustomMetric> create(
    GoogleAnalyticsAdminV1betaCustomMetric request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/customMetrics';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaCustomMetric.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAnalyticsAdminV1betaCustomMetric].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaCustomMetric> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaCustomMetric.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAnalyticsAdminV1betaListCustomMetricsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaListCustomMetricsResponse> list(
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/customMetrics';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaListCustomMetricsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAnalyticsAdminV1betaCustomMetric].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaCustomMetric> patch(
    GoogleAnalyticsAdminV1betaCustomMetric request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaCustomMetric.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesDataStreamsResource {
  final commons.ApiRequester _requester;

  PropertiesDataStreamsMeasurementProtocolSecretsResource
      get measurementProtocolSecrets =>
          PropertiesDataStreamsMeasurementProtocolSecretsResource(_requester);

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
  /// Completes with a [GoogleAnalyticsAdminV1betaDataStream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaDataStream> create(
    GoogleAnalyticsAdminV1betaDataStream request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/dataStreams';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaDataStream.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAnalyticsAdminV1betaDataStream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaDataStream> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaDataStream.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAnalyticsAdminV1betaListDataStreamsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaListDataStreamsResponse> list(
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/dataStreams';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaListDataStreamsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAnalyticsAdminV1betaDataStream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaDataStream> patch(
    GoogleAnalyticsAdminV1betaDataStream request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaDataStream.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesDataStreamsMeasurementProtocolSecretsResource {
  final commons.ApiRequester _requester;

  PropertiesDataStreamsMeasurementProtocolSecretsResource(
      commons.ApiRequester client)
      : _requester = client;

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
  /// Completes with a [GoogleAnalyticsAdminV1betaMeasurementProtocolSecret].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaMeasurementProtocolSecret> create(
    GoogleAnalyticsAdminV1betaMeasurementProtocolSecret request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/measurementProtocolSecrets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaMeasurementProtocolSecret.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lookup for a single "GA4" MeasurementProtocolSecret.
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
  /// Completes with a [GoogleAnalyticsAdminV1betaMeasurementProtocolSecret].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaMeasurementProtocolSecret> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaMeasurementProtocolSecret.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse>
      list(
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

    final url_ = 'v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/measurementProtocolSecrets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [updateMask] - The list of fields to be updated. Omitted fields will not
  /// be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1betaMeasurementProtocolSecret].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaMeasurementProtocolSecret> patch(
    GoogleAnalyticsAdminV1betaMeasurementProtocolSecret request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaMeasurementProtocolSecret.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1betaFirebaseLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaFirebaseLink> create(
    GoogleAnalyticsAdminV1betaFirebaseLink request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/firebaseLinks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaFirebaseLink.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a FirebaseLink on a property
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// properties/{property_id}/firebaseLinks/{firebase_link_id} Example:
  /// properties/1234/firebaseLinks/5678
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists FirebaseLinks on a property.
  ///
  /// Properties can have at most one FirebaseLink.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: properties/{property_id} Example:
  /// properties/1234
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
  /// Completes with a [GoogleAnalyticsAdminV1betaListFirebaseLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaListFirebaseLinksResponse> list(
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/firebaseLinks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaListFirebaseLinksResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAnalyticsAdminV1betaGoogleAdsLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaGoogleAdsLink> create(
    GoogleAnalyticsAdminV1betaGoogleAdsLink request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/googleAdsLinks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaGoogleAdsLink.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse> list(
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/googleAdsLinks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAnalyticsAdminV1betaGoogleAdsLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1betaGoogleAdsLink> patch(
    GoogleAnalyticsAdminV1betaGoogleAdsLink request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAnalyticsAdminV1betaGoogleAdsLink.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A resource message representing a Google Analytics account.
class GoogleAnalyticsAdminV1betaAccount {
  /// Time when this account was originally created.
  ///
  /// Output only.
  core.String? createTime;

  /// Indicates whether this Account is soft-deleted or not.
  ///
  /// Deleted accounts are excluded from List results unless specifically
  /// requested.
  ///
  /// Output only.
  core.bool? deleted;

  /// Human-readable display name for this account.
  ///
  /// Required.
  core.String? displayName;

  /// Resource name of this account.
  ///
  /// Format: accounts/{account} Example: "accounts/100"
  ///
  /// Output only.
  core.String? name;

  /// Country of business.
  ///
  /// Must be a Unicode CLDR region code.
  core.String? regionCode;

  /// Time when account payload fields were last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleAnalyticsAdminV1betaAccount({
    this.createTime,
    this.deleted,
    this.displayName,
    this.name,
    this.regionCode,
    this.updateTime,
  });

  GoogleAnalyticsAdminV1betaAccount.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleted: json_.containsKey('deleted')
              ? json_['deleted'] as core.bool
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          regionCode: json_.containsKey('regionCode')
              ? json_['regionCode'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleted != null) 'deleted': deleted!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (regionCode != null) 'regionCode': regionCode!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A virtual resource representing an overview of an account and all its child
/// GA4 properties.
class GoogleAnalyticsAdminV1betaAccountSummary {
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
  core.List<GoogleAnalyticsAdminV1betaPropertySummary>? propertySummaries;

  GoogleAnalyticsAdminV1betaAccountSummary({
    this.account,
    this.displayName,
    this.name,
    this.propertySummaries,
  });

  GoogleAnalyticsAdminV1betaAccountSummary.fromJson(core.Map json_)
      : this(
          account: json_.containsKey('account')
              ? json_['account'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          propertySummaries: json_.containsKey('propertySummaries')
              ? (json_['propertySummaries'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1betaPropertySummary.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (propertySummaries != null) 'propertySummaries': propertySummaries!,
      };
}

/// Request message for AcknowledgeUserDataCollection RPC.
class GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest {
  /// An acknowledgement that the caller of this method understands the terms of
  /// user data collection.
  ///
  /// This field must contain the exact value: "I acknowledge that I have the
  /// necessary privacy disclosures and rights from my end users for the
  /// collection and processing of their data, including the association of such
  /// data with the visitation information Google Analytics collects from my
  /// site and/or app property."
  ///
  /// Required.
  core.String? acknowledgement;

  GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest({
    this.acknowledgement,
  });

  GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest.fromJson(
      core.Map json_)
      : this(
          acknowledgement: json_.containsKey('acknowledgement')
              ? json_['acknowledgement'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acknowledgement != null) 'acknowledgement': acknowledgement!,
      };
}

/// Response message for AcknowledgeUserDataCollection RPC.
typedef GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse
    = $Empty;

/// Request message for ArchiveCustomDimension RPC.
typedef GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest = $Empty;

/// Request message for ArchiveCustomMetric RPC.
typedef GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest = $Empty;

/// A description of a change to a single Google Analytics resource.
class GoogleAnalyticsAdminV1betaChangeHistoryChange {
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
  GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource?
      resourceAfterChange;

  /// Resource contents from before the change was made.
  ///
  /// If this resource was created in this change, this field will be missing.
  GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource?
      resourceBeforeChange;

  GoogleAnalyticsAdminV1betaChangeHistoryChange({
    this.action,
    this.resource,
    this.resourceAfterChange,
    this.resourceBeforeChange,
  });

  GoogleAnalyticsAdminV1betaChangeHistoryChange.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? json_['action'] as core.String
              : null,
          resource: json_.containsKey('resource')
              ? json_['resource'] as core.String
              : null,
          resourceAfterChange: json_.containsKey('resourceAfterChange')
              ? GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource
                  .fromJson(json_['resourceAfterChange']
                      as core.Map<core.String, core.dynamic>)
              : null,
          resourceBeforeChange: json_.containsKey('resourceBeforeChange')
              ? GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource
                  .fromJson(json_['resourceBeforeChange']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (resource != null) 'resource': resource!,
        if (resourceAfterChange != null)
          'resourceAfterChange': resourceAfterChange!,
        if (resourceBeforeChange != null)
          'resourceBeforeChange': resourceBeforeChange!,
      };
}

/// A snapshot of a resource as before or after the result of a change in change
/// history.
class GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource {
  /// A snapshot of an Account resource in change history.
  GoogleAnalyticsAdminV1betaAccount? account;

  /// A snapshot of a ConversionEvent resource in change history.
  GoogleAnalyticsAdminV1betaConversionEvent? conversionEvent;

  /// A snapshot of a data retention settings resource in change history.
  GoogleAnalyticsAdminV1betaDataRetentionSettings? dataRetentionSettings;

  /// A snapshot of a DataStream resource in change history.
  GoogleAnalyticsAdminV1betaDataStream? dataStream;

  /// A snapshot of a FirebaseLink resource in change history.
  GoogleAnalyticsAdminV1betaFirebaseLink? firebaseLink;

  /// A snapshot of a GoogleAdsLink resource in change history.
  GoogleAnalyticsAdminV1betaGoogleAdsLink? googleAdsLink;

  /// A snapshot of a MeasurementProtocolSecret resource in change history.
  GoogleAnalyticsAdminV1betaMeasurementProtocolSecret?
      measurementProtocolSecret;

  /// A snapshot of a Property resource in change history.
  GoogleAnalyticsAdminV1betaProperty? property;

  GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource({
    this.account,
    this.conversionEvent,
    this.dataRetentionSettings,
    this.dataStream,
    this.firebaseLink,
    this.googleAdsLink,
    this.measurementProtocolSecret,
    this.property,
  });

  GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource.fromJson(
      core.Map json_)
      : this(
          account: json_.containsKey('account')
              ? GoogleAnalyticsAdminV1betaAccount.fromJson(
                  json_['account'] as core.Map<core.String, core.dynamic>)
              : null,
          conversionEvent: json_.containsKey('conversionEvent')
              ? GoogleAnalyticsAdminV1betaConversionEvent.fromJson(
                  json_['conversionEvent']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dataRetentionSettings: json_.containsKey('dataRetentionSettings')
              ? GoogleAnalyticsAdminV1betaDataRetentionSettings.fromJson(
                  json_['dataRetentionSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dataStream: json_.containsKey('dataStream')
              ? GoogleAnalyticsAdminV1betaDataStream.fromJson(
                  json_['dataStream'] as core.Map<core.String, core.dynamic>)
              : null,
          firebaseLink: json_.containsKey('firebaseLink')
              ? GoogleAnalyticsAdminV1betaFirebaseLink.fromJson(
                  json_['firebaseLink'] as core.Map<core.String, core.dynamic>)
              : null,
          googleAdsLink: json_.containsKey('googleAdsLink')
              ? GoogleAnalyticsAdminV1betaGoogleAdsLink.fromJson(
                  json_['googleAdsLink'] as core.Map<core.String, core.dynamic>)
              : null,
          measurementProtocolSecret: json_
                  .containsKey('measurementProtocolSecret')
              ? GoogleAnalyticsAdminV1betaMeasurementProtocolSecret.fromJson(
                  json_['measurementProtocolSecret']
                      as core.Map<core.String, core.dynamic>)
              : null,
          property: json_.containsKey('property')
              ? GoogleAnalyticsAdminV1betaProperty.fromJson(
                  json_['property'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (conversionEvent != null) 'conversionEvent': conversionEvent!,
        if (dataRetentionSettings != null)
          'dataRetentionSettings': dataRetentionSettings!,
        if (dataStream != null) 'dataStream': dataStream!,
        if (firebaseLink != null) 'firebaseLink': firebaseLink!,
        if (googleAdsLink != null) 'googleAdsLink': googleAdsLink!,
        if (measurementProtocolSecret != null)
          'measurementProtocolSecret': measurementProtocolSecret!,
        if (property != null) 'property': property!,
      };
}

/// A set of changes within a Google Analytics account or its child properties
/// that resulted from the same cause.
///
/// Common causes would be updates made in the Google Analytics UI, changes from
/// customer support, or automatic Google Analytics system changes.
class GoogleAnalyticsAdminV1betaChangeHistoryEvent {
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
  core.List<GoogleAnalyticsAdminV1betaChangeHistoryChange>? changes;

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

  GoogleAnalyticsAdminV1betaChangeHistoryEvent({
    this.actorType,
    this.changeTime,
    this.changes,
    this.changesFiltered,
    this.id,
    this.userActorEmail,
  });

  GoogleAnalyticsAdminV1betaChangeHistoryEvent.fromJson(core.Map json_)
      : this(
          actorType: json_.containsKey('actorType')
              ? json_['actorType'] as core.String
              : null,
          changeTime: json_.containsKey('changeTime')
              ? json_['changeTime'] as core.String
              : null,
          changes: json_.containsKey('changes')
              ? (json_['changes'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1betaChangeHistoryChange.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          changesFiltered: json_.containsKey('changesFiltered')
              ? json_['changesFiltered'] as core.bool
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          userActorEmail: json_.containsKey('userActorEmail')
              ? json_['userActorEmail'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actorType != null) 'actorType': actorType!,
        if (changeTime != null) 'changeTime': changeTime!,
        if (changes != null) 'changes': changes!,
        if (changesFiltered != null) 'changesFiltered': changesFiltered!,
        if (id != null) 'id': id!,
        if (userActorEmail != null) 'userActorEmail': userActorEmail!,
      };
}

/// A conversion event in a Google Analytics property.
class GoogleAnalyticsAdminV1betaConversionEvent {
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

  /// If set, this event can currently be deleted via DeleteConversionEvent.
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

  GoogleAnalyticsAdminV1betaConversionEvent({
    this.createTime,
    this.custom,
    this.deletable,
    this.eventName,
    this.name,
  });

  GoogleAnalyticsAdminV1betaConversionEvent.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          custom:
              json_.containsKey('custom') ? json_['custom'] as core.bool : null,
          deletable: json_.containsKey('deletable')
              ? json_['deletable'] as core.bool
              : null,
          eventName: json_.containsKey('eventName')
              ? json_['eventName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (custom != null) 'custom': custom!,
        if (deletable != null) 'deletable': deletable!,
        if (eventName != null) 'eventName': eventName!,
        if (name != null) 'name': name!,
      };
}

/// A definition for a CustomDimension.
class GoogleAnalyticsAdminV1betaCustomDimension {
  /// Description for this custom dimension.
  ///
  /// Max length of 150 characters.
  ///
  /// Optional.
  core.String? description;

  /// If set to true, sets this dimension as NPA and excludes it from ads
  /// personalization.
  ///
  /// This is currently only supported by user-scoped custom dimensions.
  ///
  /// Optional.
  core.bool? disallowAdsPersonalization;

  /// Display name for this custom dimension as shown in the Analytics UI.
  ///
  /// Max length of 82 characters, alphanumeric plus space and underscore
  /// starting with a letter. Legacy system-generated display names may contain
  /// square brackets, but updates to this field will never permit square
  /// brackets.
  ///
  /// Required.
  core.String? displayName;

  /// Resource name for this CustomDimension resource.
  ///
  /// Format: properties/{property}/customDimensions/{customDimension}
  ///
  /// Output only.
  core.String? name;

  /// Tagging parameter name for this custom dimension.
  ///
  /// If this is a user-scoped dimension, then this is the user property name.
  /// If this is an event-scoped dimension, then this is the event parameter
  /// name. May only contain alphanumeric and underscore characters, starting
  /// with a letter. Max length of 24 characters for user-scoped dimensions, 40
  /// characters for event-scoped dimensions.
  ///
  /// Required. Immutable.
  core.String? parameterName;

  /// The scope of this dimension.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "DIMENSION_SCOPE_UNSPECIFIED" : Scope unknown or not specified.
  /// - "EVENT" : Dimension scoped to an event.
  /// - "USER" : Dimension scoped to a user.
  core.String? scope;

  GoogleAnalyticsAdminV1betaCustomDimension({
    this.description,
    this.disallowAdsPersonalization,
    this.displayName,
    this.name,
    this.parameterName,
    this.scope,
  });

  GoogleAnalyticsAdminV1betaCustomDimension.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          disallowAdsPersonalization:
              json_.containsKey('disallowAdsPersonalization')
                  ? json_['disallowAdsPersonalization'] as core.bool
                  : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parameterName: json_.containsKey('parameterName')
              ? json_['parameterName'] as core.String
              : null,
          scope:
              json_.containsKey('scope') ? json_['scope'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (disallowAdsPersonalization != null)
          'disallowAdsPersonalization': disallowAdsPersonalization!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (parameterName != null) 'parameterName': parameterName!,
        if (scope != null) 'scope': scope!,
      };
}

/// A definition for a custom metric.
class GoogleAnalyticsAdminV1betaCustomMetric {
  /// Description for this custom dimension.
  ///
  /// Max length of 150 characters.
  ///
  /// Optional.
  core.String? description;

  /// Display name for this custom metric as shown in the Analytics UI.
  ///
  /// Max length of 82 characters, alphanumeric plus space and underscore
  /// starting with a letter. Legacy system-generated display names may contain
  /// square brackets, but updates to this field will never permit square
  /// brackets.
  ///
  /// Required.
  core.String? displayName;

  /// The type for the custom metric's value.
  ///
  /// Required.
  /// Possible string values are:
  /// - "MEASUREMENT_UNIT_UNSPECIFIED" : MeasurementUnit unspecified or missing.
  /// - "STANDARD" : This metric uses default units.
  /// - "CURRENCY" : This metric measures a currency.
  /// - "FEET" : This metric measures feet.
  /// - "METERS" : This metric measures meters.
  /// - "KILOMETERS" : This metric measures kilometers.
  /// - "MILES" : This metric measures miles.
  /// - "MILLISECONDS" : This metric measures milliseconds.
  /// - "SECONDS" : This metric measures seconds.
  /// - "MINUTES" : This metric measures minutes.
  /// - "HOURS" : This metric measures hours.
  core.String? measurementUnit;

  /// Resource name for this CustomMetric resource.
  ///
  /// Format: properties/{property}/customMetrics/{customMetric}
  ///
  /// Output only.
  core.String? name;

  /// Tagging name for this custom metric.
  ///
  /// If this is an event-scoped metric, then this is the event parameter name.
  /// May only contain alphanumeric and underscore charactes, starting with a
  /// letter. Max length of 40 characters for event-scoped metrics.
  ///
  /// Required. Immutable.
  core.String? parameterName;

  /// Types of restricted data that this metric may contain.
  ///
  /// Required for metrics with CURRENCY measurement unit. Must be empty for
  /// metrics with a non-CURRENCY measurement unit.
  ///
  /// Optional.
  core.List<core.String>? restrictedMetricType;

  /// The scope of this custom metric.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "METRIC_SCOPE_UNSPECIFIED" : Scope unknown or not specified.
  /// - "EVENT" : Metric scoped to an event.
  core.String? scope;

  GoogleAnalyticsAdminV1betaCustomMetric({
    this.description,
    this.displayName,
    this.measurementUnit,
    this.name,
    this.parameterName,
    this.restrictedMetricType,
    this.scope,
  });

  GoogleAnalyticsAdminV1betaCustomMetric.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          measurementUnit: json_.containsKey('measurementUnit')
              ? json_['measurementUnit'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parameterName: json_.containsKey('parameterName')
              ? json_['parameterName'] as core.String
              : null,
          restrictedMetricType: json_.containsKey('restrictedMetricType')
              ? (json_['restrictedMetricType'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          scope:
              json_.containsKey('scope') ? json_['scope'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (measurementUnit != null) 'measurementUnit': measurementUnit!,
        if (name != null) 'name': name!,
        if (parameterName != null) 'parameterName': parameterName!,
        if (restrictedMetricType != null)
          'restrictedMetricType': restrictedMetricType!,
        if (scope != null) 'scope': scope!,
      };
}

/// Settings values for data retention.
///
/// This is a singleton resource.
class GoogleAnalyticsAdminV1betaDataRetentionSettings {
  /// The length of time that event-level data is retained.
  /// Possible string values are:
  /// - "RETENTION_DURATION_UNSPECIFIED" : Data retention time duration is not
  /// specified.
  /// - "TWO_MONTHS" : The data retention time duration is 2 months.
  /// - "FOURTEEN_MONTHS" : The data retention time duration is 14 months.
  /// - "TWENTY_SIX_MONTHS" : The data retention time duration is 26 months.
  /// Available to 360 properties only.
  /// - "THIRTY_EIGHT_MONTHS" : The data retention time duration is 38 months.
  /// Available to 360 properties only.
  /// - "FIFTY_MONTHS" : The data retention time duration is 50 months.
  /// Available to 360 properties only.
  core.String? eventDataRetention;

  /// Resource name for this DataRetentionSetting resource.
  ///
  /// Format: properties/{property}/dataRetentionSettings
  ///
  /// Output only.
  core.String? name;

  /// If true, reset the retention period for the user identifier with every
  /// event from that user.
  core.bool? resetUserDataOnNewActivity;

  GoogleAnalyticsAdminV1betaDataRetentionSettings({
    this.eventDataRetention,
    this.name,
    this.resetUserDataOnNewActivity,
  });

  GoogleAnalyticsAdminV1betaDataRetentionSettings.fromJson(core.Map json_)
      : this(
          eventDataRetention: json_.containsKey('eventDataRetention')
              ? json_['eventDataRetention'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          resetUserDataOnNewActivity:
              json_.containsKey('resetUserDataOnNewActivity')
                  ? json_['resetUserDataOnNewActivity'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventDataRetention != null)
          'eventDataRetention': eventDataRetention!,
        if (name != null) 'name': name!,
        if (resetUserDataOnNewActivity != null)
          'resetUserDataOnNewActivity': resetUserDataOnNewActivity!,
      };
}

/// A resource message representing data sharing settings of a Google Analytics
/// account.
class GoogleAnalyticsAdminV1betaDataSharingSettings {
  /// Resource name.
  ///
  /// Format: accounts/{account}/dataSharingSettings Example:
  /// "accounts/1000/dataSharingSettings"
  ///
  /// Output only.
  core.String? name;

  /// Allows any of Google sales to access the data in order to suggest
  /// configuration changes to improve results.
  core.bool? sharingWithGoogleAnySalesEnabled;

  /// Allows Google sales teams that are assigned to the customer to access the
  /// data in order to suggest configuration changes to improve results.
  ///
  /// Sales team restrictions still apply when enabled.
  core.bool? sharingWithGoogleAssignedSalesEnabled;

  /// Allows Google to use the data to improve other Google products or
  /// services.
  core.bool? sharingWithGoogleProductsEnabled;

  /// Allows Google support to access the data in order to help troubleshoot
  /// issues.
  core.bool? sharingWithGoogleSupportEnabled;

  /// Allows Google to share the data anonymously in aggregate form with others.
  core.bool? sharingWithOthersEnabled;

  GoogleAnalyticsAdminV1betaDataSharingSettings({
    this.name,
    this.sharingWithGoogleAnySalesEnabled,
    this.sharingWithGoogleAssignedSalesEnabled,
    this.sharingWithGoogleProductsEnabled,
    this.sharingWithGoogleSupportEnabled,
    this.sharingWithOthersEnabled,
  });

  GoogleAnalyticsAdminV1betaDataSharingSettings.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sharingWithGoogleAnySalesEnabled:
              json_.containsKey('sharingWithGoogleAnySalesEnabled')
                  ? json_['sharingWithGoogleAnySalesEnabled'] as core.bool
                  : null,
          sharingWithGoogleAssignedSalesEnabled:
              json_.containsKey('sharingWithGoogleAssignedSalesEnabled')
                  ? json_['sharingWithGoogleAssignedSalesEnabled'] as core.bool
                  : null,
          sharingWithGoogleProductsEnabled:
              json_.containsKey('sharingWithGoogleProductsEnabled')
                  ? json_['sharingWithGoogleProductsEnabled'] as core.bool
                  : null,
          sharingWithGoogleSupportEnabled:
              json_.containsKey('sharingWithGoogleSupportEnabled')
                  ? json_['sharingWithGoogleSupportEnabled'] as core.bool
                  : null,
          sharingWithOthersEnabled:
              json_.containsKey('sharingWithOthersEnabled')
                  ? json_['sharingWithOthersEnabled'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (sharingWithGoogleAnySalesEnabled != null)
          'sharingWithGoogleAnySalesEnabled': sharingWithGoogleAnySalesEnabled!,
        if (sharingWithGoogleAssignedSalesEnabled != null)
          'sharingWithGoogleAssignedSalesEnabled':
              sharingWithGoogleAssignedSalesEnabled!,
        if (sharingWithGoogleProductsEnabled != null)
          'sharingWithGoogleProductsEnabled': sharingWithGoogleProductsEnabled!,
        if (sharingWithGoogleSupportEnabled != null)
          'sharingWithGoogleSupportEnabled': sharingWithGoogleSupportEnabled!,
        if (sharingWithOthersEnabled != null)
          'sharingWithOthersEnabled': sharingWithOthersEnabled!,
      };
}

/// A resource message representing a data stream.
class GoogleAnalyticsAdminV1betaDataStream {
  /// Data specific to Android app streams.
  ///
  /// Must be populated if type is ANDROID_APP_DATA_STREAM.
  GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData?
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
  GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData? iosAppStreamData;

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
  GoogleAnalyticsAdminV1betaDataStreamWebStreamData? webStreamData;

  GoogleAnalyticsAdminV1betaDataStream({
    this.androidAppStreamData,
    this.createTime,
    this.displayName,
    this.iosAppStreamData,
    this.name,
    this.type,
    this.updateTime,
    this.webStreamData,
  });

  GoogleAnalyticsAdminV1betaDataStream.fromJson(core.Map json_)
      : this(
          androidAppStreamData: json_.containsKey('androidAppStreamData')
              ? GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData
                  .fromJson(json_['androidAppStreamData']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          iosAppStreamData: json_.containsKey('iosAppStreamData')
              ? GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData.fromJson(
                  json_['iosAppStreamData']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          webStreamData: json_.containsKey('webStreamData')
              ? GoogleAnalyticsAdminV1betaDataStreamWebStreamData.fromJson(
                  json_['webStreamData'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidAppStreamData != null)
          'androidAppStreamData': androidAppStreamData!,
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (iosAppStreamData != null) 'iosAppStreamData': iosAppStreamData!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (webStreamData != null) 'webStreamData': webStreamData!,
      };
}

/// Data specific to Android app streams.
class GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData {
  /// ID of the corresponding Android app in Firebase, if any.
  ///
  /// This ID can change if the Android app is deleted and recreated.
  ///
  /// Output only.
  core.String? firebaseAppId;

  /// The package name for the app being measured.
  ///
  /// Example: "com.example.myandroidapp"
  ///
  /// Immutable.
  core.String? packageName;

  GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData({
    this.firebaseAppId,
    this.packageName,
  });

  GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData.fromJson(
      core.Map json_)
      : this(
          firebaseAppId: json_.containsKey('firebaseAppId')
              ? json_['firebaseAppId'] as core.String
              : null,
          packageName: json_.containsKey('packageName')
              ? json_['packageName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firebaseAppId != null) 'firebaseAppId': firebaseAppId!,
        if (packageName != null) 'packageName': packageName!,
      };
}

/// Data specific to iOS app streams.
class GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData {
  /// The Apple App Store Bundle ID for the app Example: "com.example.myiosapp"
  ///
  /// Required. Immutable.
  core.String? bundleId;

  /// ID of the corresponding iOS app in Firebase, if any.
  ///
  /// This ID can change if the iOS app is deleted and recreated.
  ///
  /// Output only.
  core.String? firebaseAppId;

  GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData({
    this.bundleId,
    this.firebaseAppId,
  });

  GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData.fromJson(core.Map json_)
      : this(
          bundleId: json_.containsKey('bundleId')
              ? json_['bundleId'] as core.String
              : null,
          firebaseAppId: json_.containsKey('firebaseAppId')
              ? json_['firebaseAppId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundleId != null) 'bundleId': bundleId!,
        if (firebaseAppId != null) 'firebaseAppId': firebaseAppId!,
      };
}

/// Data specific to web streams.
class GoogleAnalyticsAdminV1betaDataStreamWebStreamData {
  /// Domain name of the web app being measured, or empty.
  ///
  /// Example: "http://www.google.com", "https://www.google.com"
  ///
  /// Immutable.
  core.String? defaultUri;

  /// ID of the corresponding web app in Firebase, if any.
  ///
  /// This ID can change if the web app is deleted and recreated.
  ///
  /// Output only.
  core.String? firebaseAppId;

  /// Analytics "Measurement ID", without the "G-" prefix.
  ///
  /// Example: "G-1A2BCD345E" would just be "1A2BCD345E"
  ///
  /// Output only.
  core.String? measurementId;

  GoogleAnalyticsAdminV1betaDataStreamWebStreamData({
    this.defaultUri,
    this.firebaseAppId,
    this.measurementId,
  });

  GoogleAnalyticsAdminV1betaDataStreamWebStreamData.fromJson(core.Map json_)
      : this(
          defaultUri: json_.containsKey('defaultUri')
              ? json_['defaultUri'] as core.String
              : null,
          firebaseAppId: json_.containsKey('firebaseAppId')
              ? json_['firebaseAppId'] as core.String
              : null,
          measurementId: json_.containsKey('measurementId')
              ? json_['measurementId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultUri != null) 'defaultUri': defaultUri!,
        if (firebaseAppId != null) 'firebaseAppId': firebaseAppId!,
        if (measurementId != null) 'measurementId': measurementId!,
      };
}

/// A link between a GA4 property and a Firebase project.
class GoogleAnalyticsAdminV1betaFirebaseLink {
  /// Time when this FirebaseLink was originally created.
  ///
  /// Output only.
  core.String? createTime;

  /// Example format: properties/1234/firebaseLinks/5678
  ///
  /// Output only.
  core.String? name;

  /// Firebase project resource name.
  ///
  /// When creating a FirebaseLink, you may provide this resource name using
  /// either a project number or project ID. Once this resource has been
  /// created, returned FirebaseLinks will always have a project_name that
  /// contains a project number. Format: 'projects/{project number}' Example:
  /// 'projects/1234'
  ///
  /// Immutable.
  core.String? project;

  GoogleAnalyticsAdminV1betaFirebaseLink({
    this.createTime,
    this.name,
    this.project,
  });

  GoogleAnalyticsAdminV1betaFirebaseLink.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          project: json_.containsKey('project')
              ? json_['project'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (project != null) 'project': project!,
      };
}

/// A link between a GA4 property and a Google Ads account.
class GoogleAnalyticsAdminV1betaGoogleAdsLink {
  /// Enable personalized advertising features with this integration.
  ///
  /// Automatically publish my Google Analytics audience lists and Google
  /// Analytics remarketing events/parameters to the linked Google Ads account.
  /// If this field is not set on create/update, it will be defaulted to true.
  core.bool? adsPersonalizationEnabled;

  /// If true, this link is for a Google Ads manager account.
  ///
  /// Output only.
  core.bool? canManageClients;

  /// Time when this link was originally created.
  ///
  /// Output only.
  core.String? createTime;

  /// Email address of the user that created the link.
  ///
  /// An empty string will be returned if the email address can't be retrieved.
  ///
  /// Output only.
  core.String? creatorEmailAddress;

  /// Google Ads customer ID.
  ///
  /// Immutable.
  core.String? customerId;

  /// Format: properties/{propertyId}/googleAdsLinks/{googleAdsLinkId} Note:
  /// googleAdsLinkId is not the Google Ads customer ID.
  ///
  /// Output only.
  core.String? name;

  /// Time when this link was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleAnalyticsAdminV1betaGoogleAdsLink({
    this.adsPersonalizationEnabled,
    this.canManageClients,
    this.createTime,
    this.creatorEmailAddress,
    this.customerId,
    this.name,
    this.updateTime,
  });

  GoogleAnalyticsAdminV1betaGoogleAdsLink.fromJson(core.Map json_)
      : this(
          adsPersonalizationEnabled:
              json_.containsKey('adsPersonalizationEnabled')
                  ? json_['adsPersonalizationEnabled'] as core.bool
                  : null,
          canManageClients: json_.containsKey('canManageClients')
              ? json_['canManageClients'] as core.bool
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          creatorEmailAddress: json_.containsKey('creatorEmailAddress')
              ? json_['creatorEmailAddress'] as core.String
              : null,
          customerId: json_.containsKey('customerId')
              ? json_['customerId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adsPersonalizationEnabled != null)
          'adsPersonalizationEnabled': adsPersonalizationEnabled!,
        if (canManageClients != null) 'canManageClients': canManageClients!,
        if (createTime != null) 'createTime': createTime!,
        if (creatorEmailAddress != null)
          'creatorEmailAddress': creatorEmailAddress!,
        if (customerId != null) 'customerId': customerId!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Response message for ListAccountSummaries RPC.
class GoogleAnalyticsAdminV1betaListAccountSummariesResponse {
  /// Account summaries of all accounts the caller has access to.
  core.List<GoogleAnalyticsAdminV1betaAccountSummary>? accountSummaries;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1betaListAccountSummariesResponse({
    this.accountSummaries,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1betaListAccountSummariesResponse.fromJson(
      core.Map json_)
      : this(
          accountSummaries: json_.containsKey('accountSummaries')
              ? (json_['accountSummaries'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1betaAccountSummary.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountSummaries != null) 'accountSummaries': accountSummaries!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Request message for ListAccounts RPC.
class GoogleAnalyticsAdminV1betaListAccountsResponse {
  /// Results that were accessible to the caller.
  core.List<GoogleAnalyticsAdminV1betaAccount>? accounts;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1betaListAccountsResponse({
    this.accounts,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1betaListAccountsResponse.fromJson(core.Map json_)
      : this(
          accounts: json_.containsKey('accounts')
              ? (json_['accounts'] as core.List)
                  .map((value) => GoogleAnalyticsAdminV1betaAccount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accounts != null) 'accounts': accounts!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListConversionEvents RPC.
class GoogleAnalyticsAdminV1betaListConversionEventsResponse {
  /// The requested conversion events
  core.List<GoogleAnalyticsAdminV1betaConversionEvent>? conversionEvents;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1betaListConversionEventsResponse({
    this.conversionEvents,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1betaListConversionEventsResponse.fromJson(
      core.Map json_)
      : this(
          conversionEvents: json_.containsKey('conversionEvents')
              ? (json_['conversionEvents'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1betaConversionEvent.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversionEvents != null) 'conversionEvents': conversionEvents!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListCustomDimensions RPC.
class GoogleAnalyticsAdminV1betaListCustomDimensionsResponse {
  /// List of CustomDimensions.
  core.List<GoogleAnalyticsAdminV1betaCustomDimension>? customDimensions;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1betaListCustomDimensionsResponse({
    this.customDimensions,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1betaListCustomDimensionsResponse.fromJson(
      core.Map json_)
      : this(
          customDimensions: json_.containsKey('customDimensions')
              ? (json_['customDimensions'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1betaCustomDimension.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customDimensions != null) 'customDimensions': customDimensions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListCustomMetrics RPC.
class GoogleAnalyticsAdminV1betaListCustomMetricsResponse {
  /// List of CustomMetrics.
  core.List<GoogleAnalyticsAdminV1betaCustomMetric>? customMetrics;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1betaListCustomMetricsResponse({
    this.customMetrics,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1betaListCustomMetricsResponse.fromJson(core.Map json_)
      : this(
          customMetrics: json_.containsKey('customMetrics')
              ? (json_['customMetrics'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1betaCustomMetric.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customMetrics != null) 'customMetrics': customMetrics!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListDataStreams RPC.
class GoogleAnalyticsAdminV1betaListDataStreamsResponse {
  /// List of DataStreams.
  core.List<GoogleAnalyticsAdminV1betaDataStream>? dataStreams;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1betaListDataStreamsResponse({
    this.dataStreams,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1betaListDataStreamsResponse.fromJson(core.Map json_)
      : this(
          dataStreams: json_.containsKey('dataStreams')
              ? (json_['dataStreams'] as core.List)
                  .map((value) => GoogleAnalyticsAdminV1betaDataStream.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataStreams != null) 'dataStreams': dataStreams!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListFirebaseLinks RPC
class GoogleAnalyticsAdminV1betaListFirebaseLinksResponse {
  /// List of FirebaseLinks.
  ///
  /// This will have at most one value.
  core.List<GoogleAnalyticsAdminV1betaFirebaseLink>? firebaseLinks;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages. Currently, Google
  /// Analytics supports only one FirebaseLink per property, so this will never
  /// be populated.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1betaListFirebaseLinksResponse({
    this.firebaseLinks,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1betaListFirebaseLinksResponse.fromJson(core.Map json_)
      : this(
          firebaseLinks: json_.containsKey('firebaseLinks')
              ? (json_['firebaseLinks'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1betaFirebaseLink.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firebaseLinks != null) 'firebaseLinks': firebaseLinks!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListGoogleAdsLinks RPC.
class GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse {
  /// List of GoogleAdsLinks.
  core.List<GoogleAnalyticsAdminV1betaGoogleAdsLink>? googleAdsLinks;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse({
    this.googleAdsLinks,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse.fromJson(core.Map json_)
      : this(
          googleAdsLinks: json_.containsKey('googleAdsLinks')
              ? (json_['googleAdsLinks'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1betaGoogleAdsLink.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (googleAdsLinks != null) 'googleAdsLinks': googleAdsLinks!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListMeasurementProtocolSecret RPC
class GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse {
  /// A list of secrets for the parent stream specified in the request.
  core.List<GoogleAnalyticsAdminV1betaMeasurementProtocolSecret>?
      measurementProtocolSecrets;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse({
    this.measurementProtocolSecrets,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse.fromJson(
      core.Map json_)
      : this(
          measurementProtocolSecrets:
              json_.containsKey('measurementProtocolSecrets')
                  ? (json_['measurementProtocolSecrets'] as core.List)
                      .map((value) =>
                          GoogleAnalyticsAdminV1betaMeasurementProtocolSecret
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (measurementProtocolSecrets != null)
          'measurementProtocolSecrets': measurementProtocolSecrets!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListProperties RPC.
class GoogleAnalyticsAdminV1betaListPropertiesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Results that matched the filter criteria and were accessible to the
  /// caller.
  core.List<GoogleAnalyticsAdminV1betaProperty>? properties;

  GoogleAnalyticsAdminV1betaListPropertiesResponse({
    this.nextPageToken,
    this.properties,
  });

  GoogleAnalyticsAdminV1betaListPropertiesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          properties: json_.containsKey('properties')
              ? (json_['properties'] as core.List)
                  .map((value) => GoogleAnalyticsAdminV1betaProperty.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (properties != null) 'properties': properties!,
      };
}

/// A secret value used for sending hits to Measurement Protocol.
class GoogleAnalyticsAdminV1betaMeasurementProtocolSecret {
  /// Human-readable display name for this secret.
  ///
  /// Required.
  core.String? displayName;

  /// Resource name of this secret.
  ///
  /// This secret may be a child of any type of stream. Format:
  /// properties/{property}/dataStreams/{dataStream}/measurementProtocolSecrets/{measurementProtocolSecret}
  ///
  /// Output only.
  core.String? name;

  /// The measurement protocol secret value.
  ///
  /// Pass this value to the api_secret field of the Measurement Protocol API
  /// when sending hits to this secret's parent property.
  ///
  /// Output only.
  core.String? secretValue;

  GoogleAnalyticsAdminV1betaMeasurementProtocolSecret({
    this.displayName,
    this.name,
    this.secretValue,
  });

  GoogleAnalyticsAdminV1betaMeasurementProtocolSecret.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          secretValue: json_.containsKey('secretValue')
              ? json_['secretValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (secretValue != null) 'secretValue': secretValue!,
      };
}

/// A resource message representing a Google Analytics GA4 property.
class GoogleAnalyticsAdminV1betaProperty {
  /// The resource name of the parent account Format: accounts/{account_id}
  /// Example: "accounts/123"
  ///
  /// Immutable.
  core.String? account;

  /// Time when the entity was originally created.
  ///
  /// Output only.
  core.String? createTime;

  /// The currency type used in reports involving monetary values.
  ///
  /// Format: https://en.wikipedia.org/wiki/ISO_4217 Examples: "USD", "EUR",
  /// "JPY"
  core.String? currencyCode;

  /// If set, the time at which this property was trashed.
  ///
  /// If not set, then this property is not currently in the trash can.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Human-readable display name for this property.
  ///
  /// The max allowed display name length is 100 UTF-16 code units.
  ///
  /// Required.
  core.String? displayName;

  /// If set, the time at which this trashed property will be permanently
  /// deleted.
  ///
  /// If not set, then this property is not currently in the trash can and is
  /// not slated to be deleted.
  ///
  /// Output only.
  core.String? expireTime;

  /// Industry associated with this property Example: AUTOMOTIVE, FOOD_AND_DRINK
  /// Possible string values are:
  /// - "INDUSTRY_CATEGORY_UNSPECIFIED" : Industry category unspecified
  /// - "AUTOMOTIVE" : Automotive
  /// - "BUSINESS_AND_INDUSTRIAL_MARKETS" : Business and industrial markets
  /// - "FINANCE" : Finance
  /// - "HEALTHCARE" : Healthcare
  /// - "TECHNOLOGY" : Technology
  /// - "TRAVEL" : Travel
  /// - "OTHER" : Other
  /// - "ARTS_AND_ENTERTAINMENT" : Arts and entertainment
  /// - "BEAUTY_AND_FITNESS" : Beauty and fitness
  /// - "BOOKS_AND_LITERATURE" : Books and literature
  /// - "FOOD_AND_DRINK" : Food and drink
  /// - "GAMES" : Games
  /// - "HOBBIES_AND_LEISURE" : Hobbies and leisure
  /// - "HOME_AND_GARDEN" : Home and garden
  /// - "INTERNET_AND_TELECOM" : Internet and telecom
  /// - "LAW_AND_GOVERNMENT" : Law and government
  /// - "NEWS" : News
  /// - "ONLINE_COMMUNITIES" : Online communities
  /// - "PEOPLE_AND_SOCIETY" : People and society
  /// - "PETS_AND_ANIMALS" : Pets and animals
  /// - "REAL_ESTATE" : Real estate
  /// - "REFERENCE" : Reference
  /// - "SCIENCE" : Science
  /// - "SPORTS" : Sports
  /// - "JOBS_AND_EDUCATION" : Jobs and education
  /// - "SHOPPING" : Shopping
  core.String? industryCategory;

  /// Resource name of this property.
  ///
  /// Format: properties/{property_id} Example: "properties/1000"
  ///
  /// Output only.
  core.String? name;

  /// Resource name of this property's logical parent.
  ///
  /// Note: The Property-Moving UI can be used to change the parent. Format:
  /// accounts/{account}, properties/{property} Example: "accounts/100",
  /// "properties/101"
  ///
  /// Immutable.
  core.String? parent;

  /// The property type for this Property resource.
  ///
  /// When creating a property, if the type is "PROPERTY_TYPE_UNSPECIFIED", then
  /// "ORDINARY_PROPERTY" will be implied. "SUBPROPERTY" and "ROLLUP_PROPERTY"
  /// types cannot yet be created via Google Analytics Admin API.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "PROPERTY_TYPE_UNSPECIFIED" : Unknown or unspecified property type
  /// - "PROPERTY_TYPE_ORDINARY" : Ordinary GA4 property
  /// - "PROPERTY_TYPE_SUBPROPERTY" : GA4 subproperty
  /// - "PROPERTY_TYPE_ROLLUP" : GA4 rollup property
  core.String? propertyType;

  /// The Google Analytics service level that applies to this property.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SERVICE_LEVEL_UNSPECIFIED" : Service level not specified or invalid.
  /// - "GOOGLE_ANALYTICS_STANDARD" : The standard version of Google Analytics.
  /// - "GOOGLE_ANALYTICS_360" : The paid, premium version of Google Analytics.
  core.String? serviceLevel;

  /// Reporting Time Zone, used as the day boundary for reports, regardless of
  /// where the data originates.
  ///
  /// If the time zone honors DST, Analytics will automatically adjust for the
  /// changes. NOTE: Changing the time zone only affects data going forward, and
  /// is not applied retroactively. Format: https://www.iana.org/time-zones
  /// Example: "America/Los_Angeles"
  ///
  /// Required.
  core.String? timeZone;

  /// Time when entity payload fields were last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleAnalyticsAdminV1betaProperty({
    this.account,
    this.createTime,
    this.currencyCode,
    this.deleteTime,
    this.displayName,
    this.expireTime,
    this.industryCategory,
    this.name,
    this.parent,
    this.propertyType,
    this.serviceLevel,
    this.timeZone,
    this.updateTime,
  });

  GoogleAnalyticsAdminV1betaProperty.fromJson(core.Map json_)
      : this(
          account: json_.containsKey('account')
              ? json_['account'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          currencyCode: json_.containsKey('currencyCode')
              ? json_['currencyCode'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          industryCategory: json_.containsKey('industryCategory')
              ? json_['industryCategory'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          propertyType: json_.containsKey('propertyType')
              ? json_['propertyType'] as core.String
              : null,
          serviceLevel: json_.containsKey('serviceLevel')
              ? json_['serviceLevel'] as core.String
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (createTime != null) 'createTime': createTime!,
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (industryCategory != null) 'industryCategory': industryCategory!,
        if (name != null) 'name': name!,
        if (parent != null) 'parent': parent!,
        if (propertyType != null) 'propertyType': propertyType!,
        if (serviceLevel != null) 'serviceLevel': serviceLevel!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A virtual resource representing metadata for a GA4 property.
class GoogleAnalyticsAdminV1betaPropertySummary {
  /// Display name for the property referred to in this property summary.
  core.String? displayName;

  /// Resource name of this property's logical parent.
  ///
  /// Note: The Property-Moving UI can be used to change the parent. Format:
  /// accounts/{account}, properties/{property} Example: "accounts/100",
  /// "properties/200"
  core.String? parent;

  /// Resource name of property referred to by this property summary Format:
  /// properties/{property_id} Example: "properties/1000"
  core.String? property;

  /// The property's property type.
  /// Possible string values are:
  /// - "PROPERTY_TYPE_UNSPECIFIED" : Unknown or unspecified property type
  /// - "PROPERTY_TYPE_ORDINARY" : Ordinary GA4 property
  /// - "PROPERTY_TYPE_SUBPROPERTY" : GA4 subproperty
  /// - "PROPERTY_TYPE_ROLLUP" : GA4 rollup property
  core.String? propertyType;

  GoogleAnalyticsAdminV1betaPropertySummary({
    this.displayName,
    this.parent,
    this.property,
    this.propertyType,
  });

  GoogleAnalyticsAdminV1betaPropertySummary.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          property: json_.containsKey('property')
              ? json_['property'] as core.String
              : null,
          propertyType: json_.containsKey('propertyType')
              ? json_['propertyType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (parent != null) 'parent': parent!,
        if (property != null) 'property': property!,
        if (propertyType != null) 'propertyType': propertyType!,
      };
}

/// Request message for ProvisionAccountTicket RPC.
class GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest {
  /// The account to create.
  GoogleAnalyticsAdminV1betaAccount? account;

  /// Redirect URI where the user will be sent after accepting Terms of Service.
  ///
  /// Must be configured in Developers Console as a Redirect URI
  core.String? redirectUri;

  GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest({
    this.account,
    this.redirectUri,
  });

  GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest.fromJson(
      core.Map json_)
      : this(
          account: json_.containsKey('account')
              ? GoogleAnalyticsAdminV1betaAccount.fromJson(
                  json_['account'] as core.Map<core.String, core.dynamic>)
              : null,
          redirectUri: json_.containsKey('redirectUri')
              ? json_['redirectUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (redirectUri != null) 'redirectUri': redirectUri!,
      };
}

/// Response message for ProvisionAccountTicket RPC.
class GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse {
  /// The param to be passed in the ToS link.
  core.String? accountTicketId;

  GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse({
    this.accountTicketId,
  });

  GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse.fromJson(
      core.Map json_)
      : this(
          accountTicketId: json_.containsKey('accountTicketId')
              ? json_['accountTicketId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountTicketId != null) 'accountTicketId': accountTicketId!,
      };
}

/// Request message for SearchChangeHistoryEvents RPC.
class GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest {
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
  /// The service may return fewer than this value, even if there are additional
  /// pages. If unspecified, at most 50 items will be returned. The maximum
  /// value is 200 (higher values will be coerced to the maximum).
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
  ///
  /// Optional.
  core.String? property;

  /// If set, only return changes if they are for a resource that matches at
  /// least one of these types.
  ///
  /// Optional.
  core.List<core.String>? resourceType;

  GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest({
    this.action,
    this.actorEmail,
    this.earliestChangeTime,
    this.latestChangeTime,
    this.pageSize,
    this.pageToken,
    this.property,
    this.resourceType,
  });

  GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest.fromJson(
      core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? (json_['action'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          actorEmail: json_.containsKey('actorEmail')
              ? (json_['actorEmail'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          earliestChangeTime: json_.containsKey('earliestChangeTime')
              ? json_['earliestChangeTime'] as core.String
              : null,
          latestChangeTime: json_.containsKey('latestChangeTime')
              ? json_['latestChangeTime'] as core.String
              : null,
          pageSize: json_.containsKey('pageSize')
              ? json_['pageSize'] as core.int
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
          property: json_.containsKey('property')
              ? json_['property'] as core.String
              : null,
          resourceType: json_.containsKey('resourceType')
              ? (json_['resourceType'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (actorEmail != null) 'actorEmail': actorEmail!,
        if (earliestChangeTime != null)
          'earliestChangeTime': earliestChangeTime!,
        if (latestChangeTime != null) 'latestChangeTime': latestChangeTime!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (property != null) 'property': property!,
        if (resourceType != null) 'resourceType': resourceType!,
      };
}

/// Response message for SearchAccounts RPC.
class GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse {
  /// Results that were accessible to the caller.
  core.List<GoogleAnalyticsAdminV1betaChangeHistoryEvent>? changeHistoryEvents;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse({
    this.changeHistoryEvents,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse.fromJson(
      core.Map json_)
      : this(
          changeHistoryEvents: json_.containsKey('changeHistoryEvents')
              ? (json_['changeHistoryEvents'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1betaChangeHistoryEvent.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (changeHistoryEvents != null)
          'changeHistoryEvents': changeHistoryEvents!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;
