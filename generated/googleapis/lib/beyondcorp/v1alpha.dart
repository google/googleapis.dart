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

/// BeyondCorp API - v1alpha
///
/// Beyondcorp Enterprise provides identity and context aware access controls
/// for enterprise resources and enables zero-trust access. Using the Beyondcorp
/// Enterprise APIs, enterprises can set up multi-cloud and on-prem connectivity
/// solutions.
///
/// For more information, see <https://cloud.google.com/>
///
/// Create an instance of [BeyondCorpApi] to access these resources:
///
/// - [OrganizationsResource]
///   - [OrganizationsLocationsResource]
///     - [OrganizationsLocationsGlobalResource]
///       - [OrganizationsLocationsGlobalPartnerTenantsResource]
///     - [OrganizationsLocationsInsightsResource]
///     - [OrganizationsLocationsOperationsResource]
///     - [OrganizationsLocationsSubscriptionsResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAppConnectionsResource]
///     - [ProjectsLocationsAppConnectorsResource]
///     - [ProjectsLocationsAppGatewaysResource]
///     - [ProjectsLocationsApplicationDomainsResource]
///     - [ProjectsLocationsApplicationsResource]
///     - [ProjectsLocationsConnectionsResource]
///     - [ProjectsLocationsConnectorsResource]
///     - [ProjectsLocationsInsightsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsSecurityGatewaysResource]
///       - [ProjectsLocationsSecurityGatewaysApplicationsResource]
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

/// Beyondcorp Enterprise provides identity and context aware access controls
/// for enterprise resources and enables zero-trust access.
///
/// Using the Beyondcorp Enterprise APIs, enterprises can set up multi-cloud and
/// on-prem connectivity solutions.
class BeyondCorpApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  BeyondCorpApi(
    http.Client client, {
    core.String rootUrl = 'https://beyondcorp.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsResource get locations =>
      OrganizationsLocationsResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsLocationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsGlobalResource get global =>
      OrganizationsLocationsGlobalResource(_requester);
  OrganizationsLocationsInsightsResource get insights =>
      OrganizationsLocationsInsightsResource(_requester);
  OrganizationsLocationsOperationsResource get operations =>
      OrganizationsLocationsOperationsResource(_requester);
  OrganizationsLocationsSubscriptionsResource get subscriptions =>
      OrganizationsLocationsSubscriptionsResource(_requester);

  OrganizationsLocationsResource(commons.ApiRequester client)
    : _requester = client;
}

class OrganizationsLocationsGlobalResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsGlobalPartnerTenantsResource get partnerTenants =>
      OrganizationsLocationsGlobalPartnerTenantsResource(_requester);

  OrganizationsLocationsGlobalResource(commons.ApiRequester client)
    : _requester = client;
}

class OrganizationsLocationsGlobalPartnerTenantsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsGlobalPartnerTenantsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Deletes a single PartnerTenant.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/global/partnerTenants/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a single PartnerTenant.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the PartnerTenant using the form:
  /// `organizations/{organization_id}/locations/global/partnerTenants/{partner_tenant_id}`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/global/partnerTenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists PartnerTenants in a given organization.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent organization to which the PartnerTenants
  /// belong. Format: `organizations/{organization_id}/locations/global`
  /// Value must have pattern `^organizations/\[^/\]+/locations/global$`.
  ///
  /// [filter] - Optional. A filter specifying constraints of a list operation.
  /// All fields in the PartnerTenant message are supported. For example, the
  /// following query will return the PartnerTenants with displayName
  /// "test-tenant"
  /// organizations/${ORG_ID}/locations/${LOCATION}/partnerTenants?filter=displayName="test-tenant"
  /// Nested fields are also supported. The follow query will return
  /// PartnerTenants with internal_tenant_id "1234"
  /// organizations/${ORG_ID}/locations/${LOCATION}/partnerTenants?filter=partnerMetadata.internalTenantId="1234"
  /// For more information, please refer to https://google.aip.dev/160.
  ///
  /// [orderBy] - Optional. Specifies the ordering of results. See
  /// [Sorting order](https://cloud.google.com/apis/design/design_patterns#sorting_order)
  /// for more information.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If not
  /// specified, a default value of 50 will be used by the service. Regardless
  /// of the page_size value, the response may include a partial list and a
  /// caller should only rely on response's next_page_token to determine if
  /// there are more instances left to be queried.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// ListPartnerTenantsResponse, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse
  >
  list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/partnerTenants';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsLocationsInsightsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsInsightsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the value for a selected particular insight based on the provided
  /// filters.
  ///
  /// Use the organization level path for fetching at org level and project
  /// level path for fetching the insight value specific to a particular
  /// project.
  ///
  /// Request parameters:
  ///
  /// [insight] - Required. The resource name of the insight using the form:
  /// `organizations/{organization_id}/locations/{location_id}/insights/{insight_id}`
  /// `projects/{project_id}/locations/{location_id}/insights/{insight_id}`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/insights/\[^/\]+$`.
  ///
  /// [aggregation] - Required. Aggregation type. Available aggregation could be
  /// fetched by calling insight list and get APIs in `BASIC` view.
  /// Possible string values are:
  /// - "AGGREGATION_UNSPECIFIED" : Unspecified.
  /// - "HOURLY" : Insight should be aggregated at hourly level.
  /// - "DAILY" : Insight should be aggregated at daily level.
  /// - "WEEKLY" : Insight should be aggregated at weekly level.
  /// - "MONTHLY" : Insight should be aggregated at monthly level.
  /// - "CUSTOM_DATE_RANGE" : Insight should be aggregated at the custom date
  /// range passed in as the start and end time in the request.
  ///
  /// [customGrouping_fieldFilter] - Optional. Filterable parameters to be added
  /// to the grouping clause. Available fields could be fetched by calling
  /// insight list and get APIs in `BASIC` view. `=` is the only comparison
  /// operator supported. `AND` is the only logical operator supported. Usage:
  /// field_filter="fieldName1=fieldVal1 AND fieldName2=fieldVal2". NOTE: Only
  /// `AND` conditions are allowed. NOTE: Use the `filter_alias` from
  /// `Insight.Metadata.Field` message for the filtering the corresponding
  /// fields in this filter field. (These expressions are based on the filter
  /// language described at https://google.aip.dev/160).
  ///
  /// [customGrouping_groupFields] - Required. Fields to be used for grouping.
  /// NOTE: Use the `filter_alias` from `Insight.Metadata.Field` message for
  /// declaring the fields to be grouped-by here.
  ///
  /// [endTime] - Required. Ending time for the duration for which insight is to
  /// be pulled.
  ///
  /// [fieldFilter] - Optional. Other filterable/configurable parameters as
  /// applicable to the selected insight. Available fields could be fetched by
  /// calling insight list and get APIs in `BASIC` view. `=` is the only
  /// comparison operator supported. `AND` is the only logical operator
  /// supported. Usage: field_filter="fieldName1=fieldVal1 AND
  /// fieldName2=fieldVal2". NOTE: Only `AND` conditions are allowed. NOTE: Use
  /// the `filter_alias` from `Insight.Metadata.Field` message for the filtering
  /// the corresponding fields in this filter field. (These expressions are
  /// based on the filter language described at https://google.aip.dev/160).
  ///
  /// [group] - Optional. Group id of the available groupings for the insight.
  /// Available groupings could be fetched by calling insight list and get APIs
  /// in `BASIC` view.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. Used to fetch the page represented by the token.
  /// Fetches the first page when not set.
  ///
  /// [startTime] - Required. Starting time for the duration for which insight
  /// is to be pulled.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse
  >
  configuredInsight(
    core.String insight, {
    core.String? aggregation,
    core.String? customGrouping_fieldFilter,
    core.List<core.String>? customGrouping_groupFields,
    core.String? endTime,
    core.String? fieldFilter,
    core.String? group,
    core.int? pageSize,
    core.String? pageToken,
    core.String? startTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (aggregation != null) 'aggregation': [aggregation],
      if (customGrouping_fieldFilter != null)
        'customGrouping.fieldFilter': [customGrouping_fieldFilter],
      if (customGrouping_groupFields != null)
        'customGrouping.groupFields': customGrouping_groupFields,
      if (endTime != null) 'endTime': [endTime],
      if (fieldFilter != null) 'fieldFilter': [fieldFilter],
      if (group != null) 'group': [group],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startTime != null) 'startTime': [startTime],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$insight') + ':configuredInsight';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the value for a selected particular insight with default
  /// configuration.
  ///
  /// The default aggregation level is 'DAILY' and no grouping will be applied
  /// or default grouping if applicable. The data will be returned for recent 7
  /// days starting the day before. The insight data size will be limited to 50
  /// rows. Use the organization level path for fetching at org level and
  /// project level path for fetching the insight value specific to a particular
  /// project. Setting the `view` to `BASIC` will only return the metadata for
  /// the insight.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the insight using the form:
  /// `organizations/{organization_id}/locations/{location_id}/insights/{insight_id}`
  /// `projects/{project_id}/locations/{location_id}/insights/{insight_id}`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/insights/\[^/\]+$`.
  ///
  /// [view] - Required. Metadata only or full data view.
  /// Possible string values are:
  /// - "INSIGHT_VIEW_UNSPECIFIED" : The default / unset value. The API will
  /// default to the BASIC view.
  /// - "BASIC" : Include basic metadata about the insight, but not the insight
  /// data. This is the default value (for both ListInsights and GetInsight).
  /// - "FULL" : Include everything.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists for all the available insights that could be fetched from the
  /// system.
  ///
  /// Allows to filter using category. Setting the `view` to `BASIC` will let
  /// you iterate over the list of insight metadatas.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of InsightMetadata using the form:
  /// `organizations/{organization_id}/locations/{location}`
  /// `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [aggregation] - Optional. Aggregation type. The default is 'DAILY'.
  /// Possible string values are:
  /// - "AGGREGATION_UNSPECIFIED" : Unspecified.
  /// - "HOURLY" : Insight should be aggregated at hourly level.
  /// - "DAILY" : Insight should be aggregated at daily level.
  /// - "WEEKLY" : Insight should be aggregated at weekly level.
  /// - "MONTHLY" : Insight should be aggregated at monthly level.
  /// - "CUSTOM_DATE_RANGE" : Insight should be aggregated at the custom date
  /// range passed in as the start and end time in the request.
  ///
  /// [endTime] - Optional. Ending time for the duration for which insights are
  /// to be pulled. The default is the current time.
  ///
  /// [filter] - Optional. Filter expression to restrict the insights returned.
  /// Supported filter fields: * `type` * `category` * `subCategory` Examples: *
  /// "category = application AND type = count" * "category = application AND
  /// subCategory = iap" * "type = status" Allowed values: * type: \[count,
  /// latency, status, list\] * category: \[application, device, request,
  /// security\] * subCategory: \[iap, caa, webprotect\] NOTE: Only equality
  /// based comparison is allowed. Only `AND` conjunction is allowed. NOTE: The
  /// 'AND' in the filter field needs to be in capital letters only. NOTE: Just
  /// filtering on `subCategory` is not allowed. It should be passed in with the
  /// parent `category` too. (These expressions are based on the filter language
  /// described at https://google.aip.dev/160).
  ///
  /// [orderBy] - Optional. Hint for how to order the results. This is currently
  /// ignored.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  /// NOTE: Default page size is 50.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [startTime] - Optional. Starting time for the duration for which insights
  /// are to be pulled. The default is 7 days before the current time.
  ///
  /// [view] - Required. List only metadata or full data.
  /// Possible string values are:
  /// - "INSIGHT_VIEW_UNSPECIFIED" : The default / unset value. The API will
  /// default to the BASIC view.
  /// - "BASIC" : Include basic metadata about the insight, but not the insight
  /// data. This is the default value (for both ListInsights and GetInsight).
  /// - "FULL" : Include everything.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse
  >
  list(
    core.String parent, {
    core.String? aggregation,
    core.String? endTime,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? startTime,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (aggregation != null) 'aggregation': [aggregation],
      if (endTime != null) 'endTime': [endTime],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startTime != null) 'startTime': [startTime],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/insights';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsOperationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of `1`, corresponding
  /// to `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Empty> cancel(
    GoogleLongrunningCancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningListOperationsResponse> list(
    core.String name, {
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsLocationsSubscriptionsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsSubscriptionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Cancels an existing BeyondCorp Enterprise Subscription in a given
  /// organization.
  ///
  /// Location will always be global as BeyondCorp subscriptions are per
  /// organization. Returns the timestamp for when the cancellation will become
  /// effective
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse
  >
  cancel(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a new BeyondCorp Enterprise Subscription in a given organization.
  ///
  /// Location will always be global as BeyondCorp subscriptions are per
  /// organization.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the subscription location using
  /// the form: `organizations/{organization_id}/locations/{location}`
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription
  >
  create(
    GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/subscriptions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a single Subscription.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of Subscription using the form:
  /// `organizations/{organization_id}/locations/{location}/subscriptions/{subscription_id}`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription
  >
  get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Subscriptions in a given organization and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of Subscription using the form:
  /// `organizations/{organization_id}/locations/{location}`
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If not
  /// specified, a default value of 50 will be used by the service. Regardless
  /// of the page_size value, the response may include a partial list and a
  /// caller should only rely on response's next_page_token to determine if
  /// there are more instances left to be queried.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// ListSubscriptionsRequest, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse
  >
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/subscriptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing BeyondCorp Enterprise Subscription in a given
  /// organization.
  ///
  /// Location will always be global as BeyondCorp subscriptions are per
  /// organization.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Unique resource name of the Subscription. The name is
  /// ignored when creating a subscription.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the Subscription resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. Mutable fields:
  /// seat_count.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription
  >
  patch(
    GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Restarts an existing BeyondCorp Enterprise Subscription in a given
  /// organization, that is scheduled for cancellation.
  ///
  /// Location will always be global as BeyondCorp subscriptions are per
  /// organization. Returns the timestamp for when the cancellation will become
  /// effective
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse
  >
  restart(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + ':restart';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAppConnectionsResource get appConnections =>
      ProjectsLocationsAppConnectionsResource(_requester);
  ProjectsLocationsAppConnectorsResource get appConnectors =>
      ProjectsLocationsAppConnectorsResource(_requester);
  ProjectsLocationsAppGatewaysResource get appGateways =>
      ProjectsLocationsAppGatewaysResource(_requester);
  ProjectsLocationsApplicationDomainsResource get applicationDomains =>
      ProjectsLocationsApplicationDomainsResource(_requester);
  ProjectsLocationsApplicationsResource get applications =>
      ProjectsLocationsApplicationsResource(_requester);
  ProjectsLocationsConnectionsResource get connections =>
      ProjectsLocationsConnectionsResource(_requester);
  ProjectsLocationsConnectorsResource get connectors =>
      ProjectsLocationsConnectorsResource(_requester);
  ProjectsLocationsInsightsResource get insights =>
      ProjectsLocationsInsightsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsSecurityGatewaysResource get securityGateways =>
      ProjectsLocationsSecurityGatewaysResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudLocationLocation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudLocationLocation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudLocationLocation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [extraLocationTypes] - Optional. A list of extra location types that
  /// should be used as conditions for controlling the visibility of the
  /// locations.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like `"displayName=tokyo"`, and is
  /// documented in more detail in \[AIP-160\](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the `next_page_token` field in
  /// the response. Send that page token to receive the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudLocationListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudLocationListLocationsResponse> list(
    core.String name, {
    core.List<core.String>? extraLocationTypes,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (extraLocationTypes != null) 'extraLocationTypes': extraLocationTypes,
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudLocationListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAppConnectionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAppConnectionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new AppConnection in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource project name of the AppConnection
  /// location using the form: `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [appConnectionId] - Optional. User-settable AppConnection resource ID. *
  /// Must start with a letter. * Must contain between 4-63 characters from
  /// `/a-z-/`. * Must end with a number or a letter.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validates request by executing a
  /// dry-run which would not alter the resource in any way.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection request,
    core.String parent, {
    core.String? appConnectionId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (appConnectionId != null) 'appConnectionId': [appConnectionId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/appConnections';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a single AppConnection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. BeyondCorp Connector name using the form:
  /// `projects/{project_id}/locations/{location_id}/appConnections/{app_connection_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/appConnections/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validates request by executing a
  /// dry-run which would not alter the resource in any way.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a single AppConnection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. BeyondCorp AppConnection name using the form:
  /// `projects/{project_id}/locations/{location_id}/appConnections/{app_connection_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/appConnections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/appConnections/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists AppConnections in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the AppConnection location using
  /// the form: `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter specifying constraints of a list operation.
  ///
  /// [orderBy] - Optional. Specifies the ordering of results. See
  /// [Sorting order](https://cloud.google.com/apis/design/design_patterns#sorting_order)
  /// for more information.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If not
  /// specified, a default value of 50 will be used by the service. Regardless
  /// of the page_size value, the response may include a partial list and a
  /// caller should only rely on response's next_page_token to determine if
  /// there are more instances left to be queried.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// ListAppConnectionsRequest, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse
  >
  list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/appConnections';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single AppConnection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Unique resource name of the AppConnection. The name is
  /// ignored when creating a AppConnection.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/appConnections/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set as true, will create the resource if it
  /// is not found.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Mask of fields to update. At least one path must
  /// be supplied in this field. The elements of the repeated paths field may
  /// only include these fields from \[BeyondCorp.AppConnection\]: * `labels` *
  /// `display_name` * `application_endpoint` * `connectors`
  ///
  /// [validateOnly] - Optional. If set, validates request by executing a
  /// dry-run which would not alter the resource in any way.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection request,
    core.String name, {
    core.bool? allowMissing,
    core.String? requestId,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Resolves AppConnections details for a given AppConnector.
  ///
  /// An internal method called by a connector to find AppConnections to connect
  /// to.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the AppConnection location using
  /// the form: `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [appConnectorId] - Required. BeyondCorp Connector name of the connector
  /// associated with those AppConnections using the form:
  /// `projects/{project_id}/locations/{location_id}/appConnectors/{app_connector_id}`
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If not
  /// specified, a default value of 50 will be used by the service. Regardless
  /// of the page_size value, the response may include a partial list and a
  /// caller should only rely on response's next_page_token to determine if
  /// there are more instances left to be queried.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// ResolveAppConnectionsResponse, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse
  >
  resolve(
    core.String parent, {
    core.String? appConnectorId,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (appConnectorId != null) 'appConnectorId': [appConnectorId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/appConnections:resolve';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/appConnections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/appConnections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAppConnectorsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAppConnectorsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new AppConnector in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource project name of the AppConnector
  /// location using the form: `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [appConnectorId] - Optional. User-settable AppConnector resource ID. *
  /// Must start with a letter. * Must contain between 4-63 characters from
  /// `/a-z-/`. * Must end with a number or a letter.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validates request by executing a
  /// dry-run which would not alter the resource in any way.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector request,
    core.String parent, {
    core.String? appConnectorId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (appConnectorId != null) 'appConnectorId': [appConnectorId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/appConnectors';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a single AppConnector.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. BeyondCorp AppConnector name using the form:
  /// `projects/{project_id}/locations/{location_id}/appConnectors/{app_connector_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/appConnectors/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validates request by executing a
  /// dry-run which would not alter the resource in any way.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a single AppConnector.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. BeyondCorp AppConnector name using the form:
  /// `projects/{project_id}/locations/{location_id}/appConnectors/{app_connector_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/appConnectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/appConnectors/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists AppConnectors in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the AppConnector location using
  /// the form: `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter specifying constraints of a list operation.
  ///
  /// [orderBy] - Optional. Specifies the ordering of results. See
  /// [Sorting order](https://cloud.google.com/apis/design/design_patterns#sorting_order)
  /// for more information.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If not
  /// specified, a default value of 50 will be used by the service. Regardless
  /// of the page_size value, the response may include a partial list and a
  /// caller should only rely on response's next_page_token to determine if
  /// there are more instances left to be queried.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// ListAppConnectorsRequest, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse
  >
  list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/appConnectors';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single AppConnector.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Unique resource name of the AppConnector. The name is
  /// ignored when creating a AppConnector.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/appConnectors/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Mask of fields to update. At least one path must
  /// be supplied in this field. The elements of the repeated paths field may
  /// only include these fields from \[BeyondCorp.AppConnector\]: * `labels` *
  /// `display_name`
  ///
  /// [validateOnly] - Optional. If set, validates request by executing a
  /// dry-run which would not alter the resource in any way.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Report status for a given connector.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appConnector] - Required. BeyondCorp Connector name using the form:
  /// `projects/{project_id}/locations/{location_id}/connectors/{connector}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/appConnectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> reportStatus(
    GoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest request,
    core.String appConnector, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$appConnector') + ':reportStatus';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets instance configuration for a given AppConnector.
  ///
  /// An internal method called by a AppConnector to get its container config.
  ///
  /// Request parameters:
  ///
  /// [appConnector] - Required. BeyondCorp AppConnector name using the form:
  /// `projects/{project_id}/locations/{location_id}/appConnectors/{app_connector}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/appConnectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse
  >
  resolveInstanceConfig(
    core.String appConnector, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$appConnector') +
        ':resolveInstanceConfig';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/appConnectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/appConnectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAppGatewaysResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAppGatewaysResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new AppGateway in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource project name of the AppGateway location
  /// using the form: `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [appGatewayId] - Optional. User-settable AppGateway resource ID. * Must
  /// start with a letter. * Must contain between 4-63 characters from `/a-z-/`.
  /// * Must end with a number or a letter.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validates request by executing a
  /// dry-run which would not alter the resource in any way.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    AppGateway request,
    core.String parent, {
    core.String? appGatewayId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (appGatewayId != null) 'appGatewayId': [appGatewayId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/appGateways';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a single AppGateway.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. BeyondCorp AppGateway name using the form:
  /// `projects/{project_id}/locations/{location_id}/appGateways/{app_gateway_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/appGateways/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validates request by executing a
  /// dry-run which would not alter the resource in any way.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a single AppGateway.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. BeyondCorp AppGateway name using the form:
  /// `projects/{project_id}/locations/{location_id}/appGateways/{app_gateway_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/appGateways/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppGateway].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppGateway> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AppGateway.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/appGateways/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists AppGateways in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the AppGateway location using
  /// the form: `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter specifying constraints of a list operation.
  ///
  /// [orderBy] - Optional. Specifies the ordering of results. See
  /// [Sorting order](https://cloud.google.com/apis/design/design_patterns#sorting_order)
  /// for more information.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If not
  /// specified, a default value of 50 will be used by the service. Regardless
  /// of the page_size value, the response may include a partial list and a
  /// caller should only rely on response's next_page_token to determine if
  /// there are more instances left to be queried.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// ListAppGatewaysRequest, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAppGatewaysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAppGatewaysResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/appGateways';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAppGatewaysResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/appGateways/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/appGateways/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsApplicationDomainsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsApplicationDomainsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/applicationDomains/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/applicationDomains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/applicationDomains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsApplicationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsApplicationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/applications/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/applications/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/applications/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConnectionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Connection in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource project name of the connection location
  /// using the form: `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [connectionId] - Optional. User-settable connection resource ID. * Must
  /// start with a letter. * Must contain between 4-63 characters from `/a-z-/`.
  /// * Must end with a number or a letter.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validates request by executing a
  /// dry-run which would not alter the resource in any way.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    Connection request,
    core.String parent, {
    core.String? connectionId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (connectionId != null) 'connectionId': [connectionId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/connections';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a single Connection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. BeyondCorp Connector name using the form:
  /// `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validates request by executing a
  /// dry-run which would not alter the resource in any way.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a single Connection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. BeyondCorp Connection name using the form:
  /// `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Connection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Connection> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Connection.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Connections in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the connection location using
  /// the form: `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter specifying constraints of a list operation.
  ///
  /// [orderBy] - Optional. Specifies the ordering of results. See
  /// [Sorting order](https://cloud.google.com/apis/design/design_patterns#sorting_order)
  /// for more information.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If not
  /// specified, a default value of 50 will be used by the service. Regardless
  /// of the page_size value, the response may include a partial list and a
  /// caller should only rely on response's next_page_token to determine if
  /// there are more instances left to be queried.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// ListConnectionsRequest, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConnectionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/connections';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConnectionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single Connection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Unique resource name of the connection. The name is
  /// ignored when creating a connection.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set as true, will create the resource if it
  /// is not found.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Mask of fields to update. At least one path must
  /// be supplied in this field. The elements of the repeated paths field may
  /// only include these fields from \[BeyondCorp.Connection\]: * `labels` *
  /// `display_name` * `application_endpoint` * `connectors`
  ///
  /// [validateOnly] - Optional. If set, validates request by executing a
  /// dry-run which would not alter the resource in any way.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    Connection request,
    core.String name, {
    core.bool? allowMissing,
    core.String? requestId,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Resolves connections details for a given connector.
  ///
  /// An internal method called by a connector to find connections to connect
  /// to.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the connection location using
  /// the form: `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [connectorId] - Required. BeyondCorp Connector name of the connector
  /// associated with those connections using the form:
  /// `projects/{project_id}/locations/{location_id}/connectors/{connector_id}`
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If not
  /// specified, a default value of 50 will be used by the service. Regardless
  /// of the page_size value, the response may include a partial list and a
  /// caller should only rely on response's next_page_token to determine if
  /// there are more instances left to be queried.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// ResolveConnectionsResponse, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResolveConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResolveConnectionsResponse> resolve(
    core.String parent, {
    core.String? connectorId,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (connectorId != null) 'connectorId': [connectorId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/connections:resolve';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ResolveConnectionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConnectorsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectorsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Connector in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource project name of the connector location
  /// using the form: `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [connectorId] - Optional. User-settable connector resource ID. * Must
  /// start with a letter. * Must contain between 4-63 characters from `/a-z-/`.
  /// * Must end with a number or a letter.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validates request by executing a
  /// dry-run which would not alter the resource in any way.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    Connector request,
    core.String parent, {
    core.String? connectorId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (connectorId != null) 'connectorId': [connectorId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/connectors';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a single Connector.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. BeyondCorp Connector name using the form:
  /// `projects/{project_id}/locations/{location_id}/connectors/{connector_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validates request by executing a
  /// dry-run which would not alter the resource in any way.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a single Connector.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. BeyondCorp Connector name using the form:
  /// `projects/{project_id}/locations/{location_id}/connectors/{connector_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Connector].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Connector> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Connector.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Connectors in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the connector location using the
  /// form: `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter specifying constraints of a list operation.
  ///
  /// [orderBy] - Optional. Specifies the ordering of results. See
  /// [Sorting order](https://cloud.google.com/apis/design/design_patterns#sorting_order)
  /// for more information.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If not
  /// specified, a default value of 50 will be used by the service. Regardless
  /// of the page_size value, the response may include a partial list and a
  /// caller should only rely on response's next_page_token to determine if
  /// there are more instances left to be queried.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// ListConnectorsRequest, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConnectorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConnectorsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/connectors';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConnectorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single Connector.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Unique resource name of the connector. The name is
  /// ignored when creating a connector.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Mask of fields to update. At least one path must
  /// be supplied in this field. The elements of the repeated paths field may
  /// only include these fields from \[BeyondCorp.Connector\]: * `labels` *
  /// `display_name`
  ///
  /// [validateOnly] - Optional. If set, validates request by executing a
  /// dry-run which would not alter the resource in any way.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    Connector request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Report status for a given connector.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [connector] - Required. BeyondCorp Connector name using the form:
  /// `projects/{project_id}/locations/{location_id}/connectors/{connector}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> reportStatus(
    ReportStatusRequest request,
    core.String connector, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$connector') + ':reportStatus';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets instance configuration for a given connector.
  ///
  /// An internal method called by a connector to get its container config.
  ///
  /// Request parameters:
  ///
  /// [connector] - Required. BeyondCorp Connector name using the form:
  /// `projects/{project_id}/locations/{location_id}/connectors/{connector}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResolveInstanceConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResolveInstanceConfigResponse> resolveInstanceConfig(
    core.String connector, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$connector') +
        ':resolveInstanceConfig';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ResolveInstanceConfigResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsInsightsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInsightsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the value for a selected particular insight based on the provided
  /// filters.
  ///
  /// Use the organization level path for fetching at org level and project
  /// level path for fetching the insight value specific to a particular
  /// project.
  ///
  /// Request parameters:
  ///
  /// [insight] - Required. The resource name of the insight using the form:
  /// `organizations/{organization_id}/locations/{location_id}/insights/{insight_id}`
  /// `projects/{project_id}/locations/{location_id}/insights/{insight_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/insights/\[^/\]+$`.
  ///
  /// [aggregation] - Required. Aggregation type. Available aggregation could be
  /// fetched by calling insight list and get APIs in `BASIC` view.
  /// Possible string values are:
  /// - "AGGREGATION_UNSPECIFIED" : Unspecified.
  /// - "HOURLY" : Insight should be aggregated at hourly level.
  /// - "DAILY" : Insight should be aggregated at daily level.
  /// - "WEEKLY" : Insight should be aggregated at weekly level.
  /// - "MONTHLY" : Insight should be aggregated at monthly level.
  /// - "CUSTOM_DATE_RANGE" : Insight should be aggregated at the custom date
  /// range passed in as the start and end time in the request.
  ///
  /// [customGrouping_fieldFilter] - Optional. Filterable parameters to be added
  /// to the grouping clause. Available fields could be fetched by calling
  /// insight list and get APIs in `BASIC` view. `=` is the only comparison
  /// operator supported. `AND` is the only logical operator supported. Usage:
  /// field_filter="fieldName1=fieldVal1 AND fieldName2=fieldVal2". NOTE: Only
  /// `AND` conditions are allowed. NOTE: Use the `filter_alias` from
  /// `Insight.Metadata.Field` message for the filtering the corresponding
  /// fields in this filter field. (These expressions are based on the filter
  /// language described at https://google.aip.dev/160).
  ///
  /// [customGrouping_groupFields] - Required. Fields to be used for grouping.
  /// NOTE: Use the `filter_alias` from `Insight.Metadata.Field` message for
  /// declaring the fields to be grouped-by here.
  ///
  /// [endTime] - Required. Ending time for the duration for which insight is to
  /// be pulled.
  ///
  /// [fieldFilter] - Optional. Other filterable/configurable parameters as
  /// applicable to the selected insight. Available fields could be fetched by
  /// calling insight list and get APIs in `BASIC` view. `=` is the only
  /// comparison operator supported. `AND` is the only logical operator
  /// supported. Usage: field_filter="fieldName1=fieldVal1 AND
  /// fieldName2=fieldVal2". NOTE: Only `AND` conditions are allowed. NOTE: Use
  /// the `filter_alias` from `Insight.Metadata.Field` message for the filtering
  /// the corresponding fields in this filter field. (These expressions are
  /// based on the filter language described at https://google.aip.dev/160).
  ///
  /// [group] - Optional. Group id of the available groupings for the insight.
  /// Available groupings could be fetched by calling insight list and get APIs
  /// in `BASIC` view.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. Used to fetch the page represented by the token.
  /// Fetches the first page when not set.
  ///
  /// [startTime] - Required. Starting time for the duration for which insight
  /// is to be pulled.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse
  >
  configuredInsight(
    core.String insight, {
    core.String? aggregation,
    core.String? customGrouping_fieldFilter,
    core.List<core.String>? customGrouping_groupFields,
    core.String? endTime,
    core.String? fieldFilter,
    core.String? group,
    core.int? pageSize,
    core.String? pageToken,
    core.String? startTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (aggregation != null) 'aggregation': [aggregation],
      if (customGrouping_fieldFilter != null)
        'customGrouping.fieldFilter': [customGrouping_fieldFilter],
      if (customGrouping_groupFields != null)
        'customGrouping.groupFields': customGrouping_groupFields,
      if (endTime != null) 'endTime': [endTime],
      if (fieldFilter != null) 'fieldFilter': [fieldFilter],
      if (group != null) 'group': [group],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startTime != null) 'startTime': [startTime],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$insight') + ':configuredInsight';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the value for a selected particular insight with default
  /// configuration.
  ///
  /// The default aggregation level is 'DAILY' and no grouping will be applied
  /// or default grouping if applicable. The data will be returned for recent 7
  /// days starting the day before. The insight data size will be limited to 50
  /// rows. Use the organization level path for fetching at org level and
  /// project level path for fetching the insight value specific to a particular
  /// project. Setting the `view` to `BASIC` will only return the metadata for
  /// the insight.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the insight using the form:
  /// `organizations/{organization_id}/locations/{location_id}/insights/{insight_id}`
  /// `projects/{project_id}/locations/{location_id}/insights/{insight_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/insights/\[^/\]+$`.
  ///
  /// [view] - Required. Metadata only or full data view.
  /// Possible string values are:
  /// - "INSIGHT_VIEW_UNSPECIFIED" : The default / unset value. The API will
  /// default to the BASIC view.
  /// - "BASIC" : Include basic metadata about the insight, but not the insight
  /// data. This is the default value (for both ListInsights and GetInsight).
  /// - "FULL" : Include everything.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists for all the available insights that could be fetched from the
  /// system.
  ///
  /// Allows to filter using category. Setting the `view` to `BASIC` will let
  /// you iterate over the list of insight metadatas.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of InsightMetadata using the form:
  /// `organizations/{organization_id}/locations/{location}`
  /// `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [aggregation] - Optional. Aggregation type. The default is 'DAILY'.
  /// Possible string values are:
  /// - "AGGREGATION_UNSPECIFIED" : Unspecified.
  /// - "HOURLY" : Insight should be aggregated at hourly level.
  /// - "DAILY" : Insight should be aggregated at daily level.
  /// - "WEEKLY" : Insight should be aggregated at weekly level.
  /// - "MONTHLY" : Insight should be aggregated at monthly level.
  /// - "CUSTOM_DATE_RANGE" : Insight should be aggregated at the custom date
  /// range passed in as the start and end time in the request.
  ///
  /// [endTime] - Optional. Ending time for the duration for which insights are
  /// to be pulled. The default is the current time.
  ///
  /// [filter] - Optional. Filter expression to restrict the insights returned.
  /// Supported filter fields: * `type` * `category` * `subCategory` Examples: *
  /// "category = application AND type = count" * "category = application AND
  /// subCategory = iap" * "type = status" Allowed values: * type: \[count,
  /// latency, status, list\] * category: \[application, device, request,
  /// security\] * subCategory: \[iap, caa, webprotect\] NOTE: Only equality
  /// based comparison is allowed. Only `AND` conjunction is allowed. NOTE: The
  /// 'AND' in the filter field needs to be in capital letters only. NOTE: Just
  /// filtering on `subCategory` is not allowed. It should be passed in with the
  /// parent `category` too. (These expressions are based on the filter language
  /// described at https://google.aip.dev/160).
  ///
  /// [orderBy] - Optional. Hint for how to order the results. This is currently
  /// ignored.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  /// NOTE: Default page size is 50.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [startTime] - Optional. Starting time for the duration for which insights
  /// are to be pulled. The default is 7 days before the current time.
  ///
  /// [view] - Required. List only metadata or full data.
  /// Possible string values are:
  /// - "INSIGHT_VIEW_UNSPECIFIED" : The default / unset value. The API will
  /// default to the BASIC view.
  /// - "BASIC" : Include basic metadata about the insight, but not the insight
  /// data. This is the default value (for both ListInsights and GetInsight).
  /// - "FULL" : Include everything.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse
  >
  list(
    core.String parent, {
    core.String? aggregation,
    core.String? endTime,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? startTime,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (aggregation != null) 'aggregation': [aggregation],
      if (endTime != null) 'endTime': [endTime],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startTime != null) 'startTime': [startTime],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/insights';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of `1`, corresponding
  /// to `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Empty> cancel(
    GoogleLongrunningCancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningListOperationsResponse> list(
    core.String name, {
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsSecurityGatewaysResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSecurityGatewaysApplicationsResource get applications =>
      ProjectsLocationsSecurityGatewaysApplicationsResource(_requester);

  ProjectsLocationsSecurityGatewaysResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Security Gateway in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource project name of the SecurityGateway
  /// location using the form: `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request.
  ///
  /// [securityGatewayId] - Optional. User-settable SecurityGateway resource ID.
  /// * Must start with a letter. * Must contain between 4-63 characters from
  /// `/a-z-/`. * Must end with a number or letter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway request,
    core.String parent, {
    core.String? requestId,
    core.String? securityGatewayId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (securityGatewayId != null) 'securityGatewayId': [securityGatewayId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/securityGateways';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a single SecurityGateway.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. BeyondCorp SecurityGateway name using the form:
  /// `projects/{project_id}/locations/{location_id}/securityGateways/{security_gateway_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/securityGateways/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validates request by executing a
  /// dry-run which would not alter the resource in any way.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a single SecurityGateway.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the PartnerTenant using the form:
  /// `projects/{project_id}/locations/{location_id}/securityGateway/{security_gateway_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/securityGateways/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/securityGateways/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists SecurityGateways in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent location to which the resources belong.
  /// `projects/{project_id}/locations/{location_id}/`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter specifying constraints of a list operation.
  /// All fields in the SecurityGateway message are supported. For example, the
  /// following query will return the SecurityGateway with displayName
  /// "test-security-gateway" For more information, please refer to
  /// https://google.aip.dev/160.
  ///
  /// [orderBy] - Optional. Specifies the ordering of results. See
  /// [Sorting order](https://cloud.google.com/apis/design/design_patterns#sorting_order)
  /// for more information.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If not
  /// specified, a default value of 50 will be used by the service. Regardless
  /// of the page_size value, the response may include a partial list and a
  /// caller should only rely on response's next_page_token to determine if
  /// there are more instances left to be queried.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// ListSecurityGatewayRequest, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse
  >
  list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/securityGateways';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single SecurityGateway.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/securityGateways/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request timed out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. Mutable fields include: display_name, hubs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/securityGateways/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/securityGateways/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsSecurityGatewaysApplicationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSecurityGatewaysApplicationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a new Application in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent SecurityGateway using
  /// the form:
  /// `projects/{project_id}/locations/global/securityGateways/{security_gateway_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/securityGateways/\[^/\]+$`.
  ///
  /// [applicationId] - Optional. User-settable Application resource ID. * Must
  /// start with a letter. * Must contain between 4-63 characters from `/a-z-/`.
  /// * Must end with a number or letter.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore request if it has already been completed. The
  /// server will guarantee that for at least 60 minutes since the first
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication request,
    core.String parent, {
    core.String? applicationId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (applicationId != null) 'applicationId': [applicationId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/applications';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a single application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/securityGateways/\[^/\]+/applications/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validates request by executing a
  /// dry-run which would not alter the resource in any way.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a single Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Application using the form:
  /// `projects/{project_id}/locations/global/securityGateway/{security_gateway_id}/applications/{application_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/securityGateways/\[^/\]+/applications/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/securityGateways/\[^/\]+/applications/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Applications in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent location to which the resources belong.
  /// `projects/{project_id}/locations/global/securityGateways/{security_gateway_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/securityGateways/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter specifying constraints of a list operation.
  /// All fields in the Application message are supported. For example, the
  /// following query will return the Application with displayName
  /// "test-application" For more information, please refer to
  /// https://google.aip.dev/160.
  ///
  /// [orderBy] - Optional. Specifies the ordering of results. See
  /// [Sorting order](https://cloud.google.com/apis/design/design_patterns#sorting_order)
  /// for more information.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If not
  /// specified, a default value of 50 will be used by the service. Regardless
  /// of the page_size value, the response may include a partial list and a
  /// caller should only rely on response's next_page_token to determine if
  /// there are more instances left to be queried.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// ListApplicationsRequest, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse
  >
  list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/applications';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single Application.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/securityGateways/\[^/\]+/applications/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request timed out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. Mutable fields include: display_name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/securityGateways/\[^/\]+/applications/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/securityGateways/\[^/\]+/applications/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Allocated connection of the AppGateway.
typedef AllocatedConnection = $AllocatedConnection;

/// A BeyondCorp AppGateway resource represents a BeyondCorp protected
/// AppGateway to a remote application.
///
/// It creates all the necessary GCP components needed for creating a BeyondCorp
/// protected AppGateway. Multiple connectors can be authorised for a single
/// AppGateway.
class AppGateway {
  /// A list of connections allocated for the Gateway
  ///
  /// Output only.
  core.List<AllocatedConnection>? allocatedConnections;

  /// Timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// An arbitrary user-provided name for the AppGateway.
  ///
  /// Cannot exceed 64 characters.
  ///
  /// Optional.
  core.String? displayName;

  /// The type of hosting used by the AppGateway.
  ///
  /// Required.
  /// Possible string values are:
  /// - "HOST_TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "GCP_REGIONAL_MIG" : AppGateway hosted in a GCP regional managed
  /// instance group.
  core.String? hostType;

  /// Resource labels to represent user provided metadata.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Unique resource name of the AppGateway.
  ///
  /// The name is ignored when creating an AppGateway.
  ///
  /// Required.
  core.String? name;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzi;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// The current state of the AppGateway.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "CREATING" : AppGateway is being created.
  /// - "CREATED" : AppGateway has been created.
  /// - "UPDATING" : AppGateway's configuration is being updated.
  /// - "DELETING" : AppGateway is being deleted.
  /// - "DOWN" : AppGateway is down and may be restored in the future. This
  /// happens when CCFE sends ProjectState = OFF.
  core.String? state;

  /// The type of network connectivity used by the AppGateway.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "TCP_PROXY" : TCP Proxy based BeyondCorp Connection. API will default to
  /// this if unset.
  core.String? type;

  /// A unique identifier for the instance generated by the system.
  ///
  /// Output only.
  core.String? uid;

  /// Timestamp when the resource was last modified.
  ///
  /// Output only.
  core.String? updateTime;

  /// Server-defined URI for this resource.
  ///
  /// Output only.
  core.String? uri;

  AppGateway({
    this.allocatedConnections,
    this.createTime,
    this.displayName,
    this.hostType,
    this.labels,
    this.name,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
    this.uri,
  });

  AppGateway.fromJson(core.Map json_)
    : this(
        allocatedConnections:
            (json_['allocatedConnections'] as core.List?)
                ?.map(
                  (value) => AllocatedConnection.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        hostType: json_['hostType'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        state: json_['state'] as core.String?,
        type: json_['type'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allocatedConnections != null)
      'allocatedConnections': allocatedConnections!,
    if (createTime != null) 'createTime': createTime!,
    if (displayName != null) 'displayName': displayName!,
    if (hostType != null) 'hostType': hostType!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (satisfiesPzi != null) 'satisfiesPzi': satisfiesPzi!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (state != null) 'state': state!,
    if (type != null) 'type': type!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (uri != null) 'uri': uri!,
  };
}

/// ApplicationEndpoint represents a remote application endpoint.
typedef ApplicationEndpoint = $ApplicationEndpoint;

/// The configuration for Pub/Sub messaging for the connector.
class CloudPubSubNotificationConfig {
  /// The Pub/Sub subscription the connector uses to receive notifications.
  core.String? pubsubSubscription;

  CloudPubSubNotificationConfig({this.pubsubSubscription});

  CloudPubSubNotificationConfig.fromJson(core.Map json_)
    : this(pubsubSubscription: json_['pubsubSubscription'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (pubsubSubscription != null) 'pubsubSubscription': pubsubSubscription!,
  };
}

/// A BeyondCorp Connection resource represents a BeyondCorp protected
/// connection to a remote application.
///
/// It creates all the necessary GCP components needed for creating a BeyondCorp
/// protected connection. Multiple connectors can be authorised for a single
/// Connection.
class Connection {
  /// Address of the remote application endpoint for the BeyondCorp Connection.
  ///
  /// Required.
  ApplicationEndpoint? applicationEndpoint;

  /// List of \[google.cloud.beyondcorp.v1main.Connector.name\] that are
  /// authorised to be associated with this Connection.
  ///
  /// Optional.
  core.List<core.String>? connectors;

  /// Timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// An arbitrary user-provided name for the connection.
  ///
  /// Cannot exceed 64 characters.
  ///
  /// Optional.
  core.String? displayName;

  /// Gateway used by the connection.
  ///
  /// Optional.
  Gateway? gateway;

  /// Resource labels to represent user provided metadata.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Unique resource name of the connection.
  ///
  /// The name is ignored when creating a connection.
  ///
  /// Required.
  core.String? name;

  /// The current state of the connection.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "CREATING" : Connection is being created.
  /// - "CREATED" : Connection has been created.
  /// - "UPDATING" : Connection's configuration is being updated.
  /// - "DELETING" : Connection is being deleted.
  /// - "DOWN" : Connection is down and may be restored in the future. This
  /// happens when CCFE sends ProjectState = OFF.
  core.String? state;

  /// The type of network connectivity used by the connection.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "TCP_PROXY" : TCP Proxy based BeyondCorp Connection. API will default to
  /// this if unset.
  core.String? type;

  /// A unique identifier for the instance generated by the system.
  ///
  /// Output only.
  core.String? uid;

  /// Timestamp when the resource was last modified.
  ///
  /// Output only.
  core.String? updateTime;

  Connection({
    this.applicationEndpoint,
    this.connectors,
    this.createTime,
    this.displayName,
    this.gateway,
    this.labels,
    this.name,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
  });

  Connection.fromJson(core.Map json_)
    : this(
        applicationEndpoint:
            json_.containsKey('applicationEndpoint')
                ? ApplicationEndpoint.fromJson(
                  json_['applicationEndpoint']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        connectors:
            (json_['connectors'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        gateway:
            json_.containsKey('gateway')
                ? Gateway.fromJson(
                  json_['gateway'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        type: json_['type'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (applicationEndpoint != null)
      'applicationEndpoint': applicationEndpoint!,
    if (connectors != null) 'connectors': connectors!,
    if (createTime != null) 'createTime': createTime!,
    if (displayName != null) 'displayName': displayName!,
    if (gateway != null) 'gateway': gateway!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (type != null) 'type': type!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Details of the Connection.
class ConnectionDetails {
  /// A BeyondCorp Connection in the project.
  Connection? connection;

  /// If type=GCP_REGIONAL_MIG, contains most recent VM instances, like
  /// "https://www.googleapis.com/compute/v1/projects/{project_id}/zones/{zone_id}/instances/{instance_id}".
  core.List<core.String>? recentMigVms;

  ConnectionDetails({this.connection, this.recentMigVms});

  ConnectionDetails.fromJson(core.Map json_)
    : this(
        connection:
            json_.containsKey('connection')
                ? Connection.fromJson(
                  json_['connection'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        recentMigVms:
            (json_['recentMigVms'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connection != null) 'connection': connection!,
    if (recentMigVms != null) 'recentMigVms': recentMigVms!,
  };
}

/// A BeyondCorp connector resource that represents an application facing
/// component deployed proximal to and with direct access to the application
/// instances.
///
/// It is used to establish connectivity between the remote enterprise
/// environment and GCP. It initiates connections to the applications and can
/// proxy the data from users over the connection.
class Connector {
  /// Timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// An arbitrary user-provided name for the connector.
  ///
  /// Cannot exceed 64 characters.
  ///
  /// Optional.
  core.String? displayName;

  /// Resource labels to represent user provided metadata.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Unique resource name of the connector.
  ///
  /// The name is ignored when creating a connector.
  ///
  /// Required.
  core.String? name;

  /// Principal information about the Identity of the connector.
  ///
  /// Required.
  PrincipalInfo? principalInfo;

  /// Resource info of the connector.
  ///
  /// Optional.
  ResourceInfo? resourceInfo;

  /// The current state of the connector.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "CREATING" : Connector is being created.
  /// - "CREATED" : Connector has been created.
  /// - "UPDATING" : Connector's configuration is being updated.
  /// - "DELETING" : Connector is being deleted.
  /// - "DOWN" : Connector is down and may be restored in the future. This
  /// happens when CCFE sends ProjectState = OFF.
  core.String? state;

  /// A unique identifier for the instance generated by the system.
  ///
  /// Output only.
  core.String? uid;

  /// Timestamp when the resource was last modified.
  ///
  /// Output only.
  core.String? updateTime;

  Connector({
    this.createTime,
    this.displayName,
    this.labels,
    this.name,
    this.principalInfo,
    this.resourceInfo,
    this.state,
    this.uid,
    this.updateTime,
  });

  Connector.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        principalInfo:
            json_.containsKey('principalInfo')
                ? PrincipalInfo.fromJson(
                  json_['principalInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        resourceInfo:
            json_.containsKey('resourceInfo')
                ? ResourceInfo.fromJson(
                  json_['resourceInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (displayName != null) 'displayName': displayName!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (principalInfo != null) 'principalInfo': principalInfo!,
    if (resourceInfo != null) 'resourceInfo': resourceInfo!,
    if (state != null) 'state': state!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// ConnectorInstanceConfig defines the instance config of a connector.
class ConnectorInstanceConfig {
  /// ImageConfig defines the GCR images to run for the remote agent's control
  /// plane.
  ImageConfig? imageConfig;

  /// The SLM instance agent configuration.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? instanceConfig;

  /// NotificationConfig defines the notification mechanism that the remote
  /// instance should subscribe to in order to receive notification.
  NotificationConfig? notificationConfig;

  /// A monotonically increasing number generated and maintained by the API
  /// provider.
  ///
  /// Every time a config changes in the backend, the sequenceNumber should be
  /// bumped up to reflect the change.
  ///
  /// Required.
  core.String? sequenceNumber;

  ConnectorInstanceConfig({
    this.imageConfig,
    this.instanceConfig,
    this.notificationConfig,
    this.sequenceNumber,
  });

  ConnectorInstanceConfig.fromJson(core.Map json_)
    : this(
        imageConfig:
            json_.containsKey('imageConfig')
                ? ImageConfig.fromJson(
                  json_['imageConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        instanceConfig:
            json_.containsKey('instanceConfig')
                ? json_['instanceConfig'] as core.Map<core.String, core.dynamic>
                : null,
        notificationConfig:
            json_.containsKey('notificationConfig')
                ? NotificationConfig.fromJson(
                  json_['notificationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sequenceNumber: json_['sequenceNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (imageConfig != null) 'imageConfig': imageConfig!,
    if (instanceConfig != null) 'instanceConfig': instanceConfig!,
    if (notificationConfig != null) 'notificationConfig': notificationConfig!,
    if (sequenceNumber != null) 'sequenceNumber': sequenceNumber!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Gateway represents a user facing component that serves as an entrance to
/// enable connectivity.
class Gateway {
  /// The type of hosting used by the gateway.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "GCP_REGIONAL_MIG" : Gateway hosted in a GCP regional managed instance
  /// group.
  core.String? type;

  /// Server-defined URI for this resource.
  ///
  /// Output only.
  core.String? uri;

  /// User port reserved on the gateways for this connection, if not specified
  /// or zero, the default port is 19443.
  ///
  /// Output only.
  core.int? userPort;

  Gateway({this.type, this.uri, this.userPort});

  Gateway.fromJson(core.Map json_)
    : this(
        type: json_['type'] as core.String?,
        uri: json_['uri'] as core.String?,
        userPort: json_['userPort'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (type != null) 'type': type!,
    if (uri != null) 'uri': uri!,
    if (userPort != null) 'userPort': userPort!,
  };
}

/// A BeyondCorp AppConnection resource represents a BeyondCorp protected
/// AppConnection to a remote application.
///
/// It creates all the necessary GCP components needed for creating a BeyondCorp
/// protected AppConnection. Multiple connectors can be authorised for a single
/// AppConnection.
class GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection {
  /// Address of the remote application endpoint for the BeyondCorp
  /// AppConnection.
  ///
  /// Required.
  GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint?
  applicationEndpoint;

  /// List of \[google.cloud.beyondcorp.v1main.Connector.name\] that are
  /// authorised to be associated with this AppConnection.
  ///
  /// Optional.
  core.List<core.String>? connectors;

  /// Timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// An arbitrary user-provided name for the AppConnection.
  ///
  /// Cannot exceed 64 characters.
  ///
  /// Optional.
  core.String? displayName;

  /// Gateway used by the AppConnection.
  ///
  /// Optional.
  GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway? gateway;

  /// Resource labels to represent user provided metadata.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Unique resource name of the AppConnection.
  ///
  /// The name is ignored when creating a AppConnection.
  ///
  /// Required.
  core.String? name;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzi;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// The current state of the AppConnection.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "CREATING" : AppConnection is being created.
  /// - "CREATED" : AppConnection has been created.
  /// - "UPDATING" : AppConnection's configuration is being updated.
  /// - "DELETING" : AppConnection is being deleted.
  /// - "DOWN" : AppConnection is down and may be restored in the future. This
  /// happens when CCFE sends ProjectState = OFF.
  core.String? state;

  /// The type of network connectivity used by the AppConnection.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "TCP_PROXY" : TCP Proxy based BeyondCorp AppConnection. API will default
  /// to this if unset.
  core.String? type;

  /// A unique identifier for the instance generated by the system.
  ///
  /// Output only.
  core.String? uid;

  /// Timestamp when the resource was last modified.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection({
    this.applicationEndpoint,
    this.connectors,
    this.createTime,
    this.displayName,
    this.gateway,
    this.labels,
    this.name,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
  });

  GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection.fromJson(
    core.Map json_,
  ) : this(
        applicationEndpoint:
            json_.containsKey('applicationEndpoint')
                ? GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint.fromJson(
                  json_['applicationEndpoint']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        connectors:
            (json_['connectors'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        gateway:
            json_.containsKey('gateway')
                ? GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway.fromJson(
                  json_['gateway'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        state: json_['state'] as core.String?,
        type: json_['type'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (applicationEndpoint != null)
      'applicationEndpoint': applicationEndpoint!,
    if (connectors != null) 'connectors': connectors!,
    if (createTime != null) 'createTime': createTime!,
    if (displayName != null) 'displayName': displayName!,
    if (gateway != null) 'gateway': gateway!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (satisfiesPzi != null) 'satisfiesPzi': satisfiesPzi!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (state != null) 'state': state!,
    if (type != null) 'type': type!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// ApplicationEndpoint represents a remote application endpoint.
typedef GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint =
    $ApplicationEndpoint;

/// Gateway represents a user facing component that serves as an entrance to
/// enable connectivity.
typedef GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway =
    $AppConnectionGateway;

/// Response message for BeyondCorp.ListAppConnections.
class GoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse {
  /// A list of BeyondCorp AppConnections in the project.
  core.List<GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection>?
  appConnections;

  /// A token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String? nextPageToken;

  /// A list of locations that could not be reached.
  core.List<core.String>? unreachable;

  GoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse({
    this.appConnections,
    this.nextPageToken,
    this.unreachable,
  });

  GoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse.fromJson(
    core.Map json_,
  ) : this(
        appConnections:
            (json_['appConnections'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appConnections != null) 'appConnections': appConnections!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for BeyondCorp.ResolveAppConnections.
class GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse {
  /// A list of BeyondCorp AppConnections with details in the project.
  core.List<
    GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails
  >?
  appConnectionDetails;

  /// A token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String? nextPageToken;

  /// A list of locations that could not be reached.
  core.List<core.String>? unreachable;

  GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse({
    this.appConnectionDetails,
    this.nextPageToken,
    this.unreachable,
  });

  GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse.fromJson(
    core.Map json_,
  ) : this(
        appConnectionDetails:
            (json_['appConnectionDetails'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appConnectionDetails != null)
      'appConnectionDetails': appConnectionDetails!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Details of the AppConnection.
class GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails {
  /// A BeyondCorp AppConnection in the project.
  GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection? appConnection;

  /// If type=GCP_REGIONAL_MIG, contains most recent VM instances, like
  /// `https://www.googleapis.com/compute/v1/projects/{project_id}/zones/{zone_id}/instances/{instance_id}`.
  core.List<core.String>? recentMigVms;

  GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails({
    this.appConnection,
    this.recentMigVms,
  });

  GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails.fromJson(
    core.Map json_,
  ) : this(
        appConnection:
            json_.containsKey('appConnection')
                ? GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection.fromJson(
                  json_['appConnection'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        recentMigVms:
            (json_['recentMigVms'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appConnection != null) 'appConnection': appConnection!,
    if (recentMigVms != null) 'recentMigVms': recentMigVms!,
  };
}

/// A BeyondCorp connector resource that represents an application facing
/// component deployed proximal to and with direct access to the application
/// instances.
///
/// It is used to establish connectivity between the remote enterprise
/// environment and GCP. It initiates connections to the applications and can
/// proxy the data from users over the connection.
class GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector {
  /// Timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// An arbitrary user-provided name for the AppConnector.
  ///
  /// Cannot exceed 64 characters.
  ///
  /// Optional.
  core.String? displayName;

  /// Resource labels to represent user provided metadata.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Unique resource name of the AppConnector.
  ///
  /// The name is ignored when creating a AppConnector.
  ///
  /// Required.
  core.String? name;

  /// Principal information about the Identity of the AppConnector.
  ///
  /// Required.
  GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo?
  principalInfo;

  /// Resource info of the connector.
  ///
  /// Optional.
  GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo? resourceInfo;

  /// The current state of the AppConnector.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "CREATING" : AppConnector is being created.
  /// - "CREATED" : AppConnector has been created.
  /// - "UPDATING" : AppConnector's configuration is being updated.
  /// - "DELETING" : AppConnector is being deleted.
  /// - "DOWN" : AppConnector is down and may be restored in the future. This
  /// happens when CCFE sends ProjectState = OFF.
  core.String? state;

  /// A unique identifier for the instance generated by the system.
  ///
  /// Output only.
  core.String? uid;

  /// Timestamp when the resource was last modified.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector({
    this.createTime,
    this.displayName,
    this.labels,
    this.name,
    this.principalInfo,
    this.resourceInfo,
    this.state,
    this.uid,
    this.updateTime,
  });

  GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        principalInfo:
            json_.containsKey('principalInfo')
                ? GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo.fromJson(
                  json_['principalInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        resourceInfo:
            json_.containsKey('resourceInfo')
                ? GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo.fromJson(
                  json_['resourceInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (displayName != null) 'displayName': displayName!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (principalInfo != null) 'principalInfo': principalInfo!,
    if (resourceInfo != null) 'resourceInfo': resourceInfo!,
    if (state != null) 'state': state!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// AppConnectorInstanceConfig defines the instance config of a AppConnector.
class GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig {
  /// ImageConfig defines the GCR images to run for the remote agent's control
  /// plane.
  GoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig? imageConfig;

  /// The SLM instance agent configuration.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? instanceConfig;

  /// NotificationConfig defines the notification mechanism that the remote
  /// instance should subscribe to in order to receive notification.
  GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig?
  notificationConfig;

  /// A monotonically increasing number generated and maintained by the API
  /// provider.
  ///
  /// Every time a config changes in the backend, the sequenceNumber should be
  /// bumped up to reflect the change.
  ///
  /// Required.
  core.String? sequenceNumber;

  GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig({
    this.imageConfig,
    this.instanceConfig,
    this.notificationConfig,
    this.sequenceNumber,
  });

  GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig.fromJson(
    core.Map json_,
  ) : this(
        imageConfig:
            json_.containsKey('imageConfig')
                ? GoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig.fromJson(
                  json_['imageConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        instanceConfig:
            json_.containsKey('instanceConfig')
                ? json_['instanceConfig'] as core.Map<core.String, core.dynamic>
                : null,
        notificationConfig:
            json_.containsKey('notificationConfig')
                ? GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig.fromJson(
                  json_['notificationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sequenceNumber: json_['sequenceNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (imageConfig != null) 'imageConfig': imageConfig!,
    if (instanceConfig != null) 'instanceConfig': instanceConfig!,
    if (notificationConfig != null) 'notificationConfig': notificationConfig!,
    if (sequenceNumber != null) 'sequenceNumber': sequenceNumber!,
  };
}

/// PrincipalInfo represents an Identity oneof.
class GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo {
  /// A GCP service account.
  GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount?
  serviceAccount;

  GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo({
    this.serviceAccount,
  });

  GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo.fromJson(
    core.Map json_,
  ) : this(
        serviceAccount:
            json_.containsKey('serviceAccount')
                ? GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount.fromJson(
                  json_['serviceAccount']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
  };
}

/// ServiceAccount represents a GCP service account.
typedef GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount =
    $Shared06;

/// ImageConfig defines the control plane images to run.
typedef GoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig = $ImageConfig;

/// Response message for BeyondCorp.ListAppConnectors.
class GoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse {
  /// A list of BeyondCorp AppConnectors in the project.
  core.List<GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector>?
  appConnectors;

  /// A token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String? nextPageToken;

  /// A list of locations that could not be reached.
  core.List<core.String>? unreachable;

  GoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse({
    this.appConnectors,
    this.nextPageToken,
    this.unreachable,
  });

  GoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse.fromJson(
    core.Map json_,
  ) : this(
        appConnectors:
            (json_['appConnectors'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appConnectors != null) 'appConnectors': appConnectors!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// NotificationConfig defines the mechanisms to notify instance agent.
class GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig {
  /// Cloud Pub/Sub Configuration to receive notifications.
  GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig?
  pubsubNotification;

  GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig({
    this.pubsubNotification,
  });

  GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig.fromJson(
    core.Map json_,
  ) : this(
        pubsubNotification:
            json_.containsKey('pubsubNotification')
                ? GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig.fromJson(
                  json_['pubsubNotification']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pubsubNotification != null) 'pubsubNotification': pubsubNotification!,
  };
}

/// The configuration for Pub/Sub messaging for the AppConnector.
typedef GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig =
    $NotificationConfigCloudPubSubNotificationConfig;

/// Request report the connector status.
class GoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest {
  /// An optional request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  /// Resource info of the connector.
  ///
  /// Required.
  GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo? resourceInfo;

  /// If set, validates request by executing a dry-run which would not alter the
  /// resource in any way.
  ///
  /// Optional.
  core.bool? validateOnly;

  GoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest({
    this.requestId,
    this.resourceInfo,
    this.validateOnly,
  });

  GoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest.fromJson(
    core.Map json_,
  ) : this(
        requestId: json_['requestId'] as core.String?,
        resourceInfo:
            json_.containsKey('resourceInfo')
                ? GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo.fromJson(
                  json_['resourceInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (requestId != null) 'requestId': requestId!,
    if (resourceInfo != null) 'resourceInfo': resourceInfo!,
    if (validateOnly != null) 'validateOnly': validateOnly!,
  };
}

/// Response message for BeyondCorp.ResolveInstanceConfig.
class GoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse {
  /// AppConnectorInstanceConfig.
  GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig?
  instanceConfig;

  GoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse({
    this.instanceConfig,
  });

  GoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse.fromJson(
    core.Map json_,
  ) : this(
        instanceConfig:
            json_.containsKey('instanceConfig')
                ? GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig.fromJson(
                  json_['instanceConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (instanceConfig != null) 'instanceConfig': instanceConfig!,
  };
}

/// ResourceInfo represents the information/status of an app connector resource.
///
/// Such as: - remote_agent - container - runtime - appgateway - appconnector -
/// appconnection - tunnel - logagent
class GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo {
  /// Unique Id for the resource.
  ///
  /// Required.
  core.String? id;

  /// Specific details for the resource.
  ///
  /// This is for internal use only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? resource;

  /// Overall health status.
  ///
  /// Overall status is derived based on the status of each sub level resources.
  /// Possible string values are:
  /// - "HEALTH_STATUS_UNSPECIFIED" : Health status is unknown: not initialized
  /// or failed to retrieve.
  /// - "HEALTHY" : The resource is healthy.
  /// - "UNHEALTHY" : The resource is unhealthy.
  /// - "UNRESPONSIVE" : The resource is unresponsive.
  /// - "DEGRADED" : Some sub-resources are UNHEALTHY.
  core.String? status;

  /// List of Info for the sub level resources.
  core.List<GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo>? sub;

  /// The timestamp to collect the info.
  ///
  /// It is suggested to be set by the topmost level resource only.
  core.String? time;

  GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo({
    this.id,
    this.resource,
    this.status,
    this.sub,
    this.time,
  });

  GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        resource:
            json_.containsKey('resource')
                ? json_['resource'] as core.Map<core.String, core.dynamic>
                : null,
        status: json_['status'] as core.String?,
        sub:
            (json_['sub'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        time: json_['time'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (id != null) 'id': id!,
    if (resource != null) 'resource': resource!,
    if (status != null) 'status': status!,
    if (sub != null) 'sub': sub!,
    if (time != null) 'time': time!,
  };
}

/// Message to capture group information
class GoogleCloudBeyondcorpPartnerservicesV1alphaGroup {
  /// The group email id
  core.String? email;

  /// Google group id
  core.String? id;

  GoogleCloudBeyondcorpPartnerservicesV1alphaGroup({this.email, this.id});

  GoogleCloudBeyondcorpPartnerservicesV1alphaGroup.fromJson(core.Map json_)
    : this(
        email: json_['email'] as core.String?,
        id: json_['id'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (email != null) 'email': email!,
    if (id != null) 'id': id!,
  };
}

/// Message for response to listing PartnerTenants.
class GoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse {
  /// A token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String? nextPageToken;

  /// The list of PartnerTenant objects.
  core.List<GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant>?
  partnerTenants;

  GoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse({
    this.nextPageToken,
    this.partnerTenants,
  });

  GoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        partnerTenants:
            (json_['partnerTenants'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (partnerTenants != null) 'partnerTenants': partnerTenants!,
  };
}

/// Metadata associated with PartnerTenant and is provided by the Partner.
class GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata {
  /// UUID used by the Partner to refer to the PartnerTenant in their internal
  /// systems.
  ///
  /// Optional.
  core.String? internalTenantId;

  /// UUID used by the Partner to refer to the PartnerTenant in their internal
  /// systems.
  ///
  /// Optional.
  core.String? partnerTenantId;

  GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata({
    this.internalTenantId,
    this.partnerTenantId,
  });

  GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata.fromJson(
    core.Map json_,
  ) : this(
        internalTenantId: json_['internalTenantId'] as core.String?,
        partnerTenantId: json_['partnerTenantId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (internalTenantId != null) 'internalTenantId': internalTenantId!,
    if (partnerTenantId != null) 'partnerTenantId': partnerTenantId!,
  };
}

/// Information about a BeyoncCorp Enterprise PartnerTenant.
class GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant {
  /// Timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// An arbitrary caller-provided name for the PartnerTenant.
  ///
  /// Cannot exceed 64 characters.
  ///
  /// Optional.
  core.String? displayName;

  /// Group information for the users enabled to use the partnerTenant.
  ///
  /// If the group information is not provided then the partnerTenant will be
  /// enabled for all users.
  ///
  /// Optional.
  GoogleCloudBeyondcorpPartnerservicesV1alphaGroup? group;

  /// Unique resource name of the PartnerTenant.
  ///
  /// The name is ignored when creating PartnerTenant.
  ///
  /// Output only.
  core.String? name;

  /// Metadata provided by the Partner associated with PartnerTenant.
  ///
  /// Optional.
  GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata? partnerMetadata;

  /// Timestamp when the resource was last modified.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant({
    this.createTime,
    this.displayName,
    this.group,
    this.name,
    this.partnerMetadata,
    this.updateTime,
  });

  GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant.fromJson(
    core.Map json_,
  ) : this(
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        group:
            json_.containsKey('group')
                ? GoogleCloudBeyondcorpPartnerservicesV1alphaGroup.fromJson(
                  json_['group'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        partnerMetadata:
            json_.containsKey('partnerMetadata')
                ? GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata.fromJson(
                  json_['partnerMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (displayName != null) 'displayName': displayName!,
    if (group != null) 'group': group!,
    if (name != null) 'name': name!,
    if (partnerMetadata != null) 'partnerMetadata': partnerMetadata!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The configuration that was applied to generate the result.
class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig {
  /// Aggregation type applied.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "AGGREGATION_UNSPECIFIED" : Unspecified.
  /// - "HOURLY" : Insight should be aggregated at hourly level.
  /// - "DAILY" : Insight should be aggregated at daily level.
  /// - "WEEKLY" : Insight should be aggregated at weekly level.
  /// - "MONTHLY" : Insight should be aggregated at monthly level.
  /// - "CUSTOM_DATE_RANGE" : Insight should be aggregated at the custom date
  /// range passed in as the start and end time in the request.
  core.String? aggregation;

  /// Customised grouping applied.
  ///
  /// Output only.
  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping?
  customGrouping;

  /// Ending time for the duration for which insight was pulled.
  ///
  /// Output only.
  core.String? endTime;

  /// Filters applied.
  ///
  /// Output only.
  core.String? fieldFilter;

  /// Group id of the grouping applied.
  ///
  /// Output only.
  core.String? group;

  /// Starting time for the duration for which insight was pulled.
  ///
  /// Output only.
  core.String? startTime;

  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig({
    this.aggregation,
    this.customGrouping,
    this.endTime,
    this.fieldFilter,
    this.group,
    this.startTime,
  });

  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig.fromJson(
    core.Map json_,
  ) : this(
        aggregation: json_['aggregation'] as core.String?,
        customGrouping:
            json_.containsKey('customGrouping')
                ? GoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping.fromJson(
                  json_['customGrouping']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        endTime: json_['endTime'] as core.String?,
        fieldFilter: json_['fieldFilter'] as core.String?,
        group: json_['group'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregation != null) 'aggregation': aggregation!,
    if (customGrouping != null) 'customGrouping': customGrouping!,
    if (endTime != null) 'endTime': endTime!,
    if (fieldFilter != null) 'fieldFilter': fieldFilter!,
    if (group != null) 'group': group!,
    if (startTime != null) 'startTime': startTime!,
  };
}

/// The response for the configured insight.
class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse {
  /// Applied insight config to generate the result data rows.
  ///
  /// Output only.
  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig? appliedConfig;

  /// Next page token to be fetched.
  ///
  /// Set to empty or NULL if there are no more pages available.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// Result rows returned containing the required value(s) for configured
  /// insight.
  ///
  /// Output only.
  core.List<GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow>? rows;

  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse({
    this.appliedConfig,
    this.nextPageToken,
    this.rows,
  });

  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse.fromJson(
    core.Map json_,
  ) : this(
        appliedConfig:
            json_.containsKey('appliedConfig')
                ? GoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig.fromJson(
                  json_['appliedConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        nextPageToken: json_['nextPageToken'] as core.String?,
        rows:
            (json_['rows'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appliedConfig != null) 'appliedConfig': appliedConfig!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (rows != null) 'rows': rows!,
  };
}

/// Customised grouping option that allows setting the group_by fields and also
/// the filters togather for a configured insight request.
class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping {
  /// Filterable parameters to be added to the grouping clause.
  ///
  /// Available fields could be fetched by calling insight list and get APIs in
  /// `BASIC` view. `=` is the only comparison operator supported. `AND` is the
  /// only logical operator supported. Usage: field_filter="fieldName1=fieldVal1
  /// AND fieldName2=fieldVal2". NOTE: Only `AND` conditions are allowed. NOTE:
  /// Use the `filter_alias` from `Insight.Metadata.Field` message for the
  /// filtering the corresponding fields in this filter field. (These
  /// expressions are based on the filter language described at
  /// https://google.aip.dev/160).
  ///
  /// Optional.
  core.String? fieldFilter;

  /// Fields to be used for grouping.
  ///
  /// NOTE: Use the `filter_alias` from `Insight.Metadata.Field` message for
  /// declaring the fields to be grouped-by here.
  ///
  /// Required.
  core.List<core.String>? groupFields;

  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping({
    this.fieldFilter,
    this.groupFields,
  });

  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping.fromJson(
    core.Map json_,
  ) : this(
        fieldFilter: json_['fieldFilter'] as core.String?,
        groupFields:
            (json_['groupFields'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fieldFilter != null) 'fieldFilter': fieldFilter!,
    if (groupFields != null) 'groupFields': groupFields!,
  };
}

/// The Insight object with configuration that was returned and actual list of
/// records.
class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight {
  /// Applied insight config to generate the result data rows.
  ///
  /// Output only.
  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig? appliedConfig;

  /// Metadata for the Insight.
  ///
  /// Output only.
  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata? metadata;

  /// The insight resource name.
  ///
  /// e.g.
  /// `organizations/{organization_id}/locations/{location_id}/insights/{insight_id}`
  /// OR `projects/{project_id}/locations/{location_id}/insights/{insight_id}`.
  ///
  /// Output only.
  core.String? name;

  /// Result rows returned containing the required value(s).
  ///
  /// Output only.
  core.List<GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow>? rows;

  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight({
    this.appliedConfig,
    this.metadata,
    this.name,
    this.rows,
  });

  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight.fromJson(
    core.Map json_,
  ) : this(
        appliedConfig:
            json_.containsKey('appliedConfig')
                ? GoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig.fromJson(
                  json_['appliedConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metadata:
            json_.containsKey('metadata')
                ? GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        rows:
            (json_['rows'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appliedConfig != null) 'appliedConfig': appliedConfig!,
    if (metadata != null) 'metadata': metadata!,
    if (name != null) 'name': name!,
    if (rows != null) 'rows': rows!,
  };
}

/// Insight filters, groupings and aggregations that can be applied for the
/// insight.
///
/// Examples: aggregations, groups, field filters.
class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata {
  /// List of aggregation types available for insight.
  ///
  /// Output only.
  core.List<core.String>? aggregations;

  /// Category of the insight.
  ///
  /// Output only.
  core.String? category;

  /// Common name of the insight.
  ///
  /// Output only.
  core.String? displayName;

  /// List of fields available for insight.
  ///
  /// Output only.
  core.List<
    GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField
  >?
  fields;

  /// List of groupings available for insight.
  ///
  /// Output only.
  core.List<core.String>? groups;

  /// Sub-Category of the insight.
  ///
  /// Output only.
  core.String? subCategory;

  /// Type of the insight.
  ///
  /// It is metadata describing whether the insight is a metric (e.g. count) or
  /// a report (e.g. list, status).
  ///
  /// Output only.
  core.String? type;

  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata({
    this.aggregations,
    this.category,
    this.displayName,
    this.fields,
    this.groups,
    this.subCategory,
    this.type,
  });

  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata.fromJson(
    core.Map json_,
  ) : this(
        aggregations:
            (json_['aggregations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        category: json_['category'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        fields:
            (json_['fields'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        groups:
            (json_['groups'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        subCategory: json_['subCategory'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregations != null) 'aggregations': aggregations!,
    if (category != null) 'category': category!,
    if (displayName != null) 'displayName': displayName!,
    if (fields != null) 'fields': fields!,
    if (groups != null) 'groups': groups!,
    if (subCategory != null) 'subCategory': subCategory!,
    if (type != null) 'type': type!,
  };
}

/// Field metadata.
///
/// Commonly understandable name and description for the field. Multiple such
/// fields constitute the Insight.
class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField {
  /// Description of the field.
  ///
  /// Output only.
  core.String? description;

  /// Name of the field.
  ///
  /// Output only.
  core.String? displayName;

  /// Field name to be used in filter while requesting configured insight
  /// filtered on this field.
  ///
  /// Output only.
  core.String? filterAlias;

  /// Indicates whether the field can be used for filtering.
  ///
  /// Output only.
  core.bool? filterable;

  /// Indicates whether the field can be used for grouping in custom grouping
  /// request.
  ///
  /// Output only.
  core.bool? groupable;

  /// Field id for which this is the metadata.
  ///
  /// Output only.
  core.String? id;

  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField({
    this.description,
    this.displayName,
    this.filterAlias,
    this.filterable,
    this.groupable,
    this.id,
  });

  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField.fromJson(
    core.Map json_,
  ) : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        filterAlias: json_['filterAlias'] as core.String?,
        filterable: json_['filterable'] as core.bool?,
        groupable: json_['groupable'] as core.bool?,
        id: json_['id'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (filterAlias != null) 'filterAlias': filterAlias!,
    if (filterable != null) 'filterable': filterable!,
    if (groupable != null) 'groupable': groupable!,
    if (id != null) 'id': id!,
  };
}

/// The response for the list of insights.
class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse {
  /// List of all insights.
  ///
  /// Output only.
  core.List<GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight>? insights;

  /// Next page token to be fetched.
  ///
  /// Set to empty or NULL if there are no more pages available.
  ///
  /// Output only.
  core.String? nextPageToken;

  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse({
    this.insights,
    this.nextPageToken,
  });

  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse.fromJson(
    core.Map json_,
  ) : this(
        insights:
            (json_['insights'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (insights != null) 'insights': insights!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Row of the fetch response consisting of a set of entries.
class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow {
  /// Columns/entries/key-vals in the result.
  ///
  /// Output only.
  core.List<GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal>?
  fieldValues;

  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow({this.fieldValues});

  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow.fromJson(core.Map json_)
    : this(
        fieldValues:
            (json_['fieldValues'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fieldValues != null) 'fieldValues': fieldValues!,
  };
}

/// Column or key value pair from the request as part of key to use in query or
/// a single pair of the fetch response.
class GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal {
  /// Name of the field.
  ///
  /// Output only.
  core.String? displayName;

  /// Field name to be used in filter while requesting configured insight
  /// filtered on this field.
  ///
  /// Output only.
  core.String? filterAlias;

  /// Field id.
  ///
  /// Output only.
  core.String? id;

  /// Value of the field in string format.
  ///
  /// Acceptable values are strings or numbers.
  ///
  /// Output only.
  core.String? value;

  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal({
    this.displayName,
    this.filterAlias,
    this.id,
    this.value,
  });

  GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal.fromJson(
    core.Map json_,
  ) : this(
        displayName: json_['displayName'] as core.String?,
        filterAlias: json_['filterAlias'] as core.String?,
        id: json_['id'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (filterAlias != null) 'filterAlias': filterAlias!,
    if (id != null) 'id': id!,
    if (value != null) 'value': value!,
  };
}

/// Response message for BeyondCorp.CancelSubscription
class GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse {
  /// Time when the cancellation will become effective
  core.String? effectiveCancellationTime;

  GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse({
    this.effectiveCancellationTime,
  });

  GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse.fromJson(
    core.Map json_,
  ) : this(
        effectiveCancellationTime:
            json_['effectiveCancellationTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (effectiveCancellationTime != null)
      'effectiveCancellationTime': effectiveCancellationTime!,
  };
}

/// Response message for BeyondCorp.ListSubscriptions.
class GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse {
  /// A token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String? nextPageToken;

  /// A list of BeyondCorp Subscriptions in the organization.
  core.List<GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription>?
  subscriptions;

  GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse({
    this.nextPageToken,
    this.subscriptions,
  });

  GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        subscriptions:
            (json_['subscriptions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (subscriptions != null) 'subscriptions': subscriptions!,
  };
}

/// Response message for BeyondCorp.RestartSubscription
typedef GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse =
    $Empty;

/// A BeyondCorp Subscription resource represents BeyondCorp Enterprise
/// Subscription.
///
/// BeyondCorp Enterprise Subscription enables BeyondCorp Enterprise permium
/// features for an organization.
class GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription {
  /// Represents that, if subscription will renew or end when the term ends.
  ///
  /// Output only.
  core.bool? autoRenewEnabled;

  /// Name of the billing account in the format.
  ///
  /// e.g. billingAccounts/123456-123456-123456 Required if Subscription is of
  /// Paid type.
  ///
  /// Optional.
  core.String? billingAccount;

  /// Create time of the subscription.
  ///
  /// Output only.
  core.String? createTime;

  /// Whether the subscription is being created as part of the Citrix flow.
  ///
  /// If this field is set to true, the subscription should have both the
  /// start_time and end_time set in the request and the billing account used
  /// will be the Citrix master billing account regardless of what its set to in
  /// the request. This field can only be set to true in create requests.
  ///
  /// Optional.
  core.bool? csgCustomer;

  /// End time of the subscription.
  ///
  /// Optional.
  core.String? endTime;

  /// Identifier.
  ///
  /// Unique resource name of the Subscription. The name is ignored when
  /// creating a subscription.
  core.String? name;

  /// Number of seats in the subscription.
  ///
  /// Optional.
  core.String? seatCount;

  /// SKU of subscription.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SKU_UNSPECIFIED" : Default value. This value is unused.
  /// - "BCE_STANDARD_SKU" : Represents BeyondCorp Standard SKU.
  core.String? sku;

  /// Start time of the subscription.
  ///
  /// Optional.
  core.String? startTime;

  /// The current state of the subscription.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "ACTIVE" : Represents an active subscription.
  /// - "INACTIVE" : Represents an upcomming subscription.
  /// - "COMPLETED" : Represents a completed subscription.
  core.String? state;

  /// Type of subscriber.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SUBSCRIBER_TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "ONLINE" : Represents an online subscription.
  /// - "OFFLINE" : Represents an offline subscription.
  core.String? subscriberType;

  /// Type of subscription.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "TRIAL" : Represents a trial subscription.
  /// - "PAID" : Represents a paid subscription.
  /// - "ALLOWLIST" : Reresents an allowlisted subscription.
  core.String? type;

  GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription({
    this.autoRenewEnabled,
    this.billingAccount,
    this.createTime,
    this.csgCustomer,
    this.endTime,
    this.name,
    this.seatCount,
    this.sku,
    this.startTime,
    this.state,
    this.subscriberType,
    this.type,
  });

  GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription.fromJson(
    core.Map json_,
  ) : this(
        autoRenewEnabled: json_['autoRenewEnabled'] as core.bool?,
        billingAccount: json_['billingAccount'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        csgCustomer: json_['csgCustomer'] as core.bool?,
        endTime: json_['endTime'] as core.String?,
        name: json_['name'] as core.String?,
        seatCount: json_['seatCount'] as core.String?,
        sku: json_['sku'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        state: json_['state'] as core.String?,
        subscriberType: json_['subscriberType'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (autoRenewEnabled != null) 'autoRenewEnabled': autoRenewEnabled!,
    if (billingAccount != null) 'billingAccount': billingAccount!,
    if (createTime != null) 'createTime': createTime!,
    if (csgCustomer != null) 'csgCustomer': csgCustomer!,
    if (endTime != null) 'endTime': endTime!,
    if (name != null) 'name': name!,
    if (seatCount != null) 'seatCount': seatCount!,
    if (sku != null) 'sku': sku!,
    if (startTime != null) 'startTime': startTime!,
    if (state != null) 'state': state!,
    if (subscriberType != null) 'subscriberType': subscriberType!,
    if (type != null) 'type': type!,
  };
}

/// The information about an application resource.
class GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication {
  /// Timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// An arbitrary user-provided name for the application resource.
  ///
  /// Cannot exceed 64 characters.
  ///
  /// Optional.
  core.String? displayName;

  /// Endpoint matchers associated with an application.
  ///
  /// A combination of hostname and ports as endpoint matchers is used to match
  /// the application. Match conditions for OR logic. An array of match
  /// conditions to allow for multiple matching criteria. The rule is considered
  /// a match if one of the conditions is met. The conditions can be one of the
  /// following combinations (Hostname), (Hostname & Ports) EXAMPLES: Hostname -
  /// ("*.example.com"), ("xyz.example.com") Hostname and Ports - ("example.com"
  /// and "22"), ("example.com" and "22,33") etc
  ///
  /// Required.
  core.List<GoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher>?
  endpointMatchers;

  /// Identifier.
  ///
  /// Name of the resource.
  core.String? name;

  /// Timestamp when the resource was last modified.
  ///
  /// Output only.
  core.String? updateTime;

  /// Which upstream resources to forward traffic to.
  ///
  /// Optional.
  core.List<GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream>?
  upstreams;

  GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication({
    this.createTime,
    this.displayName,
    this.endpointMatchers,
    this.name,
    this.updateTime,
    this.upstreams,
  });

  GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication.fromJson(
    core.Map json_,
  ) : this(
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        endpointMatchers:
            (json_['endpointMatchers'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        upstreams:
            (json_['upstreams'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (displayName != null) 'displayName': displayName!,
    if (endpointMatchers != null) 'endpointMatchers': endpointMatchers!,
    if (name != null) 'name': name!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (upstreams != null) 'upstreams': upstreams!,
  };
}

/// Which upstream resource to forward traffic to.
class GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream {
  /// Routing policy information.
  ///
  /// Optional.
  GoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy? egressPolicy;

  /// Network to forward traffic to.
  GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork?
  network;

  GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream({
    this.egressPolicy,
    this.network,
  });

  GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream.fromJson(
    core.Map json_,
  ) : this(
        egressPolicy:
            json_.containsKey('egressPolicy')
                ? GoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy.fromJson(
                  json_['egressPolicy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        network:
            json_.containsKey('network')
                ? GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork.fromJson(
                  json_['network'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (egressPolicy != null) 'egressPolicy': egressPolicy!,
    if (network != null) 'network': network!,
  };
}

/// Network to forward traffic to.
typedef GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork =
    $ApplicationUpstreamNetwork;

/// Routing policy information.
typedef GoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy =
    $EgressPolicy;

/// EndpointMatcher contains the information of the endpoint that will match the
/// application.
typedef GoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher =
    $EndpointMatcher;

/// The Hub message contains information pertaining to the regional data path
/// deployments.
class GoogleCloudBeyondcorpSecuritygatewaysV1alphaHub {
  /// Internet Gateway configuration.
  ///
  /// Optional.
  GoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway? internetGateway;

  GoogleCloudBeyondcorpSecuritygatewaysV1alphaHub({this.internetGateway});

  GoogleCloudBeyondcorpSecuritygatewaysV1alphaHub.fromJson(core.Map json_)
    : this(
        internetGateway:
            json_.containsKey('internetGateway')
                ? GoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway.fromJson(
                  json_['internetGateway']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (internetGateway != null) 'internetGateway': internetGateway!,
  };
}

/// Represents the Internet Gateway configuration.
typedef GoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway =
    $InternetGateway;

/// Message for response to listing Applications.
class GoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse {
  /// A list of BeyondCorp Application in the project.
  core.List<GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication>?
  applications;

  /// A token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String? nextPageToken;

  /// A list of locations that could not be reached.
  core.List<core.String>? unreachable;

  GoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse({
    this.applications,
    this.nextPageToken,
    this.unreachable,
  });

  GoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse.fromJson(
    core.Map json_,
  ) : this(
        applications:
            (json_['applications'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (applications != null) 'applications': applications!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Message for response to listing SecurityGateways.
class GoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse {
  /// A token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String? nextPageToken;

  /// A list of BeyondCorp SecurityGateway in the project.
  core.List<GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway>?
  securityGateways;

  /// A list of locations that could not be reached.
  core.List<core.String>? unreachable;

  GoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse({
    this.nextPageToken,
    this.securityGateways,
    this.unreachable,
  });

  GoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        securityGateways:
            (json_['securityGateways'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (securityGateways != null) 'securityGateways': securityGateways!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The information about a security gateway resource.
class GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway {
  /// Timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Service account used for operations that involve resources in consumer
  /// projects.
  ///
  /// Output only.
  core.String? delegatingServiceAccount;

  /// An arbitrary user-provided name for the SecurityGateway.
  ///
  /// Cannot exceed 64 characters.
  ///
  /// Optional.
  core.String? displayName;

  /// IP addresses that will be used for establishing connection to the
  /// endpoints.
  ///
  /// Output only.
  core.List<core.String>? externalIps;

  /// Map of Hubs that represents regional data path deployment with GCP region
  /// as a key.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudBeyondcorpSecuritygatewaysV1alphaHub>? hubs;

  /// Identifier.
  ///
  /// Name of the resource.
  core.String? name;

  /// The operational state of the SecurityGateway.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "CREATING" : SecurityGateway is being created.
  /// - "UPDATING" : SecurityGateway is being updated.
  /// - "DELETING" : SecurityGateway is being deleted.
  /// - "RUNNING" : SecurityGateway is running.
  /// - "DOWN" : SecurityGateway is down and may be restored in the future.
  /// - "ERROR" : SecurityGateway encountered an error and is in an
  /// indeterministic state.
  core.String? state;

  /// Timestamp when the resource was last modified.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway({
    this.createTime,
    this.delegatingServiceAccount,
    this.displayName,
    this.externalIps,
    this.hubs,
    this.name,
    this.state,
    this.updateTime,
  });

  GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway.fromJson(
    core.Map json_,
  ) : this(
        createTime: json_['createTime'] as core.String?,
        delegatingServiceAccount:
            json_['delegatingServiceAccount'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        externalIps:
            (json_['externalIps'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        hubs: (json_['hubs'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(
            key,
            GoogleCloudBeyondcorpSecuritygatewaysV1alphaHub.fromJson(
              value as core.Map<core.String, core.dynamic>,
            ),
          ),
        ),
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (delegatingServiceAccount != null)
      'delegatingServiceAccount': delegatingServiceAccount!,
    if (displayName != null) 'displayName': displayName!,
    if (externalIps != null) 'externalIps': externalIps!,
    if (hubs != null) 'hubs': hubs!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The response message for Locations.ListLocations.
class GoogleCloudLocationListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<GoogleCloudLocationLocation>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  GoogleCloudLocationListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  GoogleCloudLocationListLocationsResponse.fromJson(core.Map json_)
    : this(
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => GoogleCloudLocationLocation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (locations != null) 'locations': locations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// A resource that represents a Google Cloud location.
typedef GoogleCloudLocationLocation = $Location00;

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs. If there are AuditConfigs for both `allServices`
/// and a specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts `jose@example.com` from DATA_READ logging, and
/// `aliya@example.com` from DATA_WRITE logging.
class GoogleIamV1AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<GoogleIamV1AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  GoogleIamV1AuditConfig({this.auditLogConfigs, this.service});

  GoogleIamV1AuditConfig.fromJson(core.Map json_)
    : this(
        auditLogConfigs:
            (json_['auditLogConfigs'] as core.List?)
                ?.map(
                  (value) => GoogleIamV1AuditLogConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        service: json_['service'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (auditLogConfigs != null) 'auditLogConfigs': auditLogConfigs!,
    if (service != null) 'service': service!,
  };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
typedef GoogleIamV1AuditLogConfig = $AuditLogConfig00;

/// Associates `members`, or principals, with a `role`.
class GoogleIamV1Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  GoogleTypeExpr? condition;

  /// Specifies the principals requesting access for a Google Cloud resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. Does not include identities that come from external identity
  /// providers (IdPs) through identity federation. * `user:{emailid}`: An email
  /// address that represents a specific Google account. For example,
  /// `alice@example.com` . * `serviceAccount:{emailid}`: An email address that
  /// represents a Google service account. For example,
  /// `my-other-app@appspot.gserviceaccount.com`. *
  /// `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An
  /// identifier for a
  /// [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
  /// For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `domain:{domain}`: The G Suite domain
  /// (primary) that represents all the users of that domain. For example,
  /// `google.com` or `example.com`. *
  /// `principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workforce identity pool. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/group/{group_id}`:
  /// All workforce identities in a group. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All workforce identities with a specific attribute value. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}
  /// / * `: All identities in a workforce identity pool. *
  /// `principal://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workload identity pool. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/group/{group_id}`:
  /// A workload identity pool group. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All identities in a workload identity pool with a certain attribute. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}
  /// / * `: All identities in a workload identity pool. *
  /// `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique
  /// identifier) representing a user that has been recently deleted. For
  /// example, `alice@example.com?uid=123456789012345678901`. If the user is
  /// recovered, this value reverts to `user:{emailid}` and the recovered user
  /// retains the role in the binding. *
  /// `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An email address (plus
  /// unique identifier) representing a service account that has been recently
  /// deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. *
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// Deleted single identity in a workforce identity pool. For example,
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`. For an
  /// overview of the IAM roles and permissions, see the
  /// [IAM documentation](https://cloud.google.com/iam/docs/roles-overview). For
  /// a list of the available pre-defined roles, see
  /// [here](https://cloud.google.com/iam/docs/understanding-roles).
  core.String? role;

  GoogleIamV1Binding({this.condition, this.members, this.role});

  GoogleIamV1Binding.fromJson(core.Map json_)
    : this(
        condition:
            json_.containsKey('condition')
                ? GoogleTypeExpr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        members:
            (json_['members'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (condition != null) 'condition': condition!,
    if (members != null) 'members': members!,
    if (role != null) 'role': role!,
  };
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members`, or principals, to a single `role`. Principals can be user
/// accounts, service accounts, Google groups, and domains (such as G Suite). A
/// `role` is a named list of permissions; each `role` can be an IAM predefined
/// role or a user-created custom role. For some types of Google Cloud
/// resources, a `binding` can also specify a `condition`, which is a logical
/// expression that allows access to a resource only if the expression evaluates
/// to `true`. A condition can add constraints based on attributes of the
/// request, the resource, or both. To learn which resources support conditions
/// in their IAM policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** ``` { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: -
/// members: - user:mike@example.com - group:admins@example.com -
/// domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
/// role: roles/resourcemanager.organizationAdmin - members: -
/// user:eve@example.com role: roles/resourcemanager.organizationViewer
/// condition: title: expirable access description: Does not grant access after
/// Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
/// etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features,
/// see the [IAM documentation](https://cloud.google.com/iam/docs/).
class GoogleIamV1Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<GoogleIamV1AuditConfig>? auditConfigs;

  /// Associates a list of `members`, or principals, with a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// principal. The `bindings` in a `Policy` can refer to up to 1,500
  /// principals; up to 250 of these principals can be Google groups. Each
  /// occurrence of a principal counts towards these limits. For example, if the
  /// `bindings` grant 50 different roles to `user:alice@example.com`, and not
  /// to any other principal, then you can add another 1,450 principals to the
  /// `bindings` in the `Policy`.
  core.List<GoogleIamV1Binding>? bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int? version;

  GoogleIamV1Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  GoogleIamV1Policy.fromJson(core.Map json_)
    : this(
        auditConfigs:
            (json_['auditConfigs'] as core.List?)
                ?.map(
                  (value) => GoogleIamV1AuditConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        bindings:
            (json_['bindings'] as core.List?)
                ?.map(
                  (value) => GoogleIamV1Binding.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        etag: json_['etag'] as core.String?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (auditConfigs != null) 'auditConfigs': auditConfigs!,
    if (bindings != null) 'bindings': bindings!,
    if (etag != null) 'etag': etag!,
    if (version != null) 'version': version!,
  };
}

/// Request message for `SetIamPolicy` method.
class GoogleIamV1SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  GoogleIamV1Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  GoogleIamV1SetIamPolicyRequest({this.policy, this.updateMask});

  GoogleIamV1SetIamPolicyRequest.fromJson(core.Map json_)
    : this(
        policy:
            json_.containsKey('policy')
                ? GoogleIamV1Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (policy != null) 'policy': policy!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// Request message for `TestIamPermissions` method.
typedef GoogleIamV1TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef GoogleIamV1TestIamPermissionsResponse = $PermissionsResponse;

/// The request message for Operations.CancelOperation.
typedef GoogleLongrunningCancelOperationRequest = $Empty;

/// The response message for Operations.ListOperations.
class GoogleLongrunningListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<GoogleLongrunningOperation>? operations;

  GoogleLongrunningListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  GoogleLongrunningListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => GoogleLongrunningOperation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (operations != null) 'operations': operations!,
  };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal, successful response of the operation.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  GoogleLongrunningOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  GoogleLongrunningOperation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error:
            json_.containsKey('error')
                ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metadata:
            json_.containsKey('metadata')
                ? json_['metadata'] as core.Map<core.String, core.dynamic>
                : null,
        name: json_['name'] as core.String?,
        response:
            json_.containsKey('response')
                ? json_['response'] as core.Map<core.String, core.dynamic>
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (done != null) 'done': done!,
    if (error != null) 'error': error!,
    if (metadata != null) 'metadata': metadata!,
    if (name != null) 'name': name!,
    if (response != null) 'response': response!,
  };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status00;

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() \< 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
typedef GoogleTypeExpr = $Expr;

/// ImageConfig defines the control plane images to run.
class ImageConfig {
  /// The stable image that the remote agent will fallback to if the target
  /// image fails.
  core.String? stableImage;

  /// The initial image the remote agent will attempt to run for the control
  /// plane.
  core.String? targetImage;

  ImageConfig({this.stableImage, this.targetImage});

  ImageConfig.fromJson(core.Map json_)
    : this(
        stableImage: json_['stableImage'] as core.String?,
        targetImage: json_['targetImage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (stableImage != null) 'stableImage': stableImage!,
    if (targetImage != null) 'targetImage': targetImage!,
  };
}

/// Response message for BeyondCorp.ListAppGateways.
class ListAppGatewaysResponse {
  /// A list of BeyondCorp AppGateways in the project.
  core.List<AppGateway>? appGateways;

  /// A token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String? nextPageToken;

  /// A list of locations that could not be reached.
  core.List<core.String>? unreachable;

  ListAppGatewaysResponse({
    this.appGateways,
    this.nextPageToken,
    this.unreachable,
  });

  ListAppGatewaysResponse.fromJson(core.Map json_)
    : this(
        appGateways:
            (json_['appGateways'] as core.List?)
                ?.map(
                  (value) => AppGateway.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appGateways != null) 'appGateways': appGateways!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for BeyondCorp.ListConnections.
class ListConnectionsResponse {
  /// A list of BeyondCorp Connections in the project.
  core.List<Connection>? connections;

  /// A token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String? nextPageToken;

  /// A list of locations that could not be reached.
  core.List<core.String>? unreachable;

  ListConnectionsResponse({
    this.connections,
    this.nextPageToken,
    this.unreachable,
  });

  ListConnectionsResponse.fromJson(core.Map json_)
    : this(
        connections:
            (json_['connections'] as core.List?)
                ?.map(
                  (value) => Connection.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connections != null) 'connections': connections!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for BeyondCorp.ListConnectors.
class ListConnectorsResponse {
  /// A list of BeyondCorp Connectors in the project.
  core.List<Connector>? connectors;

  /// A token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String? nextPageToken;

  /// A list of locations that could not be reached.
  core.List<core.String>? unreachable;

  ListConnectorsResponse({
    this.connectors,
    this.nextPageToken,
    this.unreachable,
  });

  ListConnectorsResponse.fromJson(core.Map json_)
    : this(
        connectors:
            (json_['connectors'] as core.List?)
                ?.map(
                  (value) => Connector.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connectors != null) 'connectors': connectors!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// NotificationConfig defines the mechanisms to notify instance agent.
class NotificationConfig {
  /// Pub/Sub topic for Connector to subscribe and receive notifications from
  /// `projects/{project}/topics/{pubsub_topic}`
  CloudPubSubNotificationConfig? pubsubNotification;

  NotificationConfig({this.pubsubNotification});

  NotificationConfig.fromJson(core.Map json_)
    : this(
        pubsubNotification:
            json_.containsKey('pubsubNotification')
                ? CloudPubSubNotificationConfig.fromJson(
                  json_['pubsubNotification']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pubsubNotification != null) 'pubsubNotification': pubsubNotification!,
  };
}

/// PrincipalInfo represents an Identity oneof.
class PrincipalInfo {
  /// A GCP service account.
  ServiceAccount? serviceAccount;

  PrincipalInfo({this.serviceAccount});

  PrincipalInfo.fromJson(core.Map json_)
    : this(
        serviceAccount:
            json_.containsKey('serviceAccount')
                ? ServiceAccount.fromJson(
                  json_['serviceAccount']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
  };
}

/// Request report the connector status.
class ReportStatusRequest {
  /// An optional request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  /// Resource info of the connector.
  ///
  /// Required.
  ResourceInfo? resourceInfo;

  /// If set, validates request by executing a dry-run which would not alter the
  /// resource in any way.
  ///
  /// Optional.
  core.bool? validateOnly;

  ReportStatusRequest({this.requestId, this.resourceInfo, this.validateOnly});

  ReportStatusRequest.fromJson(core.Map json_)
    : this(
        requestId: json_['requestId'] as core.String?,
        resourceInfo:
            json_.containsKey('resourceInfo')
                ? ResourceInfo.fromJson(
                  json_['resourceInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (requestId != null) 'requestId': requestId!,
    if (resourceInfo != null) 'resourceInfo': resourceInfo!,
    if (validateOnly != null) 'validateOnly': validateOnly!,
  };
}

/// Response message for BeyondCorp.ResolveConnections.
class ResolveConnectionsResponse {
  /// A list of BeyondCorp Connections with details in the project.
  core.List<ConnectionDetails>? connectionDetails;

  /// A token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String? nextPageToken;

  /// A list of locations that could not be reached.
  core.List<core.String>? unreachable;

  ResolveConnectionsResponse({
    this.connectionDetails,
    this.nextPageToken,
    this.unreachable,
  });

  ResolveConnectionsResponse.fromJson(core.Map json_)
    : this(
        connectionDetails:
            (json_['connectionDetails'] as core.List?)
                ?.map(
                  (value) => ConnectionDetails.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connectionDetails != null) 'connectionDetails': connectionDetails!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for BeyondCorp.ResolveInstanceConfig.
class ResolveInstanceConfigResponse {
  /// ConnectorInstanceConfig.
  ConnectorInstanceConfig? instanceConfig;

  ResolveInstanceConfigResponse({this.instanceConfig});

  ResolveInstanceConfigResponse.fromJson(core.Map json_)
    : this(
        instanceConfig:
            json_.containsKey('instanceConfig')
                ? ConnectorInstanceConfig.fromJson(
                  json_['instanceConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (instanceConfig != null) 'instanceConfig': instanceConfig!,
  };
}

/// ResourceInfo represents the information/status of the associated resource.
class ResourceInfo {
  /// Unique Id for the resource.
  ///
  /// Required.
  core.String? id;

  /// Specific details for the resource.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? resource;

  /// Overall health status.
  ///
  /// Overall status is derived based on the status of each sub level resources.
  /// Possible string values are:
  /// - "HEALTH_STATUS_UNSPECIFIED" : Health status is unknown: not initialized
  /// or failed to retrieve.
  /// - "HEALTHY" : The resource is healthy.
  /// - "UNHEALTHY" : The resource is unhealthy.
  /// - "UNRESPONSIVE" : The resource is unresponsive.
  /// - "DEGRADED" : Some sub-resources are UNHEALTHY.
  core.String? status;

  /// List of Info for the sub level resources.
  core.List<ResourceInfo>? sub;

  /// The timestamp to collect the info.
  ///
  /// It is suggested to be set by the topmost level resource only.
  core.String? time;

  ResourceInfo({this.id, this.resource, this.status, this.sub, this.time});

  ResourceInfo.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        resource:
            json_.containsKey('resource')
                ? json_['resource'] as core.Map<core.String, core.dynamic>
                : null,
        status: json_['status'] as core.String?,
        sub:
            (json_['sub'] as core.List?)
                ?.map(
                  (value) => ResourceInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        time: json_['time'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (id != null) 'id': id!,
    if (resource != null) 'resource': resource!,
    if (status != null) 'status': status!,
    if (sub != null) 'sub': sub!,
    if (time != null) 'time': time!,
  };
}

/// ServiceAccount represents a GCP service account.
typedef ServiceAccount = $Shared06;
