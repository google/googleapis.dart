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

/// Recommender API - v1
///
/// For more information, see <https://cloud.google.com/recommender/docs/>
///
/// Create an instance of [RecommenderApi] to access these resources:
///
/// - [BillingAccountsResource]
///   - [BillingAccountsLocationsResource]
///     - [BillingAccountsLocationsInsightTypesResource]
///       - [BillingAccountsLocationsInsightTypesInsightsResource]
///     - [BillingAccountsLocationsRecommendersResource]
///       - [BillingAccountsLocationsRecommendersRecommendationsResource]
/// - [FoldersResource]
///   - [FoldersLocationsResource]
///     - [FoldersLocationsInsightTypesResource]
///       - [FoldersLocationsInsightTypesInsightsResource]
///     - [FoldersLocationsRecommendersResource]
///       - [FoldersLocationsRecommendersRecommendationsResource]
/// - [OrganizationsResource]
///   - [OrganizationsLocationsResource]
///     - [OrganizationsLocationsInsightTypesResource]
///       - [OrganizationsLocationsInsightTypesInsightsResource]
///     - [OrganizationsLocationsRecommendersResource]
///       - [OrganizationsLocationsRecommendersRecommendationsResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsInsightTypesResource]
///       - [ProjectsLocationsInsightTypesInsightsResource]
///     - [ProjectsLocationsRecommendersResource]
///       - [ProjectsLocationsRecommendersRecommendationsResource]
library recommender.v1;

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

class RecommenderApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  BillingAccountsResource get billingAccounts =>
      BillingAccountsResource(_requester);
  FoldersResource get folders => FoldersResource(_requester);
  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  RecommenderApi(http.Client client,
      {core.String rootUrl = 'https://recommender.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class BillingAccountsResource {
  final commons.ApiRequester _requester;

  BillingAccountsLocationsResource get locations =>
      BillingAccountsLocationsResource(_requester);

  BillingAccountsResource(commons.ApiRequester client) : _requester = client;
}

class BillingAccountsLocationsResource {
  final commons.ApiRequester _requester;

  BillingAccountsLocationsInsightTypesResource get insightTypes =>
      BillingAccountsLocationsInsightTypesResource(_requester);
  BillingAccountsLocationsRecommendersResource get recommenders =>
      BillingAccountsLocationsRecommendersResource(_requester);

  BillingAccountsLocationsResource(commons.ApiRequester client)
      : _requester = client;
}

class BillingAccountsLocationsInsightTypesResource {
  final commons.ApiRequester _requester;

  BillingAccountsLocationsInsightTypesInsightsResource get insights =>
      BillingAccountsLocationsInsightTypesInsightsResource(_requester);

  BillingAccountsLocationsInsightTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the requested InsightTypeConfig.
  ///
  /// There is only one instance of the config for each InsightType.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the InsightTypeConfig to get. Acceptable
  /// formats: *
  /// `projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config`
  /// *
  /// `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config`
  /// *
  /// `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config`
  /// *
  /// `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config`
  /// Value must have pattern
  /// `^billingAccounts/\[^/\]+/locations/\[^/\]+/insightTypes/\[^/\]+/config$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1InsightTypeConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1InsightTypeConfig> getConfig(
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
    return GoogleCloudRecommenderV1InsightTypeConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an InsightTypeConfig change.
  ///
  /// This will create a new revision of the config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of insight type config. Eg,
  /// projects/\[PROJECT_NUMBER\]/locations/\[LOCATION\]/insightTypes/\[INSIGHT_TYPE_ID\]/config
  /// Value must have pattern
  /// `^billingAccounts/\[^/\]+/locations/\[^/\]+/insightTypes/\[^/\]+/config$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [validateOnly] - If true, validate the request and preview the change, but
  /// do not actually update it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1InsightTypeConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1InsightTypeConfig> updateConfig(
    GoogleCloudRecommenderV1InsightTypeConfig request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1InsightTypeConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class BillingAccountsLocationsInsightTypesInsightsResource {
  final commons.ApiRequester _requester;

  BillingAccountsLocationsInsightTypesInsightsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the requested insight.
  ///
  /// Requires the recommender.*.get IAM permission for the specified insight
  /// type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the insight.
  /// Value must have pattern
  /// `^billingAccounts/\[^/\]+/locations/\[^/\]+/insightTypes/\[^/\]+/insights/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Insight].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Insight> get(
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
    return GoogleCloudRecommenderV1Insight.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists insights for the specified Cloud Resource.
  ///
  /// Requires the recommender.*.list IAM permission for the specified insight
  /// type.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The container resource on which to execute the
  /// request. Acceptable formats: *
  /// `projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]`
  /// *
  /// `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]`
  /// *
  /// `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]`
  /// *
  /// `folders/[FOLDER_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]`
  /// *
  /// `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]`
  /// LOCATION here refers to GCP Locations:
  /// https://cloud.google.com/about/locations/ INSIGHT_TYPE_ID refers to
  /// supported insight types:
  /// https://cloud.google.com/recommender/docs/insights/insight-types.
  /// Value must have pattern
  /// `^billingAccounts/\[^/\]+/locations/\[^/\]+/insightTypes/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter expression to restrict the insights returned.
  /// Supported filter fields: * `stateInfo.state` * `insightSubtype` *
  /// `severity` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state =
  /// DISMISSED` * `insightSubtype = PERMISSIONS_USAGE` * `severity = CRITICAL
  /// OR severity = HIGH` * `stateInfo.state = ACTIVE AND (severity = CRITICAL
  /// OR severity = HIGH)` (These expressions are based on the filter language
  /// described at https://google.aip.dev/160)
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. If not specified, the server
  /// will determine the number of results to return.
  ///
  /// [pageToken] - Optional. If present, retrieves the next batch of results
  /// from the preceding call to this method. `page_token` must be the value of
  /// `next_page_token` from the previous response. The values of other method
  /// parameters must be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1ListInsightsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1ListInsightsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/insights';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1ListInsightsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks the Insight State as Accepted.
  ///
  /// Users can use this method to indicate to the Recommender API that they
  /// have applied some action based on the insight. This stops the insight
  /// content from being updated. MarkInsightAccepted can be applied to insights
  /// in ACTIVE state. Requires the recommender.*.update IAM permission for the
  /// specified insight.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the insight.
  /// Value must have pattern
  /// `^billingAccounts/\[^/\]+/locations/\[^/\]+/insightTypes/\[^/\]+/insights/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Insight].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Insight> markAccepted(
    GoogleCloudRecommenderV1MarkInsightAcceptedRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':markAccepted';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1Insight.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class BillingAccountsLocationsRecommendersResource {
  final commons.ApiRequester _requester;

  BillingAccountsLocationsRecommendersRecommendationsResource
      get recommendations =>
          BillingAccountsLocationsRecommendersRecommendationsResource(
              _requester);

  BillingAccountsLocationsRecommendersResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the requested Recommender Config.
  ///
  /// There is only one instance of the config for each Recommender.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the Recommendation Config to get. Acceptable
  /// formats: *
  /// `projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config`
  /// *
  /// `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config`
  /// *
  /// `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config`
  /// *
  /// `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config`
  /// Value must have pattern
  /// `^billingAccounts/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/config$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1RecommenderConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1RecommenderConfig> getConfig(
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
    return GoogleCloudRecommenderV1RecommenderConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Recommender Config.
  ///
  /// This will create a new revision of the config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of recommender config. Eg,
  /// projects/\[PROJECT_NUMBER\]/locations/\[LOCATION\]/recommenders/\[RECOMMENDER_ID\]/config
  /// Value must have pattern
  /// `^billingAccounts/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/config$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [validateOnly] - If true, validate the request and preview the change, but
  /// do not actually update it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1RecommenderConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1RecommenderConfig> updateConfig(
    GoogleCloudRecommenderV1RecommenderConfig request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1RecommenderConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class BillingAccountsLocationsRecommendersRecommendationsResource {
  final commons.ApiRequester _requester;

  BillingAccountsLocationsRecommendersRecommendationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the requested recommendation.
  ///
  /// Requires the recommender.*.get IAM permission for the specified
  /// recommender.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the recommendation.
  /// Value must have pattern
  /// `^billingAccounts/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/recommendations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Recommendation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Recommendation> get(
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
    return GoogleCloudRecommenderV1Recommendation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists recommendations for the specified Cloud Resource.
  ///
  /// Requires the recommender.*.list IAM permission for the specified
  /// recommender.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The container resource on which to execute the
  /// request. Acceptable formats: *
  /// `projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]`
  /// *
  /// `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]`
  /// *
  /// `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]`
  /// * `folders/[FOLDER_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]`
  /// *
  /// `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]`
  /// LOCATION here refers to GCP Locations:
  /// https://cloud.google.com/about/locations/ RECOMMENDER_ID refers to
  /// supported recommenders:
  /// https://cloud.google.com/recommender/docs/recommenders.
  /// Value must have pattern
  /// `^billingAccounts/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+$`.
  ///
  /// [filter] - Filter expression to restrict the recommendations returned.
  /// Supported filter fields: * `state_info.state` * `recommenderSubtype` *
  /// `priority` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state =
  /// DISMISSED` * `recommenderSubtype = REMOVE_ROLE OR recommenderSubtype =
  /// REPLACE_ROLE` * `priority = P1 OR priority = P2` * `stateInfo.state =
  /// ACTIVE AND (priority = P1 OR priority = P2)` (These expressions are based
  /// on the filter language described at https://google.aip.dev/160)
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. If not specified, the server
  /// will determine the number of results to return.
  ///
  /// [pageToken] - Optional. If present, retrieves the next batch of results
  /// from the preceding call to this method. `page_token` must be the value of
  /// `next_page_token` from the previous response. The values of other method
  /// parameters must be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1ListRecommendationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1ListRecommendationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/recommendations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1ListRecommendationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks the Recommendation State as Claimed.
  ///
  /// Users can use this method to indicate to the Recommender API that they are
  /// starting to apply the recommendation themselves. This stops the
  /// recommendation content from being updated. Associated insights are frozen
  /// and placed in the ACCEPTED state. MarkRecommendationClaimed can be applied
  /// to recommendations in CLAIMED, SUCCEEDED, FAILED, or ACTIVE state.
  /// Requires the recommender.*.update IAM permission for the specified
  /// recommender.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the recommendation.
  /// Value must have pattern
  /// `^billingAccounts/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/recommendations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Recommendation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Recommendation> markClaimed(
    GoogleCloudRecommenderV1MarkRecommendationClaimedRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':markClaimed';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1Recommendation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks the Recommendation State as Failed.
  ///
  /// Users can use this method to indicate to the Recommender API that they
  /// have applied the recommendation themselves, and the operation failed. This
  /// stops the recommendation content from being updated. Associated insights
  /// are frozen and placed in the ACCEPTED state. MarkRecommendationFailed can
  /// be applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED
  /// state. Requires the recommender.*.update IAM permission for the specified
  /// recommender.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the recommendation.
  /// Value must have pattern
  /// `^billingAccounts/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/recommendations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Recommendation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Recommendation> markFailed(
    GoogleCloudRecommenderV1MarkRecommendationFailedRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':markFailed';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1Recommendation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks the Recommendation State as Succeeded.
  ///
  /// Users can use this method to indicate to the Recommender API that they
  /// have applied the recommendation themselves, and the operation was
  /// successful. This stops the recommendation content from being updated.
  /// Associated insights are frozen and placed in the ACCEPTED state.
  /// MarkRecommendationSucceeded can be applied to recommendations in ACTIVE,
  /// CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM
  /// permission for the specified recommender.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the recommendation.
  /// Value must have pattern
  /// `^billingAccounts/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/recommendations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Recommendation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Recommendation> markSucceeded(
    GoogleCloudRecommenderV1MarkRecommendationSucceededRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':markSucceeded';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1Recommendation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FoldersResource {
  final commons.ApiRequester _requester;

  FoldersLocationsResource get locations =>
      FoldersLocationsResource(_requester);

  FoldersResource(commons.ApiRequester client) : _requester = client;
}

class FoldersLocationsResource {
  final commons.ApiRequester _requester;

  FoldersLocationsInsightTypesResource get insightTypes =>
      FoldersLocationsInsightTypesResource(_requester);
  FoldersLocationsRecommendersResource get recommenders =>
      FoldersLocationsRecommendersResource(_requester);

  FoldersLocationsResource(commons.ApiRequester client) : _requester = client;
}

class FoldersLocationsInsightTypesResource {
  final commons.ApiRequester _requester;

  FoldersLocationsInsightTypesInsightsResource get insights =>
      FoldersLocationsInsightTypesInsightsResource(_requester);

  FoldersLocationsInsightTypesResource(commons.ApiRequester client)
      : _requester = client;
}

class FoldersLocationsInsightTypesInsightsResource {
  final commons.ApiRequester _requester;

  FoldersLocationsInsightTypesInsightsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the requested insight.
  ///
  /// Requires the recommender.*.get IAM permission for the specified insight
  /// type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the insight.
  /// Value must have pattern
  /// `^folders/\[^/\]+/locations/\[^/\]+/insightTypes/\[^/\]+/insights/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Insight].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Insight> get(
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
    return GoogleCloudRecommenderV1Insight.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists insights for the specified Cloud Resource.
  ///
  /// Requires the recommender.*.list IAM permission for the specified insight
  /// type.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The container resource on which to execute the
  /// request. Acceptable formats: *
  /// `projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]`
  /// *
  /// `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]`
  /// *
  /// `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]`
  /// *
  /// `folders/[FOLDER_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]`
  /// *
  /// `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]`
  /// LOCATION here refers to GCP Locations:
  /// https://cloud.google.com/about/locations/ INSIGHT_TYPE_ID refers to
  /// supported insight types:
  /// https://cloud.google.com/recommender/docs/insights/insight-types.
  /// Value must have pattern
  /// `^folders/\[^/\]+/locations/\[^/\]+/insightTypes/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter expression to restrict the insights returned.
  /// Supported filter fields: * `stateInfo.state` * `insightSubtype` *
  /// `severity` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state =
  /// DISMISSED` * `insightSubtype = PERMISSIONS_USAGE` * `severity = CRITICAL
  /// OR severity = HIGH` * `stateInfo.state = ACTIVE AND (severity = CRITICAL
  /// OR severity = HIGH)` (These expressions are based on the filter language
  /// described at https://google.aip.dev/160)
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. If not specified, the server
  /// will determine the number of results to return.
  ///
  /// [pageToken] - Optional. If present, retrieves the next batch of results
  /// from the preceding call to this method. `page_token` must be the value of
  /// `next_page_token` from the previous response. The values of other method
  /// parameters must be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1ListInsightsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1ListInsightsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/insights';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1ListInsightsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks the Insight State as Accepted.
  ///
  /// Users can use this method to indicate to the Recommender API that they
  /// have applied some action based on the insight. This stops the insight
  /// content from being updated. MarkInsightAccepted can be applied to insights
  /// in ACTIVE state. Requires the recommender.*.update IAM permission for the
  /// specified insight.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the insight.
  /// Value must have pattern
  /// `^folders/\[^/\]+/locations/\[^/\]+/insightTypes/\[^/\]+/insights/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Insight].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Insight> markAccepted(
    GoogleCloudRecommenderV1MarkInsightAcceptedRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':markAccepted';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1Insight.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FoldersLocationsRecommendersResource {
  final commons.ApiRequester _requester;

  FoldersLocationsRecommendersRecommendationsResource get recommendations =>
      FoldersLocationsRecommendersRecommendationsResource(_requester);

  FoldersLocationsRecommendersResource(commons.ApiRequester client)
      : _requester = client;
}

class FoldersLocationsRecommendersRecommendationsResource {
  final commons.ApiRequester _requester;

  FoldersLocationsRecommendersRecommendationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the requested recommendation.
  ///
  /// Requires the recommender.*.get IAM permission for the specified
  /// recommender.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the recommendation.
  /// Value must have pattern
  /// `^folders/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/recommendations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Recommendation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Recommendation> get(
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
    return GoogleCloudRecommenderV1Recommendation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists recommendations for the specified Cloud Resource.
  ///
  /// Requires the recommender.*.list IAM permission for the specified
  /// recommender.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The container resource on which to execute the
  /// request. Acceptable formats: *
  /// `projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]`
  /// *
  /// `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]`
  /// *
  /// `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]`
  /// * `folders/[FOLDER_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]`
  /// *
  /// `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]`
  /// LOCATION here refers to GCP Locations:
  /// https://cloud.google.com/about/locations/ RECOMMENDER_ID refers to
  /// supported recommenders:
  /// https://cloud.google.com/recommender/docs/recommenders.
  /// Value must have pattern
  /// `^folders/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+$`.
  ///
  /// [filter] - Filter expression to restrict the recommendations returned.
  /// Supported filter fields: * `state_info.state` * `recommenderSubtype` *
  /// `priority` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state =
  /// DISMISSED` * `recommenderSubtype = REMOVE_ROLE OR recommenderSubtype =
  /// REPLACE_ROLE` * `priority = P1 OR priority = P2` * `stateInfo.state =
  /// ACTIVE AND (priority = P1 OR priority = P2)` (These expressions are based
  /// on the filter language described at https://google.aip.dev/160)
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. If not specified, the server
  /// will determine the number of results to return.
  ///
  /// [pageToken] - Optional. If present, retrieves the next batch of results
  /// from the preceding call to this method. `page_token` must be the value of
  /// `next_page_token` from the previous response. The values of other method
  /// parameters must be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1ListRecommendationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1ListRecommendationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/recommendations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1ListRecommendationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks the Recommendation State as Claimed.
  ///
  /// Users can use this method to indicate to the Recommender API that they are
  /// starting to apply the recommendation themselves. This stops the
  /// recommendation content from being updated. Associated insights are frozen
  /// and placed in the ACCEPTED state. MarkRecommendationClaimed can be applied
  /// to recommendations in CLAIMED, SUCCEEDED, FAILED, or ACTIVE state.
  /// Requires the recommender.*.update IAM permission for the specified
  /// recommender.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the recommendation.
  /// Value must have pattern
  /// `^folders/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/recommendations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Recommendation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Recommendation> markClaimed(
    GoogleCloudRecommenderV1MarkRecommendationClaimedRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':markClaimed';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1Recommendation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks the Recommendation State as Failed.
  ///
  /// Users can use this method to indicate to the Recommender API that they
  /// have applied the recommendation themselves, and the operation failed. This
  /// stops the recommendation content from being updated. Associated insights
  /// are frozen and placed in the ACCEPTED state. MarkRecommendationFailed can
  /// be applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED
  /// state. Requires the recommender.*.update IAM permission for the specified
  /// recommender.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the recommendation.
  /// Value must have pattern
  /// `^folders/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/recommendations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Recommendation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Recommendation> markFailed(
    GoogleCloudRecommenderV1MarkRecommendationFailedRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':markFailed';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1Recommendation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks the Recommendation State as Succeeded.
  ///
  /// Users can use this method to indicate to the Recommender API that they
  /// have applied the recommendation themselves, and the operation was
  /// successful. This stops the recommendation content from being updated.
  /// Associated insights are frozen and placed in the ACCEPTED state.
  /// MarkRecommendationSucceeded can be applied to recommendations in ACTIVE,
  /// CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM
  /// permission for the specified recommender.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the recommendation.
  /// Value must have pattern
  /// `^folders/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/recommendations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Recommendation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Recommendation> markSucceeded(
    GoogleCloudRecommenderV1MarkRecommendationSucceededRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':markSucceeded';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1Recommendation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsResource get locations =>
      OrganizationsLocationsResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsLocationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsInsightTypesResource get insightTypes =>
      OrganizationsLocationsInsightTypesResource(_requester);
  OrganizationsLocationsRecommendersResource get recommenders =>
      OrganizationsLocationsRecommendersResource(_requester);

  OrganizationsLocationsResource(commons.ApiRequester client)
      : _requester = client;
}

class OrganizationsLocationsInsightTypesResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsInsightTypesInsightsResource get insights =>
      OrganizationsLocationsInsightTypesInsightsResource(_requester);

  OrganizationsLocationsInsightTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the requested InsightTypeConfig.
  ///
  /// There is only one instance of the config for each InsightType.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the InsightTypeConfig to get. Acceptable
  /// formats: *
  /// `projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config`
  /// *
  /// `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config`
  /// *
  /// `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config`
  /// *
  /// `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/insightTypes/\[^/\]+/config$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1InsightTypeConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1InsightTypeConfig> getConfig(
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
    return GoogleCloudRecommenderV1InsightTypeConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an InsightTypeConfig change.
  ///
  /// This will create a new revision of the config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of insight type config. Eg,
  /// projects/\[PROJECT_NUMBER\]/locations/\[LOCATION\]/insightTypes/\[INSIGHT_TYPE_ID\]/config
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/insightTypes/\[^/\]+/config$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [validateOnly] - If true, validate the request and preview the change, but
  /// do not actually update it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1InsightTypeConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1InsightTypeConfig> updateConfig(
    GoogleCloudRecommenderV1InsightTypeConfig request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1InsightTypeConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsInsightTypesInsightsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsInsightTypesInsightsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the requested insight.
  ///
  /// Requires the recommender.*.get IAM permission for the specified insight
  /// type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the insight.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/insightTypes/\[^/\]+/insights/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Insight].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Insight> get(
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
    return GoogleCloudRecommenderV1Insight.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists insights for the specified Cloud Resource.
  ///
  /// Requires the recommender.*.list IAM permission for the specified insight
  /// type.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The container resource on which to execute the
  /// request. Acceptable formats: *
  /// `projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]`
  /// *
  /// `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]`
  /// *
  /// `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]`
  /// *
  /// `folders/[FOLDER_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]`
  /// *
  /// `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]`
  /// LOCATION here refers to GCP Locations:
  /// https://cloud.google.com/about/locations/ INSIGHT_TYPE_ID refers to
  /// supported insight types:
  /// https://cloud.google.com/recommender/docs/insights/insight-types.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/insightTypes/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter expression to restrict the insights returned.
  /// Supported filter fields: * `stateInfo.state` * `insightSubtype` *
  /// `severity` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state =
  /// DISMISSED` * `insightSubtype = PERMISSIONS_USAGE` * `severity = CRITICAL
  /// OR severity = HIGH` * `stateInfo.state = ACTIVE AND (severity = CRITICAL
  /// OR severity = HIGH)` (These expressions are based on the filter language
  /// described at https://google.aip.dev/160)
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. If not specified, the server
  /// will determine the number of results to return.
  ///
  /// [pageToken] - Optional. If present, retrieves the next batch of results
  /// from the preceding call to this method. `page_token` must be the value of
  /// `next_page_token` from the previous response. The values of other method
  /// parameters must be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1ListInsightsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1ListInsightsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/insights';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1ListInsightsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks the Insight State as Accepted.
  ///
  /// Users can use this method to indicate to the Recommender API that they
  /// have applied some action based on the insight. This stops the insight
  /// content from being updated. MarkInsightAccepted can be applied to insights
  /// in ACTIVE state. Requires the recommender.*.update IAM permission for the
  /// specified insight.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the insight.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/insightTypes/\[^/\]+/insights/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Insight].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Insight> markAccepted(
    GoogleCloudRecommenderV1MarkInsightAcceptedRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':markAccepted';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1Insight.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsRecommendersResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsRecommendersRecommendationsResource
      get recommendations =>
          OrganizationsLocationsRecommendersRecommendationsResource(_requester);

  OrganizationsLocationsRecommendersResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the requested Recommender Config.
  ///
  /// There is only one instance of the config for each Recommender.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the Recommendation Config to get. Acceptable
  /// formats: *
  /// `projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config`
  /// *
  /// `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config`
  /// *
  /// `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config`
  /// *
  /// `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/config$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1RecommenderConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1RecommenderConfig> getConfig(
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
    return GoogleCloudRecommenderV1RecommenderConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Recommender Config.
  ///
  /// This will create a new revision of the config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of recommender config. Eg,
  /// projects/\[PROJECT_NUMBER\]/locations/\[LOCATION\]/recommenders/\[RECOMMENDER_ID\]/config
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/config$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [validateOnly] - If true, validate the request and preview the change, but
  /// do not actually update it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1RecommenderConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1RecommenderConfig> updateConfig(
    GoogleCloudRecommenderV1RecommenderConfig request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1RecommenderConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsRecommendersRecommendationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsRecommendersRecommendationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the requested recommendation.
  ///
  /// Requires the recommender.*.get IAM permission for the specified
  /// recommender.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the recommendation.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/recommendations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Recommendation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Recommendation> get(
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
    return GoogleCloudRecommenderV1Recommendation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists recommendations for the specified Cloud Resource.
  ///
  /// Requires the recommender.*.list IAM permission for the specified
  /// recommender.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The container resource on which to execute the
  /// request. Acceptable formats: *
  /// `projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]`
  /// *
  /// `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]`
  /// *
  /// `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]`
  /// * `folders/[FOLDER_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]`
  /// *
  /// `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]`
  /// LOCATION here refers to GCP Locations:
  /// https://cloud.google.com/about/locations/ RECOMMENDER_ID refers to
  /// supported recommenders:
  /// https://cloud.google.com/recommender/docs/recommenders.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+$`.
  ///
  /// [filter] - Filter expression to restrict the recommendations returned.
  /// Supported filter fields: * `state_info.state` * `recommenderSubtype` *
  /// `priority` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state =
  /// DISMISSED` * `recommenderSubtype = REMOVE_ROLE OR recommenderSubtype =
  /// REPLACE_ROLE` * `priority = P1 OR priority = P2` * `stateInfo.state =
  /// ACTIVE AND (priority = P1 OR priority = P2)` (These expressions are based
  /// on the filter language described at https://google.aip.dev/160)
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. If not specified, the server
  /// will determine the number of results to return.
  ///
  /// [pageToken] - Optional. If present, retrieves the next batch of results
  /// from the preceding call to this method. `page_token` must be the value of
  /// `next_page_token` from the previous response. The values of other method
  /// parameters must be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1ListRecommendationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1ListRecommendationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/recommendations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1ListRecommendationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks the Recommendation State as Claimed.
  ///
  /// Users can use this method to indicate to the Recommender API that they are
  /// starting to apply the recommendation themselves. This stops the
  /// recommendation content from being updated. Associated insights are frozen
  /// and placed in the ACCEPTED state. MarkRecommendationClaimed can be applied
  /// to recommendations in CLAIMED, SUCCEEDED, FAILED, or ACTIVE state.
  /// Requires the recommender.*.update IAM permission for the specified
  /// recommender.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the recommendation.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/recommendations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Recommendation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Recommendation> markClaimed(
    GoogleCloudRecommenderV1MarkRecommendationClaimedRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':markClaimed';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1Recommendation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks the Recommendation State as Failed.
  ///
  /// Users can use this method to indicate to the Recommender API that they
  /// have applied the recommendation themselves, and the operation failed. This
  /// stops the recommendation content from being updated. Associated insights
  /// are frozen and placed in the ACCEPTED state. MarkRecommendationFailed can
  /// be applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED
  /// state. Requires the recommender.*.update IAM permission for the specified
  /// recommender.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the recommendation.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/recommendations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Recommendation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Recommendation> markFailed(
    GoogleCloudRecommenderV1MarkRecommendationFailedRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':markFailed';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1Recommendation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks the Recommendation State as Succeeded.
  ///
  /// Users can use this method to indicate to the Recommender API that they
  /// have applied the recommendation themselves, and the operation was
  /// successful. This stops the recommendation content from being updated.
  /// Associated insights are frozen and placed in the ACCEPTED state.
  /// MarkRecommendationSucceeded can be applied to recommendations in ACTIVE,
  /// CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM
  /// permission for the specified recommender.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the recommendation.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/recommendations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Recommendation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Recommendation> markSucceeded(
    GoogleCloudRecommenderV1MarkRecommendationSucceededRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':markSucceeded';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1Recommendation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

  ProjectsLocationsInsightTypesResource get insightTypes =>
      ProjectsLocationsInsightTypesResource(_requester);
  ProjectsLocationsRecommendersResource get recommenders =>
      ProjectsLocationsRecommendersResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsInsightTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInsightTypesInsightsResource get insights =>
      ProjectsLocationsInsightTypesInsightsResource(_requester);

  ProjectsLocationsInsightTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the requested InsightTypeConfig.
  ///
  /// There is only one instance of the config for each InsightType.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the InsightTypeConfig to get. Acceptable
  /// formats: *
  /// `projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config`
  /// *
  /// `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config`
  /// *
  /// `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config`
  /// *
  /// `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/insightTypes/\[^/\]+/config$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1InsightTypeConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1InsightTypeConfig> getConfig(
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
    return GoogleCloudRecommenderV1InsightTypeConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an InsightTypeConfig change.
  ///
  /// This will create a new revision of the config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of insight type config. Eg,
  /// projects/\[PROJECT_NUMBER\]/locations/\[LOCATION\]/insightTypes/\[INSIGHT_TYPE_ID\]/config
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/insightTypes/\[^/\]+/config$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [validateOnly] - If true, validate the request and preview the change, but
  /// do not actually update it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1InsightTypeConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1InsightTypeConfig> updateConfig(
    GoogleCloudRecommenderV1InsightTypeConfig request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1InsightTypeConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInsightTypesInsightsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInsightTypesInsightsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the requested insight.
  ///
  /// Requires the recommender.*.get IAM permission for the specified insight
  /// type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the insight.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/insightTypes/\[^/\]+/insights/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Insight].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Insight> get(
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
    return GoogleCloudRecommenderV1Insight.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists insights for the specified Cloud Resource.
  ///
  /// Requires the recommender.*.list IAM permission for the specified insight
  /// type.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The container resource on which to execute the
  /// request. Acceptable formats: *
  /// `projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]`
  /// *
  /// `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]`
  /// *
  /// `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]`
  /// *
  /// `folders/[FOLDER_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]`
  /// *
  /// `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]`
  /// LOCATION here refers to GCP Locations:
  /// https://cloud.google.com/about/locations/ INSIGHT_TYPE_ID refers to
  /// supported insight types:
  /// https://cloud.google.com/recommender/docs/insights/insight-types.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/insightTypes/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter expression to restrict the insights returned.
  /// Supported filter fields: * `stateInfo.state` * `insightSubtype` *
  /// `severity` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state =
  /// DISMISSED` * `insightSubtype = PERMISSIONS_USAGE` * `severity = CRITICAL
  /// OR severity = HIGH` * `stateInfo.state = ACTIVE AND (severity = CRITICAL
  /// OR severity = HIGH)` (These expressions are based on the filter language
  /// described at https://google.aip.dev/160)
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. If not specified, the server
  /// will determine the number of results to return.
  ///
  /// [pageToken] - Optional. If present, retrieves the next batch of results
  /// from the preceding call to this method. `page_token` must be the value of
  /// `next_page_token` from the previous response. The values of other method
  /// parameters must be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1ListInsightsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1ListInsightsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/insights';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1ListInsightsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks the Insight State as Accepted.
  ///
  /// Users can use this method to indicate to the Recommender API that they
  /// have applied some action based on the insight. This stops the insight
  /// content from being updated. MarkInsightAccepted can be applied to insights
  /// in ACTIVE state. Requires the recommender.*.update IAM permission for the
  /// specified insight.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the insight.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/insightTypes/\[^/\]+/insights/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Insight].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Insight> markAccepted(
    GoogleCloudRecommenderV1MarkInsightAcceptedRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':markAccepted';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1Insight.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRecommendersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRecommendersRecommendationsResource get recommendations =>
      ProjectsLocationsRecommendersRecommendationsResource(_requester);

  ProjectsLocationsRecommendersResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the requested Recommender Config.
  ///
  /// There is only one instance of the config for each Recommender.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the Recommendation Config to get. Acceptable
  /// formats: *
  /// `projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config`
  /// *
  /// `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config`
  /// *
  /// `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config`
  /// *
  /// `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/config$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1RecommenderConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1RecommenderConfig> getConfig(
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
    return GoogleCloudRecommenderV1RecommenderConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Recommender Config.
  ///
  /// This will create a new revision of the config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of recommender config. Eg,
  /// projects/\[PROJECT_NUMBER\]/locations/\[LOCATION\]/recommenders/\[RECOMMENDER_ID\]/config
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/config$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [validateOnly] - If true, validate the request and preview the change, but
  /// do not actually update it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1RecommenderConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1RecommenderConfig> updateConfig(
    GoogleCloudRecommenderV1RecommenderConfig request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1RecommenderConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRecommendersRecommendationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRecommendersRecommendationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the requested recommendation.
  ///
  /// Requires the recommender.*.get IAM permission for the specified
  /// recommender.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the recommendation.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/recommendations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Recommendation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Recommendation> get(
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
    return GoogleCloudRecommenderV1Recommendation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists recommendations for the specified Cloud Resource.
  ///
  /// Requires the recommender.*.list IAM permission for the specified
  /// recommender.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The container resource on which to execute the
  /// request. Acceptable formats: *
  /// `projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]`
  /// *
  /// `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]`
  /// *
  /// `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]`
  /// * `folders/[FOLDER_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]`
  /// *
  /// `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]`
  /// LOCATION here refers to GCP Locations:
  /// https://cloud.google.com/about/locations/ RECOMMENDER_ID refers to
  /// supported recommenders:
  /// https://cloud.google.com/recommender/docs/recommenders.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+$`.
  ///
  /// [filter] - Filter expression to restrict the recommendations returned.
  /// Supported filter fields: * `state_info.state` * `recommenderSubtype` *
  /// `priority` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state =
  /// DISMISSED` * `recommenderSubtype = REMOVE_ROLE OR recommenderSubtype =
  /// REPLACE_ROLE` * `priority = P1 OR priority = P2` * `stateInfo.state =
  /// ACTIVE AND (priority = P1 OR priority = P2)` (These expressions are based
  /// on the filter language described at https://google.aip.dev/160)
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. If not specified, the server
  /// will determine the number of results to return.
  ///
  /// [pageToken] - Optional. If present, retrieves the next batch of results
  /// from the preceding call to this method. `page_token` must be the value of
  /// `next_page_token` from the previous response. The values of other method
  /// parameters must be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1ListRecommendationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1ListRecommendationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/recommendations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1ListRecommendationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks the Recommendation State as Claimed.
  ///
  /// Users can use this method to indicate to the Recommender API that they are
  /// starting to apply the recommendation themselves. This stops the
  /// recommendation content from being updated. Associated insights are frozen
  /// and placed in the ACCEPTED state. MarkRecommendationClaimed can be applied
  /// to recommendations in CLAIMED, SUCCEEDED, FAILED, or ACTIVE state.
  /// Requires the recommender.*.update IAM permission for the specified
  /// recommender.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the recommendation.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/recommendations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Recommendation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Recommendation> markClaimed(
    GoogleCloudRecommenderV1MarkRecommendationClaimedRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':markClaimed';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1Recommendation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks the Recommendation State as Failed.
  ///
  /// Users can use this method to indicate to the Recommender API that they
  /// have applied the recommendation themselves, and the operation failed. This
  /// stops the recommendation content from being updated. Associated insights
  /// are frozen and placed in the ACCEPTED state. MarkRecommendationFailed can
  /// be applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED
  /// state. Requires the recommender.*.update IAM permission for the specified
  /// recommender.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the recommendation.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/recommendations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Recommendation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Recommendation> markFailed(
    GoogleCloudRecommenderV1MarkRecommendationFailedRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':markFailed';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1Recommendation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks the Recommendation State as Succeeded.
  ///
  /// Users can use this method to indicate to the Recommender API that they
  /// have applied the recommendation themselves, and the operation was
  /// successful. This stops the recommendation content from being updated.
  /// Associated insights are frozen and placed in the ACCEPTED state.
  /// MarkRecommendationSucceeded can be applied to recommendations in ACTIVE,
  /// CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM
  /// permission for the specified recommender.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the recommendation.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/recommenders/\[^/\]+/recommendations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Recommendation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Recommendation> markSucceeded(
    GoogleCloudRecommenderV1MarkRecommendationSucceededRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':markSucceeded';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecommenderV1Recommendation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Contains metadata about how much money a recommendation can save or incur.
class GoogleCloudRecommenderV1CostProjection {
  /// An approximate projection on amount saved or amount incurred.
  ///
  /// Negative cost units indicate cost savings and positive cost units indicate
  /// increase. See google.type.Money documentation for positive/negative units.
  /// A user's permissions may affect whether the cost is computed using list
  /// prices or custom contract prices.
  GoogleTypeMoney? cost;

  /// Duration for which this cost applies.
  core.String? duration;

  GoogleCloudRecommenderV1CostProjection({
    this.cost,
    this.duration,
  });

  GoogleCloudRecommenderV1CostProjection.fromJson(core.Map json_)
      : this(
          cost: json_.containsKey('cost')
              ? GoogleTypeMoney.fromJson(
                  json_['cost'] as core.Map<core.String, core.dynamic>)
              : null,
          duration: json_.containsKey('duration')
              ? json_['duration'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cost != null) 'cost': cost!,
        if (duration != null) 'duration': duration!,
      };
}

/// Contains the impact a recommendation can have for a given category.
class GoogleCloudRecommenderV1Impact {
  /// Category that is being targeted.
  /// Possible string values are:
  /// - "CATEGORY_UNSPECIFIED" : Default unspecified category. Don't use
  /// directly.
  /// - "COST" : Indicates a potential increase or decrease in cost.
  /// - "SECURITY" : Indicates a potential increase or decrease in security.
  /// - "PERFORMANCE" : Indicates a potential increase or decrease in
  /// performance.
  /// - "MANAGEABILITY" : Indicates a potential increase or decrease in
  /// manageability.
  /// - "SUSTAINABILITY" : Indicates a potential increase or decrease in
  /// sustainability.
  /// - "RELIABILITY" : Indicates a potential increase or decrease in
  /// reliability.
  core.String? category;

  /// Use with CategoryType.COST
  GoogleCloudRecommenderV1CostProjection? costProjection;

  /// Use with CategoryType.RELAIBILITY
  GoogleCloudRecommenderV1ReliabilityProjection? reliabilityProjection;

  /// Use with CategoryType.SECURITY
  GoogleCloudRecommenderV1SecurityProjection? securityProjection;

  /// Use with CategoryType.SUSTAINABILITY
  GoogleCloudRecommenderV1SustainabilityProjection? sustainabilityProjection;

  GoogleCloudRecommenderV1Impact({
    this.category,
    this.costProjection,
    this.reliabilityProjection,
    this.securityProjection,
    this.sustainabilityProjection,
  });

  GoogleCloudRecommenderV1Impact.fromJson(core.Map json_)
      : this(
          category: json_.containsKey('category')
              ? json_['category'] as core.String
              : null,
          costProjection: json_.containsKey('costProjection')
              ? GoogleCloudRecommenderV1CostProjection.fromJson(
                  json_['costProjection']
                      as core.Map<core.String, core.dynamic>)
              : null,
          reliabilityProjection: json_.containsKey('reliabilityProjection')
              ? GoogleCloudRecommenderV1ReliabilityProjection.fromJson(
                  json_['reliabilityProjection']
                      as core.Map<core.String, core.dynamic>)
              : null,
          securityProjection: json_.containsKey('securityProjection')
              ? GoogleCloudRecommenderV1SecurityProjection.fromJson(
                  json_['securityProjection']
                      as core.Map<core.String, core.dynamic>)
              : null,
          sustainabilityProjection:
              json_.containsKey('sustainabilityProjection')
                  ? GoogleCloudRecommenderV1SustainabilityProjection.fromJson(
                      json_['sustainabilityProjection']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (category != null) 'category': category!,
        if (costProjection != null) 'costProjection': costProjection!,
        if (reliabilityProjection != null)
          'reliabilityProjection': reliabilityProjection!,
        if (securityProjection != null)
          'securityProjection': securityProjection!,
        if (sustainabilityProjection != null)
          'sustainabilityProjection': sustainabilityProjection!,
      };
}

/// An insight along with the information used to derive the insight.
///
/// The insight may have associated recommendations as well.
class GoogleCloudRecommenderV1Insight {
  /// Recommendations derived from this insight.
  core.List<GoogleCloudRecommenderV1InsightRecommendationReference>?
      associatedRecommendations;

  /// Category being targeted by the insight.
  /// Possible string values are:
  /// - "CATEGORY_UNSPECIFIED" : Unspecified category.
  /// - "COST" : The insight is related to cost.
  /// - "SECURITY" : The insight is related to security.
  /// - "PERFORMANCE" : The insight is related to performance.
  /// - "MANAGEABILITY" : This insight is related to manageability.
  /// - "SUSTAINABILITY" : The insight is related to sustainability.
  /// - "RELIABILITY" : This insight is related to reliability.
  core.String? category;

  /// A struct of custom fields to explain the insight.
  ///
  /// Example: "grantedPermissionsCount": "1000"
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? content;

  /// Free-form human readable summary in English.
  ///
  /// The maximum length is 500 characters.
  core.String? description;

  /// Fingerprint of the Insight.
  ///
  /// Provides optimistic locking when updating states.
  core.String? etag;

  /// Insight subtype.
  ///
  /// Insight content schema will be stable for a given subtype.
  core.String? insightSubtype;

  /// Timestamp of the latest data used to generate the insight.
  core.String? lastRefreshTime;

  /// Name of the insight.
  core.String? name;

  /// Observation period that led to the insight.
  ///
  /// The source data used to generate the insight ends at last_refresh_time and
  /// begins at (last_refresh_time - observation_period).
  core.String? observationPeriod;

  /// Insight's severity.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Insight has unspecified severity.
  /// - "LOW" : Insight has low severity.
  /// - "MEDIUM" : Insight has medium severity.
  /// - "HIGH" : Insight has high severity.
  /// - "CRITICAL" : Insight has critical severity.
  core.String? severity;

  /// Information state and metadata.
  GoogleCloudRecommenderV1InsightStateInfo? stateInfo;

  /// Fully qualified resource names that this insight is targeting.
  core.List<core.String>? targetResources;

  GoogleCloudRecommenderV1Insight({
    this.associatedRecommendations,
    this.category,
    this.content,
    this.description,
    this.etag,
    this.insightSubtype,
    this.lastRefreshTime,
    this.name,
    this.observationPeriod,
    this.severity,
    this.stateInfo,
    this.targetResources,
  });

  GoogleCloudRecommenderV1Insight.fromJson(core.Map json_)
      : this(
          associatedRecommendations:
              json_.containsKey('associatedRecommendations')
                  ? (json_['associatedRecommendations'] as core.List)
                      .map((value) =>
                          GoogleCloudRecommenderV1InsightRecommendationReference
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          category: json_.containsKey('category')
              ? json_['category'] as core.String
              : null,
          content: json_.containsKey('content')
              ? json_['content'] as core.Map<core.String, core.dynamic>
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          insightSubtype: json_.containsKey('insightSubtype')
              ? json_['insightSubtype'] as core.String
              : null,
          lastRefreshTime: json_.containsKey('lastRefreshTime')
              ? json_['lastRefreshTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          observationPeriod: json_.containsKey('observationPeriod')
              ? json_['observationPeriod'] as core.String
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
          stateInfo: json_.containsKey('stateInfo')
              ? GoogleCloudRecommenderV1InsightStateInfo.fromJson(
                  json_['stateInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          targetResources: json_.containsKey('targetResources')
              ? (json_['targetResources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (associatedRecommendations != null)
          'associatedRecommendations': associatedRecommendations!,
        if (category != null) 'category': category!,
        if (content != null) 'content': content!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (insightSubtype != null) 'insightSubtype': insightSubtype!,
        if (lastRefreshTime != null) 'lastRefreshTime': lastRefreshTime!,
        if (name != null) 'name': name!,
        if (observationPeriod != null) 'observationPeriod': observationPeriod!,
        if (severity != null) 'severity': severity!,
        if (stateInfo != null) 'stateInfo': stateInfo!,
        if (targetResources != null) 'targetResources': targetResources!,
      };
}

/// Reference to an associated recommendation.
class GoogleCloudRecommenderV1InsightRecommendationReference {
  /// Recommendation resource name, e.g.
  /// projects/\[PROJECT_NUMBER\]/locations/\[LOCATION\]/recommenders/\[RECOMMENDER_ID\]/recommendations/\[RECOMMENDATION_ID\]
  core.String? recommendation;

  GoogleCloudRecommenderV1InsightRecommendationReference({
    this.recommendation,
  });

  GoogleCloudRecommenderV1InsightRecommendationReference.fromJson(
      core.Map json_)
      : this(
          recommendation: json_.containsKey('recommendation')
              ? json_['recommendation'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (recommendation != null) 'recommendation': recommendation!,
      };
}

/// Information related to insight state.
class GoogleCloudRecommenderV1InsightStateInfo {
  /// Insight state.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "ACTIVE" : Insight is active. Content for ACTIVE insights can be updated
  /// by Google. ACTIVE insights can be marked DISMISSED OR ACCEPTED.
  /// - "ACCEPTED" : Some action has been taken based on this insight. Insights
  /// become accepted when a recommendation derived from the insight has been
  /// marked CLAIMED, SUCCEEDED, or FAILED. ACTIVE insights can also be marked
  /// ACCEPTED explicitly. Content for ACCEPTED insights is immutable. ACCEPTED
  /// insights can only be marked ACCEPTED (which may update state metadata).
  /// - "DISMISSED" : Insight is dismissed. Content for DISMISSED insights can
  /// be updated by Google. DISMISSED insights can be marked as ACTIVE.
  core.String? state;

  /// A map of metadata for the state, provided by user or automations systems.
  core.Map<core.String, core.String>? stateMetadata;

  GoogleCloudRecommenderV1InsightStateInfo({
    this.state,
    this.stateMetadata,
  });

  GoogleCloudRecommenderV1InsightStateInfo.fromJson(core.Map json_)
      : this(
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stateMetadata: json_.containsKey('stateMetadata')
              ? (json_['stateMetadata'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
        if (stateMetadata != null) 'stateMetadata': stateMetadata!,
      };
}

/// Configuration for an InsightType.
class GoogleCloudRecommenderV1InsightTypeConfig {
  /// Allows clients to store small amounts of arbitrary data.
  ///
  /// Annotations must follow the Kubernetes syntax. The total size of all keys
  /// and values combined is limited to 256k. Key can have 2 segments: prefix
  /// (optional) and name (required), separated by a slash (/). Prefix must be a
  /// DNS subdomain. Name must be 63 characters or less, begin and end with
  /// alphanumerics, with dashes (-), underscores (_), dots (.), and
  /// alphanumerics between.
  core.Map<core.String, core.String>? annotations;

  /// A user-settable field to provide a human-readable name to be used in user
  /// interfaces.
  core.String? displayName;

  /// Fingerprint of the InsightTypeConfig.
  ///
  /// Provides optimistic locking when updating.
  core.String? etag;

  /// InsightTypeGenerationConfig which configures the generation of insights
  /// for this insight type.
  GoogleCloudRecommenderV1InsightTypeGenerationConfig?
      insightTypeGenerationConfig;

  /// Name of insight type config.
  ///
  /// Eg,
  /// projects/\[PROJECT_NUMBER\]/locations/\[LOCATION\]/insightTypes/\[INSIGHT_TYPE_ID\]/config
  core.String? name;

  /// The revision ID of the config.
  ///
  /// A new revision is committed whenever the config is changed in any way. The
  /// format is an 8-character hexadecimal string.
  ///
  /// Output only. Immutable.
  core.String? revisionId;

  /// Last time when the config was updated.
  core.String? updateTime;

  GoogleCloudRecommenderV1InsightTypeConfig({
    this.annotations,
    this.displayName,
    this.etag,
    this.insightTypeGenerationConfig,
    this.name,
    this.revisionId,
    this.updateTime,
  });

  GoogleCloudRecommenderV1InsightTypeConfig.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          insightTypeGenerationConfig: json_
                  .containsKey('insightTypeGenerationConfig')
              ? GoogleCloudRecommenderV1InsightTypeGenerationConfig.fromJson(
                  json_['insightTypeGenerationConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          revisionId: json_.containsKey('revisionId')
              ? json_['revisionId'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (displayName != null) 'displayName': displayName!,
        if (etag != null) 'etag': etag!,
        if (insightTypeGenerationConfig != null)
          'insightTypeGenerationConfig': insightTypeGenerationConfig!,
        if (name != null) 'name': name!,
        if (revisionId != null) 'revisionId': revisionId!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A configuration to customize the generation of insights.
///
/// Eg, customizing the lookback period considered when generating a insight.
class GoogleCloudRecommenderV1InsightTypeGenerationConfig {
  /// Parameters for this InsightTypeGenerationConfig.
  ///
  /// These configs can be used by or are applied to all subtypes.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? params;

  GoogleCloudRecommenderV1InsightTypeGenerationConfig({
    this.params,
  });

  GoogleCloudRecommenderV1InsightTypeGenerationConfig.fromJson(core.Map json_)
      : this(
          params: json_.containsKey('params')
              ? json_['params'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (params != null) 'params': params!,
      };
}

/// Response to the `ListInsights` method.
class GoogleCloudRecommenderV1ListInsightsResponse {
  /// The set of insights for the `parent` resource.
  core.List<GoogleCloudRecommenderV1Insight>? insights;

  /// A token that can be used to request the next page of results.
  ///
  /// This field is empty if there are no additional results.
  core.String? nextPageToken;

  GoogleCloudRecommenderV1ListInsightsResponse({
    this.insights,
    this.nextPageToken,
  });

  GoogleCloudRecommenderV1ListInsightsResponse.fromJson(core.Map json_)
      : this(
          insights: json_.containsKey('insights')
              ? (json_['insights'] as core.List)
                  .map((value) => GoogleCloudRecommenderV1Insight.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (insights != null) 'insights': insights!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response to the `ListRecommendations` method.
class GoogleCloudRecommenderV1ListRecommendationsResponse {
  /// A token that can be used to request the next page of results.
  ///
  /// This field is empty if there are no additional results.
  core.String? nextPageToken;

  /// The set of recommendations for the `parent` resource.
  core.List<GoogleCloudRecommenderV1Recommendation>? recommendations;

  GoogleCloudRecommenderV1ListRecommendationsResponse({
    this.nextPageToken,
    this.recommendations,
  });

  GoogleCloudRecommenderV1ListRecommendationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          recommendations: json_.containsKey('recommendations')
              ? (json_['recommendations'] as core.List)
                  .map((value) =>
                      GoogleCloudRecommenderV1Recommendation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (recommendations != null) 'recommendations': recommendations!,
      };
}

/// Request for the `MarkInsightAccepted` method.
class GoogleCloudRecommenderV1MarkInsightAcceptedRequest {
  /// Fingerprint of the Insight.
  ///
  /// Provides optimistic locking.
  ///
  /// Required.
  core.String? etag;

  /// State properties user wish to include with this state.
  ///
  /// Full replace of the current state_metadata.
  ///
  /// Optional.
  core.Map<core.String, core.String>? stateMetadata;

  GoogleCloudRecommenderV1MarkInsightAcceptedRequest({
    this.etag,
    this.stateMetadata,
  });

  GoogleCloudRecommenderV1MarkInsightAcceptedRequest.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          stateMetadata: json_.containsKey('stateMetadata')
              ? (json_['stateMetadata'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (stateMetadata != null) 'stateMetadata': stateMetadata!,
      };
}

/// Request for the `MarkRecommendationClaimed` Method.
typedef GoogleCloudRecommenderV1MarkRecommendationClaimedRequest = $Request03;

/// Request for the `MarkRecommendationFailed` Method.
typedef GoogleCloudRecommenderV1MarkRecommendationFailedRequest = $Request03;

/// Request for the `MarkRecommendationSucceeded` Method.
typedef GoogleCloudRecommenderV1MarkRecommendationSucceededRequest = $Request03;

/// Contains an operation for a resource loosely based on the JSON-PATCH format
/// with support for: * Custom filters for describing partial array patch.
///
/// * Extended path values for describing nested arrays. * Custom fields for
/// describing the resource for which the operation is being described. * Allows
/// extension to custom operations not natively supported by RFC6902. See
/// https://tools.ietf.org/html/rfc6902 for details on the original RFC.
class GoogleCloudRecommenderV1Operation {
  /// Type of this operation.
  ///
  /// Contains one of 'add', 'remove', 'replace', 'move', 'copy', 'test' and
  /// custom operations. This field is case-insensitive and always populated.
  core.String? action;

  /// Path to the target field being operated on.
  ///
  /// If the operation is at the resource level, then path should be "/". This
  /// field is always populated.
  core.String? path;

  /// Set of filters to apply if `path` refers to array elements or nested array
  /// elements in order to narrow down to a single unique element that is being
  /// tested/modified.
  ///
  /// This is intended to be an exact match per filter. To perform advanced
  /// matching, use path_value_matchers. * Example: ``` { "/versions / * /name"
  /// : "it-123" "/versions / * /targetSize/percent": 20 } ``` * Example: ``` {
  /// "/bindings / * /role": "roles/owner" "/bindings / * /condition" : null }
  /// ``` * Example: ``` { "/bindings / * /role": "roles/owner" "/bindings / *
  /// /members / * " : ["x@example.com", "y@example.com"] } ``` When both
  /// path_filters and path_value_matchers are set, an implicit AND must be
  /// performed.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? pathFilters;

  /// Similar to path_filters, this contains set of filters to apply if `path`
  /// field refers to array elements.
  ///
  /// This is meant to support value matching beyond exact match. To perform
  /// exact match, use path_filters. When both path_filters and
  /// path_value_matchers are set, an implicit AND must be performed.
  core.Map<core.String, GoogleCloudRecommenderV1ValueMatcher>?
      pathValueMatchers;

  /// Contains the fully qualified resource name.
  ///
  /// This field is always populated. ex:
  /// //cloudresourcemanager.googleapis.com/projects/foo.
  core.String? resource;

  /// Type of GCP resource being modified/tested.
  ///
  /// This field is always populated. Example:
  /// cloudresourcemanager.googleapis.com/Project,
  /// compute.googleapis.com/Instance
  core.String? resourceType;

  /// Can be set with action 'copy' or 'move' to indicate the source field
  /// within resource or source_resource, ignored if provided for other
  /// operation types.
  core.String? sourcePath;

  /// Can be set with action 'copy' to copy resource configuration across
  /// different resources of the same type.
  ///
  /// Example: A resource clone can be done via action = 'copy', path = "/",
  /// from = "/", source_resource = and resource_name = . This field is empty
  /// for all other values of `action`.
  core.String? sourceResource;

  /// Value for the `path` field.
  ///
  /// Will be set for actions:'add'/'replace'. Maybe set for action: 'test'.
  /// Either this or `value_matcher` will be set for 'test' operation. An exact
  /// match must be performed.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? value;

  /// Can be set for action 'test' for advanced matching for the value of 'path'
  /// field.
  ///
  /// Either this or `value` will be set for 'test' operation.
  GoogleCloudRecommenderV1ValueMatcher? valueMatcher;

  GoogleCloudRecommenderV1Operation({
    this.action,
    this.path,
    this.pathFilters,
    this.pathValueMatchers,
    this.resource,
    this.resourceType,
    this.sourcePath,
    this.sourceResource,
    this.value,
    this.valueMatcher,
  });

  GoogleCloudRecommenderV1Operation.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? json_['action'] as core.String
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          pathFilters: json_.containsKey('pathFilters')
              ? json_['pathFilters'] as core.Map<core.String, core.dynamic>
              : null,
          pathValueMatchers: json_.containsKey('pathValueMatchers')
              ? (json_['pathValueMatchers']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudRecommenderV1ValueMatcher.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          resource: json_.containsKey('resource')
              ? json_['resource'] as core.String
              : null,
          resourceType: json_.containsKey('resourceType')
              ? json_['resourceType'] as core.String
              : null,
          sourcePath: json_.containsKey('sourcePath')
              ? json_['sourcePath'] as core.String
              : null,
          sourceResource: json_.containsKey('sourceResource')
              ? json_['sourceResource'] as core.String
              : null,
          value: json_.containsKey('value') ? json_['value'] : null,
          valueMatcher: json_.containsKey('valueMatcher')
              ? GoogleCloudRecommenderV1ValueMatcher.fromJson(
                  json_['valueMatcher'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (path != null) 'path': path!,
        if (pathFilters != null) 'pathFilters': pathFilters!,
        if (pathValueMatchers != null) 'pathValueMatchers': pathValueMatchers!,
        if (resource != null) 'resource': resource!,
        if (resourceType != null) 'resourceType': resourceType!,
        if (sourcePath != null) 'sourcePath': sourcePath!,
        if (sourceResource != null) 'sourceResource': sourceResource!,
        if (value != null) 'value': value!,
        if (valueMatcher != null) 'valueMatcher': valueMatcher!,
      };
}

/// Group of operations that need to be performed atomically.
class GoogleCloudRecommenderV1OperationGroup {
  /// List of operations across one or more resources that belong to this group.
  ///
  /// Loosely based on RFC6902 and should be performed in the order they appear.
  core.List<GoogleCloudRecommenderV1Operation>? operations;

  GoogleCloudRecommenderV1OperationGroup({
    this.operations,
  });

  GoogleCloudRecommenderV1OperationGroup.fromJson(core.Map json_)
      : this(
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) => GoogleCloudRecommenderV1Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operations != null) 'operations': operations!,
      };
}

/// A recommendation along with a suggested action.
///
/// E.g., a rightsizing recommendation for an underutilized VM, IAM role
/// recommendations, etc
class GoogleCloudRecommenderV1Recommendation {
  /// Optional set of additional impact that this recommendation may have when
  /// trying to optimize for the primary category.
  ///
  /// These may be positive or negative.
  core.List<GoogleCloudRecommenderV1Impact>? additionalImpact;

  /// Insights that led to this recommendation.
  core.List<GoogleCloudRecommenderV1RecommendationInsightReference>?
      associatedInsights;

  /// Content of the recommendation describing recommended changes to resources.
  GoogleCloudRecommenderV1RecommendationContent? content;

  /// Free-form human readable summary in English.
  ///
  /// The maximum length is 500 characters.
  core.String? description;

  /// Fingerprint of the Recommendation.
  ///
  /// Provides optimistic locking when updating states.
  core.String? etag;

  /// Last time this recommendation was refreshed by the system that created it
  /// in the first place.
  core.String? lastRefreshTime;

  /// Name of recommendation.
  core.String? name;

  /// The primary impact that this recommendation can have while trying to
  /// optimize for one category.
  GoogleCloudRecommenderV1Impact? primaryImpact;

  /// Recommendation's priority.
  /// Possible string values are:
  /// - "PRIORITY_UNSPECIFIED" : Recommendation has unspecified priority.
  /// - "P4" : Recommendation has P4 priority (lowest priority).
  /// - "P3" : Recommendation has P3 priority (second lowest priority).
  /// - "P2" : Recommendation has P2 priority (second highest priority).
  /// - "P1" : Recommendation has P1 priority (highest priority).
  core.String? priority;

  /// Contains an identifier for a subtype of recommendations produced for the
  /// same recommender.
  ///
  /// Subtype is a function of content and impact, meaning a new subtype might
  /// be added when significant changes to `content` or
  /// `primary_impact.category` are introduced. See the Recommenders section to
  /// see a list of subtypes for a given Recommender. Examples: For recommender
  /// = "google.iam.policy.Recommender", recommender_subtype can be one of
  /// "REMOVE_ROLE"/"REPLACE_ROLE"
  core.String? recommenderSubtype;

  /// Information for state.
  ///
  /// Contains state and metadata.
  GoogleCloudRecommenderV1RecommendationStateInfo? stateInfo;

  /// Corresponds to a mutually exclusive group ID within a recommender.
  ///
  /// A non-empty ID indicates that the recommendation belongs to a mutually
  /// exclusive group. This means that only one recommendation within the group
  /// is suggested to be applied.
  core.String? xorGroupId;

  GoogleCloudRecommenderV1Recommendation({
    this.additionalImpact,
    this.associatedInsights,
    this.content,
    this.description,
    this.etag,
    this.lastRefreshTime,
    this.name,
    this.primaryImpact,
    this.priority,
    this.recommenderSubtype,
    this.stateInfo,
    this.xorGroupId,
  });

  GoogleCloudRecommenderV1Recommendation.fromJson(core.Map json_)
      : this(
          additionalImpact: json_.containsKey('additionalImpact')
              ? (json_['additionalImpact'] as core.List)
                  .map((value) => GoogleCloudRecommenderV1Impact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          associatedInsights: json_.containsKey('associatedInsights')
              ? (json_['associatedInsights'] as core.List)
                  .map((value) =>
                      GoogleCloudRecommenderV1RecommendationInsightReference
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          content: json_.containsKey('content')
              ? GoogleCloudRecommenderV1RecommendationContent.fromJson(
                  json_['content'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          lastRefreshTime: json_.containsKey('lastRefreshTime')
              ? json_['lastRefreshTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          primaryImpact: json_.containsKey('primaryImpact')
              ? GoogleCloudRecommenderV1Impact.fromJson(
                  json_['primaryImpact'] as core.Map<core.String, core.dynamic>)
              : null,
          priority: json_.containsKey('priority')
              ? json_['priority'] as core.String
              : null,
          recommenderSubtype: json_.containsKey('recommenderSubtype')
              ? json_['recommenderSubtype'] as core.String
              : null,
          stateInfo: json_.containsKey('stateInfo')
              ? GoogleCloudRecommenderV1RecommendationStateInfo.fromJson(
                  json_['stateInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          xorGroupId: json_.containsKey('xorGroupId')
              ? json_['xorGroupId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalImpact != null) 'additionalImpact': additionalImpact!,
        if (associatedInsights != null)
          'associatedInsights': associatedInsights!,
        if (content != null) 'content': content!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (lastRefreshTime != null) 'lastRefreshTime': lastRefreshTime!,
        if (name != null) 'name': name!,
        if (primaryImpact != null) 'primaryImpact': primaryImpact!,
        if (priority != null) 'priority': priority!,
        if (recommenderSubtype != null)
          'recommenderSubtype': recommenderSubtype!,
        if (stateInfo != null) 'stateInfo': stateInfo!,
        if (xorGroupId != null) 'xorGroupId': xorGroupId!,
      };
}

/// Contains what resources are changing and how they are changing.
class GoogleCloudRecommenderV1RecommendationContent {
  /// Operations to one or more Google Cloud resources grouped in such a way
  /// that, all operations within one group are expected to be performed
  /// atomically and in an order.
  core.List<GoogleCloudRecommenderV1OperationGroup>? operationGroups;

  /// Condensed overview information about the recommendation.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? overview;

  GoogleCloudRecommenderV1RecommendationContent({
    this.operationGroups,
    this.overview,
  });

  GoogleCloudRecommenderV1RecommendationContent.fromJson(core.Map json_)
      : this(
          operationGroups: json_.containsKey('operationGroups')
              ? (json_['operationGroups'] as core.List)
                  .map((value) =>
                      GoogleCloudRecommenderV1OperationGroup.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          overview: json_.containsKey('overview')
              ? json_['overview'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operationGroups != null) 'operationGroups': operationGroups!,
        if (overview != null) 'overview': overview!,
      };
}

/// Reference to an associated insight.
class GoogleCloudRecommenderV1RecommendationInsightReference {
  /// Insight resource name, e.g.
  /// projects/\[PROJECT_NUMBER\]/locations/\[LOCATION\]/insightTypes/\[INSIGHT_TYPE_ID\]/insights/\[INSIGHT_ID\]
  core.String? insight;

  GoogleCloudRecommenderV1RecommendationInsightReference({
    this.insight,
  });

  GoogleCloudRecommenderV1RecommendationInsightReference.fromJson(
      core.Map json_)
      : this(
          insight: json_.containsKey('insight')
              ? json_['insight'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (insight != null) 'insight': insight!,
      };
}

/// Information for state.
///
/// Contains state and metadata.
class GoogleCloudRecommenderV1RecommendationStateInfo {
  /// The state of the recommendation, Eg ACTIVE, SUCCEEDED, FAILED.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default state. Don't use directly.
  /// - "ACTIVE" : Recommendation is active and can be applied. Recommendations
  /// content can be updated by Google. ACTIVE recommendations can be marked as
  /// CLAIMED, SUCCEEDED, or FAILED.
  /// - "CLAIMED" : Recommendation is in claimed state. Recommendations content
  /// is immutable and cannot be updated by Google. CLAIMED recommendations can
  /// be marked as CLAIMED, SUCCEEDED, or FAILED.
  /// - "SUCCEEDED" : Recommendation is in succeeded state. Recommendations
  /// content is immutable and cannot be updated by Google. SUCCEEDED
  /// recommendations can be marked as SUCCEEDED, or FAILED.
  /// - "FAILED" : Recommendation is in failed state. Recommendations content is
  /// immutable and cannot be updated by Google. FAILED recommendations can be
  /// marked as SUCCEEDED, or FAILED.
  /// - "DISMISSED" : Recommendation is in dismissed state. Recommendation
  /// content can be updated by Google. DISMISSED recommendations can be marked
  /// as ACTIVE.
  core.String? state;

  /// A map of metadata for the state, provided by user or automations systems.
  core.Map<core.String, core.String>? stateMetadata;

  GoogleCloudRecommenderV1RecommendationStateInfo({
    this.state,
    this.stateMetadata,
  });

  GoogleCloudRecommenderV1RecommendationStateInfo.fromJson(core.Map json_)
      : this(
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stateMetadata: json_.containsKey('stateMetadata')
              ? (json_['stateMetadata'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
        if (stateMetadata != null) 'stateMetadata': stateMetadata!,
      };
}

/// Configuration for a Recommender.
class GoogleCloudRecommenderV1RecommenderConfig {
  /// Allows clients to store small amounts of arbitrary data.
  ///
  /// Annotations must follow the Kubernetes syntax. The total size of all keys
  /// and values combined is limited to 256k. Key can have 2 segments: prefix
  /// (optional) and name (required), separated by a slash (/). Prefix must be a
  /// DNS subdomain. Name must be 63 characters or less, begin and end with
  /// alphanumerics, with dashes (-), underscores (_), dots (.), and
  /// alphanumerics between.
  core.Map<core.String, core.String>? annotations;

  /// A user-settable field to provide a human-readable name to be used in user
  /// interfaces.
  core.String? displayName;

  /// Fingerprint of the RecommenderConfig.
  ///
  /// Provides optimistic locking when updating.
  core.String? etag;

  /// Name of recommender config.
  ///
  /// Eg,
  /// projects/\[PROJECT_NUMBER\]/locations/\[LOCATION\]/recommenders/\[RECOMMENDER_ID\]/config
  core.String? name;

  /// RecommenderGenerationConfig which configures the Generation of
  /// recommendations for this recommender.
  GoogleCloudRecommenderV1RecommenderGenerationConfig?
      recommenderGenerationConfig;

  /// The revision ID of the config.
  ///
  /// A new revision is committed whenever the config is changed in any way. The
  /// format is an 8-character hexadecimal string.
  ///
  /// Output only. Immutable.
  core.String? revisionId;

  /// Last time when the config was updated.
  core.String? updateTime;

  GoogleCloudRecommenderV1RecommenderConfig({
    this.annotations,
    this.displayName,
    this.etag,
    this.name,
    this.recommenderGenerationConfig,
    this.revisionId,
    this.updateTime,
  });

  GoogleCloudRecommenderV1RecommenderConfig.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          recommenderGenerationConfig: json_
                  .containsKey('recommenderGenerationConfig')
              ? GoogleCloudRecommenderV1RecommenderGenerationConfig.fromJson(
                  json_['recommenderGenerationConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          revisionId: json_.containsKey('revisionId')
              ? json_['revisionId'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (displayName != null) 'displayName': displayName!,
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (recommenderGenerationConfig != null)
          'recommenderGenerationConfig': recommenderGenerationConfig!,
        if (revisionId != null) 'revisionId': revisionId!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A Configuration to customize the generation of recommendations.
///
/// Eg, customizing the lookback period considered when generating a
/// recommendation.
class GoogleCloudRecommenderV1RecommenderGenerationConfig {
  /// Parameters for this RecommenderGenerationConfig.
  ///
  /// These configs can be used by or are applied to all subtypes.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? params;

  GoogleCloudRecommenderV1RecommenderGenerationConfig({
    this.params,
  });

  GoogleCloudRecommenderV1RecommenderGenerationConfig.fromJson(core.Map json_)
      : this(
          params: json_.containsKey('params')
              ? json_['params'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (params != null) 'params': params!,
      };
}

/// Contains information on the impact of a reliability recommendation.
class GoogleCloudRecommenderV1ReliabilityProjection {
  /// Per-recommender projection.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? details;

  /// Reliability risks mitigated by this recommendation.
  core.List<core.String>? risks;

  GoogleCloudRecommenderV1ReliabilityProjection({
    this.details,
    this.risks,
  });

  GoogleCloudRecommenderV1ReliabilityProjection.fromJson(core.Map json_)
      : this(
          details: json_.containsKey('details')
              ? json_['details'] as core.Map<core.String, core.dynamic>
              : null,
          risks: json_.containsKey('risks')
              ? (json_['risks'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (risks != null) 'risks': risks!,
      };
}

/// Contains various ways of describing the impact on Security.
class GoogleCloudRecommenderV1SecurityProjection {
  /// Additional security impact details that is provided by the recommender.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? details;

  GoogleCloudRecommenderV1SecurityProjection({
    this.details,
  });

  GoogleCloudRecommenderV1SecurityProjection.fromJson(core.Map json_)
      : this(
          details: json_.containsKey('details')
              ? json_['details'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
      };
}

/// Contains metadata about how much sustainability a recommendation can save or
/// incur.
class GoogleCloudRecommenderV1SustainabilityProjection {
  /// Duration for which this sustainability applies.
  core.String? duration;

  /// Carbon Footprint generated in kg of CO2 equivalent.
  ///
  /// Chose kg_c_o2e so that the name renders correctly in camelCase (kgCO2e).
  core.double? kgCO2e;

  GoogleCloudRecommenderV1SustainabilityProjection({
    this.duration,
    this.kgCO2e,
  });

  GoogleCloudRecommenderV1SustainabilityProjection.fromJson(core.Map json_)
      : this(
          duration: json_.containsKey('duration')
              ? json_['duration'] as core.String
              : null,
          kgCO2e: json_.containsKey('kgCO2e')
              ? (json_['kgCO2e'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (duration != null) 'duration': duration!,
        if (kgCO2e != null) 'kgCO2e': kgCO2e!,
      };
}

/// Contains various matching options for values for a GCP resource field.
class GoogleCloudRecommenderV1ValueMatcher {
  /// To be used for full regex matching.
  ///
  /// The regular expression is using the Google RE2 syntax
  /// (https://github.com/google/re2/wiki/Syntax), so to be used with
  /// RE2::FullMatch
  core.String? matchesPattern;

  GoogleCloudRecommenderV1ValueMatcher({
    this.matchesPattern,
  });

  GoogleCloudRecommenderV1ValueMatcher.fromJson(core.Map json_)
      : this(
          matchesPattern: json_.containsKey('matchesPattern')
              ? json_['matchesPattern'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (matchesPattern != null) 'matchesPattern': matchesPattern!,
      };
}

/// Represents an amount of money with its currency type.
typedef GoogleTypeMoney = $Money;
