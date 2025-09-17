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

/// Vertex AI Search for commerce API - v2alpha
///
/// Vertex AI Search for commerce API is made up of Retail Search, Browse and
/// Recommendations. These discovery AI solutions help you implement
/// personalized search, browse and recommendations, based on machine learning
/// models, across your websites and mobile applications.
///
/// For more information, see <https://cloud.google.com/recommendations>
///
/// Create an instance of [CloudRetailApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsCatalogsResource]
///       - [ProjectsLocationsCatalogsAttributesConfigResource]
///       - [ProjectsLocationsCatalogsBranchesResource]
///         - [ProjectsLocationsCatalogsBranchesOperationsResource]
///         - [ProjectsLocationsCatalogsBranchesPlacesResource]
///           - [ProjectsLocationsCatalogsBranchesPlacesOperationsResource]
///         - [ProjectsLocationsCatalogsBranchesProductsResource]
///       - [ProjectsLocationsCatalogsCompletionDataResource]
///       - [ProjectsLocationsCatalogsControlsResource]
///       - [ProjectsLocationsCatalogsGenerativeQuestionResource]
///       - [ProjectsLocationsCatalogsGenerativeQuestionsResource]
///       - [ProjectsLocationsCatalogsMerchantCenterAccountLinksResource]
///       - [ProjectsLocationsCatalogsModelsResource]
///       - [ProjectsLocationsCatalogsOperationsResource]
///       - [ProjectsLocationsCatalogsPlacementsResource]
///       - [ProjectsLocationsCatalogsServingConfigsResource]
///       - [ProjectsLocationsCatalogsUserEventsResource]
///     - [ProjectsLocationsOperationsResource]
///   - [ProjectsOperationsResource]
///   - [ProjectsRetailProjectResource]
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

/// Vertex AI Search for commerce API is made up of Retail Search, Browse and
/// Recommendations.
///
/// These discovery AI solutions help you implement personalized search, browse
/// and recommendations, based on machine learning models, across your websites
/// and mobile applications.
class CloudRetailApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudRetailApi(
    http.Client client, {
    core.String rootUrl = 'https://retail.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);
  ProjectsOperationsResource get operations =>
      ProjectsOperationsResource(_requester);
  ProjectsRetailProjectResource get retailProject =>
      ProjectsRetailProjectResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// The method enrolls a solution of type Retail Search into a project.
  ///
  /// The Recommendations AI solution type is enrolled by default when your
  /// project enables Retail API, so you don't need to call the enrollSolution
  /// method for recommendations.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. Full resource name of parent. Format:
  /// `projects/{project_number_or_id}`
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> enrollSolution(
    GoogleCloudRetailV2alphaEnrollSolutionRequest request,
    core.String project, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$project') + ':enrollSolution';

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

  /// Get the AlertConfig of the requested project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full AlertConfig resource name. Format:
  /// projects/{project_number}/alertConfig
  /// Value must have pattern `^projects/\[^/\]+/alertConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaAlertConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaAlertConfig> getAlertConfig(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaAlertConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the LoggingConfig of the requested project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full LoggingConfig resource name. Format:
  /// projects/{project_number}/loggingConfig
  /// Value must have pattern `^projects/\[^/\]+/loggingConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaLoggingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaLoggingConfig> getLoggingConfig(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaLoggingConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the project.
  ///
  /// Throws `NOT_FOUND` if the project wasn't initialized for the Retail API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of the project. Format:
  /// `projects/{project_number_or_id}/retailProject`
  /// Value must have pattern `^projects/\[^/\]+/retailProject$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaProject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaProject> getRetailProject(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaProject.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the retail API solutions the project has enrolled.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Full resource name of parent. Format:
  /// `projects/{project_number_or_id}`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaListEnrolledSolutionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaListEnrolledSolutionsResponse>
  listEnrolledSolutions(core.String parent, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$parent') + ':enrolledSolutions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaListEnrolledSolutionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the alert config of the requested project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Immutable. The name of the AlertConfig singleton
  /// resource. Format: projects / * /alertConfig
  /// Value must have pattern `^projects/\[^/\]+/alertConfig$`.
  ///
  /// [updateMask] - Indicates which fields in the provided AlertConfig to
  /// update. If not set, all supported fields are updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaAlertConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaAlertConfig> updateAlertConfig(
    GoogleCloudRetailV2alphaAlertConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaAlertConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the LoggingConfig of the requested project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Immutable. The name of the LoggingConfig singleton
  /// resource. Format: projects / * /loggingConfig
  /// Value must have pattern `^projects/\[^/\]+/loggingConfig$`.
  ///
  /// [updateMask] - Indicates which fields in the provided LoggingConfig to
  /// update. The following are the only supported fields: *
  /// LoggingConfig.default_log_generation_rule *
  /// LoggingConfig.service_log_generation_rules If not set, all supported
  /// fields are updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaLoggingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaLoggingConfig> updateLoggingConfig(
    GoogleCloudRetailV2alphaLoggingConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaLoggingConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsResource get catalogs =>
      ProjectsLocationsCatalogsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsCatalogsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsAttributesConfigResource get attributesConfig =>
      ProjectsLocationsCatalogsAttributesConfigResource(_requester);
  ProjectsLocationsCatalogsBranchesResource get branches =>
      ProjectsLocationsCatalogsBranchesResource(_requester);
  ProjectsLocationsCatalogsCompletionDataResource get completionData =>
      ProjectsLocationsCatalogsCompletionDataResource(_requester);
  ProjectsLocationsCatalogsControlsResource get controls =>
      ProjectsLocationsCatalogsControlsResource(_requester);
  ProjectsLocationsCatalogsGenerativeQuestionResource get generativeQuestion =>
      ProjectsLocationsCatalogsGenerativeQuestionResource(_requester);
  ProjectsLocationsCatalogsGenerativeQuestionsResource
  get generativeQuestions =>
      ProjectsLocationsCatalogsGenerativeQuestionsResource(_requester);
  ProjectsLocationsCatalogsMerchantCenterAccountLinksResource
  get merchantCenterAccountLinks =>
      ProjectsLocationsCatalogsMerchantCenterAccountLinksResource(_requester);
  ProjectsLocationsCatalogsModelsResource get models =>
      ProjectsLocationsCatalogsModelsResource(_requester);
  ProjectsLocationsCatalogsOperationsResource get operations =>
      ProjectsLocationsCatalogsOperationsResource(_requester);
  ProjectsLocationsCatalogsPlacementsResource get placements =>
      ProjectsLocationsCatalogsPlacementsResource(_requester);
  ProjectsLocationsCatalogsServingConfigsResource get servingConfigs =>
      ProjectsLocationsCatalogsServingConfigsResource(_requester);
  ProjectsLocationsCatalogsUserEventsResource get userEvents =>
      ProjectsLocationsCatalogsUserEventsResource(_requester);

  ProjectsLocationsCatalogsResource(commons.ApiRequester client)
    : _requester = client;

  /// Completes the specified prefix with keyword suggestions.
  ///
  /// This feature is only available for users who have Retail Search enabled.
  /// Enable Retail Search on Cloud Console before using this feature.
  ///
  /// Request parameters:
  ///
  /// [catalog] - Required. Catalog for which the completion is performed. Full
  /// resource name of catalog, such as `projects / *
  /// /locations/global/catalogs/default_catalog`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [dataset] - Determines which dataset to use for fetching completion.
  /// "user-data" will use the dataset imported through
  /// CompletionService.ImportCompletionData. `cloud-retail` will use the
  /// dataset generated by Cloud Retail based on user events. If left empty,
  /// completions will be fetched from the `user-data` dataset. Current
  /// supported values: * user-data * cloud-retail: This option requires
  /// enabling auto-learning function first. See
  /// [guidelines](https://cloud.google.com/retail/docs/completion-overview#generated-completion-dataset).
  ///
  /// [deviceType] - The device type context for completion suggestions. We
  /// recommend that you leave this field empty. It can apply different
  /// suggestions on different device types, e.g. `DESKTOP`, `MOBILE`. If it is
  /// empty, the suggestions are across all device types. Supported formats: *
  /// `UNKNOWN_DEVICE_TYPE` * `DESKTOP` * `MOBILE` * A customized string starts
  /// with `OTHER_`, e.g. `OTHER_IPHONE`.
  ///
  /// [enableAttributeSuggestions] - If true, attribute suggestions are enabled
  /// and provided in the response. This field is only available for the
  /// `cloud-retail` dataset.
  ///
  /// [entity] - The entity for customers who run multiple entities, domains,
  /// sites, or regions, for example, `Google US`, `Google Ads`, `Waymo`,
  /// `google.com`, `youtube.com`, etc. If this is set, it must be an exact
  /// match with UserEvent.entity to get per-entity autocomplete results. This
  /// field will be applied to `completion_results` only. It has no effect on
  /// the `attribute_results`. Also, this entity should be limited to 256
  /// characters, if too long, it will be truncated to 256 characters in both
  /// generation and serving time, and may lead to mis-match. To ensure it
  /// works, please set the entity with string within 256 characters.
  ///
  /// [languageCodes] - Note that this field applies for `user-data` dataset
  /// only. For requests with `cloud-retail` dataset, setting this field has no
  /// effect. The language filters applied to the output suggestions. If set, it
  /// should contain the language of the query. If not set, suggestions are
  /// returned without considering language restrictions. This is the BCP-47
  /// language code, such as "en-US" or "sr-Latn". For more information, see
  /// [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47). The
  /// maximum number of language codes is 3.
  ///
  /// [maxSuggestions] - Completion max suggestions. If left unset or set to 0,
  /// then will fallback to the configured value
  /// CompletionConfig.max_suggestions. The maximum allowed max suggestions is
  /// 20. If it is set higher, it will be capped by 20.
  ///
  /// [query] - Required. The query used to generate suggestions. The maximum
  /// number of allowed characters is 255.
  ///
  /// [visitorId] - Recommended field. A unique identifier for tracking
  /// visitors. For example, this could be implemented with an HTTP cookie,
  /// which should be able to uniquely identify a visitor on a single device.
  /// This unique identifier should not change if the visitor logs in or out of
  /// the website. The field must be a UTF-8 encoded string with a length limit
  /// of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaCompleteQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaCompleteQueryResponse> completeQuery(
    core.String catalog, {
    core.String? dataset,
    core.String? deviceType,
    core.bool? enableAttributeSuggestions,
    core.String? entity,
    core.List<core.String>? languageCodes,
    core.int? maxSuggestions,
    core.String? query,
    core.String? visitorId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (dataset != null) 'dataset': [dataset],
      if (deviceType != null) 'deviceType': [deviceType],
      if (enableAttributeSuggestions != null)
        'enableAttributeSuggestions': ['${enableAttributeSuggestions}'],
      if (entity != null) 'entity': [entity],
      if (languageCodes != null) 'languageCodes': languageCodes,
      if (maxSuggestions != null) 'maxSuggestions': ['${maxSuggestions}'],
      if (query != null) 'query': [query],
      if (visitorId != null) 'visitorId': [visitorId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$catalog') + ':completeQuery';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaCompleteQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Exports analytics metrics.
  ///
  /// `Operation.response` is of type `ExportAnalyticsMetricsResponse`.
  /// `Operation.metadata` is of type `ExportMetadata`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [catalog] - Required. Full resource name of the parent catalog. Expected
  /// format: `projects / * /locations / * /catalogs / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> exportAnalyticsMetrics(
    GoogleCloudRetailV2alphaExportAnalyticsMetricsRequest request,
    core.String catalog, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' +
        core.Uri.encodeFull('$catalog') +
        ':exportAnalyticsMetrics';

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

  /// Gets an AttributesConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full AttributesConfig resource name. Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/attributesConfig`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/attributesConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaAttributesConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaAttributesConfig> getAttributesConfig(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaAttributesConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a CompletionConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full CompletionConfig resource name. Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/completionConfig`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/completionConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaCompletionConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaCompletionConfig> getCompletionConfig(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaCompletionConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the conversational search customization config for a given
  /// catalog.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the parent catalog. Format:
  /// projects/{project}/locations/{location}/catalogs/{catalog}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudRetailV2alphaConversationalSearchCustomizationConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaConversationalSearchCustomizationConfig>
  getConversationalSearchCustomizationConfig(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' +
        core.Uri.encodeFull('$name') +
        '/conversationalSearchCustomizationConfig';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaConversationalSearchCustomizationConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get which branch is currently default branch set by
  /// CatalogService.SetDefaultBranch method under a specified parent catalog.
  ///
  /// Request parameters:
  ///
  /// [catalog] - The parent catalog resource name, such as `projects / *
  /// /locations/global/catalogs/default_catalog`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaGetDefaultBranchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaGetDefaultBranchResponse>
  getDefaultBranch(core.String catalog, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$catalog') + ':getDefaultBranch';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaGetDefaultBranchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Manages overal generative question feature state -- enables toggling
  /// feature on and off.
  ///
  /// Request parameters:
  ///
  /// [catalog] - Required. Resource name of the parent catalog. Format:
  /// projects/{project}/locations/{location}/catalogs/{catalog}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig>
  getGenerativeQuestionFeature(
    core.String catalog, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' +
        core.Uri.encodeFull('$catalog') +
        '/generativeQuestionFeature';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the Catalogs associated with the project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account resource name with an associated
  /// location. If the caller does not have permission to list Catalogs under
  /// this location, regardless of whether or not this location exists, a
  /// PERMISSION_DENIED error is returned.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of Catalogs to return. If unspecified,
  /// defaults to 50. The maximum allowed value is 1000. Values above 1000 will
  /// be coerced to 1000. If this field is negative, an INVALID_ARGUMENT is
  /// returned.
  ///
  /// [pageToken] - A page token ListCatalogsResponse.next_page_token, received
  /// from a previous CatalogService.ListCatalogs call. Provide this to retrieve
  /// the subsequent page. When paginating, all other parameters provided to
  /// CatalogService.ListCatalogs must match the call that provided the page
  /// token. Otherwise, an INVALID_ARGUMENT error is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaListCatalogsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaListCatalogsResponse> list(
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

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$parent') + '/catalogs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaListCatalogsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the Catalogs.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Immutable. The fully qualified resource name of the
  /// catalog.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [updateMask] - Indicates which fields in the provided Catalog to update.
  /// If an unsupported or unknown field is provided, an INVALID_ARGUMENT error
  /// is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaCatalog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaCatalog> patch(
    GoogleCloudRetailV2alphaCatalog request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaCatalog.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Set a specified branch id as default branch.
  ///
  /// API methods such as SearchService.Search, ProductService.GetProduct,
  /// ProductService.ListProducts will treat requests using "default_branch" to
  /// the actual branch id set as default. For example, if `projects / *
  /// /locations / * /catalogs / * /branches/1` is set as default, setting
  /// SearchRequest.branch to `projects / * /locations / * /catalogs / *
  /// /branches/default_branch` is equivalent to setting SearchRequest.branch to
  /// `projects / * /locations / * /catalogs / * /branches/1`. Using multiple
  /// branches can be useful when developers would like to have a staging branch
  /// to test and verify for future usage. When it becomes ready, developers
  /// switch on the staging branch using this API while keeping using `projects
  /// / * /locations / * /catalogs / * /branches/default_branch` as
  /// SearchRequest.branch to route the traffic to this staging branch. CAUTION:
  /// If you have live predict/search traffic, switching the default branch
  /// could potentially cause outages if the ID space of the new branch is very
  /// different from the old one. More specifically: * PredictionService will
  /// only return product IDs from branch {newBranch}. * SearchService will only
  /// return product IDs from branch {newBranch} (if branch is not explicitly
  /// set). * UserEventService will only join events with products from branch
  /// {newBranch}.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [catalog] - Full resource name of the catalog, such as `projects / *
  /// /locations/global/catalogs/default_catalog`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> setDefaultBranch(
    GoogleCloudRetailV2alphaSetDefaultBranchRequest request,
    core.String catalog, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$catalog') + ':setDefaultBranch';

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

  /// Updates the AttributesConfig.
  ///
  /// The catalog attributes in the request will be updated in the catalog, or
  /// inserted if they do not exist. Existing catalog attributes not included in
  /// the request will remain unchanged. Attributes that are assigned to
  /// products, but do not exist at the catalog level, are always included in
  /// the response. The product attribute is assigned default values for missing
  /// catalog attribute fields, e.g., searchable and dynamic facetable options.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Immutable. The fully qualified resource name of the
  /// attribute config. Format: `projects / * /locations / * /catalogs / *
  /// /attributesConfig`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/attributesConfig$`.
  ///
  /// [updateMask] - Indicates which fields in the provided AttributesConfig to
  /// update. The following is the only supported field: *
  /// AttributesConfig.catalog_attributes If not set, all supported fields are
  /// updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaAttributesConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaAttributesConfig> updateAttributesConfig(
    GoogleCloudRetailV2alphaAttributesConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaAttributesConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the CompletionConfigs.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Immutable. Fully qualified name `projects / *
  /// /locations / * /catalogs / * /completionConfig`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/completionConfig$`.
  ///
  /// [updateMask] - Indicates which fields in the provided CompletionConfig to
  /// update. The following are the only supported fields: *
  /// CompletionConfig.matching_order * CompletionConfig.max_suggestions *
  /// CompletionConfig.min_prefix_length * CompletionConfig.auto_learning If not
  /// set, all supported fields are updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaCompletionConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaCompletionConfig> updateCompletionConfig(
    GoogleCloudRetailV2alphaCompletionConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaCompletionConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the conversational search customization config for a given
  /// catalog.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [catalog] - Required. Resource name of the catalog. Format:
  /// projects/{project}/locations/{location}/catalogs/{catalog}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Indicates which fields in the provided
  /// ConversationalSearchCustomizationConfig to update. If not set or empty,
  /// all supported fields are updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudRetailV2alphaConversationalSearchCustomizationConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaConversationalSearchCustomizationConfig>
  updateConversationalSearchCustomizationConfig(
    GoogleCloudRetailV2alphaConversationalSearchCustomizationConfig request,
    core.String catalog, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' +
        core.Uri.encodeFull('$catalog') +
        '/conversationalSearchCustomizationConfig';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaConversationalSearchCustomizationConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Allows management of individual questions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [catalog] - Required. Resource name of the catalog. Format:
  /// projects/{project}/locations/{location}/catalogs/{catalog}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Indicates which fields in the provided
  /// GenerativeQuestionConfig to update. The following are NOT supported: *
  /// GenerativeQuestionConfig.frequency If not set or empty, all supported
  /// fields are updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaGenerativeQuestionConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaGenerativeQuestionConfig>
  updateGenerativeQuestion(
    GoogleCloudRetailV2alphaGenerativeQuestionConfig request,
    core.String catalog, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$catalog') + '/generativeQuestion';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaGenerativeQuestionConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Manages overal generative question feature state -- enables toggling
  /// feature on and off.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [catalog] - Required. Resource name of the affected catalog. Format:
  /// projects/{project}/locations/{location}/catalogs/{catalog}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Indicates which fields in the provided
  /// GenerativeQuestionsFeatureConfig to update. If not set or empty, all
  /// supported fields are updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig>
  updateGenerativeQuestionFeature(
    GoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig request,
    core.String catalog, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' +
        core.Uri.encodeFull('$catalog') +
        '/generativeQuestionFeature';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCatalogsAttributesConfigResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsAttributesConfigResource(commons.ApiRequester client)
    : _requester = client;

  /// Adds the specified CatalogAttribute to the AttributesConfig.
  ///
  /// If the CatalogAttribute to add already exists, an ALREADY_EXISTS error is
  /// returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [attributesConfig] - Required. Full AttributesConfig resource name.
  /// Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/attributesConfig`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/attributesConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaAttributesConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaAttributesConfig> addCatalogAttribute(
    GoogleCloudRetailV2alphaAddCatalogAttributeRequest request,
    core.String attributesConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' +
        core.Uri.encodeFull('$attributesConfig') +
        ':addCatalogAttribute';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaAttributesConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Removes all specified CatalogAttributes from the AttributesConfig.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [attributesConfig] - Required. The attributes config resource shared by
  /// all catalog attributes being deleted. Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/attributesConfig`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/attributesConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse>
  batchRemoveCatalogAttributes(
    GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest request,
    core.String attributesConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' +
        core.Uri.encodeFull('$attributesConfig') +
        ':batchRemoveCatalogAttributes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Removes the specified CatalogAttribute from the AttributesConfig.
  ///
  /// If the CatalogAttribute to remove does not exist, a NOT_FOUND error is
  /// returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [attributesConfig] - Required. Full AttributesConfig resource name.
  /// Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/attributesConfig`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/attributesConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaAttributesConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaAttributesConfig> removeCatalogAttribute(
    GoogleCloudRetailV2alphaRemoveCatalogAttributeRequest request,
    core.String attributesConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' +
        core.Uri.encodeFull('$attributesConfig') +
        ':removeCatalogAttribute';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaAttributesConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Replaces the specified CatalogAttribute in the AttributesConfig by
  /// updating the catalog attribute with the same CatalogAttribute.key.
  ///
  /// If the CatalogAttribute to replace does not exist, a NOT_FOUND error is
  /// returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [attributesConfig] - Required. Full AttributesConfig resource name.
  /// Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/attributesConfig`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/attributesConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaAttributesConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaAttributesConfig>
  replaceCatalogAttribute(
    GoogleCloudRetailV2alphaReplaceCatalogAttributeRequest request,
    core.String attributesConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' +
        core.Uri.encodeFull('$attributesConfig') +
        ':replaceCatalogAttribute';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaAttributesConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCatalogsBranchesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsBranchesOperationsResource get operations =>
      ProjectsLocationsCatalogsBranchesOperationsResource(_requester);
  ProjectsLocationsCatalogsBranchesPlacesResource get places =>
      ProjectsLocationsCatalogsBranchesPlacesResource(_requester);
  ProjectsLocationsCatalogsBranchesProductsResource get products =>
      ProjectsLocationsCatalogsBranchesProductsResource(_requester);

  ProjectsLocationsCatalogsBranchesResource(commons.ApiRequester client)
    : _requester = client;

  /// Retrieves a Branch.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the branch to retrieve. Format: `projects /
  /// * /locations/global/catalogs/default_catalog/branches/some_branch_id`.
  /// "default_branch" can be used as a special branch_id, it returns the
  /// default branch that has been set for the catalog.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+$`.
  ///
  /// [view] - The view to apply to the returned Branch. Defaults to
  /// \[Branch.BranchView.BASIC\] if unspecified. See documentation of fields of
  /// Branch to find what fields are excluded from BASIC view.
  /// Possible string values are:
  /// - "BRANCH_VIEW_UNSPECIFIED" : The value when it's unspecified. This
  /// defaults to the BASIC view.
  /// - "BRANCH_VIEW_BASIC" : Includes basic metadata about the branch, but not
  /// statistical fields. See documentation of fields of Branch to find what
  /// fields are excluded from BASIC view.
  /// - "BRANCH_VIEW_FULL" : Includes all fields of a Branch.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaBranch].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaBranch> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaBranch.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all instances of Branch under the specified parent Catalog.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent catalog resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [view] - The view to apply to the returned Branch. Defaults to
  /// \[Branch.BranchView.BASIC\] if unspecified. See documentation of fields of
  /// Branch to find what fields are excluded from BASIC view.
  /// Possible string values are:
  /// - "BRANCH_VIEW_UNSPECIFIED" : The value when it's unspecified. This
  /// defaults to the BASIC view.
  /// - "BRANCH_VIEW_BASIC" : Includes basic metadata about the branch, but not
  /// statistical fields. See documentation of fields of Branch to find what
  /// fields are excluded from BASIC view.
  /// - "BRANCH_VIEW_FULL" : Includes all fields of a Branch.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaListBranchesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaListBranchesResponse> list(
    core.String parent, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$parent') + '/branches';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaListBranchesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCatalogsBranchesOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsBranchesOperationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+/operations/\[^/\]+$`.
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

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCatalogsBranchesPlacesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsBranchesPlacesOperationsResource get operations =>
      ProjectsLocationsCatalogsBranchesPlacesOperationsResource(_requester);

  ProjectsLocationsCatalogsBranchesPlacesResource(commons.ApiRequester client)
    : _requester = client;
}

class ProjectsLocationsCatalogsBranchesPlacesOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsBranchesPlacesOperationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+/places/\[^/\]+/operations/\[^/\]+$`.
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

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCatalogsBranchesProductsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsBranchesProductsResource(commons.ApiRequester client)
    : _requester = client;

  /// We recommend that you use the ProductService.AddLocalInventories method
  /// instead of the ProductService.AddFulfillmentPlaces method.
  ///
  /// ProductService.AddLocalInventories achieves the same results but provides
  /// more fine-grained control over ingesting local inventory data.
  /// Incrementally adds place IDs to Product.fulfillment_info.place_ids. This
  /// process is asynchronous and does not require the Product to exist before
  /// updating fulfillment information. If the request is valid, the update will
  /// be enqueued and processed downstream. As a consequence, when a response is
  /// returned, the added place IDs are not immediately manifested in the
  /// Product queried by ProductService.GetProduct or
  /// ProductService.ListProducts. The returned Operations will be obsolete
  /// after 1 day, and GetOperation API will return NOT_FOUND afterwards. If
  /// conflicting updates are issued, the Operations associated with the stale
  /// updates will not be marked as done until being obsolete.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [product] - Required. Full resource name of Product, such as `projects / *
  /// /locations/global/catalogs/default_catalog/branches/default_branch/products/some_product_id`.
  /// If the caller does not have permission to access the Product, regardless
  /// of whether or not it exists, a PERMISSION_DENIED error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+/products/.*$`.
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
  async.Future<GoogleLongrunningOperation> addFulfillmentPlaces(
    GoogleCloudRetailV2alphaAddFulfillmentPlacesRequest request,
    core.String product, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$product') + ':addFulfillmentPlaces';

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

  /// Updates local inventory information for a Product at a list of places,
  /// while respecting the last update timestamps of each inventory field.
  ///
  /// This process is asynchronous and does not require the Product to exist
  /// before updating inventory information. If the request is valid, the update
  /// will be enqueued and processed downstream. As a consequence, when a
  /// response is returned, updates are not immediately manifested in the
  /// Product queried by ProductService.GetProduct or
  /// ProductService.ListProducts. Local inventory information can only be
  /// modified using this method. ProductService.CreateProduct and
  /// ProductService.UpdateProduct has no effect on local inventories. The
  /// returned Operations will be obsolete after 1 day, and GetOperation API
  /// will return NOT_FOUND afterwards. If conflicting updates are issued, the
  /// Operations associated with the stale updates will not be marked as done
  /// until being obsolete.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [product] - Required. Full resource name of Product, such as `projects / *
  /// /locations/global/catalogs/default_catalog/branches/default_branch/products/some_product_id`.
  /// If the caller does not have permission to access the Product, regardless
  /// of whether or not it exists, a PERMISSION_DENIED error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+/products/.*$`.
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
  async.Future<GoogleLongrunningOperation> addLocalInventories(
    GoogleCloudRetailV2alphaAddLocalInventoriesRequest request,
    core.String product, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$product') + ':addLocalInventories';

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

  /// Creates a Product.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent catalog resource name, such as `projects /
  /// * /locations/global/catalogs/default_catalog/branches/default_branch`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+$`.
  ///
  /// [productId] - Required. The ID to use for the Product, which will become
  /// the final component of the Product.name. If the caller does not have
  /// permission to create the Product, regardless of whether or not it exists,
  /// a PERMISSION_DENIED error is returned. This field must be unique among all
  /// Products with the same parent. Otherwise, an ALREADY_EXISTS error is
  /// returned. This field must be a UTF-8 encoded string with a length limit of
  /// 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaProduct].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaProduct> create(
    GoogleCloudRetailV2alphaProduct request,
    core.String parent, {
    core.String? productId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (productId != null) 'productId': [productId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$parent') + '/products';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaProduct.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a Product.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of Product, such as `projects / *
  /// /locations/global/catalogs/default_catalog/branches/default_branch/products/some_product_id`.
  /// If the caller does not have permission to delete the Product, regardless
  /// of whether or not it exists, a PERMISSION_DENIED error is returned. If the
  /// Product to delete does not exist, a NOT_FOUND error is returned. The
  /// Product to delete can neither be a Product.Type.COLLECTION Product member
  /// nor a Product.Type.PRIMARY Product with more than one variants. Otherwise,
  /// an INVALID_ARGUMENT error is returned. All inventory information for the
  /// named Product will be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+/products/.*$`.
  ///
  /// [force] - This value only applies to the case when the target product is
  /// of type PRIMARY. When deleting a product of VARIANT/COLLECTION type, this
  /// value will be ignored. When set to true, the subsequent variant products
  /// will be deleted. When set to false, if the primary product has active
  /// variant products, an error will be returned.
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
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Exports multiple Products.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of a Branch, and `default_branch` for
  /// branch_id component is supported. For example
  /// `projects/1234/locations/global/catalogs/default_catalog/branches/default_branch`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> export(
    GoogleCloudRetailV2alphaExportProductsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$parent') + '/products:export';

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

  /// Gets a Product.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of Product, such as `projects / *
  /// /locations/global/catalogs/default_catalog/branches/default_branch/products/some_product_id`.
  /// If the caller does not have permission to access the Product, regardless
  /// of whether or not it exists, a PERMISSION_DENIED error is returned. If the
  /// requested Product does not exist, a NOT_FOUND error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+/products/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaProduct].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaProduct> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaProduct.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Bulk import of multiple Products.
  ///
  /// Request processing may be synchronous. Non-existing items are created.
  /// Note that it is possible for a subset of the Products to be successfully
  /// updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  /// `projects/1234/locations/global/catalogs/default_catalog/branches/default_branch`
  /// If no updateMask is specified, requires products.create permission. If
  /// updateMask is specified, requires products.update permission.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> import(
    GoogleCloudRetailV2alphaImportProductsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$parent') + '/products:import';

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

  /// Gets a list of Products.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent branch resource name, such as `projects /
  /// * /locations/global/catalogs/default_catalog/branches/0`. Use
  /// `default_branch` as the branch ID, to list products under the default
  /// branch. If the caller does not have permission to list Products under this
  /// branch, regardless of whether or not this branch exists, a
  /// PERMISSION_DENIED error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+$`.
  ///
  /// [filter] - A filter to apply on the list results. Supported features: *
  /// List all the products under the parent branch if filter is unset. * List
  /// Product.Type.VARIANT Products sharing the same Product.Type.PRIMARY
  /// Product. For example: `primary_product_id = "some_product_id"` * List
  /// Products bundled in a Product.Type.COLLECTION Product. For example:
  /// `collection_product_id = "some_product_id"` * List Products with a
  /// partibular type. For example: `type = "PRIMARY"` `type = "VARIANT"` `type
  /// = "COLLECTION"` If the field is unrecognizable, an INVALID_ARGUMENT error
  /// is returned. If the specified Product.Type.PRIMARY Product or
  /// Product.Type.COLLECTION Product does not exist, a NOT_FOUND error is
  /// returned.
  ///
  /// [pageSize] - Maximum number of Products to return. If unspecified,
  /// defaults to 100. The maximum allowed value is 1000. Values above 1000 will
  /// be coerced to 1000. If this field is negative, an INVALID_ARGUMENT error
  /// is returned.
  ///
  /// [pageToken] - A page token ListProductsResponse.next_page_token, received
  /// from a previous ProductService.ListProducts call. Provide this to retrieve
  /// the subsequent page. When paginating, all other parameters provided to
  /// ProductService.ListProducts must match the call that provided the page
  /// token. Otherwise, an INVALID_ARGUMENT error is returned.
  ///
  /// [readMask] - The fields of Product to return in the responses. If not set
  /// or empty, the following fields are returned: * Product.name * Product.id *
  /// Product.title * Product.uri * Product.images * Product.price_info *
  /// Product.brands If "*" is provided, all fields are returned. Product.name
  /// is always returned no matter what mask is set. If an unsupported or
  /// unknown field is provided, an INVALID_ARGUMENT error is returned.
  ///
  /// [requireTotalSize] - If true and page_token is empty,
  /// ListProductsResponse.total_size is set to the total count of matched items
  /// irrespective of pagination. Notice that setting this field to true affects
  /// the performance.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaListProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaListProductsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.bool? requireTotalSize,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if (requireTotalSize != null) 'requireTotalSize': ['${requireTotalSize}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$parent') + '/products';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaListProductsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Product.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Full resource name of the product, such as `projects /
  /// *
  /// /locations/global/catalogs/default_catalog/branches/default_branch/products/product_id`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+/products/.*$`.
  ///
  /// [allowMissing] - If set to true, and the Product is not found, a new
  /// Product will be created. In this situation, `update_mask` is ignored.
  ///
  /// [updateMask] - Indicates which fields in the provided Product to update.
  /// The immutable and output only fields are NOT supported. If not set, all
  /// supported fields (the fields that are neither immutable nor output only)
  /// are updated. If an unsupported or unknown field is provided, an
  /// INVALID_ARGUMENT error is returned. The attribute key can be updated by
  /// setting the mask path as "attributes.${key_name}". If a key name is
  /// present in the mask but not in the patching product from the request, this
  /// key will be deleted after the update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaProduct].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaProduct> patch(
    GoogleCloudRetailV2alphaProduct request,
    core.String name, {
    core.bool? allowMissing,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaProduct.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Permanently deletes all selected Products under a branch.
  ///
  /// This process is asynchronous. If the request is valid, the removal will be
  /// enqueued and processed offline. Depending on the number of Products, this
  /// operation could take hours to complete. Before the operation completes,
  /// some Products may still be returned by ProductService.GetProduct or
  /// ProductService.ListProducts. Depending on the number of Products, this
  /// operation could take hours to complete. To get a sample of Products that
  /// would be deleted, set PurgeProductsRequest.force to false.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the branch under which the
  /// products are created. The format is
  /// `projects/${projectId}/locations/global/catalogs/${catalogId}/branches/${branchId}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> purge(
    GoogleCloudRetailV2alphaPurgeProductsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$parent') + '/products:purge';

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

  /// We recommend that you use the ProductService.RemoveLocalInventories method
  /// instead of the ProductService.RemoveFulfillmentPlaces method.
  ///
  /// ProductService.RemoveLocalInventories achieves the same results but
  /// provides more fine-grained control over ingesting local inventory data.
  /// Incrementally removes place IDs from a Product.fulfillment_info.place_ids.
  /// This process is asynchronous and does not require the Product to exist
  /// before updating fulfillment information. If the request is valid, the
  /// update will be enqueued and processed downstream. As a consequence, when a
  /// response is returned, the removed place IDs are not immediately manifested
  /// in the Product queried by ProductService.GetProduct or
  /// ProductService.ListProducts. The returned Operations will be obsolete
  /// after 1 day, and GetOperation API will return NOT_FOUND afterwards. If
  /// conflicting updates are issued, the Operations associated with the stale
  /// updates will not be marked as done until being obsolete.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [product] - Required. Full resource name of Product, such as `projects / *
  /// /locations/global/catalogs/default_catalog/branches/default_branch/products/some_product_id`.
  /// If the caller does not have permission to access the Product, regardless
  /// of whether or not it exists, a PERMISSION_DENIED error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+/products/.*$`.
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
  async.Future<GoogleLongrunningOperation> removeFulfillmentPlaces(
    GoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest request,
    core.String product, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' +
        core.Uri.encodeFull('$product') +
        ':removeFulfillmentPlaces';

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

  /// Remove local inventory information for a Product at a list of places at a
  /// removal timestamp.
  ///
  /// This process is asynchronous. If the request is valid, the removal will be
  /// enqueued and processed downstream. As a consequence, when a response is
  /// returned, removals are not immediately manifested in the Product queried
  /// by ProductService.GetProduct or ProductService.ListProducts. Local
  /// inventory information can only be removed using this method.
  /// ProductService.CreateProduct and ProductService.UpdateProduct has no
  /// effect on local inventories. The returned Operations will be obsolete
  /// after 1 day, and GetOperation API will return NOT_FOUND afterwards. If
  /// conflicting updates are issued, the Operations associated with the stale
  /// updates will not be marked as done until being obsolete.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [product] - Required. Full resource name of Product, such as `projects / *
  /// /locations/global/catalogs/default_catalog/branches/default_branch/products/some_product_id`.
  /// If the caller does not have permission to access the Product, regardless
  /// of whether or not it exists, a PERMISSION_DENIED error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+/products/.*$`.
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
  async.Future<GoogleLongrunningOperation> removeLocalInventories(
    GoogleCloudRetailV2alphaRemoveLocalInventoriesRequest request,
    core.String product, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' +
        core.Uri.encodeFull('$product') +
        ':removeLocalInventories';

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

  /// Updates inventory information for a Product while respecting the last
  /// update timestamps of each inventory field.
  ///
  /// This process is asynchronous and does not require the Product to exist
  /// before updating fulfillment information. If the request is valid, the
  /// update is enqueued and processed downstream. As a consequence, when a
  /// response is returned, updates are not immediately manifested in the
  /// Product queried by ProductService.GetProduct or
  /// ProductService.ListProducts. When inventory is updated with
  /// ProductService.CreateProduct and ProductService.UpdateProduct, the
  /// specified inventory field value(s) overwrite any existing value(s) while
  /// ignoring the last update time for this field. Furthermore, the last update
  /// times for the specified inventory fields are overwritten by the times of
  /// the ProductService.CreateProduct or ProductService.UpdateProduct request.
  /// If no inventory fields are set in CreateProductRequest.product, then any
  /// pre-existing inventory information for this product is used. If no
  /// inventory fields are set in SetInventoryRequest.set_mask, then any
  /// existing inventory information is preserved. Pre-existing inventory
  /// information can only be updated with ProductService.SetInventory,
  /// ProductService.AddFulfillmentPlaces, and
  /// ProductService.RemoveFulfillmentPlaces. The returned Operations is
  /// obsolete after one day, and the GetOperation API returns `NOT_FOUND`
  /// afterwards. If conflicting updates are issued, the Operations associated
  /// with the stale updates are not marked as done until they are obsolete.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Full resource name of the product, such as `projects /
  /// *
  /// /locations/global/catalogs/default_catalog/branches/default_branch/products/product_id`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+/products/.*$`.
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
  async.Future<GoogleLongrunningOperation> setInventory(
    GoogleCloudRetailV2alphaSetInventoryRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name') + ':setInventory';

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
}

class ProjectsLocationsCatalogsCompletionDataResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsCompletionDataResource(commons.ApiRequester client)
    : _requester = client;

  /// Bulk import of processed completion dataset.
  ///
  /// Request processing is asynchronous. Partial updating is not supported. The
  /// operation is successfully finished only after the imported suggestions are
  /// indexed successfully and ready for serving. The process takes hours. This
  /// feature is only available for users who have Retail Search enabled. Enable
  /// Retail Search on Cloud Console before using this feature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The catalog which the suggestions dataset belongs to.
  /// Format: `projects/1234/locations/global/catalogs/default_catalog`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> import(
    GoogleCloudRetailV2alphaImportCompletionDataRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$parent') + '/completionData:import';

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
}

class ProjectsLocationsCatalogsControlsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsControlsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a Control.
  ///
  /// If the Control to create already exists, an ALREADY_EXISTS error is
  /// returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Full resource name of parent catalog. Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [controlId] - Required. The ID to use for the Control, which will become
  /// the final component of the Control's resource name. This value should be
  /// 4-63 characters, and valid characters are /a-z-_/.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaControl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaControl> create(
    GoogleCloudRetailV2alphaControl request,
    core.String parent, {
    core.String? controlId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (controlId != null) 'controlId': [controlId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$parent') + '/controls';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaControl.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a Control.
  ///
  /// If the Control to delete does not exist, a NOT_FOUND error is returned.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Control to delete. Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/controls/{control_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/controls/\[^/\]+$`.
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

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a Control.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Control to get. Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/controls/{control_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/controls/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaControl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaControl> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaControl.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all Controls by their parent Catalog.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The catalog resource name. Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter to apply on the list results. Supported
  /// features: * List all the products under the parent branch if filter is
  /// unset. * List controls that are used in a single ServingConfig:
  /// 'serving_config = "boosted_home_page_cvr"'
  ///
  /// [pageSize] - Optional. Maximum number of results to return. If
  /// unspecified, defaults to 50. Max allowed value is 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListControls` call. Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaListControlsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaListControlsResponse> list(
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

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$parent') + '/controls';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaListControlsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Control.
  ///
  /// Control cannot be set to a different oneof field, if so an
  /// INVALID_ARGUMENT is returned. If the Control to update does not exist, a
  /// NOT_FOUND error is returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Fully qualified name `projects / *
  /// /locations/global/catalogs / * /controls / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/controls/\[^/\]+$`.
  ///
  /// [updateMask] - Indicates which fields in the provided Control to update.
  /// The following are NOT supported: * Control.name If not set or empty, all
  /// supported fields are updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaControl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaControl> patch(
    GoogleCloudRetailV2alphaControl request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaControl.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCatalogsGenerativeQuestionResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsGenerativeQuestionResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Allows management of multiple questions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Optional. Resource name of the parent catalog. Format:
  /// projects/{project}/locations/{location}/catalogs/{catalog}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse
  >
  batchUpdate(
    GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' +
        core.Uri.encodeFull('$parent') +
        '/generativeQuestion:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCatalogsGenerativeQuestionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsGenerativeQuestionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Returns all questions for a given catalog.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the parent catalog. Format:
  /// projects/{project}/locations/{location}/catalogs/{catalog}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse>
  list(core.String parent, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$parent') + '/generativeQuestions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCatalogsMerchantCenterAccountLinksResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsMerchantCenterAccountLinksResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a MerchantCenterAccountLink.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The branch resource where this
  /// MerchantCenterAccountLink will be created. Format:
  /// `projects/{PROJECT_NUMBER}/locations/global/catalogs/{CATALOG_ID}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
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
    GoogleCloudRetailV2alphaMerchantCenterAccountLink request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' +
        core.Uri.encodeFull('$parent') +
        '/merchantCenterAccountLinks';

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

  /// Deletes a MerchantCenterAccountLink.
  ///
  /// If the MerchantCenterAccountLink to delete does not exist, a NOT_FOUND
  /// error is returned.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name. Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/merchantCenterAccountLinks/{merchant_center_account_link_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/merchantCenterAccountLinks/\[^/\]+$`.
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

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all MerchantCenterAccountLinks under the specified parent Catalog.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent Catalog of the resource. It must match
  /// this format:
  /// `projects/{PROJECT_NUMBER}/locations/global/catalogs/{CATALOG_ID}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse>
  list(core.String parent, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' +
        core.Uri.encodeFull('$parent') +
        '/merchantCenterAccountLinks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCatalogsModelsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsModelsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new model.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource under which to create the model.
  /// Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [dryRun] - Optional. Whether to run a dry run to validate the request
  /// (without actually creating the model).
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
    GoogleCloudRetailV2alphaModel request,
    core.String parent, {
    core.bool? dryRun,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (dryRun != null) 'dryRun': ['${dryRun}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$parent') + '/models';

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

  /// Deletes an existing model.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Model to delete. Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/models/{model_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/models/\[^/\]+$`.
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

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a model.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Model to get. Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog}/models/{model_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/models/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaModel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaModel> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaModel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the models linked to this event store.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent for which to list models. Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of results to return. If
  /// unspecified, defaults to 50. Max allowed value is 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListModels` call. Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaListModelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaListModelsResponse> list(
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

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$parent') + '/models';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaListModelsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update of model metadata.
  ///
  /// Only fields that currently can be updated are: `filtering_option` and
  /// `periodic_tuning_state`. If other values are provided, this API method
  /// ignores them.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified resource name of the model. Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/models/{model_id}`
  /// catalog_id has char limit of 50. recommendation_model_id has char limit of
  /// 40.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/models/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Indicates which fields in the provided 'model' to
  /// update. If not set, by default updates all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaModel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaModel> patch(
    GoogleCloudRetailV2alphaModel request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaModel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Pauses the training of an existing model.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the model to pause. Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/models/{model_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/models/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaModel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaModel> pause(
    GoogleCloudRetailV2alphaPauseModelRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name') + ':pause';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaModel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Resumes the training of an existing model.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the model to resume. Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/models/{model_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/models/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaModel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaModel> resume(
    GoogleCloudRetailV2alphaResumeModelRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name') + ':resume';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaModel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Tunes an existing model.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the model to tune. Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/models/{model_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/models/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> tune(
    GoogleCloudRetailV2alphaTuneModelRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name') + ':tune';

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
}

class ProjectsLocationsCatalogsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsOperationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/operations/\[^/\]+$`.
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

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
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

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name') + '/operations';

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

class ProjectsLocationsCatalogsPlacementsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsPlacementsResource(commons.ApiRequester client)
    : _requester = client;

  /// Performs a conversational search.
  ///
  /// This feature is only available for users who have Conversational Search
  /// enabled.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [placement] - Required. The resource name of the search engine placement,
  /// such as `projects / *
  /// /locations/global/catalogs/default_catalog/placements/default_search` or
  /// `projects / *
  /// /locations/global/catalogs/default_catalog/servingConfigs/default_serving_config`
  /// This field is used to identify the serving config name and the set of
  /// models that will be used to make the search.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/placements/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaConversationalSearchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaConversationalSearchResponse>
  conversationalSearch(
    GoogleCloudRetailV2alphaConversationalSearchRequest request,
    core.String placement, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' +
        core.Uri.encodeFull('$placement') +
        ':conversationalSearch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaConversationalSearchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Makes a recommendation prediction.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [placement] - Required. Full resource name of the format:
  /// `{placement=projects / *
  /// /locations/global/catalogs/default_catalog/servingConfigs / * }` or
  /// `{placement=projects / *
  /// /locations/global/catalogs/default_catalog/placements / * }`. We recommend
  /// using the `servingConfigs` resource. `placements` is a legacy resource.
  /// The ID of the Recommendations AI serving config or placement. Before you
  /// can request predictions from your model, you must create at least one
  /// serving config or placement for it. For more information, see
  /// [Manage serving configs](https://cloud.google.com/retail/docs/manage-configs).
  /// The full list of available serving configs can be seen at
  /// https://console.cloud.google.com/ai/retail/catalogs/default_catalog/configs
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/placements/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaPredictResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaPredictResponse> predict(
    GoogleCloudRetailV2alphaPredictRequest request,
    core.String placement, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$placement') + ':predict';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaPredictResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Performs a search.
  ///
  /// This feature is only available for users who have Retail Search enabled.
  /// Enable Retail Search on Cloud Console before using this feature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [placement] - Required. The resource name of the Retail Search serving
  /// config, such as `projects / *
  /// /locations/global/catalogs/default_catalog/servingConfigs/default_serving_config`
  /// or the name of the legacy placement resource, such as `projects / *
  /// /locations/global/catalogs/default_catalog/placements/default_search`.
  /// This field is used to identify the serving config name and the set of
  /// models that are used to make the search.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/placements/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaSearchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaSearchResponse> search(
    GoogleCloudRetailV2alphaSearchRequest request,
    core.String placement, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$placement') + ':search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaSearchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCatalogsServingConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsServingConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// Enables a Control on the specified ServingConfig.
  ///
  /// The control is added in the last position of the list of controls it
  /// belongs to (e.g. if it's a facet spec control it will be applied in the
  /// last position of servingConfig.facetSpecIds) Returns a ALREADY_EXISTS
  /// error if the control has already been applied. Returns a
  /// FAILED_PRECONDITION error if the addition could exceed maximum number of
  /// control allowed for that type of control.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [servingConfig] - Required. The source ServingConfig resource name .
  /// Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/servingConfigs/{serving_config_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaServingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaServingConfig> addControl(
    GoogleCloudRetailV2alphaAddControlRequest request,
    core.String servingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$servingConfig') + ':addControl';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaServingConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Performs a conversational search.
  ///
  /// This feature is only available for users who have Conversational Search
  /// enabled.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [placement] - Required. The resource name of the search engine placement,
  /// such as `projects / *
  /// /locations/global/catalogs/default_catalog/placements/default_search` or
  /// `projects / *
  /// /locations/global/catalogs/default_catalog/servingConfigs/default_serving_config`
  /// This field is used to identify the serving config name and the set of
  /// models that will be used to make the search.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaConversationalSearchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaConversationalSearchResponse>
  conversationalSearch(
    GoogleCloudRetailV2alphaConversationalSearchRequest request,
    core.String placement, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' +
        core.Uri.encodeFull('$placement') +
        ':conversationalSearch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaConversationalSearchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a ServingConfig.
  ///
  /// A maximum of 100 ServingConfigs are allowed in a Catalog, otherwise a
  /// FAILED_PRECONDITION error is returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Full resource name of parent. Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [servingConfigId] - Required. The ID to use for the ServingConfig, which
  /// will become the final component of the ServingConfig's resource name. This
  /// value should be 4-63 characters, and valid characters are /a-z-_/.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaServingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaServingConfig> create(
    GoogleCloudRetailV2alphaServingConfig request,
    core.String parent, {
    core.String? servingConfigId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (servingConfigId != null) 'servingConfigId': [servingConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$parent') + '/servingConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaServingConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a ServingConfig.
  ///
  /// Returns a NotFound error if the ServingConfig does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the ServingConfig to delete.
  /// Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/servingConfigs/{serving_config_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/servingConfigs/\[^/\]+$`.
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

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a ServingConfig.
  ///
  /// Returns a NotFound error if the ServingConfig does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the ServingConfig to get. Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/servingConfigs/{serving_config_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaServingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaServingConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaServingConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all ServingConfigs linked to this catalog.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The catalog resource name. Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of results to return. If
  /// unspecified, defaults to 100. If a value greater than 100 is provided, at
  /// most 100 results are returned.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListServingConfigs` call. Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaListServingConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaListServingConfigsResponse> list(
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
        'v2alpha/' + core.Uri.encodeFull('$parent') + '/servingConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaListServingConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a ServingConfig.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Fully qualified name `projects / *
  /// /locations/global/catalogs / * /servingConfig / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - Indicates which fields in the provided ServingConfig to
  /// update. The following are NOT supported: * ServingConfig.name If not set,
  /// all supported fields are updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaServingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaServingConfig> patch(
    GoogleCloudRetailV2alphaServingConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaServingConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Makes a recommendation prediction.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [placement] - Required. Full resource name of the format:
  /// `{placement=projects / *
  /// /locations/global/catalogs/default_catalog/servingConfigs / * }` or
  /// `{placement=projects / *
  /// /locations/global/catalogs/default_catalog/placements / * }`. We recommend
  /// using the `servingConfigs` resource. `placements` is a legacy resource.
  /// The ID of the Recommendations AI serving config or placement. Before you
  /// can request predictions from your model, you must create at least one
  /// serving config or placement for it. For more information, see
  /// [Manage serving configs](https://cloud.google.com/retail/docs/manage-configs).
  /// The full list of available serving configs can be seen at
  /// https://console.cloud.google.com/ai/retail/catalogs/default_catalog/configs
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaPredictResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaPredictResponse> predict(
    GoogleCloudRetailV2alphaPredictRequest request,
    core.String placement, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$placement') + ':predict';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaPredictResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Disables a Control on the specified ServingConfig.
  ///
  /// The control is removed from the ServingConfig. Returns a NOT_FOUND error
  /// if the Control is not enabled for the ServingConfig.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [servingConfig] - Required. The source ServingConfig resource name .
  /// Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/servingConfigs/{serving_config_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaServingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaServingConfig> removeControl(
    GoogleCloudRetailV2alphaRemoveControlRequest request,
    core.String servingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$servingConfig') + ':removeControl';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaServingConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Performs a search.
  ///
  /// This feature is only available for users who have Retail Search enabled.
  /// Enable Retail Search on Cloud Console before using this feature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [placement] - Required. The resource name of the Retail Search serving
  /// config, such as `projects / *
  /// /locations/global/catalogs/default_catalog/servingConfigs/default_serving_config`
  /// or the name of the legacy placement resource, such as `projects / *
  /// /locations/global/catalogs/default_catalog/placements/default_search`.
  /// This field is used to identify the serving config name and the set of
  /// models that are used to make the search.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaSearchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaSearchResponse> search(
    GoogleCloudRetailV2alphaSearchRequest request,
    core.String placement, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$placement') + ':search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaSearchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCatalogsUserEventsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsUserEventsResource(commons.ApiRequester client)
    : _requester = client;

  /// Writes a single user event from the browser.
  ///
  /// For larger user event payload over 16 KB, the POST method should be used
  /// instead, otherwise a 400 Bad Request error is returned. This method is
  /// used only by the Retail API JavaScript pixel and Google Tag Manager. Users
  /// should not call this method directly.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent catalog name, such as
  /// `projects/1234/locations/global/catalogs/default_catalog`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleApiHttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleApiHttpBody> collect(
    GoogleCloudRetailV2alphaCollectUserEventRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$parent') + '/userEvents:collect';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleApiHttpBody.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Exports user events.
  ///
  /// `Operation.response` is of type `ExportResponse`. `Operation.metadata` is
  /// of type `ExportMetadata`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of a Catalog. For example
  /// `projects/1234/locations/global/catalogs/default_catalog`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> export(
    GoogleCloudRetailV2alphaExportUserEventsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$parent') + '/userEvents:export';

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

  /// Bulk import of User events.
  ///
  /// Request processing might be synchronous. Events that already exist are
  /// skipped. Use this method for backfilling historical user events.
  /// `Operation.response` is of type `ImportResponse`. Note that it is possible
  /// for a subset of the items to be successfully inserted.
  /// `Operation.metadata` is of type `ImportMetadata`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  /// `projects/1234/locations/global/catalogs/default_catalog`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> import(
    GoogleCloudRetailV2alphaImportUserEventsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$parent') + '/userEvents:import';

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

  /// Deletes permanently all user events specified by the filter provided.
  ///
  /// Depending on the number of events specified by the filter, this operation
  /// could take hours or days to complete. To test a filter, use the list
  /// command first.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the catalog under which the
  /// events are created. The format is
  /// `projects/${projectId}/locations/global/catalogs/${catalogId}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> purge(
    GoogleCloudRetailV2alphaPurgeUserEventsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$parent') + '/userEvents:purge';

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

  /// Starts a user-event rejoin operation with latest product catalog.
  ///
  /// Events are not annotated with detailed product information for products
  /// that are missing from the catalog when the user event is ingested. These
  /// events are stored as unjoined events with limited usage on training and
  /// serving. You can use this method to start a join operation on specified
  /// events with the latest version of product catalog. You can also use this
  /// method to correct events joined with the wrong product catalog. A rejoin
  /// operation can take hours or days to complete.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent catalog resource name, such as
  /// `projects/1234/locations/global/catalogs/default_catalog`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> rejoin(
    GoogleCloudRetailV2alphaRejoinUserEventsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$parent') + '/userEvents:rejoin';

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

  /// Writes a single user event.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent catalog resource name, such as
  /// `projects/1234/locations/global/catalogs/default_catalog`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [writeAsync] - If set to true, the user event will be written
  /// asynchronously after validation, and the API will respond without waiting
  /// for the write. Therefore, silent failures can occur even if the API
  /// returns success. In case of silent failures, error messages can be found
  /// in Stackdriver logs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaUserEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaUserEvent> write(
    GoogleCloudRetailV2alphaUserEvent request,
    core.String parent, {
    core.bool? writeAsync,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (writeAsync != null) 'writeAsync': ['${writeAsync}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha/' + core.Uri.encodeFull('$parent') + '/userEvents:write';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaUserEvent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
    : _requester = client;

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

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name') + '/operations';

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

class ProjectsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsOperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^projects/\[^/\]+/operations/\[^/\]+$`.
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

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name');

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
  /// Value must have pattern `^projects/\[^/\]+$`.
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

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$name') + '/operations';

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

class ProjectsRetailProjectResource {
  final commons.ApiRequester _requester;

  ProjectsRetailProjectResource(commons.ApiRequester client)
    : _requester = client;

  /// Accepts service terms for this project.
  ///
  /// By making requests to this API, you agree to the terms of service linked
  /// below. https://cloud.google.com/retail/data-use-terms
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. Full resource name of the project. Format:
  /// `projects/{project_number_or_id}/retailProject`
  /// Value must have pattern `^projects/\[^/\]+/retailProject$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2alphaProject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2alphaProject> acceptTerms(
    GoogleCloudRetailV2alphaAcceptTermsRequest request,
    core.String project, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha/' + core.Uri.encodeFull('$project') + ':acceptTerms';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRetailV2alphaProject.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Message that represents an arbitrary HTTP body.
///
/// It should only be used for payload formats that can't be represented as
/// JSON, such as raw binary or an HTML page. This message can be used both in
/// streaming and non-streaming API methods in the request as well as the
/// response. It can be used as a top-level request field, which is convenient
/// if one wants to extract parameters from either the URL or HTTP template into
/// the request fields and also want access to the raw HTTP body. Example:
/// message GetResourceRequest { // A unique request id. string request_id = 1;
/// // The raw HTTP body is bound to this field. google.api.HttpBody http_body =
/// 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns
/// (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns
/// (google.protobuf.Empty); } Example with streaming methods: service
/// CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream
/// google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns
/// (stream google.api.HttpBody); } Use of this type only changes how the
/// request and response bodies are handled, all other features will continue to
/// work unchanged.
typedef GoogleApiHttpBody = $HttpBody;

/// Request for AcceptTerms method.
typedef GoogleCloudRetailV2alphaAcceptTermsRequest = $Empty;

/// Request for CatalogService.AddCatalogAttribute method.
class GoogleCloudRetailV2alphaAddCatalogAttributeRequest {
  /// The CatalogAttribute to add.
  ///
  /// Required.
  GoogleCloudRetailV2alphaCatalogAttribute? catalogAttribute;

  GoogleCloudRetailV2alphaAddCatalogAttributeRequest({this.catalogAttribute});

  GoogleCloudRetailV2alphaAddCatalogAttributeRequest.fromJson(core.Map json_)
    : this(
        catalogAttribute:
            json_.containsKey('catalogAttribute')
                ? GoogleCloudRetailV2alphaCatalogAttribute.fromJson(
                  json_['catalogAttribute']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (catalogAttribute != null) 'catalogAttribute': catalogAttribute!,
  };
}

/// Request for AddControl method.
typedef GoogleCloudRetailV2alphaAddControlRequest = $AddControlRequest;

/// Request message for ProductService.AddFulfillmentPlaces method.
typedef GoogleCloudRetailV2alphaAddFulfillmentPlacesRequest =
    $AddFulfillmentPlacesRequest;

/// Request message for ProductService.AddLocalInventories method.
class GoogleCloudRetailV2alphaAddLocalInventoriesRequest {
  /// Indicates which inventory fields in the provided list of LocalInventory to
  /// update.
  ///
  /// The field is updated to the provided value. If a field is set while the
  /// place does not have a previous local inventory, the local inventory at
  /// that store is created. If a field is set while the value of that field is
  /// not provided, the original field value, if it exists, is deleted. If the
  /// mask is not set or set with empty paths, all inventory fields will be
  /// updated. If an unsupported or unknown field is provided, an
  /// INVALID_ARGUMENT error is returned and the entire update will be ignored.
  core.String? addMask;

  /// The time when the inventory updates are issued.
  ///
  /// Used to prevent out-of-order updates on local inventory fields. If not
  /// provided, the internal system time will be used.
  core.String? addTime;

  /// If set to true, and the Product is not found, the local inventory will
  /// still be processed and retained for at most 1 day and processed once the
  /// Product is created.
  ///
  /// If set to false, a NOT_FOUND error is returned if the Product is not
  /// found.
  core.bool? allowMissing;

  /// A list of inventory information at difference places.
  ///
  /// Each place is identified by its place ID. At most 3000 inventories are
  /// allowed per request.
  ///
  /// Required.
  core.List<GoogleCloudRetailV2alphaLocalInventory>? localInventories;

  GoogleCloudRetailV2alphaAddLocalInventoriesRequest({
    this.addMask,
    this.addTime,
    this.allowMissing,
    this.localInventories,
  });

  GoogleCloudRetailV2alphaAddLocalInventoriesRequest.fromJson(core.Map json_)
    : this(
        addMask: json_['addMask'] as core.String?,
        addTime: json_['addTime'] as core.String?,
        allowMissing: json_['allowMissing'] as core.bool?,
        localInventories:
            (json_['localInventories'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaLocalInventory.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (addMask != null) 'addMask': addMask!,
    if (addTime != null) 'addTime': addTime!,
    if (allowMissing != null) 'allowMissing': allowMissing!,
    if (localInventories != null) 'localInventories': localInventories!,
  };
}

/// Project level alert config.
class GoogleCloudRetailV2alphaAlertConfig {
  /// Alert policies for a customer.
  ///
  /// They must be unique by \[AlertPolicy.alert_group\]
  core.List<GoogleCloudRetailV2alphaAlertConfigAlertPolicy>? alertPolicies;

  /// The name of the AlertConfig singleton resource.
  ///
  /// Format: projects / * /alertConfig
  ///
  /// Required. Immutable.
  core.String? name;

  GoogleCloudRetailV2alphaAlertConfig({this.alertPolicies, this.name});

  GoogleCloudRetailV2alphaAlertConfig.fromJson(core.Map json_)
    : this(
        alertPolicies:
            (json_['alertPolicies'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaAlertConfigAlertPolicy.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (alertPolicies != null) 'alertPolicies': alertPolicies!,
    if (name != null) 'name': name!,
  };
}

/// Alert policy for a customer.
class GoogleCloudRetailV2alphaAlertConfigAlertPolicy {
  /// The feature that provides alerting capability.
  ///
  /// Supported value: - `search-data-quality` for retail search customers. -
  /// `conv-data-quality` for retail conversation customers.
  core.String? alertGroup;

  /// The enrollment status of a customer.
  /// Possible string values are:
  /// - "ENROLL_STATUS_UNSPECIFIED" : Default value. Used for customers who have
  /// not responded to the alert policy.
  /// - "ENROLLED" : Customer is enrolled in this policy.
  /// - "DECLINED" : Customer declined this policy.
  core.String? enrollStatus;

  /// Recipients for the alert policy.
  ///
  /// One alert policy should not exceed 20 recipients.
  core.List<GoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient>?
  recipients;

  GoogleCloudRetailV2alphaAlertConfigAlertPolicy({
    this.alertGroup,
    this.enrollStatus,
    this.recipients,
  });

  GoogleCloudRetailV2alphaAlertConfigAlertPolicy.fromJson(core.Map json_)
    : this(
        alertGroup: json_['alertGroup'] as core.String?,
        enrollStatus: json_['enrollStatus'] as core.String?,
        recipients:
            (json_['recipients'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (alertGroup != null) 'alertGroup': alertGroup!,
    if (enrollStatus != null) 'enrollStatus': enrollStatus!,
    if (recipients != null) 'recipients': recipients!,
  };
}

/// Recipient contact information.
typedef GoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient =
    $AlertConfigAlertPolicyRecipient;

/// Catalog level attribute config.
class GoogleCloudRetailV2alphaAttributesConfig {
  /// The AttributeConfigLevel used for this catalog.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ATTRIBUTE_CONFIG_LEVEL_UNSPECIFIED" : Value used when unset. In this
  /// case, server behavior defaults to CATALOG_LEVEL_ATTRIBUTE_CONFIG.
  /// - "PRODUCT_LEVEL_ATTRIBUTE_CONFIG" : At this level, we honor the attribute
  /// configurations set in Product.attributes.
  /// - "CATALOG_LEVEL_ATTRIBUTE_CONFIG" : At this level, we honor the attribute
  /// configurations set in `CatalogConfig.attribute_configs`.
  core.String? attributeConfigLevel;

  /// Enable attribute(s) config at catalog level.
  ///
  /// For example, indexable, dynamic_facetable, or searchable for each
  /// attribute. The key is catalog attribute's name. For example: `color`,
  /// `brands`, `attributes.custom_attribute`, such as `attributes.xyz`. The
  /// maximum number of catalog attributes allowed in a request is 1000.
  core.Map<core.String, GoogleCloudRetailV2alphaCatalogAttribute>?
  catalogAttributes;

  /// The fully qualified resource name of the attribute config.
  ///
  /// Format: `projects / * /locations / * /catalogs / * /attributesConfig`
  ///
  /// Required. Immutable.
  core.String? name;

  GoogleCloudRetailV2alphaAttributesConfig({
    this.attributeConfigLevel,
    this.catalogAttributes,
    this.name,
  });

  GoogleCloudRetailV2alphaAttributesConfig.fromJson(core.Map json_)
    : this(
        attributeConfigLevel: json_['attributeConfigLevel'] as core.String?,
        catalogAttributes: (json_['catalogAttributes']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudRetailV2alphaCatalogAttribute.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributeConfigLevel != null)
      'attributeConfigLevel': attributeConfigLevel!,
    if (catalogAttributes != null) 'catalogAttributes': catalogAttributes!,
    if (name != null) 'name': name!,
  };
}

/// An intended audience of the Product for whom it's sold.
typedef GoogleCloudRetailV2alphaAudience = $Audience;

/// Request for CatalogService.BatchRemoveCatalogAttributes method.
typedef GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest =
    $BatchRemoveCatalogAttributesRequest;

/// Response of the CatalogService.BatchRemoveCatalogAttributes.
typedef GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse =
    $BatchRemoveCatalogAttributesResponse;

/// Request for BatchUpdateGenerativeQuestionConfig method.
class GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest {
  /// The updates question configs.
  ///
  /// Required.
  core.List<GoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest>?
  requests;

  GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest({
    this.requests,
  });

  GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest.fromJson(
    core.Map json_,
  ) : this(
        requests:
            (json_['requests'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (requests != null) 'requests': requests!,
  };
}

/// Aggregated response for UpdateGenerativeQuestionConfig method.
class GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse {
  /// The updates question configs.
  ///
  /// Optional.
  core.List<GoogleCloudRetailV2alphaGenerativeQuestionConfig>?
  generativeQuestionConfigs;

  GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse({
    this.generativeQuestionConfigs,
  });

  GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse.fromJson(
    core.Map json_,
  ) : this(
        generativeQuestionConfigs:
            (json_['generativeQuestionConfigs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaGenerativeQuestionConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (generativeQuestionConfigs != null)
      'generativeQuestionConfigs': generativeQuestionConfigs!,
  };
}

/// BigQuery source import data from.
class GoogleCloudRetailV2alphaBigQuerySource {
  /// The schema to use when parsing the data from the source.
  ///
  /// Supported values for product imports: * `product` (default): One JSON
  /// Product per line. Each product must have a valid Product.id. *
  /// `product_merchant_center`: See
  /// [Importing catalog data from Merchant Center](https://cloud.google.com/retail/recommendations-ai/docs/upload-catalog#mc).
  /// Supported values for user events imports: * `user_event` (default): One
  /// JSON UserEvent per line. * `user_event_ga360`: The schema is available
  /// here: https://support.google.com/analytics/answer/3437719. *
  /// `user_event_ga4`: The schema is available here:
  /// https://support.google.com/analytics/answer/7029846. Supported values for
  /// autocomplete imports: * `suggestions` (default): One JSON completion
  /// suggestion per line. * `denylist`: One JSON deny suggestion per line. *
  /// `allowlist`: One JSON allow suggestion per line.
  core.String? dataSchema;

  /// The BigQuery data set to copy the data from with a length limit of 1,024
  /// characters.
  ///
  /// Required.
  core.String? datasetId;

  /// Intermediate Cloud Storage directory used for the import with a length
  /// limit of 2,000 characters.
  ///
  /// Can be specified if one wants to have the BigQuery export to a specific
  /// Cloud Storage directory.
  core.String? gcsStagingDir;

  /// BigQuery time partitioned table's _PARTITIONDATE in YYYY-MM-DD format.
  GoogleTypeDate? partitionDate;

  /// The project ID (can be project # or ID) that the BigQuery source is in
  /// with a length limit of 128 characters.
  ///
  /// If not specified, inherits the project ID from the parent request.
  core.String? projectId;

  /// The BigQuery table to copy the data from with a length limit of 1,024
  /// characters.
  ///
  /// Required.
  core.String? tableId;

  GoogleCloudRetailV2alphaBigQuerySource({
    this.dataSchema,
    this.datasetId,
    this.gcsStagingDir,
    this.partitionDate,
    this.projectId,
    this.tableId,
  });

  GoogleCloudRetailV2alphaBigQuerySource.fromJson(core.Map json_)
    : this(
        dataSchema: json_['dataSchema'] as core.String?,
        datasetId: json_['datasetId'] as core.String?,
        gcsStagingDir: json_['gcsStagingDir'] as core.String?,
        partitionDate:
            json_.containsKey('partitionDate')
                ? GoogleTypeDate.fromJson(
                  json_['partitionDate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        projectId: json_['projectId'] as core.String?,
        tableId: json_['tableId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataSchema != null) 'dataSchema': dataSchema!,
    if (datasetId != null) 'datasetId': datasetId!,
    if (gcsStagingDir != null) 'gcsStagingDir': gcsStagingDir!,
    if (partitionDate != null) 'partitionDate': partitionDate!,
    if (projectId != null) 'projectId': projectId!,
    if (tableId != null) 'tableId': tableId!,
  };
}

/// A data branch that stores all instances of Products.
class GoogleCloudRetailV2alphaBranch {
  /// Human readable name of the branch to display in the UI.
  ///
  /// Output only.
  core.String? displayName;

  /// Indicates whether this branch is set as the default branch of its parent
  /// catalog.
  ///
  /// Output only.
  core.bool? isDefault;

  /// Timestamp of last import through ProductService.ImportProducts.
  ///
  /// Empty value means no import has been made to this branch.
  ///
  /// Output only.
  core.String? lastProductImportTime;

  /// Full resource name of the branch, such as `projects / *
  /// /locations/global/catalogs/default_catalog/branches/branch_id`.
  ///
  /// Immutable.
  core.String? name;

  /// Statistics for number of products in the branch, provided for different
  /// scopes.
  ///
  /// This field is not populated in BranchView.BASIC view.
  ///
  /// Output only.
  core.List<GoogleCloudRetailV2alphaBranchProductCountStatistic>?
  productCountStats;

  /// The quality metrics measured among products of this branch.
  ///
  /// See QualityMetric.requirement_key for supported metrics. Metrics could be
  /// missing if failed to retrieve. This field is not populated in
  /// BranchView.BASIC view.
  ///
  /// Output only.
  core.List<GoogleCloudRetailV2alphaBranchQualityMetric>? qualityMetrics;

  GoogleCloudRetailV2alphaBranch({
    this.displayName,
    this.isDefault,
    this.lastProductImportTime,
    this.name,
    this.productCountStats,
    this.qualityMetrics,
  });

  GoogleCloudRetailV2alphaBranch.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        isDefault: json_['isDefault'] as core.bool?,
        lastProductImportTime: json_['lastProductImportTime'] as core.String?,
        name: json_['name'] as core.String?,
        productCountStats:
            (json_['productCountStats'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaBranchProductCountStatistic.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        qualityMetrics:
            (json_['qualityMetrics'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaBranchQualityMetric.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (isDefault != null) 'isDefault': isDefault!,
    if (lastProductImportTime != null)
      'lastProductImportTime': lastProductImportTime!,
    if (name != null) 'name': name!,
    if (productCountStats != null) 'productCountStats': productCountStats!,
    if (qualityMetrics != null) 'qualityMetrics': qualityMetrics!,
  };
}

/// A statistic about the number of products in a branch.
class GoogleCloudRetailV2alphaBranchProductCountStatistic {
  /// The number of products in scope broken down into different groups.
  ///
  /// The key is a group representing a set of products, and the value is the
  /// number of products in that group. Note: keys in this map may change over
  /// time. Possible keys: * "primary-in-stock", products have
  /// Product.Type.PRIMARY type and Product.Availability.IN_STOCK availability.
  /// * "primary-out-of-stock", products have Product.Type.PRIMARY type and
  /// Product.Availability.OUT_OF_STOCK availability. * "primary-preorder",
  /// products have Product.Type.PRIMARY type and Product.Availability.PREORDER
  /// availability. * "primary-backorder", products have Product.Type.PRIMARY
  /// type and Product.Availability.BACKORDER availability. *
  /// "variant-in-stock", products have Product.Type.VARIANT type and
  /// Product.Availability.IN_STOCK availability. * "variant-out-of-stock",
  /// products have Product.Type.VARIANT type and
  /// Product.Availability.OUT_OF_STOCK availability. * "variant-preorder",
  /// products have Product.Type.VARIANT type and Product.Availability.PREORDER
  /// availability. * "variant-backorder", products have Product.Type.VARIANT
  /// type and Product.Availability.BACKORDER availability. *
  /// "price-discounted", products have \[Product.price_info.price\] \<
  /// \[Product.price_info.original_price\].
  core.Map<core.String, core.String>? counts;

  /// \[ProductCountScope\] of the \[counts\].
  /// Possible string values are:
  /// - "PRODUCT_COUNT_SCOPE_UNSPECIFIED" : Default value for enum. This value
  /// is not used in the API response.
  /// - "ALL_PRODUCTS" : Scope for all existing products in the branch. Useful
  /// for understanding how many products there are in a branch.
  /// - "LAST_24_HOUR_UPDATE" : Scope for products created or updated in the
  /// last 24 hours.
  core.String? scope;

  GoogleCloudRetailV2alphaBranchProductCountStatistic({
    this.counts,
    this.scope,
  });

  GoogleCloudRetailV2alphaBranchProductCountStatistic.fromJson(core.Map json_)
    : this(
        counts: (json_['counts'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        scope: json_['scope'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (counts != null) 'counts': counts!,
    if (scope != null) 'scope': scope!,
  };
}

/// Metric measured on a group of Products against a certain quality
/// requirement.
///
/// Contains the number of products that pass the check and the number of
/// products that don't.
class GoogleCloudRetailV2alphaBranchQualityMetric {
  /// Number of products passing the quality requirement check.
  ///
  /// We only check searchable products.
  core.int? qualifiedProductCount;

  /// The key that represents a quality requirement rule.
  ///
  /// Supported keys: * "has-valid-uri": product has a valid and accessible uri.
  /// * "available-expire-time-conformance": Product.available_time is early
  /// than "now", and Product.expire_time is greater than "now". *
  /// "has-searchable-attributes": product has at least one attribute set to
  /// searchable. * "has-description": product has non-empty description. *
  /// "has-at-least-bigram-title": Product title has at least two words. A
  /// comprehensive title helps to improve search quality. *
  /// "variant-has-image": the variant products has at least one image. You may
  /// ignore this metric if all your products are at primary level. *
  /// "variant-has-price-info": the variant products has price_info set. You may
  /// ignore this metric if all your products are at primary level. *
  /// "has-publish-time": product has non-empty publish_time.
  core.String? requirementKey;

  /// Value from 0 to 100 representing the suggested percentage of products that
  /// meet the quality requirements to get good search and recommendation
  /// performance.
  ///
  /// 100 * (qualified_product_count) / (qualified_product_count +
  /// unqualified_product_count) should be greater or equal to this suggestion.
  core.double? suggestedQualityPercentThreshold;

  /// Number of products failing the quality requirement check.
  ///
  /// We only check searchable products.
  core.int? unqualifiedProductCount;

  /// A list of a maximum of 100 sample products that do not qualify for this
  /// requirement.
  ///
  /// This field is only populated in the response to BranchService.GetBranch
  /// API, and is always empty for BranchService.ListBranches. Only the
  /// following fields are set in the Product. * Product.name * Product.id *
  /// Product.title
  core.List<GoogleCloudRetailV2alphaProduct>? unqualifiedSampleProducts;

  GoogleCloudRetailV2alphaBranchQualityMetric({
    this.qualifiedProductCount,
    this.requirementKey,
    this.suggestedQualityPercentThreshold,
    this.unqualifiedProductCount,
    this.unqualifiedSampleProducts,
  });

  GoogleCloudRetailV2alphaBranchQualityMetric.fromJson(core.Map json_)
    : this(
        qualifiedProductCount: json_['qualifiedProductCount'] as core.int?,
        requirementKey: json_['requirementKey'] as core.String?,
        suggestedQualityPercentThreshold:
            (json_['suggestedQualityPercentThreshold'] as core.num?)
                ?.toDouble(),
        unqualifiedProductCount: json_['unqualifiedProductCount'] as core.int?,
        unqualifiedSampleProducts:
            (json_['unqualifiedSampleProducts'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaProduct.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (qualifiedProductCount != null)
      'qualifiedProductCount': qualifiedProductCount!,
    if (requirementKey != null) 'requirementKey': requirementKey!,
    if (suggestedQualityPercentThreshold != null)
      'suggestedQualityPercentThreshold': suggestedQualityPercentThreshold!,
    if (unqualifiedProductCount != null)
      'unqualifiedProductCount': unqualifiedProductCount!,
    if (unqualifiedSampleProducts != null)
      'unqualifiedSampleProducts': unqualifiedSampleProducts!,
  };
}

/// The catalog configuration.
class GoogleCloudRetailV2alphaCatalog {
  /// The catalog display name.
  ///
  /// This field must be a UTF-8 encoded string with a length limit of 128
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned.
  ///
  /// Required. Immutable.
  core.String? displayName;

  /// The Merchant Center linking configuration.
  ///
  /// After a link is added, the data stream from Merchant Center to Cloud
  /// Retail will be enabled automatically. The requester must have access to
  /// the Merchant Center account in order to make changes to this field.
  GoogleCloudRetailV2alphaMerchantCenterLinkingConfig?
  merchantCenterLinkingConfig;

  /// The fully qualified resource name of the catalog.
  ///
  /// Required. Immutable.
  core.String? name;

  /// The product level configuration.
  ///
  /// Required.
  GoogleCloudRetailV2alphaProductLevelConfig? productLevelConfig;

  GoogleCloudRetailV2alphaCatalog({
    this.displayName,
    this.merchantCenterLinkingConfig,
    this.name,
    this.productLevelConfig,
  });

  GoogleCloudRetailV2alphaCatalog.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        merchantCenterLinkingConfig:
            json_.containsKey('merchantCenterLinkingConfig')
                ? GoogleCloudRetailV2alphaMerchantCenterLinkingConfig.fromJson(
                  json_['merchantCenterLinkingConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        productLevelConfig:
            json_.containsKey('productLevelConfig')
                ? GoogleCloudRetailV2alphaProductLevelConfig.fromJson(
                  json_['productLevelConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (merchantCenterLinkingConfig != null)
      'merchantCenterLinkingConfig': merchantCenterLinkingConfig!,
    if (name != null) 'name': name!,
    if (productLevelConfig != null) 'productLevelConfig': productLevelConfig!,
  };
}

/// Catalog level attribute config for an attribute.
///
/// For example, if customers want to enable/disable facet for a specific
/// attribute.
class GoogleCloudRetailV2alphaCatalogAttribute {
  /// If DYNAMIC_FACETABLE_ENABLED, attribute values are available for dynamic
  /// facet.
  ///
  /// Could only be DYNAMIC_FACETABLE_DISABLED if
  /// CatalogAttribute.indexable_option is INDEXABLE_DISABLED. Otherwise, an
  /// INVALID_ARGUMENT error is returned. Must be specified, otherwise throws
  /// INVALID_FORMAT error.
  /// Possible string values are:
  /// - "DYNAMIC_FACETABLE_OPTION_UNSPECIFIED" : Value used when unset.
  /// - "DYNAMIC_FACETABLE_ENABLED" : Dynamic facetable option enabled for an
  /// attribute.
  /// - "DYNAMIC_FACETABLE_DISABLED" : Dynamic facetable option disabled for an
  /// attribute.
  core.String? dynamicFacetableOption;

  /// If EXACT_SEARCHABLE_ENABLED, attribute values will be exact searchable.
  ///
  /// This property only applies to textual custom attributes and requires
  /// indexable set to enabled to enable exact-searchable. If unset, the server
  /// behavior defaults to EXACT_SEARCHABLE_DISABLED.
  /// Possible string values are:
  /// - "EXACT_SEARCHABLE_OPTION_UNSPECIFIED" : Value used when unset.
  /// - "EXACT_SEARCHABLE_ENABLED" : Exact searchable option enabled for an
  /// attribute.
  /// - "EXACT_SEARCHABLE_DISABLED" : Exact searchable option disabled for an
  /// attribute.
  core.String? exactSearchableOption;

  /// Contains facet options.
  GoogleCloudRetailV2alphaCatalogAttributeFacetConfig? facetConfig;

  /// Indicates whether this attribute has been used by any products.
  ///
  /// `True` if at least one Product is using this attribute in
  /// Product.attributes. Otherwise, this field is `False`. CatalogAttribute can
  /// be pre-loaded by using CatalogService.AddCatalogAttribute or
  /// CatalogService.UpdateAttributesConfig APIs. This field is `False` for
  /// pre-loaded CatalogAttributes. Only pre-loaded catalog attributes that are
  /// neither in use by products nor predefined can be deleted. Catalog
  /// attributes that are either in use by products or are predefined attributes
  /// cannot be deleted; however, their configuration properties will reset to
  /// default values upon removal request. After catalog changes, it takes about
  /// 10 minutes for this field to update.
  ///
  /// Output only.
  core.bool? inUse;

  /// When AttributesConfig.attribute_config_level is
  /// CATALOG_LEVEL_ATTRIBUTE_CONFIG, if INDEXABLE_ENABLED attribute values are
  /// indexed so that it can be filtered, faceted, or boosted in
  /// SearchService.Search.
  ///
  /// Must be specified when AttributesConfig.attribute_config_level is
  /// CATALOG_LEVEL_ATTRIBUTE_CONFIG, otherwise throws INVALID_FORMAT error.
  /// Possible string values are:
  /// - "INDEXABLE_OPTION_UNSPECIFIED" : Value used when unset.
  /// - "INDEXABLE_ENABLED" : Indexable option enabled for an attribute.
  /// - "INDEXABLE_DISABLED" : Indexable option disabled for an attribute.
  core.String? indexableOption;

  /// Attribute name.
  ///
  /// For example: `color`, `brands`, `attributes.custom_attribute`, such as
  /// `attributes.xyz`. To be indexable, the attribute name can contain only
  /// alpha-numeric characters and underscores. For example, an attribute named
  /// `attributes.abc_xyz` can be indexed, but an attribute named
  /// `attributes.abc-xyz` cannot be indexed. If the attribute key starts with
  /// `attributes.`, then the attribute is a custom attribute. Attributes such
  /// as `brands`, `patterns`, and `title` are built-in and called system
  /// attributes.
  ///
  /// Required.
  core.String? key;

  /// When AttributesConfig.attribute_config_level is
  /// CATALOG_LEVEL_ATTRIBUTE_CONFIG, if RECOMMENDATIONS_FILTERING_ENABLED,
  /// attribute values are filterable for recommendations.
  ///
  /// This option works for categorical features only, does not work for
  /// numerical features, inventory filtering.
  /// Possible string values are:
  /// - "RECOMMENDATIONS_FILTERING_OPTION_UNSPECIFIED" : Value used when unset.
  /// In this case, server behavior defaults to
  /// RECOMMENDATIONS_FILTERING_DISABLED.
  /// - "RECOMMENDATIONS_FILTERING_DISABLED" : Recommendation filtering is
  /// disabled.
  /// - "RECOMMENDATIONS_FILTERING_ENABLED" : Recommendation filtering is
  /// enabled.
  core.String? recommendationsFilteringOption;

  /// If RETRIEVABLE_ENABLED, attribute values are retrievable in the search
  /// results.
  ///
  /// If unset, the server behavior defaults to RETRIEVABLE_DISABLED.
  /// Possible string values are:
  /// - "RETRIEVABLE_OPTION_UNSPECIFIED" : Value used when unset.
  /// - "RETRIEVABLE_ENABLED" : Retrievable option enabled for an attribute.
  /// - "RETRIEVABLE_DISABLED" : Retrievable option disabled for an attribute.
  core.String? retrievableOption;

  /// When AttributesConfig.attribute_config_level is
  /// CATALOG_LEVEL_ATTRIBUTE_CONFIG, if SEARCHABLE_ENABLED, attribute values
  /// are searchable by text queries in SearchService.Search.
  ///
  /// If SEARCHABLE_ENABLED but attribute type is numerical, attribute values
  /// will not be searchable by text queries in SearchService.Search, as there
  /// are no text values associated to numerical attributes. Must be specified,
  /// when AttributesConfig.attribute_config_level is
  /// CATALOG_LEVEL_ATTRIBUTE_CONFIG, otherwise throws INVALID_FORMAT error.
  /// Possible string values are:
  /// - "SEARCHABLE_OPTION_UNSPECIFIED" : Value used when unset.
  /// - "SEARCHABLE_ENABLED" : Searchable option enabled for an attribute.
  /// - "SEARCHABLE_DISABLED" : Searchable option disabled for an attribute.
  core.String? searchableOption;

  /// The type of this attribute.
  ///
  /// This is derived from the attribute in Product.attributes.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNKNOWN" : The type of the attribute is unknown. Used when type cannot
  /// be derived from attribute that is not in_use.
  /// - "TEXTUAL" : Textual attribute.
  /// - "NUMERICAL" : Numerical attribute.
  core.String? type;

  GoogleCloudRetailV2alphaCatalogAttribute({
    this.dynamicFacetableOption,
    this.exactSearchableOption,
    this.facetConfig,
    this.inUse,
    this.indexableOption,
    this.key,
    this.recommendationsFilteringOption,
    this.retrievableOption,
    this.searchableOption,
    this.type,
  });

  GoogleCloudRetailV2alphaCatalogAttribute.fromJson(core.Map json_)
    : this(
        dynamicFacetableOption: json_['dynamicFacetableOption'] as core.String?,
        exactSearchableOption: json_['exactSearchableOption'] as core.String?,
        facetConfig:
            json_.containsKey('facetConfig')
                ? GoogleCloudRetailV2alphaCatalogAttributeFacetConfig.fromJson(
                  json_['facetConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        inUse: json_['inUse'] as core.bool?,
        indexableOption: json_['indexableOption'] as core.String?,
        key: json_['key'] as core.String?,
        recommendationsFilteringOption:
            json_['recommendationsFilteringOption'] as core.String?,
        retrievableOption: json_['retrievableOption'] as core.String?,
        searchableOption: json_['searchableOption'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dynamicFacetableOption != null)
      'dynamicFacetableOption': dynamicFacetableOption!,
    if (exactSearchableOption != null)
      'exactSearchableOption': exactSearchableOption!,
    if (facetConfig != null) 'facetConfig': facetConfig!,
    if (inUse != null) 'inUse': inUse!,
    if (indexableOption != null) 'indexableOption': indexableOption!,
    if (key != null) 'key': key!,
    if (recommendationsFilteringOption != null)
      'recommendationsFilteringOption': recommendationsFilteringOption!,
    if (retrievableOption != null) 'retrievableOption': retrievableOption!,
    if (searchableOption != null) 'searchableOption': searchableOption!,
    if (type != null) 'type': type!,
  };
}

/// Possible options for the facet that corresponds to the current attribute
/// config.
class GoogleCloudRetailV2alphaCatalogAttributeFacetConfig {
  /// If you don't set the facet SearchRequest.FacetSpec.FacetKey.intervals in
  /// the request to a numerical attribute, then we use the computed intervals
  /// with rounded bounds obtained from all its product numerical attribute
  /// values.
  ///
  /// The computed intervals might not be ideal for some attributes. Therefore,
  /// we give you the option to overwrite them with the facet_intervals field.
  /// The maximum of facet intervals per CatalogAttribute is 40. Each interval
  /// must have a lower bound or an upper bound. If both bounds are provided,
  /// then the lower bound must be smaller or equal than the upper bound.
  core.List<GoogleCloudRetailV2alphaInterval>? facetIntervals;

  /// Each instance represents a list of attribute values to ignore as facet
  /// values for a specific time range.
  ///
  /// The maximum number of instances per CatalogAttribute is 25.
  core.List<
    GoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues
  >?
  ignoredFacetValues;

  /// Use this field only if you want to merge a facet key into another facet
  /// key.
  GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet? mergedFacet;

  /// Each instance replaces a list of facet values by a merged facet value.
  ///
  /// If a facet value is not in any list, then it will stay the same. To avoid
  /// conflicts, only paths of length 1 are accepted. In other words, if
  /// "dark_blue" merged into "BLUE", then the latter can't merge into "blues"
  /// because this would create a path of length 2. The maximum number of
  /// instances of MergedFacetValue per CatalogAttribute is 100. This feature is
  /// available only for textual custom attributes.
  core.List<
    GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue
  >?
  mergedFacetValues;

  /// Set this field only if you want to rerank based on facet values engaged by
  /// the user for the current key.
  ///
  /// This option is only possible for custom facetable textual keys.
  GoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig? rerankConfig;

  GoogleCloudRetailV2alphaCatalogAttributeFacetConfig({
    this.facetIntervals,
    this.ignoredFacetValues,
    this.mergedFacet,
    this.mergedFacetValues,
    this.rerankConfig,
  });

  GoogleCloudRetailV2alphaCatalogAttributeFacetConfig.fromJson(core.Map json_)
    : this(
        facetIntervals:
            (json_['facetIntervals'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaInterval.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        ignoredFacetValues:
            (json_['ignoredFacetValues'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        mergedFacet:
            json_.containsKey('mergedFacet')
                ? GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet.fromJson(
                  json_['mergedFacet'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        mergedFacetValues:
            (json_['mergedFacetValues'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        rerankConfig:
            json_.containsKey('rerankConfig')
                ? GoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig.fromJson(
                  json_['rerankConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (facetIntervals != null) 'facetIntervals': facetIntervals!,
    if (ignoredFacetValues != null) 'ignoredFacetValues': ignoredFacetValues!,
    if (mergedFacet != null) 'mergedFacet': mergedFacet!,
    if (mergedFacetValues != null) 'mergedFacetValues': mergedFacetValues!,
    if (rerankConfig != null) 'rerankConfig': rerankConfig!,
  };
}

/// Facet values to ignore on facets during the specified time range for the
/// given SearchResponse.Facet.key attribute.
typedef GoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues =
    $CatalogAttributeFacetConfigIgnoredFacetValues;

/// The current facet key (i.e. attribute config) maps into the
/// merged_facet_key.
///
/// A facet key can have at most one child. The current facet key and the merged
/// facet key need both to be textual custom attributes or both numerical custom
/// attributes (same type).
typedef GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet =
    $CatalogAttributeFacetConfigMergedFacet;

/// Replaces a set of textual facet values by the same (possibly different)
/// merged facet value.
///
/// Each facet value should appear at most once as a value per CatalogAttribute.
/// This feature is available only for textual custom attributes.
typedef GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue =
    $CatalogAttributeFacetConfigMergedFacetValue;

/// Options to rerank based on facet values engaged by the user for the current
/// key.
///
/// That key needs to be a custom textual key and facetable. To use this
/// control, you also need to pass all the facet keys engaged by the user in the
/// request using the field \[SearchRequest.FacetSpec\]. In particular, if you
/// don't pass the facet keys engaged that you want to rerank on, this control
/// won't be effective. Moreover, to obtain better results, the facet values
/// that you want to rerank on should be close to English (ideally made of
/// words, underscores, and spaces).
typedef GoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig =
    $CatalogAttributeFacetConfigRerankConfig;

/// Request message for CollectUserEvent method.
typedef GoogleCloudRetailV2alphaCollectUserEventRequest =
    $CollectUserEventRequest;

/// The color information of a Product.
typedef GoogleCloudRetailV2alphaColorInfo = $ColorInfo;

/// Response of the autocomplete query.
class GoogleCloudRetailV2alphaCompleteQueryResponse {
  /// A map of matched attribute suggestions.
  ///
  /// This field is only available for `cloud-retail` dataset. Current supported
  /// keys: * `brands` * `categories`
  core.Map<
    core.String,
    GoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult
  >?
  attributeResults;

  /// A unique complete token.
  ///
  /// This should be included in the UserEvent.completion_detail for search
  /// events resulting from this completion, which enables accurate attribution
  /// of complete model performance.
  core.String? attributionToken;

  /// Results of the matching suggestions.
  ///
  /// The result list is ordered and the first result is top suggestion.
  core.List<GoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult>?
  completionResults;

  /// Matched recent searches of this user.
  ///
  /// The maximum number of recent searches is 10. This field is a restricted
  /// feature. If you want to enable it, contact Retail Search support. This
  /// feature is only available when CompleteQueryRequest.visitor_id field is
  /// set and UserEvent is imported. The recent searches satisfy the follow
  /// rules: * They are ordered from latest to oldest. * They are matched with
  /// CompleteQueryRequest.query case insensitively. * They are transformed to
  /// lower case. * They are UTF-8 safe. Recent searches are deduplicated. More
  /// recent searches will be reserved when duplication happens.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<GoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult>?
  recentSearchResults;

  GoogleCloudRetailV2alphaCompleteQueryResponse({
    this.attributeResults,
    this.attributionToken,
    this.completionResults,
    this.recentSearchResults,
  });

  GoogleCloudRetailV2alphaCompleteQueryResponse.fromJson(core.Map json_)
    : this(
        attributeResults: (json_['attributeResults']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        attributionToken: json_['attributionToken'] as core.String?,
        completionResults:
            (json_['completionResults'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        recentSearchResults:
            (json_['recentSearchResults'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributeResults != null) 'attributeResults': attributeResults!,
    if (attributionToken != null) 'attributionToken': attributionToken!,
    if (completionResults != null) 'completionResults': completionResults!,
    if (recentSearchResults != null)
      'recentSearchResults': recentSearchResults!,
  };
}

/// Resource that represents attribute results.
typedef GoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult =
    $CompleteQueryResponseAttributeResult;

/// Resource that represents completion results.
class GoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult {
  /// Custom attributes for the suggestion term.
  ///
  /// * For `user-data`, the attributes are additional custom attributes
  /// ingested through BigQuery. * For `cloud-retail`, the attributes are
  /// product attributes generated by Cloud Retail. It requires
  /// UserEvent.product_details is imported properly.
  core.Map<core.String, GoogleCloudRetailV2alphaCustomAttribute>? attributes;

  /// Facet information for the suggestion term.
  ///
  /// Gives the number of items resulting from a search with this suggestion
  /// term for each facet. This is an experimental feature for limited
  /// customers. If you want to receive this facet information, reach out to the
  /// Retail support team.
  core.List<GoogleCloudRetailV2alphaSearchResponseFacet>? facets;

  /// The suggestion for the query.
  core.String? suggestion;

  /// Total number of products associated with a search with this suggestion.
  ///
  /// This is an experimental feature for limited customers. If you want to
  /// receive this product count information, reach out to the Retail support
  /// team.
  core.int? totalProductCount;

  GoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult({
    this.attributes,
    this.facets,
    this.suggestion,
    this.totalProductCount,
  });

  GoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult.fromJson(
    core.Map json_,
  ) : this(
        attributes:
            (json_['attributes'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudRetailV2alphaCustomAttribute.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        facets:
            (json_['facets'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaSearchResponseFacet.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        suggestion: json_['suggestion'] as core.String?,
        totalProductCount: json_['totalProductCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributes != null) 'attributes': attributes!,
    if (facets != null) 'facets': facets!,
    if (suggestion != null) 'suggestion': suggestion!,
    if (totalProductCount != null) 'totalProductCount': totalProductCount!,
  };
}

/// Deprecated: Recent search of this user.
typedef GoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult =
    $CompleteQueryResponseRecentSearchResult;

/// Catalog level autocomplete config for customers to customize autocomplete
/// feature's settings.
class GoogleCloudRetailV2alphaCompletionConfig {
  /// The source data for the latest import of the autocomplete allowlist
  /// phrases.
  ///
  /// Output only.
  GoogleCloudRetailV2alphaCompletionDataInputConfig? allowlistInputConfig;

  /// If set to true, the auto learning function is enabled.
  ///
  /// Auto learning uses user data to generate suggestions using ML techniques.
  /// Default value is false. Only after enabling auto learning can users use
  /// `cloud-retail` data in CompleteQueryRequest.
  core.bool? autoLearning;

  /// The source data for the latest import of the autocomplete denylist
  /// phrases.
  ///
  /// Output only.
  GoogleCloudRetailV2alphaCompletionDataInputConfig? denylistInputConfig;

  /// Name of the LRO corresponding to the latest allowlist import.
  ///
  /// Can use GetOperation API to retrieve the latest state of the Long Running
  /// Operation.
  ///
  /// Output only.
  core.String? lastAllowlistImportOperation;

  /// Name of the LRO corresponding to the latest denylist import.
  ///
  /// Can use GetOperation API to retrieve the latest state of the Long Running
  /// Operation.
  ///
  /// Output only.
  core.String? lastDenylistImportOperation;

  /// Name of the LRO corresponding to the latest suggestion terms list import.
  ///
  /// Can use GetOperation API method to retrieve the latest state of the Long
  /// Running Operation.
  ///
  /// Output only.
  core.String? lastSuggestionsImportOperation;

  /// Specifies the matching order for autocomplete suggestions, e.g., a query
  /// consisting of 'sh' with 'out-of-order' specified would suggest "women's
  /// shoes", whereas a query of 'red s' with 'exact-prefix' specified would
  /// suggest "red shoes".
  ///
  /// Currently supported values: * 'out-of-order' * 'exact-prefix' Default
  /// value: 'exact-prefix'.
  core.String? matchingOrder;

  /// The maximum number of autocomplete suggestions returned per term.
  ///
  /// Default value is 20. If left unset or set to 0, then will fallback to
  /// default value. Value range is 1 to 20.
  core.int? maxSuggestions;

  /// The minimum number of characters needed to be typed in order to get
  /// suggestions.
  ///
  /// Default value is 2. If left unset or set to 0, then will fallback to
  /// default value. Value range is 1 to 20.
  core.int? minPrefixLength;

  /// Fully qualified name `projects / * /locations / * /catalogs / *
  /// /completionConfig`
  ///
  /// Required. Immutable.
  core.String? name;

  /// The source data for the latest import of the autocomplete suggestion
  /// phrases.
  ///
  /// Output only.
  GoogleCloudRetailV2alphaCompletionDataInputConfig? suggestionsInputConfig;

  GoogleCloudRetailV2alphaCompletionConfig({
    this.allowlistInputConfig,
    this.autoLearning,
    this.denylistInputConfig,
    this.lastAllowlistImportOperation,
    this.lastDenylistImportOperation,
    this.lastSuggestionsImportOperation,
    this.matchingOrder,
    this.maxSuggestions,
    this.minPrefixLength,
    this.name,
    this.suggestionsInputConfig,
  });

  GoogleCloudRetailV2alphaCompletionConfig.fromJson(core.Map json_)
    : this(
        allowlistInputConfig:
            json_.containsKey('allowlistInputConfig')
                ? GoogleCloudRetailV2alphaCompletionDataInputConfig.fromJson(
                  json_['allowlistInputConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        autoLearning: json_['autoLearning'] as core.bool?,
        denylistInputConfig:
            json_.containsKey('denylistInputConfig')
                ? GoogleCloudRetailV2alphaCompletionDataInputConfig.fromJson(
                  json_['denylistInputConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        lastAllowlistImportOperation:
            json_['lastAllowlistImportOperation'] as core.String?,
        lastDenylistImportOperation:
            json_['lastDenylistImportOperation'] as core.String?,
        lastSuggestionsImportOperation:
            json_['lastSuggestionsImportOperation'] as core.String?,
        matchingOrder: json_['matchingOrder'] as core.String?,
        maxSuggestions: json_['maxSuggestions'] as core.int?,
        minPrefixLength: json_['minPrefixLength'] as core.int?,
        name: json_['name'] as core.String?,
        suggestionsInputConfig:
            json_.containsKey('suggestionsInputConfig')
                ? GoogleCloudRetailV2alphaCompletionDataInputConfig.fromJson(
                  json_['suggestionsInputConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowlistInputConfig != null)
      'allowlistInputConfig': allowlistInputConfig!,
    if (autoLearning != null) 'autoLearning': autoLearning!,
    if (denylistInputConfig != null)
      'denylistInputConfig': denylistInputConfig!,
    if (lastAllowlistImportOperation != null)
      'lastAllowlistImportOperation': lastAllowlistImportOperation!,
    if (lastDenylistImportOperation != null)
      'lastDenylistImportOperation': lastDenylistImportOperation!,
    if (lastSuggestionsImportOperation != null)
      'lastSuggestionsImportOperation': lastSuggestionsImportOperation!,
    if (matchingOrder != null) 'matchingOrder': matchingOrder!,
    if (maxSuggestions != null) 'maxSuggestions': maxSuggestions!,
    if (minPrefixLength != null) 'minPrefixLength': minPrefixLength!,
    if (name != null) 'name': name!,
    if (suggestionsInputConfig != null)
      'suggestionsInputConfig': suggestionsInputConfig!,
  };
}

/// The input config source for completion data.
class GoogleCloudRetailV2alphaCompletionDataInputConfig {
  /// BigQuery input source.
  ///
  /// Add the IAM permission "BigQuery Data Viewer" for
  /// cloud-retail-customer-data-access@system.gserviceaccount.com before using
  /// this feature otherwise an error is thrown.
  ///
  /// Required.
  GoogleCloudRetailV2alphaBigQuerySource? bigQuerySource;

  GoogleCloudRetailV2alphaCompletionDataInputConfig({this.bigQuerySource});

  GoogleCloudRetailV2alphaCompletionDataInputConfig.fromJson(core.Map json_)
    : this(
        bigQuerySource:
            json_.containsKey('bigQuerySource')
                ? GoogleCloudRetailV2alphaBigQuerySource.fromJson(
                  json_['bigQuerySource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bigQuerySource != null) 'bigQuerySource': bigQuerySource!,
  };
}

/// Detailed completion information including completion attribution token and
/// clicked completion info.
typedef GoogleCloudRetailV2alphaCompletionDetail = $CompletionDetail;

/// Metadata that is used to define a condition that triggers an action.
///
/// A valid condition must specify at least one of 'query_terms' or
/// 'products_filter'. If multiple fields are specified, the condition is met if
/// all the fields are satisfied e.g. if a set of query terms and product_filter
/// are set, then only items matching the product_filter for requests with a
/// query matching the query terms wil get boosted.
class GoogleCloudRetailV2alphaCondition {
  /// Range of time(s) specifying when Condition is active.
  ///
  /// Condition true if any time range matches.
  core.List<GoogleCloudRetailV2alphaConditionTimeRange>? activeTimeRange;

  /// Used to support browse uses cases.
  ///
  /// A list (up to 10 entries) of categories or departments. The format should
  /// be the same as UserEvent.page_categories;
  core.List<core.String>? pageCategories;

  /// A list (up to 10 entries) of terms to match the query on.
  ///
  /// If not specified, match all queries. If many query terms are specified,
  /// the condition is matched if any of the terms is a match (i.e. using the OR
  /// operator).
  core.List<GoogleCloudRetailV2alphaConditionQueryTerm>? queryTerms;

  GoogleCloudRetailV2alphaCondition({
    this.activeTimeRange,
    this.pageCategories,
    this.queryTerms,
  });

  GoogleCloudRetailV2alphaCondition.fromJson(core.Map json_)
    : this(
        activeTimeRange:
            (json_['activeTimeRange'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaConditionTimeRange.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        pageCategories:
            (json_['pageCategories'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        queryTerms:
            (json_['queryTerms'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaConditionQueryTerm.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activeTimeRange != null) 'activeTimeRange': activeTimeRange!,
    if (pageCategories != null) 'pageCategories': pageCategories!,
    if (queryTerms != null) 'queryTerms': queryTerms!,
  };
}

/// Query terms that we want to match on.
typedef GoogleCloudRetailV2alphaConditionQueryTerm = $ConditionQueryTerm01;

/// Used for time-dependent conditions.
///
/// Example: Want to have rule applied for week long sale.
typedef GoogleCloudRetailV2alphaConditionTimeRange = $ConditionTimeRange01;

/// Configures dynamic metadata that can be linked to a ServingConfig and affect
/// search or recommendation results at serving time.
class GoogleCloudRetailV2alphaControl {
  /// List of serving config ids that are associated with this control in the
  /// same Catalog.
  ///
  /// Note the association is managed via the ServingConfig, this is an output
  /// only denormalized view.
  ///
  /// Output only.
  core.List<core.String>? associatedServingConfigIds;

  /// The human readable control display name.
  ///
  /// Used in Retail UI. This field must be a UTF-8 encoded string with a length
  /// limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is thrown.
  ///
  /// Required.
  core.String? displayName;

  /// A facet specification to perform faceted search.
  ///
  /// Note that this field is deprecated and will throw NOT_IMPLEMENTED if used
  /// for creating a control.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudRetailV2alphaSearchRequestFacetSpec? facetSpec;

  /// Fully qualified name `projects / * /locations/global/catalogs / *
  /// /controls / * `
  ///
  /// Immutable.
  core.String? name;

  /// A rule control - a condition-action pair.
  ///
  /// Enacts a set action when the condition is triggered. For example: Boost
  /// "gShoe" when query full matches "Running Shoes".
  GoogleCloudRetailV2alphaRule? rule;

  /// Specifies the use case for the control.
  ///
  /// Affects what condition fields can be set. Only settable by search
  /// controls. Will default to SEARCH_SOLUTION_USE_CASE_SEARCH if not
  /// specified. Currently only allow one search_solution_use_case per control.
  core.List<core.String>? searchSolutionUseCase;

  /// The solution types that the control is used for.
  ///
  /// Currently we support setting only one type of solution at creation time.
  /// Only `SOLUTION_TYPE_SEARCH` value is supported at the moment. If no
  /// solution type is provided at creation time, will default to
  /// SOLUTION_TYPE_SEARCH.
  ///
  /// Required. Immutable.
  core.List<core.String>? solutionTypes;

  GoogleCloudRetailV2alphaControl({
    this.associatedServingConfigIds,
    this.displayName,
    this.facetSpec,
    this.name,
    this.rule,
    this.searchSolutionUseCase,
    this.solutionTypes,
  });

  GoogleCloudRetailV2alphaControl.fromJson(core.Map json_)
    : this(
        associatedServingConfigIds:
            (json_['associatedServingConfigIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        displayName: json_['displayName'] as core.String?,
        facetSpec:
            json_.containsKey('facetSpec')
                ? GoogleCloudRetailV2alphaSearchRequestFacetSpec.fromJson(
                  json_['facetSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        rule:
            json_.containsKey('rule')
                ? GoogleCloudRetailV2alphaRule.fromJson(
                  json_['rule'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        searchSolutionUseCase:
            (json_['searchSolutionUseCase'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        solutionTypes:
            (json_['solutionTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (associatedServingConfigIds != null)
      'associatedServingConfigIds': associatedServingConfigIds!,
    if (displayName != null) 'displayName': displayName!,
    if (facetSpec != null) 'facetSpec': facetSpec!,
    if (name != null) 'name': name!,
    if (rule != null) 'rule': rule!,
    if (searchSolutionUseCase != null)
      'searchSolutionUseCase': searchSolutionUseCase!,
    if (solutionTypes != null) 'solutionTypes': solutionTypes!,
  };
}

/// The public proto to represent the conversational search customization
/// config.
///
/// It will be converted to the internal proto in the backend.
class GoogleCloudRetailV2alphaConversationalSearchCustomizationConfig {
  /// Resource name of the catalog.
  ///
  /// Format: projects/{project}/locations/{location}/catalogs/{catalog}
  ///
  /// Required.
  core.String? catalog;

  /// The configs for intent classification.
  ///
  /// Optional.
  GoogleCloudRetailV2alphaIntentClassificationConfig?
  intentClassificationConfig;

  /// The retailer's display name that could be used in our LLM answers.
  ///
  /// Example - "Google"
  ///
  /// Optional.
  core.String? retailerDisplayName;

  GoogleCloudRetailV2alphaConversationalSearchCustomizationConfig({
    this.catalog,
    this.intentClassificationConfig,
    this.retailerDisplayName,
  });

  GoogleCloudRetailV2alphaConversationalSearchCustomizationConfig.fromJson(
    core.Map json_,
  ) : this(
        catalog: json_['catalog'] as core.String?,
        intentClassificationConfig:
            json_.containsKey('intentClassificationConfig')
                ? GoogleCloudRetailV2alphaIntentClassificationConfig.fromJson(
                  json_['intentClassificationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        retailerDisplayName: json_['retailerDisplayName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (catalog != null) 'catalog': catalog!,
    if (intentClassificationConfig != null)
      'intentClassificationConfig': intentClassificationConfig!,
    if (retailerDisplayName != null)
      'retailerDisplayName': retailerDisplayName!,
  };
}

/// Request message for ConversationalSearchService.ConversationalSearch method.
class GoogleCloudRetailV2alphaConversationalSearchRequest {
  /// The branch resource name, such as `projects / *
  /// /locations/global/catalogs/default_catalog/branches/0`.
  ///
  /// Use "default_branch" as the branch ID or leave this field empty, to search
  /// products under the default branch.
  ///
  /// Required.
  core.String? branch;

  /// This field specifies the conversation id, which maintains the state of the
  /// conversation between client side and server side.
  ///
  /// Use the value from the previous
  /// ConversationalSearchResponse.conversation_id. For the initial request,
  /// this should be empty.
  ///
  /// Optional.
  core.String? conversationId;

  /// This field specifies all conversational filtering related parameters.
  ///
  /// Optional.
  GoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec?
  conversationalFilteringSpec;

  /// The categories associated with a category page.
  ///
  /// Must be set for category navigation queries to achieve good search
  /// quality. The format should be the same as UserEvent.page_categories; To
  /// represent full path of category, use '\>' sign to separate different
  /// hierarchies. If '\>' is part of the category name, replace it with other
  /// character(s). Category pages include special pages such as sales or
  /// promotions. For instance, a special sale page may have the category
  /// hierarchy: "pageCategories" : \["Sales \> 2017 Black Friday Deals"\].
  ///
  /// Optional.
  core.List<core.String>? pageCategories;

  /// Raw search query to be searched for.
  ///
  /// If this field is empty, the request is considered a category browsing
  /// request.
  ///
  /// Optional.
  core.String? query;

  /// The safety settings to be applied to the generated content.
  ///
  /// Optional.
  core.List<GoogleCloudRetailV2alphaSafetySetting>? safetySettings;

  /// Search parameters.
  ///
  /// Optional.
  GoogleCloudRetailV2alphaConversationalSearchRequestSearchParams? searchParams;

  /// User information.
  ///
  /// Optional.
  GoogleCloudRetailV2alphaUserInfo? userInfo;

  /// The user labels applied to a resource must meet the following
  /// requirements: * Each resource can have multiple labels, up to a maximum of
  /// 64.
  ///
  /// * Each label must be a key-value pair. * Keys have a minimum length of 1
  /// character and a maximum length of 63 characters and cannot be empty.
  /// Values can be empty and have a maximum length of 63 characters. * Keys and
  /// values can contain only lowercase letters, numeric characters,
  /// underscores, and dashes. All characters must use UTF-8 encoding, and
  /// international characters are allowed. * The key portion of a label must be
  /// unique. However, you can use the same key with multiple resources. * Keys
  /// must start with a lowercase letter or international character. See
  /// [Google Cloud Document](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements)
  /// for more details.
  ///
  /// Optional.
  core.Map<core.String, core.String>? userLabels;

  /// A unique identifier for tracking visitors.
  ///
  /// For example, this could be implemented with an HTTP cookie, which should
  /// be able to uniquely identify a visitor on a single device. This unique
  /// identifier should not change if the visitor logs in or out of the website.
  /// This should be the same identifier as UserEvent.visitor_id. The field must
  /// be a UTF-8 encoded string with a length limit of 128 characters.
  /// Otherwise, an INVALID_ARGUMENT error is returned.
  ///
  /// Required.
  core.String? visitorId;

  GoogleCloudRetailV2alphaConversationalSearchRequest({
    this.branch,
    this.conversationId,
    this.conversationalFilteringSpec,
    this.pageCategories,
    this.query,
    this.safetySettings,
    this.searchParams,
    this.userInfo,
    this.userLabels,
    this.visitorId,
  });

  GoogleCloudRetailV2alphaConversationalSearchRequest.fromJson(core.Map json_)
    : this(
        branch: json_['branch'] as core.String?,
        conversationId: json_['conversationId'] as core.String?,
        conversationalFilteringSpec:
            json_.containsKey('conversationalFilteringSpec')
                ? GoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec.fromJson(
                  json_['conversationalFilteringSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        pageCategories:
            (json_['pageCategories'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        query: json_['query'] as core.String?,
        safetySettings:
            (json_['safetySettings'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaSafetySetting.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        searchParams:
            json_.containsKey('searchParams')
                ? GoogleCloudRetailV2alphaConversationalSearchRequestSearchParams.fromJson(
                  json_['searchParams'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userInfo:
            json_.containsKey('userInfo')
                ? GoogleCloudRetailV2alphaUserInfo.fromJson(
                  json_['userInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userLabels: (json_['userLabels']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        visitorId: json_['visitorId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (branch != null) 'branch': branch!,
    if (conversationId != null) 'conversationId': conversationId!,
    if (conversationalFilteringSpec != null)
      'conversationalFilteringSpec': conversationalFilteringSpec!,
    if (pageCategories != null) 'pageCategories': pageCategories!,
    if (query != null) 'query': query!,
    if (safetySettings != null) 'safetySettings': safetySettings!,
    if (searchParams != null) 'searchParams': searchParams!,
    if (userInfo != null) 'userInfo': userInfo!,
    if (userLabels != null) 'userLabels': userLabels!,
    if (visitorId != null) 'visitorId': visitorId!,
  };
}

/// This field specifies all conversational filtering related parameters
/// addition to conversational retail search.
class GoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec {
  /// Mode to control Conversational Filtering.
  ///
  /// Defaults to Mode.DISABLED if it's unset.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Default value.
  /// - "DISABLED" : Disable Conversational Filtering.
  /// - "ENABLED" : Enabled Conversational Filtering with default Conversational
  /// Search.
  /// - "CONVERSATIONAL_FILTER_ONLY" : Enabled Conversational Filtering without
  /// default Conversational Search.
  core.String? conversationalFilteringMode;

  /// This field is deprecated.
  ///
  /// Please use ConversationalFilteringSpec.conversational_filtering_mode
  /// instead.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? enableConversationalFiltering;

  /// This field specifies the current user answer during the conversational
  /// filtering search.
  ///
  /// It can be either user selected from suggested answers or user input plain
  /// text.
  ///
  /// Optional.
  GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer? userAnswer;

  GoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec({
    this.conversationalFilteringMode,
    this.enableConversationalFiltering,
    this.userAnswer,
  });

  GoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec.fromJson(
    core.Map json_,
  ) : this(
        conversationalFilteringMode:
            json_['conversationalFilteringMode'] as core.String?,
        enableConversationalFiltering:
            json_['enableConversationalFiltering'] as core.bool?,
        userAnswer:
            json_.containsKey('userAnswer')
                ? GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer.fromJson(
                  json_['userAnswer'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conversationalFilteringMode != null)
      'conversationalFilteringMode': conversationalFilteringMode!,
    if (enableConversationalFiltering != null)
      'enableConversationalFiltering': enableConversationalFiltering!,
    if (userAnswer != null) 'userAnswer': userAnswer!,
  };
}

/// Search parameters.
class GoogleCloudRetailV2alphaConversationalSearchRequestSearchParams {
  /// The boost spec to specify the boosting of search results.
  ///
  /// The syntax of the boost spec is the same as SearchRequest.boost_spec.
  ///
  /// Optional.
  GoogleCloudRetailV2alphaSearchRequestBoostSpec? boostSpec;

  /// The canonical filter string to restrict search results.
  ///
  /// The syntax of the canonical filter string is the same as
  /// SearchRequest.canonical_filter.
  ///
  /// Optional.
  core.String? canonicalFilter;

  /// The filter string to restrict search results.
  ///
  /// The syntax of the filter string is the same as SearchRequest.filter.
  ///
  /// Optional.
  core.String? filter;

  /// The sort string to specify the sorting of search results.
  ///
  /// The syntax of the sort string is the same as SearchRequest.sort.
  ///
  /// Optional.
  core.String? sortBy;

  GoogleCloudRetailV2alphaConversationalSearchRequestSearchParams({
    this.boostSpec,
    this.canonicalFilter,
    this.filter,
    this.sortBy,
  });

  GoogleCloudRetailV2alphaConversationalSearchRequestSearchParams.fromJson(
    core.Map json_,
  ) : this(
        boostSpec:
            json_.containsKey('boostSpec')
                ? GoogleCloudRetailV2alphaSearchRequestBoostSpec.fromJson(
                  json_['boostSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        canonicalFilter: json_['canonicalFilter'] as core.String?,
        filter: json_['filter'] as core.String?,
        sortBy: json_['sortBy'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boostSpec != null) 'boostSpec': boostSpec!,
    if (canonicalFilter != null) 'canonicalFilter': canonicalFilter!,
    if (filter != null) 'filter': filter!,
    if (sortBy != null) 'sortBy': sortBy!,
  };
}

/// This field specifies the current user answer during the conversational
/// filtering search.
///
/// This can be either user selected from suggested answers or user input plain
/// text.
class GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer {
  /// This field specifies the selected answer during the conversational search.
  ///
  /// This should be a subset of
  /// ConversationalSearchResponse.followup_question.suggested_answers.
  ///
  /// Optional.
  GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer?
  selectedAnswer;

  /// This field specifies the incremental input text from the user during the
  /// conversational search.
  core.String? textAnswer;

  GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer({
    this.selectedAnswer,
    this.textAnswer,
  });

  GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer.fromJson(
    core.Map json_,
  ) : this(
        selectedAnswer:
            json_.containsKey('selectedAnswer')
                ? GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer.fromJson(
                  json_['selectedAnswer']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        textAnswer: json_['textAnswer'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (selectedAnswer != null) 'selectedAnswer': selectedAnswer!,
    if (textAnswer != null) 'textAnswer': textAnswer!,
  };
}

/// This field specifies the selected answers during the conversational search.
class GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer {
  /// This field specifies the selected answer which is a attribute key-value.
  ///
  /// Optional.
  GoogleCloudRetailV2alphaProductAttributeValue? productAttributeValue;

  GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer({
    this.productAttributeValue,
  });

  GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer.fromJson(
    core.Map json_,
  ) : this(
        productAttributeValue:
            json_.containsKey('productAttributeValue')
                ? GoogleCloudRetailV2alphaProductAttributeValue.fromJson(
                  json_['productAttributeValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (productAttributeValue != null)
      'productAttributeValue': productAttributeValue!,
  };
}

/// Response message for ConversationalSearchService.ConversationalSearch
/// method.
class GoogleCloudRetailV2alphaConversationalSearchResponse {
  /// Conversation UUID.
  ///
  /// This field will be stored in client side storage to maintain the
  /// conversation session with server and will be used for next search
  /// request's ConversationalSearchRequest.conversation_id to restore
  /// conversation state in server.
  core.String? conversationId;

  /// This field specifies all related information that is needed on client side
  /// for UI rendering of conversational filtering search.
  GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult?
  conversationalFilteringResult;

  /// The conversational answer-based text response generated by the Server.
  core.String? conversationalTextResponse;

  /// The conversational followup question generated for Intent refinement.
  GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion?
  followupQuestion;

  /// The proposed refined search queries.
  ///
  /// They can be used to fetch the relevant search results. When using
  /// CONVERSATIONAL_FILTER_ONLY mode, the refined_query from search response
  /// will be populated here.
  core.List<GoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch>?
  refinedSearch;

  /// The state of the response generation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unknown.
  /// - "STREAMING" : Response generation is being streamed.
  /// - "SUCCEEDED" : Response generation has succeeded.
  core.String? state;

  /// The types Retail classifies the search query as.
  ///
  /// Supported values are: - "ADVERSARIAL" - "CHITCHAT" - "JAILBREAK" -
  /// "ORDER_SUPPORT" - "SIMPLE_PRODUCT_SEARCH" - "INTENT_REFINEMENT" -
  /// "PRODUCT_DETAILS" - "PRODUCT_COMPARISON" - "DEALS_AND_COUPONS" -
  /// "STORE_RELEVANT" - "BLOCKLISTED" - "BEST_PRODUCT" - "RETAIL_SUPPORT" -
  /// "DISABLED" clang-format off clang-format on
  core.List<core.String>? userQueryTypes;

  GoogleCloudRetailV2alphaConversationalSearchResponse({
    this.conversationId,
    this.conversationalFilteringResult,
    this.conversationalTextResponse,
    this.followupQuestion,
    this.refinedSearch,
    this.state,
    this.userQueryTypes,
  });

  GoogleCloudRetailV2alphaConversationalSearchResponse.fromJson(core.Map json_)
    : this(
        conversationId: json_['conversationId'] as core.String?,
        conversationalFilteringResult:
            json_.containsKey('conversationalFilteringResult')
                ? GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult.fromJson(
                  json_['conversationalFilteringResult']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        conversationalTextResponse:
            json_['conversationalTextResponse'] as core.String?,
        followupQuestion:
            json_.containsKey('followupQuestion')
                ? GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion.fromJson(
                  json_['followupQuestion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        refinedSearch:
            (json_['refinedSearch'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        state: json_['state'] as core.String?,
        userQueryTypes:
            (json_['userQueryTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conversationId != null) 'conversationId': conversationId!,
    if (conversationalFilteringResult != null)
      'conversationalFilteringResult': conversationalFilteringResult!,
    if (conversationalTextResponse != null)
      'conversationalTextResponse': conversationalTextResponse!,
    if (followupQuestion != null) 'followupQuestion': followupQuestion!,
    if (refinedSearch != null) 'refinedSearch': refinedSearch!,
    if (state != null) 'state': state!,
    if (userQueryTypes != null) 'userQueryTypes': userQueryTypes!,
  };
}

/// This field specifies all related information that is needed on client side
/// for UI rendering of conversational filtering search.
class GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult {
  /// This is the incremental additional filters implied from the current user
  /// answer.
  ///
  /// User should add the suggested addition filters to the previous
  /// ConversationalSearchRequest.search_params.filter and SearchRequest.filter,
  /// and use the merged filter in the follow up requests.
  GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter?
  additionalFilter;

  /// The conversational filtering question.
  GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion?
  followupQuestion;

  GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult({
    this.additionalFilter,
    this.followupQuestion,
  });

  GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult.fromJson(
    core.Map json_,
  ) : this(
        additionalFilter:
            json_.containsKey('additionalFilter')
                ? GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter.fromJson(
                  json_['additionalFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        followupQuestion:
            json_.containsKey('followupQuestion')
                ? GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion.fromJson(
                  json_['followupQuestion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalFilter != null) 'additionalFilter': additionalFilter!,
    if (followupQuestion != null) 'followupQuestion': followupQuestion!,
  };
}

/// Additional filter that client side need to apply.
class GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter {
  /// Product attribute value, including an attribute key and an attribute
  /// value.
  ///
  /// Other types can be added here in the future.
  GoogleCloudRetailV2alphaProductAttributeValue? productAttributeValue;

  GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter({
    this.productAttributeValue,
  });

  GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter.fromJson(
    core.Map json_,
  ) : this(
        productAttributeValue:
            json_.containsKey('productAttributeValue')
                ? GoogleCloudRetailV2alphaProductAttributeValue.fromJson(
                  json_['productAttributeValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (productAttributeValue != null)
      'productAttributeValue': productAttributeValue!,
  };
}

/// The conversational followup question generated for Intent refinement.
class GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion {
  /// The conversational followup question generated for Intent refinement.
  core.String? followupQuestion;

  /// The answer options provided to client for the follow-up question.
  core.List<
    GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer
  >?
  suggestedAnswers;

  GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion({
    this.followupQuestion,
    this.suggestedAnswers,
  });

  GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion.fromJson(
    core.Map json_,
  ) : this(
        followupQuestion: json_['followupQuestion'] as core.String?,
        suggestedAnswers:
            (json_['suggestedAnswers'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (followupQuestion != null) 'followupQuestion': followupQuestion!,
    if (suggestedAnswers != null) 'suggestedAnswers': suggestedAnswers!,
  };
}

/// Suggested answers to the follow-up question.
///
/// If it's numerical attribute, only ProductAttributeInterval will be set. If
/// it's textual attribute, only productAttributeValue will be set.
class GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer {
  /// Product attribute value, including an attribute key and an attribute
  /// value.
  ///
  /// Other types can be added here in the future.
  GoogleCloudRetailV2alphaProductAttributeValue? productAttributeValue;

  GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer({
    this.productAttributeValue,
  });

  GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer.fromJson(
    core.Map json_,
  ) : this(
        productAttributeValue:
            json_.containsKey('productAttributeValue')
                ? GoogleCloudRetailV2alphaProductAttributeValue.fromJson(
                  json_['productAttributeValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (productAttributeValue != null)
      'productAttributeValue': productAttributeValue!,
  };
}

/// The proposed refined search for intent-refinement/bundled shopping
/// conversation.
///
/// When using CONVERSATIONAL_FILTER_ONLY mode, the refined_query from search
/// response will be populated here.
class GoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch {
  /// The query to be used for search.
  core.String? query;

  GoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch({
    this.query,
  });

  GoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch.fromJson(
    core.Map json_,
  ) : this(query: json_['query'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (query != null) 'query': query!,
  };
}

/// A custom attribute that is not explicitly modeled in Product.
typedef GoogleCloudRetailV2alphaCustomAttribute = $CustomAttribute01;

/// A message with a list of double values.
typedef GoogleCloudRetailV2alphaDoubleList = $DoubleList01;

/// Request for EnrollSolution method.
class GoogleCloudRetailV2alphaEnrollSolutionRequest {
  /// Solution to enroll.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SOLUTION_TYPE_UNSPECIFIED" : Default value.
  /// - "SOLUTION_TYPE_RECOMMENDATION" : Used for Recommendations AI.
  /// - "SOLUTION_TYPE_SEARCH" : Used for Retail Search.
  core.String? solution;

  GoogleCloudRetailV2alphaEnrollSolutionRequest({this.solution});

  GoogleCloudRetailV2alphaEnrollSolutionRequest.fromJson(core.Map json_)
    : this(solution: json_['solution'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (solution != null) 'solution': solution!,
  };
}

/// Metadata for active A/B testing experiment.
class GoogleCloudRetailV2alphaExperimentInfo {
  /// The fully qualified resource name of the experiment that provides the
  /// serving config under test, should an active experiment exist.
  ///
  /// For example: `projects / *
  /// /locations/global/catalogs/default_catalog/experiments/experiment_id`
  core.String? experiment;

  /// A/B test between existing Cloud Retail Search ServingConfigs.
  GoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment?
  servingConfigExperiment;

  GoogleCloudRetailV2alphaExperimentInfo({
    this.experiment,
    this.servingConfigExperiment,
  });

  GoogleCloudRetailV2alphaExperimentInfo.fromJson(core.Map json_)
    : this(
        experiment: json_['experiment'] as core.String?,
        servingConfigExperiment:
            json_.containsKey('servingConfigExperiment')
                ? GoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment.fromJson(
                  json_['servingConfigExperiment']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (experiment != null) 'experiment': experiment!,
    if (servingConfigExperiment != null)
      'servingConfigExperiment': servingConfigExperiment!,
  };
}

/// Metadata for active serving config A/B tests.
typedef GoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment =
    $ExperimentInfoServingConfigExperiment;

/// Request message for the `ExportAnalyticsMetrics` method.
class GoogleCloudRetailV2alphaExportAnalyticsMetricsRequest {
  /// A filtering expression to specify restrictions on returned metrics.
  ///
  /// The expression is a sequence of terms. Each term applies a restriction to
  /// the returned metrics. Use this expression to restrict results to a
  /// specific time range. Currently we expect only one types of fields: *
  /// `timestamp`: This can be specified twice, once with a less than operator
  /// and once with a greater than operator. The `timestamp` restriction should
  /// result in one, contiguous, valid, `timestamp` range. Some examples of
  /// valid filters expressions: * Example 1: `timestamp >
  /// "2012-04-23T18:25:43.511Z" timestamp < "2012-04-23T18:30:43.511Z"` *
  /// Example 2: `timestamp > "2012-04-23T18:25:43.511Z"`
  core.String? filter;

  /// The output location of the data.
  ///
  /// Required.
  GoogleCloudRetailV2alphaOutputConfig? outputConfig;

  GoogleCloudRetailV2alphaExportAnalyticsMetricsRequest({
    this.filter,
    this.outputConfig,
  });

  GoogleCloudRetailV2alphaExportAnalyticsMetricsRequest.fromJson(core.Map json_)
    : this(
        filter: json_['filter'] as core.String?,
        outputConfig:
            json_.containsKey('outputConfig')
                ? GoogleCloudRetailV2alphaOutputConfig.fromJson(
                  json_['outputConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (filter != null) 'filter': filter!,
    if (outputConfig != null) 'outputConfig': outputConfig!,
  };
}

/// Request message for ExportProducts method.
class GoogleCloudRetailV2alphaExportProductsRequest {
  /// A filtering expression to specify restrictions on returned events.
  ///
  /// The expression is a sequence of terms. Each term applies a restriction to
  /// the returned products. Use this expression to restrict results to a
  /// specific time range, tag, or stock state or to filter products by product
  /// type. For example, `lastModifiedTime > "2012-04-23T18:25:43.511Z"
  /// lastModifiedTime<"2012-04-23T18:25:43.511Z" productType=primary` We expect
  /// only four types of fields: * `lastModifiedTime`: This can be specified
  /// twice, once with a less than operator and once with a greater than
  /// operator. The `lastModifiedTime` restriction should result in one,
  /// contiguous, valid, last-modified, time range. * `productType`: Supported
  /// values are `primary` and `variant`. The Boolean operators `OR` and `NOT`
  /// are supported if the expression is enclosed in parentheses and must be
  /// separated from the `productType` values by a space. * `availability`:
  /// Supported values are `IN_STOCK`, `OUT_OF_STOCK`, `PREORDER`, and
  /// `BACKORDER`. Boolean operators `OR` and `NOT` are supported if the
  /// expression is enclosed in parentheses and must be separated from the
  /// `availability` values by a space. * `Tag expressions`: Restricts output to
  /// products that match all of the specified tags. Boolean operators `OR` and
  /// `NOT` are supported if the expression is enclosed in parentheses and the
  /// operators are separated from the tag values by a space. Also supported is
  /// '`-"tagA"`', which is equivalent to '`NOT "tagA"`'. Tag values must be
  /// double-quoted, UTF-8 encoded strings and have a size limit of 1,000
  /// characters. Some examples of valid filters expressions: * Example 1:
  /// `lastModifiedTime > "2012-04-23T18:25:43.511Z" lastModifiedTime <
  /// "2012-04-23T18:30:43.511Z"` * Example 2: `lastModifiedTime >
  /// "2012-04-23T18:25:43.511Z" productType = "variant"` * Example 3:
  /// `tag=("Red" OR "Blue") tag="New-Arrival" tag=(NOT "promotional")
  /// productType = "primary" lastModifiedTime < "2018-04-23T18:30:43.511Z"` *
  /// Example 4: `lastModifiedTime > "2012-04-23T18:25:43.511Z"` * Example 5:
  /// `availability = (IN_STOCK OR BACKORDER)`
  core.String? filter;

  /// The output location of the data.
  ///
  /// Required.
  GoogleCloudRetailV2alphaOutputConfig? outputConfig;

  GoogleCloudRetailV2alphaExportProductsRequest({
    this.filter,
    this.outputConfig,
  });

  GoogleCloudRetailV2alphaExportProductsRequest.fromJson(core.Map json_)
    : this(
        filter: json_['filter'] as core.String?,
        outputConfig:
            json_.containsKey('outputConfig')
                ? GoogleCloudRetailV2alphaOutputConfig.fromJson(
                  json_['outputConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (filter != null) 'filter': filter!,
    if (outputConfig != null) 'outputConfig': outputConfig!,
  };
}

/// Request message for the `ExportUserEvents` method.
class GoogleCloudRetailV2alphaExportUserEventsRequest {
  /// A filtering expression to specify restrictions on returned events.
  ///
  /// The expression is a sequence of terms. Each term applies a restriction to
  /// the returned user events. Use this expression to restrict results to a
  /// specific time range or to filter events by eventType. For example,
  /// `eventTime > "2012-04-23T18:25:43.511Z" eventsMissingCatalogItems
  /// eventTime<"2012-04-23T18:25:43.511Z" eventType=search` We expect only
  /// three types of fields: * `eventTime`: This can be specified twice, once
  /// with a less than operator and once with a greater than operator. The
  /// `eventTime` restriction should result in one, contiguous, valid,
  /// `eventTime` range. * `eventType`: Boolean operators `OR` and `NOT` are
  /// supported if the expression is enclosed in parentheses and the operators
  /// are separated from the tag values by a space. *
  /// `eventsMissingCatalogItems`: This restricts results to events for which
  /// catalog items were not found in the catalog. The default behavior is to
  /// return only those events for which catalog items were found. Some examples
  /// of valid filters expressions: * Example 1: `eventTime >
  /// "2012-04-23T18:25:43.511Z" eventTime < "2012-04-23T18:30:43.511Z"` *
  /// Example 2: `eventTime > "2012-04-23T18:25:43.511Z" eventType =
  /// detail-page-view` * Example 3: `eventsMissingCatalogItems eventType = (NOT
  /// search) eventTime < "2018-04-23T18:30:43.511Z"` * Example 4: `eventTime >
  /// "2012-04-23T18:25:43.511Z"` * Example 5: `eventType = (detail-page-view OR
  /// search)` * Example 6: `eventsMissingCatalogItems`
  core.String? filter;

  /// The output location of the data.
  ///
  /// Required.
  GoogleCloudRetailV2alphaOutputConfig? outputConfig;

  GoogleCloudRetailV2alphaExportUserEventsRequest({
    this.filter,
    this.outputConfig,
  });

  GoogleCloudRetailV2alphaExportUserEventsRequest.fromJson(core.Map json_)
    : this(
        filter: json_['filter'] as core.String?,
        outputConfig:
            json_.containsKey('outputConfig')
                ? GoogleCloudRetailV2alphaOutputConfig.fromJson(
                  json_['outputConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (filter != null) 'filter': filter!,
    if (outputConfig != null) 'outputConfig': outputConfig!,
  };
}

/// Fulfillment information, such as the store IDs for in-store pickup or region
/// IDs for different shipping methods.
typedef GoogleCloudRetailV2alphaFulfillmentInfo = $FulfillmentInfo;

/// Google Cloud Storage location for input content.
typedef GoogleCloudRetailV2alphaGcsSource = $GcsSource02;

/// Configuration for a single generated question.
typedef GoogleCloudRetailV2alphaGenerativeQuestionConfig =
    $GenerativeQuestionConfig;

/// Configuration for overall generative question feature state.
typedef GoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig =
    $GenerativeQuestionsFeatureConfig;

/// Response message of CatalogService.GetDefaultBranch.
typedef GoogleCloudRetailV2alphaGetDefaultBranchResponse =
    $GetDefaultBranchResponse;

/// Product image.
///
/// Recommendations AI and Retail Search use product images to improve
/// prediction and search results. Product images can be returned in results,
/// and are shown in prediction or search previews in the console. Please try to
/// provide correct product images and avoid using images with size too small.
typedef GoogleCloudRetailV2alphaImage = $Image00;

/// Request message for ImportCompletionData methods.
class GoogleCloudRetailV2alphaImportCompletionDataRequest {
  /// The desired input location of the data.
  ///
  /// Required.
  GoogleCloudRetailV2alphaCompletionDataInputConfig? inputConfig;

  /// Pub/Sub topic for receiving notification.
  ///
  /// If this field is set, when the import is finished, a notification is sent
  /// to specified Pub/Sub topic. The message data is JSON string of a
  /// Operation. Format of the Pub/Sub topic is
  /// `projects/{project}/topics/{topic}`.
  core.String? notificationPubsubTopic;

  GoogleCloudRetailV2alphaImportCompletionDataRequest({
    this.inputConfig,
    this.notificationPubsubTopic,
  });

  GoogleCloudRetailV2alphaImportCompletionDataRequest.fromJson(core.Map json_)
    : this(
        inputConfig:
            json_.containsKey('inputConfig')
                ? GoogleCloudRetailV2alphaCompletionDataInputConfig.fromJson(
                  json_['inputConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        notificationPubsubTopic:
            json_['notificationPubsubTopic'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (inputConfig != null) 'inputConfig': inputConfig!,
    if (notificationPubsubTopic != null)
      'notificationPubsubTopic': notificationPubsubTopic!,
  };
}

/// Configuration of destination for Import related errors.
typedef GoogleCloudRetailV2alphaImportErrorsConfig = $ImportErrorsConfig;

/// Request message for Import methods.
class GoogleCloudRetailV2alphaImportProductsRequest {
  /// The desired location of errors incurred during the Import.
  GoogleCloudRetailV2alphaImportErrorsConfig? errorsConfig;

  /// The desired input location of the data.
  ///
  /// Required.
  GoogleCloudRetailV2alphaProductInputConfig? inputConfig;

  /// Full Pub/Sub topic name for receiving notification.
  ///
  /// If this field is set, when the import is finished, a notification is sent
  /// to specified Pub/Sub topic. The message data is JSON string of a
  /// Operation. Format of the Pub/Sub topic is
  /// `projects/{project}/topics/{topic}`. It has to be within the same project
  /// as ImportProductsRequest.parent. Make sure that both
  /// `cloud-retail-customer-data-access@system.gserviceaccount.com` and
  /// `service-@gcp-sa-retail.iam.gserviceaccount.com` have the
  /// `pubsub.topics.publish` IAM permission on the topic. Only supported when
  /// ImportProductsRequest.reconciliation_mode is set to `FULL`.
  core.String? notificationPubsubTopic;

  /// The mode of reconciliation between existing products and the products to
  /// be imported.
  ///
  /// Defaults to ReconciliationMode.INCREMENTAL.
  /// Possible string values are:
  /// - "RECONCILIATION_MODE_UNSPECIFIED" : Defaults to INCREMENTAL.
  /// - "INCREMENTAL" : Inserts new products or updates existing products.
  /// - "FULL" : Calculates diff and replaces the entire product dataset.
  /// Existing products may be deleted if they are not present in the source
  /// location.
  core.String? reconciliationMode;

  /// This field has no effect.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? requestId;

  /// If true, this performs the FULL import even if it would delete a large
  /// proportion of the products in the default branch, which could potentially
  /// cause outages if you have live predict/search traffic.
  ///
  /// Only supported when ImportProductsRequest.reconciliation_mode is set to
  /// `FULL`.
  core.bool? skipDefaultBranchProtection;

  /// Indicates which fields in the provided imported `products` to update.
  ///
  /// If not set, all fields are updated. If provided, only the existing product
  /// fields are updated. Missing products will not be created.
  core.String? updateMask;

  GoogleCloudRetailV2alphaImportProductsRequest({
    this.errorsConfig,
    this.inputConfig,
    this.notificationPubsubTopic,
    this.reconciliationMode,
    this.requestId,
    this.skipDefaultBranchProtection,
    this.updateMask,
  });

  GoogleCloudRetailV2alphaImportProductsRequest.fromJson(core.Map json_)
    : this(
        errorsConfig:
            json_.containsKey('errorsConfig')
                ? GoogleCloudRetailV2alphaImportErrorsConfig.fromJson(
                  json_['errorsConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        inputConfig:
            json_.containsKey('inputConfig')
                ? GoogleCloudRetailV2alphaProductInputConfig.fromJson(
                  json_['inputConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        notificationPubsubTopic:
            json_['notificationPubsubTopic'] as core.String?,
        reconciliationMode: json_['reconciliationMode'] as core.String?,
        requestId: json_['requestId'] as core.String?,
        skipDefaultBranchProtection:
            json_['skipDefaultBranchProtection'] as core.bool?,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (errorsConfig != null) 'errorsConfig': errorsConfig!,
    if (inputConfig != null) 'inputConfig': inputConfig!,
    if (notificationPubsubTopic != null)
      'notificationPubsubTopic': notificationPubsubTopic!,
    if (reconciliationMode != null) 'reconciliationMode': reconciliationMode!,
    if (requestId != null) 'requestId': requestId!,
    if (skipDefaultBranchProtection != null)
      'skipDefaultBranchProtection': skipDefaultBranchProtection!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// Request message for the ImportUserEvents request.
class GoogleCloudRetailV2alphaImportUserEventsRequest {
  /// The desired location of errors incurred during the Import.
  ///
  /// Cannot be set for inline user event imports.
  GoogleCloudRetailV2alphaImportErrorsConfig? errorsConfig;

  /// The desired input location of the data.
  ///
  /// Required.
  GoogleCloudRetailV2alphaUserEventInputConfig? inputConfig;

  GoogleCloudRetailV2alphaImportUserEventsRequest({
    this.errorsConfig,
    this.inputConfig,
  });

  GoogleCloudRetailV2alphaImportUserEventsRequest.fromJson(core.Map json_)
    : this(
        errorsConfig:
            json_.containsKey('errorsConfig')
                ? GoogleCloudRetailV2alphaImportErrorsConfig.fromJson(
                  json_['errorsConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        inputConfig:
            json_.containsKey('inputConfig')
                ? GoogleCloudRetailV2alphaUserEventInputConfig.fromJson(
                  json_['inputConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (errorsConfig != null) 'errorsConfig': errorsConfig!,
    if (inputConfig != null) 'inputConfig': inputConfig!,
  };
}

/// The public proto to represent the intent classification config.
///
/// It will be converted to the internal proto in the backend.
class GoogleCloudRetailV2alphaIntentClassificationConfig {
  /// A list of keywords that will be used to classify the query to the
  /// "BLOCKLISTED" intent type.
  ///
  /// The keywords are case insensitive.
  ///
  /// Optional.
  core.List<core.String>? blocklistKeywords;

  /// A list of intent types that will be disabled for this customer.
  ///
  /// The intent types must match one of the predefined intent types defined at
  /// https://cloud.google.com/retail/docs/reference/rpc/google.cloud.retail.v2alpha#querytype
  ///
  /// Optional.
  core.List<core.String>? disabledIntentTypes;

  /// A list of examples for intent classification.
  ///
  /// Optional.
  core.List<GoogleCloudRetailV2alphaIntentClassificationConfigExample>? example;

  /// Inline source for intent classifications.
  ///
  /// Optional.
  GoogleCloudRetailV2alphaIntentClassificationConfigInlineSource? inlineSource;

  /// Customers can use the preamble to specify any requirements for
  /// blocklisting intent classification.
  ///
  /// This preamble will be added to the blocklisting intent classification
  /// model prompt.
  ///
  /// Optional.
  core.String? modelPreamble;

  GoogleCloudRetailV2alphaIntentClassificationConfig({
    this.blocklistKeywords,
    this.disabledIntentTypes,
    this.example,
    this.inlineSource,
    this.modelPreamble,
  });

  GoogleCloudRetailV2alphaIntentClassificationConfig.fromJson(core.Map json_)
    : this(
        blocklistKeywords:
            (json_['blocklistKeywords'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        disabledIntentTypes:
            (json_['disabledIntentTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        example:
            (json_['example'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaIntentClassificationConfigExample.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        inlineSource:
            json_.containsKey('inlineSource')
                ? GoogleCloudRetailV2alphaIntentClassificationConfigInlineSource.fromJson(
                  json_['inlineSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        modelPreamble: json_['modelPreamble'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (blocklistKeywords != null) 'blocklistKeywords': blocklistKeywords!,
    if (disabledIntentTypes != null)
      'disabledIntentTypes': disabledIntentTypes!,
    if (example != null) 'example': example!,
    if (inlineSource != null) 'inlineSource': inlineSource!,
    if (modelPreamble != null) 'modelPreamble': modelPreamble!,
  };
}

/// An example for intent classification.
typedef GoogleCloudRetailV2alphaIntentClassificationConfigExample =
    $IntentClassificationConfigExample;

/// An inline force intent classification configuration.
typedef GoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent =
    $IntentClassificationConfigInlineForceIntent;

/// Inline source for intent classifications.
class GoogleCloudRetailV2alphaIntentClassificationConfigInlineSource {
  /// A list of inline force intent classifications.
  ///
  /// Optional.
  core.List<
    GoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent
  >?
  inlineForceIntents;

  GoogleCloudRetailV2alphaIntentClassificationConfigInlineSource({
    this.inlineForceIntents,
  });

  GoogleCloudRetailV2alphaIntentClassificationConfigInlineSource.fromJson(
    core.Map json_,
  ) : this(
        inlineForceIntents:
            (json_['inlineForceIntents'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (inlineForceIntents != null) 'inlineForceIntents': inlineForceIntents!,
  };
}

/// A floating point interval.
typedef GoogleCloudRetailV2alphaInterval = $Interval01;

/// Response for BranchService.ListBranches method.
class GoogleCloudRetailV2alphaListBranchesResponse {
  /// The Branches.
  core.List<GoogleCloudRetailV2alphaBranch>? branches;

  GoogleCloudRetailV2alphaListBranchesResponse({this.branches});

  GoogleCloudRetailV2alphaListBranchesResponse.fromJson(core.Map json_)
    : this(
        branches:
            (json_['branches'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaBranch.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (branches != null) 'branches': branches!,
  };
}

/// Response for CatalogService.ListCatalogs method.
class GoogleCloudRetailV2alphaListCatalogsResponse {
  /// All the customer's Catalogs.
  core.List<GoogleCloudRetailV2alphaCatalog>? catalogs;

  /// A token that can be sent as ListCatalogsRequest.page_token to retrieve the
  /// next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudRetailV2alphaListCatalogsResponse({
    this.catalogs,
    this.nextPageToken,
  });

  GoogleCloudRetailV2alphaListCatalogsResponse.fromJson(core.Map json_)
    : this(
        catalogs:
            (json_['catalogs'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaCatalog.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (catalogs != null) 'catalogs': catalogs!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response for ListControls method.
class GoogleCloudRetailV2alphaListControlsResponse {
  /// All the Controls for a given catalog.
  core.List<GoogleCloudRetailV2alphaControl>? controls;

  /// Pagination token, if not returned indicates the last page.
  core.String? nextPageToken;

  GoogleCloudRetailV2alphaListControlsResponse({
    this.controls,
    this.nextPageToken,
  });

  GoogleCloudRetailV2alphaListControlsResponse.fromJson(core.Map json_)
    : this(
        controls:
            (json_['controls'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaControl.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (controls != null) 'controls': controls!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response for ListEnrolledSolutions method.
class GoogleCloudRetailV2alphaListEnrolledSolutionsResponse {
  /// Retail API solutions that the project has enrolled.
  core.List<core.String>? enrolledSolutions;

  GoogleCloudRetailV2alphaListEnrolledSolutionsResponse({
    this.enrolledSolutions,
  });

  GoogleCloudRetailV2alphaListEnrolledSolutionsResponse.fromJson(core.Map json_)
    : this(
        enrolledSolutions:
            (json_['enrolledSolutions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enrolledSolutions != null) 'enrolledSolutions': enrolledSolutions!,
  };
}

/// Response for ListQuestions method.
class GoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse {
  /// All the questions for a given catalog.
  core.List<GoogleCloudRetailV2alphaGenerativeQuestionConfig>?
  generativeQuestionConfigs;

  GoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse({
    this.generativeQuestionConfigs,
  });

  GoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse.fromJson(
    core.Map json_,
  ) : this(
        generativeQuestionConfigs:
            (json_['generativeQuestionConfigs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaGenerativeQuestionConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (generativeQuestionConfigs != null)
      'generativeQuestionConfigs': generativeQuestionConfigs!,
  };
}

/// Response for MerchantCenterAccountLinkService.ListMerchantCenterAccountLinks
/// method.
class GoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse {
  /// The links.
  core.List<GoogleCloudRetailV2alphaMerchantCenterAccountLink>?
  merchantCenterAccountLinks;

  GoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse({
    this.merchantCenterAccountLinks,
  });

  GoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse.fromJson(
    core.Map json_,
  ) : this(
        merchantCenterAccountLinks:
            (json_['merchantCenterAccountLinks'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaMerchantCenterAccountLink.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (merchantCenterAccountLinks != null)
      'merchantCenterAccountLinks': merchantCenterAccountLinks!,
  };
}

/// Response to a ListModelRequest.
class GoogleCloudRetailV2alphaListModelsResponse {
  /// List of Models.
  core.List<GoogleCloudRetailV2alphaModel>? models;

  /// Pagination token, if not returned indicates the last page.
  core.String? nextPageToken;

  GoogleCloudRetailV2alphaListModelsResponse({this.models, this.nextPageToken});

  GoogleCloudRetailV2alphaListModelsResponse.fromJson(core.Map json_)
    : this(
        models:
            (json_['models'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaModel.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (models != null) 'models': models!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for ProductService.ListProducts method.
class GoogleCloudRetailV2alphaListProductsResponse {
  /// A token that can be sent as ListProductsRequest.page_token to retrieve the
  /// next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The Products.
  core.List<GoogleCloudRetailV2alphaProduct>? products;

  /// The total count of matched Products irrespective of pagination.
  ///
  /// The total number of Products returned by pagination may be less than the
  /// total_size that matches. This field is ignored if
  /// ListProductsRequest.require_total_size is not set or
  /// ListProductsRequest.page_token is not empty.
  core.int? totalSize;

  GoogleCloudRetailV2alphaListProductsResponse({
    this.nextPageToken,
    this.products,
    this.totalSize,
  });

  GoogleCloudRetailV2alphaListProductsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        products:
            (json_['products'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaProduct.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (products != null) 'products': products!,
    if (totalSize != null) 'totalSize': totalSize!,
  };
}

/// Response for ListServingConfigs method.
class GoogleCloudRetailV2alphaListServingConfigsResponse {
  /// Pagination token, if not returned indicates the last page.
  core.String? nextPageToken;

  /// All the ServingConfigs for a given catalog.
  core.List<GoogleCloudRetailV2alphaServingConfig>? servingConfigs;

  GoogleCloudRetailV2alphaListServingConfigsResponse({
    this.nextPageToken,
    this.servingConfigs,
  });

  GoogleCloudRetailV2alphaListServingConfigsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        servingConfigs:
            (json_['servingConfigs'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaServingConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (servingConfigs != null) 'servingConfigs': servingConfigs!,
  };
}

/// The inventory information at a place (e.g. a store) identified by a place
/// ID.
class GoogleCloudRetailV2alphaLocalInventory {
  /// Additional local inventory attributes, for example, store name, promotion
  /// tags, etc.
  ///
  /// This field needs to pass all below criteria, otherwise an INVALID_ARGUMENT
  /// error is returned: * At most 30 attributes are allowed. * The key must be
  /// a UTF-8 encoded string with a length limit of 32 characters. * The key
  /// must match the pattern: `a-zA-Z0-9*`. For example, key0LikeThis or
  /// KEY_1_LIKE_THIS. * The attribute values must be of the same type (text or
  /// number). * Only 1 value is allowed for each attribute. * For text values,
  /// the length limit is 256 UTF-8 characters. * The attribute does not support
  /// search. The `searchable` field should be unset or set to false. * The max
  /// summed total bytes of custom attribute keys and values per product is
  /// 5MiB.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudRetailV2alphaCustomAttribute>? attributes;

  /// The availability of the Product at this place_id.
  ///
  /// Default to Availability.IN_STOCK. For primary products with variants set
  /// the availability of the primary as Availability.OUT_OF_STOCK and set the
  /// true availability at the variant level. This way the primary product will
  /// be considered "in stock" as long as it has at least one variant in stock.
  /// For primary products with no variants set the true availability at the
  /// primary level. Corresponding properties: Google Merchant Center property
  /// [availability](https://support.google.com/merchants/answer/6324448).
  /// Schema.org property [Offer.availability](https://schema.org/availability).
  /// This field is currently only used by the Recommendations API. For Search,
  /// please make use of fulfillment_types or custom attributes for similar
  /// behaviour. See \[here\](
  /// https://cloud.google.com/retail/docs/local-inventory-updates#local-inventory-update-methods)
  /// for more details.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "AVAILABILITY_UNSPECIFIED" : Default product availability. Default to
  /// Availability.IN_STOCK if unset.
  /// - "IN_STOCK" : Product in stock.
  /// - "OUT_OF_STOCK" : Product out of stock.
  /// - "PREORDER" : Product that is in pre-order state.
  /// - "BACKORDER" : Product that is back-ordered (i.e. temporarily out of
  /// stock).
  core.String? availability;

  /// Supported fulfillment types.
  ///
  /// Valid fulfillment type values include commonly used types (such as pickup
  /// in store and same day delivery), and custom types. Customers have to map
  /// custom types to their display names before rendering UI. Supported values:
  /// * "pickup-in-store" * "ship-to-store" * "same-day-delivery" *
  /// "next-day-delivery" * "custom-type-1" * "custom-type-2" * "custom-type-3"
  /// * "custom-type-4" * "custom-type-5" If this field is set to an invalid
  /// value other than these, an INVALID_ARGUMENT error is returned. All the
  /// elements must be distinct. Otherwise, an INVALID_ARGUMENT error is
  /// returned.
  ///
  /// Optional.
  core.List<core.String>? fulfillmentTypes;

  /// The place ID for the current set of inventory information.
  ///
  /// Optional.
  core.String? placeId;

  /// Product price and cost information.
  ///
  /// Google Merchant Center property
  /// [price](https://support.google.com/merchants/answer/6324371).
  ///
  /// Optional.
  GoogleCloudRetailV2alphaPriceInfo? priceInfo;

  GoogleCloudRetailV2alphaLocalInventory({
    this.attributes,
    this.availability,
    this.fulfillmentTypes,
    this.placeId,
    this.priceInfo,
  });

  GoogleCloudRetailV2alphaLocalInventory.fromJson(core.Map json_)
    : this(
        attributes:
            (json_['attributes'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudRetailV2alphaCustomAttribute.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        availability: json_['availability'] as core.String?,
        fulfillmentTypes:
            (json_['fulfillmentTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        placeId: json_['placeId'] as core.String?,
        priceInfo:
            json_.containsKey('priceInfo')
                ? GoogleCloudRetailV2alphaPriceInfo.fromJson(
                  json_['priceInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributes != null) 'attributes': attributes!,
    if (availability != null) 'availability': availability!,
    if (fulfillmentTypes != null) 'fulfillmentTypes': fulfillmentTypes!,
    if (placeId != null) 'placeId': placeId!,
    if (priceInfo != null) 'priceInfo': priceInfo!,
  };
}

/// Project level logging config to control what level of log will be generated
/// and written to Cloud Logging.
class GoogleCloudRetailV2alphaLoggingConfig {
  /// The log generation rule that applies by default to all services supporting
  /// log generation.
  ///
  /// It can be overridden by ServiceLogGenerationRule for service level
  /// control.
  GoogleCloudRetailV2alphaLoggingConfigLogGenerationRule?
  defaultLogGenerationRule;

  /// The name of the LoggingConfig singleton resource.
  ///
  /// Format: projects / * /loggingConfig
  ///
  /// Required. Immutable.
  core.String? name;

  /// Controls logging configurations more granularly for each supported
  /// service.
  ///
  /// This overrides the default_log_generation_rule for the services specified.
  /// For those not mentioned, they will fallback to the default log generation
  /// rule.
  core.List<GoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule>?
  serviceLogGenerationRules;

  GoogleCloudRetailV2alphaLoggingConfig({
    this.defaultLogGenerationRule,
    this.name,
    this.serviceLogGenerationRules,
  });

  GoogleCloudRetailV2alphaLoggingConfig.fromJson(core.Map json_)
    : this(
        defaultLogGenerationRule:
            json_.containsKey('defaultLogGenerationRule')
                ? GoogleCloudRetailV2alphaLoggingConfigLogGenerationRule.fromJson(
                  json_['defaultLogGenerationRule']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        serviceLogGenerationRules:
            (json_['serviceLogGenerationRules'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (defaultLogGenerationRule != null)
      'defaultLogGenerationRule': defaultLogGenerationRule!,
    if (name != null) 'name': name!,
    if (serviceLogGenerationRules != null)
      'serviceLogGenerationRules': serviceLogGenerationRules!,
  };
}

/// The logging configurations for services supporting log generation.
class GoogleCloudRetailV2alphaLoggingConfigLogGenerationRule {
  /// The log sample rate for INFO level log entries.
  ///
  /// You can use this to reduce the number of entries generated for INFO level
  /// logs. DO NOT set this field if the logging_level is not
  /// LoggingLevel.LOG_ALL. Otherwise, an INVALID_ARGUMENT error is returned.
  /// Sample rate for INFO logs defaults to 1 when unset (generate and send all
  /// INFO logs to Cloud Logging). Its value must be greater than 0 and less
  /// than or equal to 1.
  core.double? infoLogSampleRate;

  /// The logging level.
  ///
  /// By default it is set to `LOG_WARNINGS_AND_ABOVE`.
  /// Possible string values are:
  /// - "LOGGING_LEVEL_UNSPECIFIED" : Default value. Defaults to
  /// `LOG_FOR_WARNINGS_AND_ABOVE` if unset.
  /// - "LOGGING_DISABLED" : No log will be generated and sent to Cloud Logging.
  /// - "LOG_ERRORS_AND_ABOVE" : Log for operations resulted in fatal error.
  /// - "LOG_WARNINGS_AND_ABOVE" : In addition to `LOG_ERRORS_AND_ABOVE`, also
  /// log for operations that have soft errors, quality suggestions.
  /// - "LOG_ALL" : Log all operations, including successful ones.
  core.String? loggingLevel;

  GoogleCloudRetailV2alphaLoggingConfigLogGenerationRule({
    this.infoLogSampleRate,
    this.loggingLevel,
  });

  GoogleCloudRetailV2alphaLoggingConfigLogGenerationRule.fromJson(
    core.Map json_,
  ) : this(
        infoLogSampleRate:
            (json_['infoLogSampleRate'] as core.num?)?.toDouble(),
        loggingLevel: json_['loggingLevel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (infoLogSampleRate != null) 'infoLogSampleRate': infoLogSampleRate!,
    if (loggingLevel != null) 'loggingLevel': loggingLevel!,
  };
}

/// The granular logging configurations for supported services.
class GoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule {
  /// The log generation rule that applies to this service.
  GoogleCloudRetailV2alphaLoggingConfigLogGenerationRule? logGenerationRule;

  /// Supported service names: "CatalogService", "CompletionService",
  /// "ControlService", "MerchantCenterStreaming", "ModelService",
  /// "PredictionService", "ProductService", "ServingConfigService",
  /// "UserEventService",
  ///
  /// Required.
  core.String? serviceName;

  GoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule({
    this.logGenerationRule,
    this.serviceName,
  });

  GoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule.fromJson(
    core.Map json_,
  ) : this(
        logGenerationRule:
            json_.containsKey('logGenerationRule')
                ? GoogleCloudRetailV2alphaLoggingConfigLogGenerationRule.fromJson(
                  json_['logGenerationRule']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        serviceName: json_['serviceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (logGenerationRule != null) 'logGenerationRule': logGenerationRule!,
    if (serviceName != null) 'serviceName': serviceName!,
  };
}

/// Represents a link between a Merchant Center account and a branch.
///
/// After a link is established, products from the linked Merchant Center
/// account are streamed to the linked branch.
class GoogleCloudRetailV2alphaMerchantCenterAccountLink {
  /// The branch ID (e.g. 0/1/2) within the catalog that products from
  /// merchant_center_account_id are streamed to.
  ///
  /// When updating this field, an empty value will use the currently configured
  /// default branch. However, changing the default branch later on won't change
  /// the linked branch here. A single branch ID can only have one linked
  /// Merchant Center account ID.
  ///
  /// Required.
  core.String? branchId;

  /// Criteria for the Merchant Center feeds to be ingested via the link.
  ///
  /// All offers will be ingested if the list is empty. Otherwise the offers
  /// will be ingested from selected feeds.
  core.List<
    GoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter
  >?
  feedFilters;

  /// The FeedLabel used to perform filtering.
  ///
  /// Note: this replaces
  /// [region_id](https://developers.google.com/shopping-content/reference/rest/v2.1/products#Product.FIELDS.feed_label).
  /// Example value: `US`. Example value: `FeedLabel1`.
  core.String? feedLabel;

  /// MerchantCenterAccountLink identifier, which is the final component of
  /// name.
  ///
  /// This field is auto generated and follows the convention:
  /// `BranchId_MerchantCenterAccountId`. `projects / *
  /// /locations/global/catalogs/default_catalog/merchantCenterAccountLinks/id_1`.
  ///
  /// Output only. Immutable.
  core.String? id;

  /// Language of the title/description and other string attributes.
  ///
  /// Use language tags defined by
  /// [BCP 47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). ISO 639-1. This
  /// specifies the language of offers in Merchant Center that will be accepted.
  /// If empty, no language filtering will be performed. Example value: `en`.
  core.String? languageCode;

  /// The linked
  /// [Merchant center account id](https://developers.google.com/shopping-content/guides/accountstatuses).
  ///
  /// The account must be a standalone account or a sub-account of a MCA.
  ///
  /// Required.
  core.String? merchantCenterAccountId;

  /// Full resource name of the Merchant Center Account Link, such as `projects
  /// / *
  /// /locations/global/catalogs/default_catalog/merchantCenterAccountLinks/merchant_center_account_link`.
  ///
  /// Output only. Immutable.
  core.String? name;

  /// Google Cloud project ID.
  ///
  /// Output only.
  core.String? projectId;

  /// An optional arbitrary string that could be used as a tag for tracking link
  /// source.
  ///
  /// Optional.
  core.String? source;

  /// Represents the state of the link.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value.
  /// - "PENDING" : Link is created and LRO is not complete.
  /// - "ACTIVE" : Link is active.
  /// - "FAILED" : Link creation failed.
  core.String? state;

  GoogleCloudRetailV2alphaMerchantCenterAccountLink({
    this.branchId,
    this.feedFilters,
    this.feedLabel,
    this.id,
    this.languageCode,
    this.merchantCenterAccountId,
    this.name,
    this.projectId,
    this.source,
    this.state,
  });

  GoogleCloudRetailV2alphaMerchantCenterAccountLink.fromJson(core.Map json_)
    : this(
        branchId: json_['branchId'] as core.String?,
        feedFilters:
            (json_['feedFilters'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        feedLabel: json_['feedLabel'] as core.String?,
        id: json_['id'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        merchantCenterAccountId:
            json_['merchantCenterAccountId'] as core.String?,
        name: json_['name'] as core.String?,
        projectId: json_['projectId'] as core.String?,
        source: json_['source'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (branchId != null) 'branchId': branchId!,
    if (feedFilters != null) 'feedFilters': feedFilters!,
    if (feedLabel != null) 'feedLabel': feedLabel!,
    if (id != null) 'id': id!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (merchantCenterAccountId != null)
      'merchantCenterAccountId': merchantCenterAccountId!,
    if (name != null) 'name': name!,
    if (projectId != null) 'projectId': projectId!,
    if (source != null) 'source': source!,
    if (state != null) 'state': state!,
  };
}

/// Merchant Center Feed filter criterion.
typedef GoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter =
    $MerchantCenterFeedFilter;

/// Merchant Center Feed filter criterion.
typedef GoogleCloudRetailV2alphaMerchantCenterFeedFilter =
    $MerchantCenterFeedFilter;

/// Represents a link between a Merchant Center account and a branch.
///
/// After a link is established, products from the linked Merchant Center
/// account are streamed to the linked branch.
class GoogleCloudRetailV2alphaMerchantCenterLink {
  /// The branch ID (e.g. 0/1/2) within this catalog that products from
  /// merchant_center_account_id are streamed to.
  ///
  /// When updating this field, an empty value will use the currently configured
  /// default branch. However, changing the default branch later on won't change
  /// the linked branch here. A single branch ID can only have one linked
  /// Merchant Center account ID.
  core.String? branchId;

  /// String representing the destination to import for, all if left empty.
  ///
  /// List of possible values is given in
  /// [Included destination](https://support.google.com/merchants/answer/7501026).
  /// List of allowed string values: "Shopping_ads", "Buy_on_google_listings",
  /// "Display_ads", "Local_inventory _ads", "Free_listings",
  /// "Free_local_listings" NOTE: The string values are case sensitive.
  core.List<core.String>? destinations;

  /// Criteria for the Merchant Center feeds to be ingested via the link.
  ///
  /// All offers will be ingested if the list is empty. Otherwise the offers
  /// will be ingested from selected feeds.
  core.List<GoogleCloudRetailV2alphaMerchantCenterFeedFilter>? feeds;

  /// Language of the title/description and other string attributes.
  ///
  /// Use language tags defined by
  /// [BCP 47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). ISO 639-1. This
  /// specifies the language of offers in Merchant Center that will be accepted.
  /// If empty no language filtering will be performed. Example value: `en`.
  core.String? languageCode;

  /// The linked
  /// [Merchant Center account ID](https://developers.google.com/shopping-content/guides/accountstatuses).
  ///
  /// The account must be a standalone account or a sub-account of a MCA.
  ///
  /// Required.
  core.String? merchantCenterAccountId;

  /// Region code of offers to accept.
  ///
  /// 2-letter Uppercase ISO 3166-1 alpha-2 code. List of values can be found
  /// [here](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry)
  /// under the `region` tag. If left blank no region filtering will be
  /// performed. Example value: `US`.
  core.String? regionCode;

  GoogleCloudRetailV2alphaMerchantCenterLink({
    this.branchId,
    this.destinations,
    this.feeds,
    this.languageCode,
    this.merchantCenterAccountId,
    this.regionCode,
  });

  GoogleCloudRetailV2alphaMerchantCenterLink.fromJson(core.Map json_)
    : this(
        branchId: json_['branchId'] as core.String?,
        destinations:
            (json_['destinations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        feeds:
            (json_['feeds'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaMerchantCenterFeedFilter.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        languageCode: json_['languageCode'] as core.String?,
        merchantCenterAccountId:
            json_['merchantCenterAccountId'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (branchId != null) 'branchId': branchId!,
    if (destinations != null) 'destinations': destinations!,
    if (feeds != null) 'feeds': feeds!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (merchantCenterAccountId != null)
      'merchantCenterAccountId': merchantCenterAccountId!,
    if (regionCode != null) 'regionCode': regionCode!,
  };
}

/// Configures Merchant Center linking.
///
/// Links contained in the config will be used to sync data from a Merchant
/// Center account to a Cloud Retail branch.
class GoogleCloudRetailV2alphaMerchantCenterLinkingConfig {
  /// Links between Merchant Center accounts and branches.
  core.List<GoogleCloudRetailV2alphaMerchantCenterLink>? links;

  GoogleCloudRetailV2alphaMerchantCenterLinkingConfig({this.links});

  GoogleCloudRetailV2alphaMerchantCenterLinkingConfig.fromJson(core.Map json_)
    : this(
        links:
            (json_['links'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaMerchantCenterLink.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (links != null) 'links': links!,
  };
}

/// Metadata that describes the training and serving parameters of a Model.
///
/// A Model can be associated with a ServingConfig and then queried through the
/// Predict API.
class GoogleCloudRetailV2alphaModel {
  /// Timestamp the Recommendation Model was created at.
  ///
  /// Output only.
  core.String? createTime;

  /// The state of data requirements for this model: `DATA_OK` and `DATA_ERROR`.
  ///
  /// Recommendation model cannot be trained if the data is in `DATA_ERROR`
  /// state. Recommendation model can have `DATA_ERROR` state even if serving
  /// state is `ACTIVE`: models were trained successfully before, but cannot be
  /// refreshed because model no longer has sufficient data for training.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DATA_STATE_UNSPECIFIED" : Unspecified default value, should never be
  /// explicitly set.
  /// - "DATA_OK" : The model has sufficient training data.
  /// - "DATA_ERROR" : The model does not have sufficient training data. Error
  /// messages can be queried via Stackdriver.
  core.String? dataState;

  /// The display name of the model.
  ///
  /// Should be human readable, used to display Recommendation Models in the
  /// Retail Cloud Console Dashboard. UTF-8 encoded string with limit of 1024
  /// characters.
  ///
  /// Required.
  core.String? displayName;

  /// If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by
  /// attributes is enabled for the model.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "RECOMMENDATIONS_FILTERING_OPTION_UNSPECIFIED" : Value used when unset.
  /// In this case, server behavior defaults to
  /// RECOMMENDATIONS_FILTERING_DISABLED.
  /// - "RECOMMENDATIONS_FILTERING_DISABLED" : Recommendation filtering is
  /// disabled.
  /// - "RECOMMENDATIONS_FILTERING_ENABLED" : Recommendation filtering is
  /// enabled.
  core.String? filteringOption;

  /// The timestamp when the latest successful tune finished.
  ///
  /// Output only.
  core.String? lastTuneTime;

  /// Additional model features config.
  ///
  /// Optional.
  GoogleCloudRetailV2alphaModelModelFeaturesConfig? modelFeaturesConfig;

  /// The fully qualified resource name of the model.
  ///
  /// Format:
  /// `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/models/{model_id}`
  /// catalog_id has char limit of 50. recommendation_model_id has char limit of
  /// 40.
  ///
  /// Required.
  core.String? name;

  /// The optimization objective e.g. `cvr`.
  ///
  /// Currently supported values: `ctr`, `cvr`, `revenue-per-order`. If not
  /// specified, we choose default based on model type. Default depends on type
  /// of recommendation: `recommended-for-you` =\> `ctr` `others-you-may-like`
  /// =\> `ctr` `frequently-bought-together` =\> `revenue_per_order` This field
  /// together with optimization_objective describe model metadata to use to
  /// control model training and serving. See
  /// https://cloud.google.com/retail/docs/models for more details on what the
  /// model metadata control and which combination of parameters are valid. For
  /// invalid combinations of parameters (e.g. type =
  /// `frequently-bought-together` and optimization_objective = `ctr`), you
  /// receive an error 400 if you try to create/update a recommendation with
  /// this set of knobs.
  ///
  /// Optional.
  core.String? optimizationObjective;

  /// The page optimization config.
  ///
  /// Optional.
  GoogleCloudRetailV2alphaModelPageOptimizationConfig? pageOptimizationConfig;

  /// The state of periodic tuning.
  ///
  /// The period we use is 3 months - to do a one-off tune earlier use the
  /// `TuneModel` method. Default value is `PERIODIC_TUNING_ENABLED`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PERIODIC_TUNING_STATE_UNSPECIFIED" : Unspecified default value, should
  /// never be explicitly set.
  /// - "PERIODIC_TUNING_DISABLED" : The model has periodic tuning disabled.
  /// Tuning can be reenabled by calling the `EnableModelPeriodicTuning` method
  /// or by calling the `TuneModel` method.
  /// - "ALL_TUNING_DISABLED" : The model cannot be tuned with periodic tuning
  /// OR the `TuneModel` method. Hide the options in customer UI and reject any
  /// requests through the backend self serve API.
  /// - "PERIODIC_TUNING_ENABLED" : The model has periodic tuning enabled.
  /// Tuning can be disabled by calling the `DisableModelPeriodicTuning` method.
  core.String? periodicTuningState;

  /// The list of valid serving configs associated with the
  /// PageOptimizationConfig.
  ///
  /// Output only.
  core.List<GoogleCloudRetailV2alphaModelServingConfigList>? servingConfigLists;

  /// The serving state of the model: `ACTIVE`, `NOT_ACTIVE`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SERVING_STATE_UNSPECIFIED" : Unspecified serving state.
  /// - "INACTIVE" : The model is not serving.
  /// - "ACTIVE" : The model is serving and can be queried.
  /// - "TUNED" : The model is trained on tuned hyperparameters and can be
  /// queried.
  core.String? servingState;

  /// The training state that the model is in (e.g. `TRAINING` or `PAUSED`).
  ///
  /// Since part of the cost of running the service is frequency of training -
  /// this can be used to determine when to train model in order to control
  /// cost. If not specified: the default value for `CreateModel` method is
  /// `TRAINING`. The default value for `UpdateModel` method is to keep the
  /// state the same as before.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TRAINING_STATE_UNSPECIFIED" : Unspecified training state.
  /// - "PAUSED" : The model training is paused.
  /// - "TRAINING" : The model is training.
  core.String? trainingState;

  /// The tune operation associated with the model.
  ///
  /// Can be used to determine if there is an ongoing tune for this
  /// recommendation. Empty field implies no tune is goig on.
  ///
  /// Output only.
  core.String? tuningOperation;

  /// The type of model e.g. `home-page`.
  ///
  /// Currently supported values: `recommended-for-you`, `others-you-may-like`,
  /// `frequently-bought-together`, `page-optimization`, `similar-items`,
  /// `buy-it-again`, `on-sale-items`, and `recently-viewed`(readonly value).
  /// This field together with optimization_objective describe model metadata to
  /// use to control model training and serving. See
  /// https://cloud.google.com/retail/docs/models for more details on what the
  /// model metadata control and which combination of parameters are valid. For
  /// invalid combinations of parameters (e.g. type =
  /// `frequently-bought-together` and optimization_objective = `ctr`), you
  /// receive an error 400 if you try to create/update a recommendation with
  /// this set of knobs.
  ///
  /// Required.
  core.String? type;

  /// Timestamp the Recommendation Model was last updated.
  ///
  /// E.g. if a Recommendation Model was paused - this would be the time the
  /// pause was initiated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudRetailV2alphaModel({
    this.createTime,
    this.dataState,
    this.displayName,
    this.filteringOption,
    this.lastTuneTime,
    this.modelFeaturesConfig,
    this.name,
    this.optimizationObjective,
    this.pageOptimizationConfig,
    this.periodicTuningState,
    this.servingConfigLists,
    this.servingState,
    this.trainingState,
    this.tuningOperation,
    this.type,
    this.updateTime,
  });

  GoogleCloudRetailV2alphaModel.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        dataState: json_['dataState'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        filteringOption: json_['filteringOption'] as core.String?,
        lastTuneTime: json_['lastTuneTime'] as core.String?,
        modelFeaturesConfig:
            json_.containsKey('modelFeaturesConfig')
                ? GoogleCloudRetailV2alphaModelModelFeaturesConfig.fromJson(
                  json_['modelFeaturesConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        optimizationObjective: json_['optimizationObjective'] as core.String?,
        pageOptimizationConfig:
            json_.containsKey('pageOptimizationConfig')
                ? GoogleCloudRetailV2alphaModelPageOptimizationConfig.fromJson(
                  json_['pageOptimizationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        periodicTuningState: json_['periodicTuningState'] as core.String?,
        servingConfigLists:
            (json_['servingConfigLists'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaModelServingConfigList.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        servingState: json_['servingState'] as core.String?,
        trainingState: json_['trainingState'] as core.String?,
        tuningOperation: json_['tuningOperation'] as core.String?,
        type: json_['type'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (dataState != null) 'dataState': dataState!,
    if (displayName != null) 'displayName': displayName!,
    if (filteringOption != null) 'filteringOption': filteringOption!,
    if (lastTuneTime != null) 'lastTuneTime': lastTuneTime!,
    if (modelFeaturesConfig != null)
      'modelFeaturesConfig': modelFeaturesConfig!,
    if (name != null) 'name': name!,
    if (optimizationObjective != null)
      'optimizationObjective': optimizationObjective!,
    if (pageOptimizationConfig != null)
      'pageOptimizationConfig': pageOptimizationConfig!,
    if (periodicTuningState != null)
      'periodicTuningState': periodicTuningState!,
    if (servingConfigLists != null) 'servingConfigLists': servingConfigLists!,
    if (servingState != null) 'servingState': servingState!,
    if (trainingState != null) 'trainingState': trainingState!,
    if (tuningOperation != null) 'tuningOperation': tuningOperation!,
    if (type != null) 'type': type!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Additional configs for the frequently-bought-together model type.
typedef GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig =
    $ModelFrequentlyBoughtTogetherFeaturesConfig;

/// Additional model features config.
class GoogleCloudRetailV2alphaModelModelFeaturesConfig {
  /// Additional configs for frequently-bought-together models.
  GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig?
  frequentlyBoughtTogetherConfig;

  GoogleCloudRetailV2alphaModelModelFeaturesConfig({
    this.frequentlyBoughtTogetherConfig,
  });

  GoogleCloudRetailV2alphaModelModelFeaturesConfig.fromJson(core.Map json_)
    : this(
        frequentlyBoughtTogetherConfig:
            json_.containsKey('frequentlyBoughtTogetherConfig')
                ? GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig.fromJson(
                  json_['frequentlyBoughtTogetherConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (frequentlyBoughtTogetherConfig != null)
      'frequentlyBoughtTogetherConfig': frequentlyBoughtTogetherConfig!,
  };
}

/// The PageOptimizationConfig for model training.
///
/// This determines how many panels to optimize for, and which serving configs
/// to consider for each panel. The purpose of this model is to optimize which
/// ServingConfig to show on which panels in way that optimizes the visitors
/// shopping journey.
class GoogleCloudRetailV2alphaModelPageOptimizationConfig {
  /// The type of UserEvent this page optimization is shown for.
  ///
  /// Each page has an associated event type - this will be the corresponding
  /// event type for the page that the page optimization model is used on.
  /// Supported types: * `add-to-cart`: Products being added to cart. *
  /// `detail-page-view`: Products detail page viewed. * `home-page-view`:
  /// Homepage viewed * `category-page-view`: Homepage viewed *
  /// `shopping-cart-page-view`: User viewing a shopping cart. `home-page-view`
  /// only allows models with type `recommended-for-you`. All other
  /// page_optimization_event_type allow all Model.types.
  ///
  /// Required.
  core.String? pageOptimizationEventType;

  /// A list of panel configurations.
  ///
  /// Limit = 5.
  ///
  /// Required.
  core.List<GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel>? panels;

  /// How to restrict results across panels e.g. can the same ServingConfig be
  /// shown on multiple panels at once.
  ///
  /// If unspecified, default to `UNIQUE_MODEL_RESTRICTION`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "RESTRICTION_UNSPECIFIED" : Unspecified value for restriction.
  /// - "NO_RESTRICTION" : Allow any ServingConfig to be show on any number of
  /// panels. Example: `Panel1 candidates`: pdp_ctr, pdp_cvr,
  /// home_page_ctr_no_diversity `Panel2 candidates`:
  /// home_page_ctr_no_diversity, home_page_ctr_diversity, pdp_cvr_no_diversity
  /// `Restriction` = NO_RESTRICTION `Valid combinations`: * * (pdp_ctr,
  /// home_page_ctr_no_diversity) * (pdp_ctr, home_page_ctr_diversity) *
  /// (pdp_ctr, pdp_cvr_no_diversity) * (pdp_cvr, home_page_ctr_no_diversity) *
  /// (pdp_cvr, home_page_ctr_diversity) * (pdp_cvr, pdp_cvr_no_diversity) *
  /// (home_page_ctr_no_diversity, home_page_ctr_no_diversity) *
  /// (home_page_ctr_no_diversity, home_page_ctr_diversity) *
  /// (home_page_ctr_no_diversity, pdp_cvr_no_diversity) * `Invalid
  /// combinations`: \[\]
  /// - "UNIQUE_SERVING_CONFIG_RESTRICTION" : Do not allow the same
  /// ServingConfig.name to be shown on multiple panels. Example: `Panel1
  /// candidates`: * pdp_ctr, pdp_cvr, home_page_ctr_no_diversity * `Panel2
  /// candidates`: * home_page_ctr_no_diversity, home_page_ctr_diversity_low,
  /// pdp_cvr_no_diversity * `Restriction` = `UNIQUE_SERVING_CONFIG_RESTRICTION`
  /// `Valid combinations`: * * (pdp_ctr, home_page_ctr_no_diversity) *
  /// (pdp_ctr, home_page_ctr_diversity_low) * (pdp_ctr, pdp_cvr_no_diversity) *
  /// (pdp_ctr, pdp_cvr_no_diversity) * (pdp_cvr, home_page_ctr_no_diversity) *
  /// (pdp_cvr, home_page_ctr_diversity_low) * (pdp_cvr, pdp_cvr_no_diversity) *
  /// (home_page_ctr_no_diversity, home_page_ctr_diversity_low) *
  /// (home_page_ctr_no_diversity, pdp_cvr_no_diversity) * `Invalid
  /// combinations`: * * (home_page_ctr_no_diversity,
  /// home_page_ctr_no_diversity) *
  /// - "UNIQUE_MODEL_RESTRICTION" : Do not allow multiple ServingConfigs with
  /// same Model.name to be show on on different panels. Example: `Panel1
  /// candidates`: * pdp_ctr, pdp_cvr, home_page_ctr_no_diversity * `Panel2
  /// candidates`: * home_page_ctr_no_diversity, home_page_ctr_diversity_low,
  /// pdp_cvr_no_diversity * `Restriction` = `UNIQUE_MODEL_RESTRICTION` `Valid
  /// combinations`: * * (pdp_ctr, home_page_ctr_no_diversity) * (pdp_ctr,
  /// home_page_ctr_diversity) * (pdp_ctr, pdp_cvr_no_diversity) * (pdp_ctr,
  /// pdp_cvr_no_diversity) * (pdp_cvr, home_page_ctr_no_diversity) * (pdp_cvr,
  /// home_page_ctr_diversity_low) * (home_page_ctr_no_diversity,
  /// pdp_cvr_no_diversity) * `Invalid combinations`: * *
  /// (home_page_ctr_no_diversity, home_page_ctr_no_diversity) * (pdp_cvr,
  /// pdp_cvr_no_diversity) *
  /// - "UNIQUE_MODEL_TYPE_RESTRICTION" : Do not allow multiple ServingConfigs
  /// with same Model.type to be shown on different panels. Example: `Panel1
  /// candidates`: * pdp_ctr, pdp_cvr, home_page_ctr_no_diversity * `Panel2
  /// candidates`: * home_page_ctr_no_diversity, home_page_ctr_diversity_low,
  /// pdp_cvr_no_diversity * `Restriction` = `UNIQUE_MODEL_RESTRICTION` `Valid
  /// combinations`: * * (pdp_ctr, home_page_ctr_no_diversity) * (pdp_ctr,
  /// home_page_ctr_diversity) * (pdp_cvr, home_page_ctr_no_diversity) *
  /// (pdp_cvr, home_page_ctr_diversity_low) * (home_page_ctr_no_diversity,
  /// pdp_cvr_no_diversity) * `Invalid combinations`: * * (pdp_ctr,
  /// pdp_cvr_no_diversity) * (pdp_ctr, pdp_cvr_no_diversity) * (pdp_cvr,
  /// pdp_cvr_no_diversity) * (home_page_ctr_no_diversity,
  /// home_page_ctr_no_diversity) * (home_page_ctr_no_diversity,
  /// home_page_ctr_diversity) *
  core.String? restriction;

  GoogleCloudRetailV2alphaModelPageOptimizationConfig({
    this.pageOptimizationEventType,
    this.panels,
    this.restriction,
  });

  GoogleCloudRetailV2alphaModelPageOptimizationConfig.fromJson(core.Map json_)
    : this(
        pageOptimizationEventType:
            json_['pageOptimizationEventType'] as core.String?,
        panels:
            (json_['panels'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        restriction: json_['restriction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pageOptimizationEventType != null)
      'pageOptimizationEventType': pageOptimizationEventType!,
    if (panels != null) 'panels': panels!,
    if (restriction != null) 'restriction': restriction!,
  };
}

/// A candidate to consider for a given panel.
///
/// Currently only ServingConfig are valid candidates.
class GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate {
  /// This has to be a valid ServingConfig identifier.
  ///
  /// For example, for a ServingConfig with full name: `projects / *
  /// /locations/global/catalogs/default_catalog/servingConfigs/my_candidate_config`,
  /// this would be `my_candidate_config`.
  core.String? servingConfigId;

  GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate({
    this.servingConfigId,
  });

  GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate.fromJson(
    core.Map json_,
  ) : this(servingConfigId: json_['servingConfigId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (servingConfigId != null) 'servingConfigId': servingConfigId!,
  };
}

/// An individual panel with a list of ServingConfigs to consider for it.
class GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel {
  /// The candidates to consider on the panel.
  ///
  /// Required.
  core.List<GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate>?
  candidates;

  /// The default candidate.
  ///
  /// If the model fails at serving time, we fall back to the default.
  ///
  /// Required.
  GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate?
  defaultCandidate;

  /// The name to display for the panel.
  ///
  /// Optional.
  core.String? displayName;

  GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel({
    this.candidates,
    this.defaultCandidate,
    this.displayName,
  });

  GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel.fromJson(
    core.Map json_,
  ) : this(
        candidates:
            (json_['candidates'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        defaultCandidate:
            json_.containsKey('defaultCandidate')
                ? GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate.fromJson(
                  json_['defaultCandidate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        displayName: json_['displayName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (candidates != null) 'candidates': candidates!,
    if (defaultCandidate != null) 'defaultCandidate': defaultCandidate!,
    if (displayName != null) 'displayName': displayName!,
  };
}

/// Represents an ordered combination of valid serving configs, which can be
/// used for `PAGE_OPTIMIZATION` recommendations.
typedef GoogleCloudRetailV2alphaModelServingConfigList =
    $ModelServingConfigList;

/// The output configuration setting.
class GoogleCloudRetailV2alphaOutputConfig {
  /// The BigQuery location where the output is to be written to.
  GoogleCloudRetailV2alphaOutputConfigBigQueryDestination? bigqueryDestination;

  /// The Google Cloud Storage location where the output is to be written to.
  GoogleCloudRetailV2alphaOutputConfigGcsDestination? gcsDestination;

  GoogleCloudRetailV2alphaOutputConfig({
    this.bigqueryDestination,
    this.gcsDestination,
  });

  GoogleCloudRetailV2alphaOutputConfig.fromJson(core.Map json_)
    : this(
        bigqueryDestination:
            json_.containsKey('bigqueryDestination')
                ? GoogleCloudRetailV2alphaOutputConfigBigQueryDestination.fromJson(
                  json_['bigqueryDestination']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        gcsDestination:
            json_.containsKey('gcsDestination')
                ? GoogleCloudRetailV2alphaOutputConfigGcsDestination.fromJson(
                  json_['gcsDestination']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bigqueryDestination != null)
      'bigqueryDestination': bigqueryDestination!,
    if (gcsDestination != null) 'gcsDestination': gcsDestination!,
  };
}

/// The BigQuery output destination configuration.
typedef GoogleCloudRetailV2alphaOutputConfigBigQueryDestination =
    $OutputConfigBigQueryDestination;

/// The Google Cloud Storage output destination configuration.
typedef GoogleCloudRetailV2alphaOutputConfigGcsDestination =
    $OutputConfigGcsDestination;

/// Detailed panel information associated with a user event.
class GoogleCloudRetailV2alphaPanelInfo {
  /// The attribution token of the panel.
  ///
  /// Optional.
  core.String? attributionToken;

  /// The display name of the panel.
  ///
  /// Optional.
  core.String? displayName;

  /// The panel ID.
  ///
  /// Required.
  core.String? panelId;

  /// The ordered position of the panel, if shown to the user with other panels.
  ///
  /// If set, then total_panels must also be set.
  ///
  /// Optional.
  core.int? panelPosition;

  /// The product details associated with the panel.
  ///
  /// Optional.
  core.List<GoogleCloudRetailV2alphaProductDetail>? productDetails;

  /// The total number of panels, including this one, shown to the user.
  ///
  /// Must be set if panel_position is set.
  ///
  /// Optional.
  core.int? totalPanels;

  GoogleCloudRetailV2alphaPanelInfo({
    this.attributionToken,
    this.displayName,
    this.panelId,
    this.panelPosition,
    this.productDetails,
    this.totalPanels,
  });

  GoogleCloudRetailV2alphaPanelInfo.fromJson(core.Map json_)
    : this(
        attributionToken: json_['attributionToken'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        panelId: json_['panelId'] as core.String?,
        panelPosition: json_['panelPosition'] as core.int?,
        productDetails:
            (json_['productDetails'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaProductDetail.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        totalPanels: json_['totalPanels'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributionToken != null) 'attributionToken': attributionToken!,
    if (displayName != null) 'displayName': displayName!,
    if (panelId != null) 'panelId': panelId!,
    if (panelPosition != null) 'panelPosition': panelPosition!,
    if (productDetails != null) 'productDetails': productDetails!,
    if (totalPanels != null) 'totalPanels': totalPanels!,
  };
}

/// Request for pausing training of a model.
typedef GoogleCloudRetailV2alphaPauseModelRequest = $Empty;

/// Metadata for pinning to be returned in the response.
///
/// This is used for distinguishing between applied vs dropped pins.
class GoogleCloudRetailV2alphaPinControlMetadata {
  /// Map of all matched pins, keyed by pin position.
  core.Map<core.String, GoogleCloudRetailV2alphaPinControlMetadataProductPins>?
  allMatchedPins;

  /// Map of pins that were dropped due to overlap with other matching pins,
  /// keyed by pin position.
  core.Map<core.String, GoogleCloudRetailV2alphaPinControlMetadataProductPins>?
  droppedPins;

  GoogleCloudRetailV2alphaPinControlMetadata({
    this.allMatchedPins,
    this.droppedPins,
  });

  GoogleCloudRetailV2alphaPinControlMetadata.fromJson(core.Map json_)
    : this(
        allMatchedPins: (json_['allMatchedPins']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudRetailV2alphaPinControlMetadataProductPins.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        droppedPins:
            (json_['droppedPins'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudRetailV2alphaPinControlMetadataProductPins.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allMatchedPins != null) 'allMatchedPins': allMatchedPins!,
    if (droppedPins != null) 'droppedPins': droppedPins!,
  };
}

/// List of product ids which have associated pins.
typedef GoogleCloudRetailV2alphaPinControlMetadataProductPins =
    $PinControlMetadataProductPins;

/// Request message for Predict method.
class GoogleCloudRetailV2alphaPredictRequest {
  /// Filter for restricting prediction results with a length limit of 5,000
  /// characters.
  ///
  /// Accepts values for tags and the `filterOutOfStockItems` flag. * Tag
  /// expressions. Restricts predictions to products that match all of the
  /// specified tags. Boolean operators `OR` and `NOT` are supported if the
  /// expression is enclosed in parentheses, and must be separated from the tag
  /// values by a space. `-"tagA"` is also supported and is equivalent to `NOT
  /// "tagA"`. Tag values must be double quoted UTF-8 encoded strings with a
  /// size limit of 1,000 characters. Note: "Recently viewed" models don't
  /// support tag filtering at the moment. * filterOutOfStockItems. Restricts
  /// predictions to products that do not have a stockState value of
  /// OUT_OF_STOCK. Examples: * tag=("Red" OR "Blue") tag="New-Arrival" tag=(NOT
  /// "promotional") * filterOutOfStockItems tag=(-"promotional") *
  /// filterOutOfStockItems If your filter blocks all prediction results, the
  /// API will return *no* results. If instead you want empty result sets to
  /// return generic (unfiltered) popular products, set `strictFiltering` to
  /// False in `PredictRequest.params`. Note that the API will never return
  /// items with storageStatus of "EXPIRED" or "DELETED" regardless of filter
  /// choices. If `filterSyntaxV2` is set to true under the `params` field, then
  /// attribute-based expressions are expected instead of the above described
  /// tag-based syntax. Examples: * (colors: ANY("Red", "Blue")) AND NOT
  /// (categories: ANY("Phones")) * (availability: ANY("IN_STOCK")) AND (colors:
  /// ANY("Red") OR categories: ANY("Phones")) For more information, see
  /// [Filter recommendations](https://cloud.google.com/retail/docs/filter-recs).
  core.String? filter;

  /// The labels applied to a resource must meet the following requirements: *
  /// Each resource can have multiple labels, up to a maximum of 64.
  ///
  /// * Each label must be a key-value pair. * Keys have a minimum length of 1
  /// character and a maximum length of 63 characters and cannot be empty.
  /// Values can be empty and have a maximum length of 63 characters. * Keys and
  /// values can contain only lowercase letters, numeric characters,
  /// underscores, and dashes. All characters must use UTF-8 encoding, and
  /// international characters are allowed. * The key portion of a label must be
  /// unique. However, you can use the same key with multiple resources. * Keys
  /// must start with a lowercase letter or international character. See
  /// [Google Cloud Document](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements)
  /// for more details.
  core.Map<core.String, core.String>? labels;

  /// Maximum number of results to return.
  ///
  /// Set this property to the number of prediction results needed. If zero, the
  /// service will choose a reasonable default. The maximum allowed value is
  /// 100. Values above 100 will be coerced to 100.
  core.int? pageSize;

  /// This field is not used; leave it unset.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? pageToken;

  /// Additional domain specific parameters for the predictions.
  ///
  /// Allowed values: * `returnProduct`: Boolean. If set to true, the associated
  /// product object will be returned in the `results.metadata` field in the
  /// prediction response. * `returnScore`: Boolean. If set to true, the
  /// prediction 'score' corresponding to each returned product will be set in
  /// the `results.metadata` field in the prediction response. The given 'score'
  /// indicates the probability of a product being clicked/purchased given the
  /// user's context and history. * `strictFiltering`: Boolean. True by default.
  /// If set to false, the service will return generic (unfiltered) popular
  /// products instead of empty if your filter blocks all prediction results. *
  /// `priceRerankLevel`: String. Default empty. If set to be non-empty, then it
  /// needs to be one of {'no-price-reranking', 'low-price-reranking',
  /// 'medium-price-reranking', 'high-price-reranking'}. This gives
  /// request-level control and adjusts prediction results based on product
  /// price. * `diversityLevel`: String. Default empty. If set to be non-empty,
  /// then it needs to be one of {'no-diversity', 'low-diversity',
  /// 'medium-diversity', 'high-diversity', 'auto-diversity'}. This gives
  /// request-level control and adjusts prediction results based on product
  /// category. * `filterSyntaxV2`: Boolean. False by default. If set to true,
  /// the `filter` field is interpreteted according to the new, attribute-based
  /// syntax.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? params;

  /// Context about the user, what they are looking at and what action they took
  /// to trigger the predict request.
  ///
  /// Note that this user event detail won't be ingested to userEvent logs.
  /// Thus, a separate userEvent write request is required for event logging.
  /// Don't set UserEvent.visitor_id or UserInfo.user_id to the same fixed ID
  /// for different users. If you are trying to receive non-personalized
  /// recommendations (not recommended; this can negatively impact model
  /// performance), instead set UserEvent.visitor_id to a random unique ID and
  /// leave UserInfo.user_id unset.
  ///
  /// Required.
  GoogleCloudRetailV2alphaUserEvent? userEvent;

  /// Use validate only mode for this prediction query.
  ///
  /// If set to true, a dummy model will be used that returns arbitrary
  /// products. Note that the validate only mode should only be used for testing
  /// the API, or if the model is not ready.
  core.bool? validateOnly;

  GoogleCloudRetailV2alphaPredictRequest({
    this.filter,
    this.labels,
    this.pageSize,
    this.pageToken,
    this.params,
    this.userEvent,
    this.validateOnly,
  });

  GoogleCloudRetailV2alphaPredictRequest.fromJson(core.Map json_)
    : this(
        filter: json_['filter'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        params:
            json_.containsKey('params')
                ? json_['params'] as core.Map<core.String, core.dynamic>
                : null,
        userEvent:
            json_.containsKey('userEvent')
                ? GoogleCloudRetailV2alphaUserEvent.fromJson(
                  json_['userEvent'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (filter != null) 'filter': filter!,
    if (labels != null) 'labels': labels!,
    if (pageSize != null) 'pageSize': pageSize!,
    if (pageToken != null) 'pageToken': pageToken!,
    if (params != null) 'params': params!,
    if (userEvent != null) 'userEvent': userEvent!,
    if (validateOnly != null) 'validateOnly': validateOnly!,
  };
}

/// Response message for predict method.
class GoogleCloudRetailV2alphaPredictResponse {
  /// A unique attribution token.
  ///
  /// This should be included in the UserEvent logs resulting from this
  /// recommendation, which enables accurate attribution of recommendation model
  /// performance.
  core.String? attributionToken;

  /// IDs of products in the request that were missing from the inventory.
  core.List<core.String>? missingIds;

  /// A list of recommended products.
  ///
  /// The order represents the ranking (from the most relevant product to the
  /// least).
  core.List<GoogleCloudRetailV2alphaPredictResponsePredictionResult>? results;

  /// True if the validateOnly property was set in the request.
  core.bool? validateOnly;

  GoogleCloudRetailV2alphaPredictResponse({
    this.attributionToken,
    this.missingIds,
    this.results,
    this.validateOnly,
  });

  GoogleCloudRetailV2alphaPredictResponse.fromJson(core.Map json_)
    : this(
        attributionToken: json_['attributionToken'] as core.String?,
        missingIds:
            (json_['missingIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        results:
            (json_['results'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaPredictResponsePredictionResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributionToken != null) 'attributionToken': attributionToken!,
    if (missingIds != null) 'missingIds': missingIds!,
    if (results != null) 'results': results!,
    if (validateOnly != null) 'validateOnly': validateOnly!,
  };
}

/// PredictionResult represents the recommendation prediction results.
typedef GoogleCloudRetailV2alphaPredictResponsePredictionResult =
    $PredictResponsePredictionResult;

/// The price information of a Product.
class GoogleCloudRetailV2alphaPriceInfo {
  /// The costs associated with the sale of a particular product.
  ///
  /// Used for gross profit reporting. * Profit = price - cost Google Merchant
  /// Center property
  /// [cost_of_goods_sold](https://support.google.com/merchants/answer/9017895).
  core.double? cost;

  /// The 3-letter currency code defined in
  /// [ISO 4217](https://www.iso.org/iso-4217-currency-codes.html).
  ///
  /// If this field is an unrecognizable currency code, an INVALID_ARGUMENT
  /// error is returned. The Product.Type.VARIANT Products with the same
  /// Product.primary_product_id must share the same currency_code. Otherwise, a
  /// FAILED_PRECONDITION error is returned.
  core.String? currencyCode;

  /// Price of the product without any discount.
  ///
  /// If zero, by default set to be the price. If set, original_price should be
  /// greater than or equal to price, otherwise an INVALID_ARGUMENT error is
  /// thrown.
  core.double? originalPrice;

  /// Price of the product.
  ///
  /// Google Merchant Center property
  /// [price](https://support.google.com/merchants/answer/6324371). Schema.org
  /// property [Offer.price](https://schema.org/price).
  core.double? price;

  /// The timestamp when the price starts to be effective.
  ///
  /// This can be set as a future timestamp, and the price is only used for
  /// search after price_effective_time. If so, the original_price must be set
  /// and original_price is used before price_effective_time. Do not set if
  /// price is always effective because it will cause additional latency during
  /// search.
  core.String? priceEffectiveTime;

  /// The timestamp when the price stops to be effective.
  ///
  /// The price is used for search before price_expire_time. If this field is
  /// set, the original_price must be set and original_price is used after
  /// price_expire_time. Do not set if price is always effective because it will
  /// cause additional latency during search.
  core.String? priceExpireTime;

  /// The price range of all the child Product.Type.VARIANT Products grouped
  /// together on the Product.Type.PRIMARY Product.
  ///
  /// Only populated for Product.Type.PRIMARY Products. Note: This field is
  /// OUTPUT_ONLY for ProductService.GetProduct. Do not set this field in API
  /// requests.
  ///
  /// Output only.
  GoogleCloudRetailV2alphaPriceInfoPriceRange? priceRange;

  GoogleCloudRetailV2alphaPriceInfo({
    this.cost,
    this.currencyCode,
    this.originalPrice,
    this.price,
    this.priceEffectiveTime,
    this.priceExpireTime,
    this.priceRange,
  });

  GoogleCloudRetailV2alphaPriceInfo.fromJson(core.Map json_)
    : this(
        cost: (json_['cost'] as core.num?)?.toDouble(),
        currencyCode: json_['currencyCode'] as core.String?,
        originalPrice: (json_['originalPrice'] as core.num?)?.toDouble(),
        price: (json_['price'] as core.num?)?.toDouble(),
        priceEffectiveTime: json_['priceEffectiveTime'] as core.String?,
        priceExpireTime: json_['priceExpireTime'] as core.String?,
        priceRange:
            json_.containsKey('priceRange')
                ? GoogleCloudRetailV2alphaPriceInfoPriceRange.fromJson(
                  json_['priceRange'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cost != null) 'cost': cost!,
    if (currencyCode != null) 'currencyCode': currencyCode!,
    if (originalPrice != null) 'originalPrice': originalPrice!,
    if (price != null) 'price': price!,
    if (priceEffectiveTime != null) 'priceEffectiveTime': priceEffectiveTime!,
    if (priceExpireTime != null) 'priceExpireTime': priceExpireTime!,
    if (priceRange != null) 'priceRange': priceRange!,
  };
}

/// The price range of all variant Product having the same
/// Product.primary_product_id.
class GoogleCloudRetailV2alphaPriceInfoPriceRange {
  /// The inclusive Product.pricing_info.original_price internal of all variant
  /// Product having the same Product.primary_product_id.
  GoogleCloudRetailV2alphaInterval? originalPrice;

  /// The inclusive Product.pricing_info.price interval of all variant Product
  /// having the same Product.primary_product_id.
  GoogleCloudRetailV2alphaInterval? price;

  GoogleCloudRetailV2alphaPriceInfoPriceRange({this.originalPrice, this.price});

  GoogleCloudRetailV2alphaPriceInfoPriceRange.fromJson(core.Map json_)
    : this(
        originalPrice:
            json_.containsKey('originalPrice')
                ? GoogleCloudRetailV2alphaInterval.fromJson(
                  json_['originalPrice'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        price:
            json_.containsKey('price')
                ? GoogleCloudRetailV2alphaInterval.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (originalPrice != null) 'originalPrice': originalPrice!,
    if (price != null) 'price': price!,
  };
}

/// Product captures all metadata information of items to be recommended or
/// searched.
class GoogleCloudRetailV2alphaProduct {
  /// Highly encouraged.
  ///
  /// Extra product attributes to be included. For example, for products, this
  /// could include the store name, vendor, style, color, etc. These are very
  /// strong signals for recommendation model, thus we highly recommend
  /// providing the attributes here. Features that can take on one of a limited
  /// number of possible values. Two types of features can be set are: Textual
  /// features. some examples would be the brand/maker of a product, or country
  /// of a customer. Numerical features. Some examples would be the
  /// height/weight of a product, or age of a customer. For example: `{
  /// "vendor": {"text": ["vendor123", "vendor456"]}, "lengths_cm":
  /// {"numbers":[2.3, 15.4]}, "heights_cm": {"numbers":[8.1, 6.4]} }`. This
  /// field needs to pass all below criteria, otherwise an INVALID_ARGUMENT
  /// error is returned: * Max entries count: 200. * The key must be a UTF-8
  /// encoded string with a length limit of 128 characters. * For indexable
  /// attribute, the key must match the pattern: `a-zA-Z0-9*`. For example,
  /// `key0LikeThis` or `KEY_1_LIKE_THIS`. * For text attributes, at most 400
  /// values are allowed. Empty values are not allowed. Each value must be a
  /// non-empty UTF-8 encoded string with a length limit of 256 characters. *
  /// For number attributes, at most 400 values are allowed.
  core.Map<core.String, GoogleCloudRetailV2alphaCustomAttribute>? attributes;

  /// The target group associated with a given audience (e.g. male, veterans,
  /// car owners, musicians, etc.) of the product.
  GoogleCloudRetailV2alphaAudience? audience;

  /// The online availability of the Product.
  ///
  /// Default to Availability.IN_STOCK. For primary products with variants set
  /// the availability of the primary as Availability.OUT_OF_STOCK and set the
  /// true availability at the variant level. This way the primary product will
  /// be considered "in stock" as long as it has at least one variant in stock.
  /// For primary products with no variants set the true availability at the
  /// primary level. Corresponding properties: Google Merchant Center property
  /// [availability](https://support.google.com/merchants/answer/6324448).
  /// Schema.org property [Offer.availability](https://schema.org/availability).
  /// Possible string values are:
  /// - "AVAILABILITY_UNSPECIFIED" : Default product availability. Default to
  /// Availability.IN_STOCK if unset.
  /// - "IN_STOCK" : Product in stock.
  /// - "OUT_OF_STOCK" : Product out of stock.
  /// - "PREORDER" : Product that is in pre-order state.
  /// - "BACKORDER" : Product that is back-ordered (i.e. temporarily out of
  /// stock).
  core.String? availability;

  /// The available quantity of the item.
  core.int? availableQuantity;

  /// The timestamp when this Product becomes available for
  /// SearchService.Search.
  ///
  /// Note that this is only applicable to Type.PRIMARY and Type.COLLECTION, and
  /// ignored for Type.VARIANT.
  core.String? availableTime;

  /// The brands of the product.
  ///
  /// A maximum of 30 brands are allowed unless overridden through the Google
  /// Cloud console. Each brand must be a UTF-8 encoded string with a length
  /// limit of 1,000 characters. Otherwise, an INVALID_ARGUMENT error is
  /// returned. Corresponding properties: Google Merchant Center property
  /// [brand](https://support.google.com/merchants/answer/6324351). Schema.org
  /// property [Product.brand](https://schema.org/brand).
  core.List<core.String>? brands;

  /// Product categories.
  ///
  /// This field is repeated for supporting one product belonging to several
  /// parallel categories. Strongly recommended using the full path for better
  /// search / recommendation quality. To represent full path of category, use
  /// '\>' sign to separate different hierarchies. If '\>' is part of the
  /// category name, replace it with other character(s). For example, if a shoes
  /// product belongs to both \["Shoes & Accessories" -\> "Shoes"\] and
  /// \["Sports & Fitness" -\> "Athletic Clothing" -\> "Shoes"\], it could be
  /// represented as: "categories": \[ "Shoes & Accessories \> Shoes", "Sports &
  /// Fitness \> Athletic Clothing \> Shoes" \] Must be set for Type.PRIMARY
  /// Product otherwise an INVALID_ARGUMENT error is returned. At most 250
  /// values are allowed per Product unless overridden through the Google Cloud
  /// console. Empty values are not allowed. Each value must be a UTF-8 encoded
  /// string with a length limit of 5,000 characters. Otherwise, an
  /// INVALID_ARGUMENT error is returned. Corresponding properties: Google
  /// Merchant Center property google_product_category. Schema.org property
  /// [Product.category](https://schema.org/category).
  /// \[mc_google_product_category\]:
  /// https://support.google.com/merchants/answer/6324436
  core.List<core.String>? categories;

  /// The id of the collection members when type is Type.COLLECTION.
  ///
  /// Non-existent product ids are allowed. The type of the members must be
  /// either Type.PRIMARY or Type.VARIANT otherwise an INVALID_ARGUMENT error is
  /// thrown. Should not set it for other types. A maximum of 1000 values are
  /// allowed. Otherwise, an INVALID_ARGUMENT error is return.
  core.List<core.String>? collectionMemberIds;

  /// The color of the product.
  ///
  /// Corresponding properties: Google Merchant Center property
  /// [color](https://support.google.com/merchants/answer/6324487). Schema.org
  /// property [Product.color](https://schema.org/color).
  GoogleCloudRetailV2alphaColorInfo? colorInfo;

  /// The condition of the product.
  ///
  /// Strongly encouraged to use the standard values: "new", "refurbished",
  /// "used". A maximum of 1 value is allowed per Product. Each value must be a
  /// UTF-8 encoded string with a length limit of 128 characters. Otherwise, an
  /// INVALID_ARGUMENT error is returned. Corresponding properties: Google
  /// Merchant Center property
  /// [condition](https://support.google.com/merchants/answer/6324469).
  /// Schema.org property
  /// [Offer.itemCondition](https://schema.org/itemCondition).
  core.List<core.String>? conditions;

  /// Product description.
  ///
  /// This field must be a UTF-8 encoded string with a length limit of 5,000
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned.
  /// Corresponding properties: Google Merchant Center property
  /// [description](https://support.google.com/merchants/answer/6324468).
  /// Schema.org property [Product.description](https://schema.org/description).
  core.String? description;

  /// Note that this field is applied in the following ways: * If the Product is
  /// already expired when it is uploaded, this product is not indexed for
  /// search.
  ///
  /// * If the Product is not expired when it is uploaded, only the
  /// Type.PRIMARY's and Type.COLLECTION's expireTime is respected, and
  /// Type.VARIANT's expireTime is not used. In general, we suggest the users to
  /// delete the stale products explicitly, instead of using this field to
  /// determine staleness. expire_time must be later than available_time and
  /// publish_time, otherwise an INVALID_ARGUMENT error is thrown. Corresponding
  /// properties: Google Merchant Center property
  /// [expiration_date](https://support.google.com/merchants/answer/6324499).
  core.String? expireTime;

  /// Fulfillment information, such as the store IDs for in-store pickup or
  /// region IDs for different shipping methods.
  ///
  /// All the elements must have distinct FulfillmentInfo.type. Otherwise, an
  /// INVALID_ARGUMENT error is returned.
  core.List<GoogleCloudRetailV2alphaFulfillmentInfo>? fulfillmentInfo;

  /// The Global Trade Item Number (GTIN) of the product.
  ///
  /// This field must be a UTF-8 encoded string with a length limit of 128
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned. This field
  /// must be a Unigram. Otherwise, an INVALID_ARGUMENT error is returned.
  /// Corresponding properties: Google Merchant Center property
  /// [gtin](https://support.google.com/merchants/answer/6324461). Schema.org
  /// property [Product.isbn](https://schema.org/isbn),
  /// [Product.gtin8](https://schema.org/gtin8),
  /// [Product.gtin12](https://schema.org/gtin12),
  /// [Product.gtin13](https://schema.org/gtin13), or
  /// [Product.gtin14](https://schema.org/gtin14). If the value is not a valid
  /// GTIN, an INVALID_ARGUMENT error is returned.
  core.String? gtin;

  /// Product identifier, which is the final component of name.
  ///
  /// For example, this field is "id_1", if name is `projects / *
  /// /locations/global/catalogs/default_catalog/branches/default_branch/products/id_1`.
  /// This field must be a UTF-8 encoded string with a length limit of 128
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned.
  /// Corresponding properties: Google Merchant Center property
  /// [id](https://support.google.com/merchants/answer/6324405). Schema.org
  /// property [Product.sku](https://schema.org/sku).
  ///
  /// Immutable.
  core.String? id;

  /// Product images for the product.
  ///
  /// We highly recommend putting the main image first. A maximum of 300 images
  /// are allowed. Corresponding properties: Google Merchant Center property
  /// [image_link](https://support.google.com/merchants/answer/6324350).
  /// Schema.org property [Product.image](https://schema.org/image).
  core.List<GoogleCloudRetailV2alphaImage>? images;

  /// Language of the title/description and other string attributes.
  ///
  /// Use language tags defined by
  /// [BCP 47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). For product
  /// prediction, this field is ignored and the model automatically detects the
  /// text language. The Product can include text in different languages, but
  /// duplicating Products to provide text in multiple languages can result in
  /// degraded model performance. For product search this field is in use. It
  /// defaults to "en-US" if unset.
  core.String? languageCode;

  /// A list of local inventories specific to different places.
  ///
  /// This field can be managed by ProductService.AddLocalInventories and
  /// ProductService.RemoveLocalInventories APIs if fine-grained, high-volume
  /// updates are necessary.
  ///
  /// Output only.
  core.List<GoogleCloudRetailV2alphaLocalInventory>? localInventories;

  /// The material of the product.
  ///
  /// For example, "leather", "wooden". A maximum of 20 values are allowed. Each
  /// value must be a UTF-8 encoded string with a length limit of 200
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned.
  /// Corresponding properties: Google Merchant Center property
  /// [material](https://support.google.com/merchants/answer/6324410).
  /// Schema.org property [Product.material](https://schema.org/material).
  core.List<core.String>? materials;

  /// Full resource name of the product, such as `projects / *
  /// /locations/global/catalogs/default_catalog/branches/default_branch/products/product_id`.
  ///
  /// Immutable.
  core.String? name;

  /// The pattern or graphic print of the product.
  ///
  /// For example, "striped", "polka dot", "paisley". A maximum of 20 values are
  /// allowed per Product. Each value must be a UTF-8 encoded string with a
  /// length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is
  /// returned. Corresponding properties: Google Merchant Center property
  /// [pattern](https://support.google.com/merchants/answer/6324483). Schema.org
  /// property [Product.pattern](https://schema.org/pattern).
  core.List<core.String>? patterns;

  /// Product price and cost information.
  ///
  /// Corresponding properties: Google Merchant Center property
  /// [price](https://support.google.com/merchants/answer/6324371).
  GoogleCloudRetailV2alphaPriceInfo? priceInfo;

  /// Variant group identifier.
  ///
  /// Must be an id, with the same parent branch with this product. Otherwise,
  /// an error is thrown. For Type.PRIMARY Products, this field can only be
  /// empty or set to the same value as id. For VARIANT Products, this field
  /// cannot be empty. A maximum of 2,000 products are allowed to share the same
  /// Type.PRIMARY Product. Otherwise, an INVALID_ARGUMENT error is returned.
  /// Corresponding properties: Google Merchant Center property
  /// [item_group_id](https://support.google.com/merchants/answer/6324507).
  /// Schema.org property
  /// [Product.inProductGroupWithID](https://schema.org/inProductGroupWithID).
  core.String? primaryProductId;

  /// The promotions applied to the product.
  ///
  /// A maximum of 10 values are allowed per Product. Only
  /// Promotion.promotion_id will be used, other fields will be ignored if set.
  core.List<GoogleCloudRetailV2alphaPromotion>? promotions;

  /// The timestamp when the product is published by the retailer for the first
  /// time, which indicates the freshness of the products.
  ///
  /// Note that this field is different from available_time, given it purely
  /// describes product freshness regardless of when it is available on search
  /// and recommendation.
  core.String? publishTime;

  /// The rating of this product.
  GoogleCloudRetailV2alphaRating? rating;

  /// Indicates which fields in the Products are returned in SearchResponse.
  ///
  /// Supported fields for all types: * audience * availability * brands *
  /// color_info * conditions * gtin * materials * name * patterns * price_info
  /// * rating * sizes * title * uri Supported fields only for Type.PRIMARY and
  /// Type.COLLECTION: * categories * description * images Supported fields only
  /// for Type.VARIANT: * Only the first image in images To mark attributes as
  /// retrievable, include paths of the form "attributes.key" where "key" is the
  /// key of a custom attribute, as specified in attributes. For Type.PRIMARY
  /// and Type.COLLECTION, the following fields are always returned in
  /// SearchResponse by default: * name For Type.VARIANT, the following fields
  /// are always returned in by default: * name * color_info Note: Returning
  /// more fields in SearchResponse can increase response payload size and
  /// serving latency. This field is deprecated. Use the retrievable site-wide
  /// control instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? retrievableFields;

  /// The size of the product.
  ///
  /// To represent different size systems or size types, consider using this
  /// format: \[\[\[size_system:\]size_type:\]size_value\]. For example, in
  /// "US:MENS:M", "US" represents size system; "MENS" represents size type; "M"
  /// represents size value. In "GIRLS:27", size system is empty; "GIRLS"
  /// represents size type; "27" represents size value. In "32 inches", both
  /// size system and size type are empty, while size value is "32 inches". A
  /// maximum of 20 values are allowed per Product. Each value must be a UTF-8
  /// encoded string with a length limit of 128 characters. Otherwise, an
  /// INVALID_ARGUMENT error is returned. Corresponding properties: Google
  /// Merchant Center property
  /// [size](https://support.google.com/merchants/answer/6324492),
  /// [size_type](https://support.google.com/merchants/answer/6324497), and
  /// [size_system](https://support.google.com/merchants/answer/6324502).
  /// Schema.org property [Product.size](https://schema.org/size).
  core.List<core.String>? sizes;

  /// Custom tags associated with the product.
  ///
  /// At most 250 values are allowed per Product. This value must be a UTF-8
  /// encoded string with a length limit of 1,000 characters. Otherwise, an
  /// INVALID_ARGUMENT error is returned. This tag can be used for filtering
  /// recommendation results by passing the tag as part of the
  /// PredictRequest.filter. Corresponding properties: Google Merchant Center
  /// property
  /// \[custom_label_0–4\](https://support.google.com/merchants/answer/6324473).
  core.List<core.String>? tags;

  /// Product title.
  ///
  /// This field must be a UTF-8 encoded string with a length limit of 1,000
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned.
  /// Corresponding properties: Google Merchant Center property
  /// [title](https://support.google.com/merchants/answer/6324415). Schema.org
  /// property [Product.name](https://schema.org/name).
  ///
  /// Required.
  core.String? title;

  /// Input only.
  ///
  /// The TTL (time to live) of the product. Note that this is only applicable
  /// to Type.PRIMARY and Type.COLLECTION, and ignored for Type.VARIANT. In
  /// general, we suggest the users to delete the stale products explicitly,
  /// instead of using this field to determine staleness. If it is set, it must
  /// be a non-negative value, and expire_time is set as current timestamp plus
  /// ttl. The derived expire_time is returned in the output and ttl is left
  /// blank when retrieving the Product. If it is set, the product is not
  /// available for SearchService.Search after current timestamp plus ttl.
  /// However, the product can still be retrieved by ProductService.GetProduct
  /// and ProductService.ListProducts.
  core.String? ttl;

  /// The type of the product.
  ///
  /// Default to Catalog.product_level_config.ingestion_product_type if unset.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. Default to
  /// Catalog.product_level_config.ingestion_product_type if unset.
  /// - "PRIMARY" : The primary type. As the primary unit for predicting,
  /// indexing and search serving, a Type.PRIMARY Product is grouped with
  /// multiple Type.VARIANT Products.
  /// - "VARIANT" : The variant type. Type.VARIANT Products usually share some
  /// common attributes on the same Type.PRIMARY Products, but they have variant
  /// attributes like different colors, sizes and prices, etc.
  /// - "COLLECTION" : The collection type. Collection products are bundled
  /// Type.PRIMARY Products or Type.VARIANT Products that are sold together,
  /// such as a jewelry set with necklaces, earrings and rings, etc.
  core.String? type;

  /// Canonical URL directly linking to the product detail page.
  ///
  /// It is strongly recommended to provide a valid uri for the product,
  /// otherwise the service performance could be significantly degraded. This
  /// field must be a UTF-8 encoded string with a length limit of 5,000
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned.
  /// Corresponding properties: Google Merchant Center property
  /// [link](https://support.google.com/merchants/answer/6324416). Schema.org
  /// property [Offer.url](https://schema.org/url).
  core.String? uri;

  /// Product variants grouped together on primary product which share similar
  /// product attributes.
  ///
  /// It's automatically grouped by primary_product_id for all the product
  /// variants. Only populated for Type.PRIMARY Products. Note: This field is
  /// OUTPUT_ONLY for ProductService.GetProduct. Do not set this field in API
  /// requests.
  ///
  /// Output only.
  core.List<GoogleCloudRetailV2alphaProduct>? variants;

  GoogleCloudRetailV2alphaProduct({
    this.attributes,
    this.audience,
    this.availability,
    this.availableQuantity,
    this.availableTime,
    this.brands,
    this.categories,
    this.collectionMemberIds,
    this.colorInfo,
    this.conditions,
    this.description,
    this.expireTime,
    this.fulfillmentInfo,
    this.gtin,
    this.id,
    this.images,
    this.languageCode,
    this.localInventories,
    this.materials,
    this.name,
    this.patterns,
    this.priceInfo,
    this.primaryProductId,
    this.promotions,
    this.publishTime,
    this.rating,
    this.retrievableFields,
    this.sizes,
    this.tags,
    this.title,
    this.ttl,
    this.type,
    this.uri,
    this.variants,
  });

  GoogleCloudRetailV2alphaProduct.fromJson(core.Map json_)
    : this(
        attributes:
            (json_['attributes'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudRetailV2alphaCustomAttribute.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        audience:
            json_.containsKey('audience')
                ? GoogleCloudRetailV2alphaAudience.fromJson(
                  json_['audience'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        availability: json_['availability'] as core.String?,
        availableQuantity: json_['availableQuantity'] as core.int?,
        availableTime: json_['availableTime'] as core.String?,
        brands:
            (json_['brands'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        categories:
            (json_['categories'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        collectionMemberIds:
            (json_['collectionMemberIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        colorInfo:
            json_.containsKey('colorInfo')
                ? GoogleCloudRetailV2alphaColorInfo.fromJson(
                  json_['colorInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        conditions:
            (json_['conditions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        description: json_['description'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        fulfillmentInfo:
            (json_['fulfillmentInfo'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaFulfillmentInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        gtin: json_['gtin'] as core.String?,
        id: json_['id'] as core.String?,
        images:
            (json_['images'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaImage.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        languageCode: json_['languageCode'] as core.String?,
        localInventories:
            (json_['localInventories'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaLocalInventory.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        materials:
            (json_['materials'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
        patterns:
            (json_['patterns'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        priceInfo:
            json_.containsKey('priceInfo')
                ? GoogleCloudRetailV2alphaPriceInfo.fromJson(
                  json_['priceInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        primaryProductId: json_['primaryProductId'] as core.String?,
        promotions:
            (json_['promotions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaPromotion.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        publishTime: json_['publishTime'] as core.String?,
        rating:
            json_.containsKey('rating')
                ? GoogleCloudRetailV2alphaRating.fromJson(
                  json_['rating'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        retrievableFields: json_['retrievableFields'] as core.String?,
        sizes:
            (json_['sizes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        tags:
            (json_['tags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        title: json_['title'] as core.String?,
        ttl: json_['ttl'] as core.String?,
        type: json_['type'] as core.String?,
        uri: json_['uri'] as core.String?,
        variants:
            (json_['variants'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaProduct.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributes != null) 'attributes': attributes!,
    if (audience != null) 'audience': audience!,
    if (availability != null) 'availability': availability!,
    if (availableQuantity != null) 'availableQuantity': availableQuantity!,
    if (availableTime != null) 'availableTime': availableTime!,
    if (brands != null) 'brands': brands!,
    if (categories != null) 'categories': categories!,
    if (collectionMemberIds != null)
      'collectionMemberIds': collectionMemberIds!,
    if (colorInfo != null) 'colorInfo': colorInfo!,
    if (conditions != null) 'conditions': conditions!,
    if (description != null) 'description': description!,
    if (expireTime != null) 'expireTime': expireTime!,
    if (fulfillmentInfo != null) 'fulfillmentInfo': fulfillmentInfo!,
    if (gtin != null) 'gtin': gtin!,
    if (id != null) 'id': id!,
    if (images != null) 'images': images!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (localInventories != null) 'localInventories': localInventories!,
    if (materials != null) 'materials': materials!,
    if (name != null) 'name': name!,
    if (patterns != null) 'patterns': patterns!,
    if (priceInfo != null) 'priceInfo': priceInfo!,
    if (primaryProductId != null) 'primaryProductId': primaryProductId!,
    if (promotions != null) 'promotions': promotions!,
    if (publishTime != null) 'publishTime': publishTime!,
    if (rating != null) 'rating': rating!,
    if (retrievableFields != null) 'retrievableFields': retrievableFields!,
    if (sizes != null) 'sizes': sizes!,
    if (tags != null) 'tags': tags!,
    if (title != null) 'title': title!,
    if (ttl != null) 'ttl': ttl!,
    if (type != null) 'type': type!,
    if (uri != null) 'uri': uri!,
    if (variants != null) 'variants': variants!,
  };
}

/// Product attribute name and numeric interval.
class GoogleCloudRetailV2alphaProductAttributeInterval {
  /// The numeric interval (e.g. \[10, 20))
  GoogleCloudRetailV2alphaInterval? interval;

  /// The attribute name (e.g. "length")
  core.String? name;

  GoogleCloudRetailV2alphaProductAttributeInterval({this.interval, this.name});

  GoogleCloudRetailV2alphaProductAttributeInterval.fromJson(core.Map json_)
    : this(
        interval:
            json_.containsKey('interval')
                ? GoogleCloudRetailV2alphaInterval.fromJson(
                  json_['interval'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (interval != null) 'interval': interval!,
    if (name != null) 'name': name!,
  };
}

/// Product attribute which structured by an attribute name and value.
///
/// This structure is used in conversational search filters and answers. For
/// example, if we have `name=color` and `value=red`, this means that the color
/// is `red`.
typedef GoogleCloudRetailV2alphaProductAttributeValue = $ProductAttributeValue;

/// Detailed product information associated with a user event.
class GoogleCloudRetailV2alphaProductDetail {
  /// Product information.
  ///
  /// Required field(s): * Product.id Optional override field(s): *
  /// Product.price_info If any supported optional fields are provided, we will
  /// treat them as a full override when looking up product information from the
  /// catalog. Thus, it is important to ensure that the overriding fields are
  /// accurate and complete. All other product fields are ignored and instead
  /// populated via catalog lookup after event ingestion.
  ///
  /// Required.
  GoogleCloudRetailV2alphaProduct? product;

  /// Quantity of the product associated with the user event.
  ///
  /// For example, this field will be 2 if two products are added to the
  /// shopping cart for `purchase-complete` event. Required for `add-to-cart`
  /// and `purchase-complete` event types.
  core.int? quantity;

  GoogleCloudRetailV2alphaProductDetail({this.product, this.quantity});

  GoogleCloudRetailV2alphaProductDetail.fromJson(core.Map json_)
    : this(
        product:
            json_.containsKey('product')
                ? GoogleCloudRetailV2alphaProduct.fromJson(
                  json_['product'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        quantity: json_['quantity'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (product != null) 'product': product!,
    if (quantity != null) 'quantity': quantity!,
  };
}

/// The inline source for the input config for ImportProducts method.
class GoogleCloudRetailV2alphaProductInlineSource {
  /// A list of products to update/create.
  ///
  /// Each product must have a valid Product.id. Recommended max of 100 items.
  ///
  /// Required.
  core.List<GoogleCloudRetailV2alphaProduct>? products;

  GoogleCloudRetailV2alphaProductInlineSource({this.products});

  GoogleCloudRetailV2alphaProductInlineSource.fromJson(core.Map json_)
    : this(
        products:
            (json_['products'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaProduct.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (products != null) 'products': products!,
  };
}

/// The input config source for products.
class GoogleCloudRetailV2alphaProductInputConfig {
  /// BigQuery input source.
  GoogleCloudRetailV2alphaBigQuerySource? bigQuerySource;

  /// Google Cloud Storage location for the input content.
  GoogleCloudRetailV2alphaGcsSource? gcsSource;

  /// The Inline source for the input content for products.
  GoogleCloudRetailV2alphaProductInlineSource? productInlineSource;

  GoogleCloudRetailV2alphaProductInputConfig({
    this.bigQuerySource,
    this.gcsSource,
    this.productInlineSource,
  });

  GoogleCloudRetailV2alphaProductInputConfig.fromJson(core.Map json_)
    : this(
        bigQuerySource:
            json_.containsKey('bigQuerySource')
                ? GoogleCloudRetailV2alphaBigQuerySource.fromJson(
                  json_['bigQuerySource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        gcsSource:
            json_.containsKey('gcsSource')
                ? GoogleCloudRetailV2alphaGcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        productInlineSource:
            json_.containsKey('productInlineSource')
                ? GoogleCloudRetailV2alphaProductInlineSource.fromJson(
                  json_['productInlineSource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bigQuerySource != null) 'bigQuerySource': bigQuerySource!,
    if (gcsSource != null) 'gcsSource': gcsSource!,
    if (productInlineSource != null)
      'productInlineSource': productInlineSource!,
  };
}

/// Configures what level the product should be uploaded with regards to how
/// users will be send events and how predictions will be made.
typedef GoogleCloudRetailV2alphaProductLevelConfig = $ProductLevelConfig;

/// Metadata that describes a Cloud Retail Project.
class GoogleCloudRetailV2alphaProject {
  /// Retail API solutions that the project has enrolled.
  ///
  /// Output only.
  core.List<core.String>? enrolledSolutions;

  /// Full resource name of the retail project, such as
  /// `projects/{project_id_or_number}/retailProject`.
  ///
  /// Output only.
  core.String? name;

  GoogleCloudRetailV2alphaProject({this.enrolledSolutions, this.name});

  GoogleCloudRetailV2alphaProject.fromJson(core.Map json_)
    : this(
        enrolledSolutions:
            (json_['enrolledSolutions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enrolledSolutions != null) 'enrolledSolutions': enrolledSolutions!,
    if (name != null) 'name': name!,
  };
}

/// Promotion specification.
typedef GoogleCloudRetailV2alphaPromotion = $Promotion;

/// A transaction represents the entire purchase transaction.
typedef GoogleCloudRetailV2alphaPurchaseTransaction = $PurchaseTransaction;

/// Request message for PurgeProducts method.
typedef GoogleCloudRetailV2alphaPurgeProductsRequest = $PurgeProductsRequest;

/// Request message for PurgeUserEvents method.
typedef GoogleCloudRetailV2alphaPurgeUserEventsRequest =
    $PurgeUserEventsRequest01;

/// The rating of a Product.
typedef GoogleCloudRetailV2alphaRating = $Rating;

/// Request message for RejoinUserEvents method.
typedef GoogleCloudRetailV2alphaRejoinUserEventsRequest =
    $RejoinUserEventsRequest;

/// Request for CatalogService.RemoveCatalogAttribute method.
typedef GoogleCloudRetailV2alphaRemoveCatalogAttributeRequest =
    $RemoveCatalogAttributeRequest;

/// Request for RemoveControl method.
typedef GoogleCloudRetailV2alphaRemoveControlRequest = $RemoveControlRequest;

/// Request message for ProductService.RemoveFulfillmentPlaces method.
typedef GoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest =
    $RemoveFulfillmentPlacesRequest;

/// Request message for ProductService.RemoveLocalInventories method.
typedef GoogleCloudRetailV2alphaRemoveLocalInventoriesRequest =
    $RemoveLocalInventoriesRequest;

/// Request for CatalogService.ReplaceCatalogAttribute method.
class GoogleCloudRetailV2alphaReplaceCatalogAttributeRequest {
  /// The updated CatalogAttribute.
  ///
  /// Required.
  GoogleCloudRetailV2alphaCatalogAttribute? catalogAttribute;

  /// Indicates which fields in the provided CatalogAttribute to update.
  ///
  /// The following are NOT supported: * CatalogAttribute.key If not set, all
  /// supported fields are updated.
  core.String? updateMask;

  GoogleCloudRetailV2alphaReplaceCatalogAttributeRequest({
    this.catalogAttribute,
    this.updateMask,
  });

  GoogleCloudRetailV2alphaReplaceCatalogAttributeRequest.fromJson(
    core.Map json_,
  ) : this(
        catalogAttribute:
            json_.containsKey('catalogAttribute')
                ? GoogleCloudRetailV2alphaCatalogAttribute.fromJson(
                  json_['catalogAttribute']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (catalogAttribute != null) 'catalogAttribute': catalogAttribute!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// Request for resuming training of a model.
typedef GoogleCloudRetailV2alphaResumeModelRequest = $Empty;

/// A rule is a condition-action pair * A condition defines when a rule is to be
/// triggered.
///
/// * An action specifies what occurs on that trigger. Currently rules only work
/// for controls with SOLUTION_TYPE_SEARCH.
class GoogleCloudRetailV2alphaRule {
  /// A boost action.
  GoogleCloudRetailV2alphaRuleBoostAction? boostAction;

  /// The condition that triggers the rule.
  ///
  /// If the condition is empty, the rule will always apply.
  ///
  /// Required.
  GoogleCloudRetailV2alphaCondition? condition;

  /// Prevents term from being associated with other terms.
  GoogleCloudRetailV2alphaRuleDoNotAssociateAction? doNotAssociateAction;

  /// Filters results.
  GoogleCloudRetailV2alphaRuleFilterAction? filterAction;

  /// Force returns an attribute as a facet in the request.
  GoogleCloudRetailV2alphaRuleForceReturnFacetAction? forceReturnFacetAction;

  /// Ignores specific terms from query during search.
  GoogleCloudRetailV2alphaRuleIgnoreAction? ignoreAction;

  /// Treats specific term as a synonym with a group of terms.
  ///
  /// Group of terms will not be treated as synonyms with the specific term.
  GoogleCloudRetailV2alphaRuleOnewaySynonymsAction? onewaySynonymsAction;

  /// Pins one or more specified products to a specific position in the results.
  GoogleCloudRetailV2alphaRulePinAction? pinAction;

  /// Redirects a shopper to a specific page.
  GoogleCloudRetailV2alphaRuleRedirectAction? redirectAction;

  /// Remove an attribute as a facet in the request (if present).
  GoogleCloudRetailV2alphaRuleRemoveFacetAction? removeFacetAction;

  /// Replaces specific terms in the query.
  GoogleCloudRetailV2alphaRuleReplacementAction? replacementAction;

  /// Treats a set of terms as synonyms of one another.
  GoogleCloudRetailV2alphaRuleTwowaySynonymsAction? twowaySynonymsAction;

  GoogleCloudRetailV2alphaRule({
    this.boostAction,
    this.condition,
    this.doNotAssociateAction,
    this.filterAction,
    this.forceReturnFacetAction,
    this.ignoreAction,
    this.onewaySynonymsAction,
    this.pinAction,
    this.redirectAction,
    this.removeFacetAction,
    this.replacementAction,
    this.twowaySynonymsAction,
  });

  GoogleCloudRetailV2alphaRule.fromJson(core.Map json_)
    : this(
        boostAction:
            json_.containsKey('boostAction')
                ? GoogleCloudRetailV2alphaRuleBoostAction.fromJson(
                  json_['boostAction'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        condition:
            json_.containsKey('condition')
                ? GoogleCloudRetailV2alphaCondition.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        doNotAssociateAction:
            json_.containsKey('doNotAssociateAction')
                ? GoogleCloudRetailV2alphaRuleDoNotAssociateAction.fromJson(
                  json_['doNotAssociateAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        filterAction:
            json_.containsKey('filterAction')
                ? GoogleCloudRetailV2alphaRuleFilterAction.fromJson(
                  json_['filterAction'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        forceReturnFacetAction:
            json_.containsKey('forceReturnFacetAction')
                ? GoogleCloudRetailV2alphaRuleForceReturnFacetAction.fromJson(
                  json_['forceReturnFacetAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        ignoreAction:
            json_.containsKey('ignoreAction')
                ? GoogleCloudRetailV2alphaRuleIgnoreAction.fromJson(
                  json_['ignoreAction'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        onewaySynonymsAction:
            json_.containsKey('onewaySynonymsAction')
                ? GoogleCloudRetailV2alphaRuleOnewaySynonymsAction.fromJson(
                  json_['onewaySynonymsAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        pinAction:
            json_.containsKey('pinAction')
                ? GoogleCloudRetailV2alphaRulePinAction.fromJson(
                  json_['pinAction'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        redirectAction:
            json_.containsKey('redirectAction')
                ? GoogleCloudRetailV2alphaRuleRedirectAction.fromJson(
                  json_['redirectAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        removeFacetAction:
            json_.containsKey('removeFacetAction')
                ? GoogleCloudRetailV2alphaRuleRemoveFacetAction.fromJson(
                  json_['removeFacetAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        replacementAction:
            json_.containsKey('replacementAction')
                ? GoogleCloudRetailV2alphaRuleReplacementAction.fromJson(
                  json_['replacementAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        twowaySynonymsAction:
            json_.containsKey('twowaySynonymsAction')
                ? GoogleCloudRetailV2alphaRuleTwowaySynonymsAction.fromJson(
                  json_['twowaySynonymsAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boostAction != null) 'boostAction': boostAction!,
    if (condition != null) 'condition': condition!,
    if (doNotAssociateAction != null)
      'doNotAssociateAction': doNotAssociateAction!,
    if (filterAction != null) 'filterAction': filterAction!,
    if (forceReturnFacetAction != null)
      'forceReturnFacetAction': forceReturnFacetAction!,
    if (ignoreAction != null) 'ignoreAction': ignoreAction!,
    if (onewaySynonymsAction != null)
      'onewaySynonymsAction': onewaySynonymsAction!,
    if (pinAction != null) 'pinAction': pinAction!,
    if (redirectAction != null) 'redirectAction': redirectAction!,
    if (removeFacetAction != null) 'removeFacetAction': removeFacetAction!,
    if (replacementAction != null) 'replacementAction': replacementAction!,
    if (twowaySynonymsAction != null)
      'twowaySynonymsAction': twowaySynonymsAction!,
  };
}

/// A boost action to apply to results matching condition specified above.
typedef GoogleCloudRetailV2alphaRuleBoostAction = $RuleBoostAction;

/// Prevents `query_term` from being associated with specified terms during
/// search.
///
/// Example: Don't associate "gShoe" and "cheap".
typedef GoogleCloudRetailV2alphaRuleDoNotAssociateAction =
    $RuleDoNotAssociateAction;

/// * Rule Condition: - No Condition.query_terms provided is a global match.
///
/// - 1 or more Condition.query_terms provided are combined with OR operator. *
/// Action Input: The request query and filter that are applied to the retrieved
/// products, in addition to any filters already provided with the
/// SearchRequest. The AND operator is used to combine the query's existing
/// filters with the filter rule(s). NOTE: May result in 0 results when filters
/// conflict. * Action Result: Filters the returned objects to be ONLY those
/// that passed the filter.
typedef GoogleCloudRetailV2alphaRuleFilterAction = $RuleFilterAction;

/// Force returns an attribute/facet in the request around a certain position or
/// above.
///
/// * Rule Condition: Must specify non-empty Condition.query_terms (for search
/// only) or Condition.page_categories (for browse only), but can't specify
/// both. * Action Inputs: attribute name, position * Action Result: Will force
/// return a facet key around a certain position or above if the condition is
/// satisfied. Example: Suppose the query is "shoes", the Condition.query_terms
/// is "shoes", the
/// ForceReturnFacetAction.FacetPositionAdjustment.attribute_name is "size" and
/// the ForceReturnFacetAction.FacetPositionAdjustment.position is 8. Two cases:
/// a) The facet key "size" is not already in the top 8 slots, then the facet
/// "size" will appear at a position close to 8. b) The facet key "size" in
/// among the top 8 positions in the request, then it will stay at its current
/// rank.
class GoogleCloudRetailV2alphaRuleForceReturnFacetAction {
  /// Each instance corresponds to a force return attribute for the given
  /// condition.
  ///
  /// There can't be more 15 instances here.
  core.List<
    GoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment
  >?
  facetPositionAdjustments;

  GoogleCloudRetailV2alphaRuleForceReturnFacetAction({
    this.facetPositionAdjustments,
  });

  GoogleCloudRetailV2alphaRuleForceReturnFacetAction.fromJson(core.Map json_)
    : this(
        facetPositionAdjustments:
            (json_['facetPositionAdjustments'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (facetPositionAdjustments != null)
      'facetPositionAdjustments': facetPositionAdjustments!,
  };
}

/// Each facet position adjustment consists of a single attribute name (i.e.
/// facet key) along with a specified position.
typedef GoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment =
    $RuleForceReturnFacetActionFacetPositionAdjustment;

/// Prevents a term in the query from being used in search.
///
/// Example: Don't search for "shoddy".
typedef GoogleCloudRetailV2alphaRuleIgnoreAction = $RuleIgnoreAction;

/// Maps a set of terms to a set of synonyms.
///
/// Set of synonyms will be treated as synonyms of each query term only.
/// `query_terms` will not be treated as synonyms of each other. Example:
/// "sneakers" will use a synonym of "shoes". "shoes" will not use a synonym of
/// "sneakers".
typedef GoogleCloudRetailV2alphaRuleOnewaySynonymsAction =
    $RuleOnewaySynonymsAction;

/// Pins one or more specified products to a specific position in the results.
///
/// * Rule Condition: Must specify non-empty Condition.query_terms (for search
/// only) or Condition.page_categories (for browse only), but can't specify
/// both. * Action Input: mapping of `[pin_position, product_id]` pairs (pin
/// position uses 1-based indexing). * Action Result: Will pin products with
/// matching ids to the position specified in the final result order. Example:
/// Suppose the query is `shoes`, the Condition.query_terms is `shoes` and the
/// pin_map has `{1, "pid1"}`, then product with `pid1` will be pinned to the
/// top position in the final results. If multiple PinActions are matched to a
/// single request the actions will be processed from most to least recently
/// updated. Pins to positions larger than the max allowed page size of 120 are
/// not allowed.
typedef GoogleCloudRetailV2alphaRulePinAction = $RulePinAction;

/// Redirects a shopper to a specific page.
///
/// * Rule Condition: Must specify Condition.query_terms. * Action Input:
/// Request Query * Action Result: Redirects shopper to provided uri.
typedef GoogleCloudRetailV2alphaRuleRedirectAction = $RuleRedirectAction;

/// Removes an attribute/facet in the request if is present.
///
/// * Rule Condition: Must specify non-empty Condition.query_terms (for search
/// only) or Condition.page_categories (for browse only), but can't specify
/// both. * Action Input: attribute name * Action Result: Will remove the
/// attribute (as a facet) from the request if it is present. Example: Suppose
/// the query is "shoes", the Condition.query_terms is "shoes" and the attribute
/// name "size", then facet key "size" will be removed from the request (if it
/// is present).
typedef GoogleCloudRetailV2alphaRuleRemoveFacetAction = $RuleRemoveFacetAction;

/// Replaces a term in the query.
///
/// Multiple replacement candidates can be specified. All `query_terms` will be
/// replaced with the replacement term. Example: Replace "gShoe" with "google
/// shoe".
typedef GoogleCloudRetailV2alphaRuleReplacementAction = $RuleReplacementAction;

/// Creates a set of terms that will be treated as synonyms of each other.
///
/// Example: synonyms of "sneakers" and "shoes": * "sneakers" will use a synonym
/// of "shoes". * "shoes" will use a synonym of "sneakers".
typedef GoogleCloudRetailV2alphaRuleTwowaySynonymsAction =
    $RuleTwowaySynonymsAction;

/// Safety settings.
class GoogleCloudRetailV2alphaSafetySetting {
  /// Harm category.
  /// Possible string values are:
  /// - "HARM_CATEGORY_UNSPECIFIED" : The harm category is unspecified.
  /// - "HARM_CATEGORY_HATE_SPEECH" : The harm category is hate speech.
  /// - "HARM_CATEGORY_DANGEROUS_CONTENT" : The harm category is dangerous
  /// content.
  /// - "HARM_CATEGORY_HARASSMENT" : The harm category is harassment.
  /// - "HARM_CATEGORY_SEXUALLY_EXPLICIT" : The harm category is sexually
  /// explicit content.
  /// - "HARM_CATEGORY_CIVIC_INTEGRITY" : The harm category is civic integrity.
  core.String? category;

  /// Specify if the threshold is used for probability or severity score.
  ///
  /// If not specified, the threshold is used for probability score.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "HARM_BLOCK_METHOD_UNSPECIFIED" : The harm block method is unspecified.
  /// - "SEVERITY" : The harm block method uses both probability and severity
  /// scores.
  /// - "PROBABILITY" : The harm block method uses the probability score.
  core.String? method;

  /// The harm block threshold.
  /// Possible string values are:
  /// - "HARM_BLOCK_THRESHOLD_UNSPECIFIED" : Unspecified harm block threshold.
  /// - "BLOCK_LOW_AND_ABOVE" : Block low threshold and above (i.e. block more).
  /// - "BLOCK_MEDIUM_AND_ABOVE" : Block medium threshold and above.
  /// - "BLOCK_ONLY_HIGH" : Block only high threshold (i.e. block less).
  /// - "BLOCK_NONE" : Block none.
  /// - "OFF" : Turn off the safety filter.
  core.String? threshold;

  GoogleCloudRetailV2alphaSafetySetting({
    this.category,
    this.method,
    this.threshold,
  });

  GoogleCloudRetailV2alphaSafetySetting.fromJson(core.Map json_)
    : this(
        category: json_['category'] as core.String?,
        method: json_['method'] as core.String?,
        threshold: json_['threshold'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (category != null) 'category': category!,
    if (method != null) 'method': method!,
    if (threshold != null) 'threshold': threshold!,
  };
}

/// Request message for SearchService.Search method.
class GoogleCloudRetailV2alphaSearchRequest {
  /// Boost specification to boost certain products.
  ///
  /// For more information, see
  /// [Boost results](https://cloud.google.com/retail/docs/boosting). Notice
  /// that if both ServingConfig.boost_control_ids and SearchRequest.boost_spec
  /// are set, the boost conditions from both places are evaluated. If a search
  /// request matches multiple boost conditions, the final boost score is equal
  /// to the sum of the boost scores from all matched boost conditions.
  GoogleCloudRetailV2alphaSearchRequestBoostSpec? boostSpec;

  /// The branch resource name, such as `projects / *
  /// /locations/global/catalogs/default_catalog/branches/0`.
  ///
  /// Use "default_branch" as the branch ID or leave this field empty, to search
  /// products under the default branch.
  core.String? branch;

  /// The default filter that is applied when a user performs a search without
  /// checking any filters on the search page.
  ///
  /// The filter applied to every search request when quality improvement such
  /// as query expansion is needed. In the case a query does not have a
  /// sufficient amount of results this filter will be used to determine whether
  /// or not to enable the query expansion flow. The original filter will still
  /// be used for the query expanded search. This field is strongly recommended
  /// to achieve high search quality. For more information about filter syntax,
  /// see SearchRequest.filter.
  core.String? canonicalFilter;

  /// This field specifies all conversational related parameters addition to
  /// traditional retail search.
  ///
  /// Optional.
  GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec?
  conversationalSearchSpec;

  /// Refer to https://cloud.google.com/retail/docs/configs#dynamic to enable
  /// dynamic facets.
  ///
  /// Do not set this field. The specification for dynamically generated facets.
  /// Notice that only textual facets can be dynamically generated.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec? dynamicFacetSpec;

  /// The entity for customers that may run multiple different entities,
  /// domains, sites or regions, for example, `Google US`, `Google Ads`,
  /// `Waymo`, `google.com`, `youtube.com`, etc.
  ///
  /// If this is set, it should be exactly matched with UserEvent.entity to get
  /// search results boosted by entity.
  core.String? entity;

  /// An ID for the experiment group this search belongs to.
  ///
  /// Optional.
  core.String? experimentId;

  /// Facet specifications for faceted search.
  ///
  /// If empty, no facets are returned. A maximum of 200 values are allowed.
  /// Otherwise, an INVALID_ARGUMENT error is returned.
  core.List<GoogleCloudRetailV2alphaSearchRequestFacetSpec>? facetSpecs;

  /// The filter syntax consists of an expression language for constructing a
  /// predicate from one or more fields of the products being filtered.
  ///
  /// Filter expression is case-sensitive. For more information, see
  /// [Filter](https://cloud.google.com/retail/docs/filter-and-order#filter). If
  /// this field is unrecognizable, an INVALID_ARGUMENT is returned.
  core.String? filter;

  /// The labels applied to a resource must meet the following requirements: *
  /// Each resource can have multiple labels, up to a maximum of 64.
  ///
  /// * Each label must be a key-value pair. * Keys have a minimum length of 1
  /// character and a maximum length of 63 characters and cannot be empty.
  /// Values can be empty and have a maximum length of 63 characters. * Keys and
  /// values can contain only lowercase letters, numeric characters,
  /// underscores, and dashes. All characters must use UTF-8 encoding, and
  /// international characters are allowed. * The key portion of a label must be
  /// unique. However, you can use the same key with multiple resources. * Keys
  /// must start with a lowercase letter or international character. For more
  /// information, see
  /// [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements)
  /// in the Resource Manager documentation.
  core.Map<core.String, core.String>? labels;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn"
  /// [list](https://www.unicode.org/cldr/charts/46/summary/root.html).
  ///
  /// For more information, see
  /// [Standardized codes](https://google.aip.dev/143). This field helps to
  /// better interpret the query. If a value isn't specified, the query language
  /// code is automatically detected, which may not be accurate.
  ///
  /// Optional.
  core.String? languageCode;

  /// A 0-indexed integer that specifies the current offset (that is, starting
  /// result location, amongst the Products deemed by the API as relevant) in
  /// search results.
  ///
  /// This field is only considered if page_token is unset. If this field is
  /// negative, an INVALID_ARGUMENT is returned.
  core.int? offset;

  /// The order in which products are returned.
  ///
  /// Products can be ordered by a field in an Product object. Leave it unset if
  /// ordered by relevance. OrderBy expression is case-sensitive. For more
  /// information, see
  /// [Order](https://cloud.google.com/retail/docs/filter-and-order#order). If
  /// this field is unrecognizable, an INVALID_ARGUMENT is returned.
  core.String? orderBy;

  /// The categories associated with a category page.
  ///
  /// Must be set for category navigation queries to achieve good search
  /// quality. The format should be the same as UserEvent.page_categories; To
  /// represent full path of category, use '\>' sign to separate different
  /// hierarchies. If '\>' is part of the category name, replace it with other
  /// character(s). Category pages include special pages such as sales or
  /// promotions. For instance, a special sale page may have the category
  /// hierarchy: "pageCategories" : \["Sales \> 2017 Black Friday Deals"\].
  core.List<core.String>? pageCategories;

  /// Maximum number of Products to return.
  ///
  /// If unspecified, defaults to a reasonable value. The maximum allowed value
  /// is 120. Values above 120 will be coerced to 120. If this field is
  /// negative, an INVALID_ARGUMENT is returned.
  core.int? pageSize;

  /// A page token SearchResponse.next_page_token, received from a previous
  /// SearchService.Search call.
  ///
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to SearchService.Search must match the call that
  /// provided the page token. Otherwise, an INVALID_ARGUMENT error is returned.
  core.String? pageToken;

  /// The specification for personalization.
  ///
  /// Notice that if both ServingConfig.personalization_spec and
  /// SearchRequest.personalization_spec are set.
  /// SearchRequest.personalization_spec will override
  /// ServingConfig.personalization_spec.
  GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec? personalizationSpec;

  /// An id corresponding to a place, such as a store id or region id.
  ///
  /// When specified, we use the price from the local inventory with the
  /// matching product's LocalInventory.place_id for revenue optimization.
  ///
  /// Optional.
  core.String? placeId;

  /// Raw search query.
  ///
  /// If this field is empty, the request is considered a category browsing
  /// request and returned results are based on filter and page_categories.
  core.String? query;

  /// The query expansion specification that specifies the conditions under
  /// which query expansion occurs.
  ///
  /// For more information, see
  /// [Query expansion](https://cloud.google.com/retail/docs/result-size#query_expansion).
  GoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec? queryExpansionSpec;

  /// The Unicode country/region code (CLDR) of a location, such as "US" and
  /// "419"
  /// [list](https://www.unicode.org/cldr/charts/46/supplemental/territory_information.html).
  ///
  /// For more information, see
  /// [Standardized codes](https://google.aip.dev/143). If set, then results
  /// will be boosted based on the region_code provided.
  ///
  /// Optional.
  core.String? regionCode;

  /// The relevance threshold of the search results.
  ///
  /// Defaults to RelevanceThreshold.HIGH, which means only the most relevant
  /// results are shown, and the least number of results are returned. For more
  /// information, see
  /// [Adjust result size](https://cloud.google.com/retail/docs/result-size#relevance_thresholding).
  /// Possible string values are:
  /// - "RELEVANCE_THRESHOLD_UNSPECIFIED" : Default value. In this case, server
  /// behavior defaults to RelevanceThreshold.HIGH.
  /// - "HIGH" : High relevance threshold.
  /// - "MEDIUM" : Medium relevance threshold.
  /// - "LOW" : Low relevance threshold.
  /// - "LOWEST" : Lowest relevance threshold.
  core.String? relevanceThreshold;

  /// The search mode of the search request.
  ///
  /// If not specified, a single search request triggers both product search and
  /// faceted search.
  /// Possible string values are:
  /// - "SEARCH_MODE_UNSPECIFIED" : Default value. In this case both product
  /// search and faceted search will be performed. Both
  /// SearchResponse.SearchResult and SearchResponse.Facet will be returned.
  /// - "PRODUCT_SEARCH_ONLY" : Only product search will be performed. The
  /// faceted search will be disabled. Only SearchResponse.SearchResult will be
  /// returned. SearchResponse.Facet will not be returned, even if
  /// SearchRequest.facet_specs or SearchRequest.dynamic_facet_spec is set.
  /// - "FACETED_SEARCH_ONLY" : Only faceted search will be performed. The
  /// product search will be disabled. When in this mode, one or both of
  /// SearchRequest.facet_specs and SearchRequest.dynamic_facet_spec should be
  /// set. Otherwise, an INVALID_ARGUMENT error is returned. Only
  /// SearchResponse.Facet will be returned. SearchResponse.SearchResult will
  /// not be returned.
  core.String? searchMode;

  /// The spell correction specification that specifies the mode under which
  /// spell correction will take effect.
  GoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec? spellCorrectionSpec;

  /// This field specifies tile navigation related parameters.
  ///
  /// Optional.
  GoogleCloudRetailV2alphaSearchRequestTileNavigationSpec? tileNavigationSpec;

  /// The user attributes that could be used for personalization of search
  /// results.
  ///
  /// * Populate at most 100 key-value pairs per query. * Only supports string
  /// keys and repeated string values. * Duplicate keys are not allowed within a
  /// single query. Example: user_attributes: \[ { key: "pets" value { values:
  /// "dog" values: "cat" } }, { key: "state" value { values: "CA" } } \]
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudRetailV2alphaStringList>? userAttributes;

  /// User information.
  GoogleCloudRetailV2alphaUserInfo? userInfo;

  /// The keys to fetch and rollup the matching variant Products attributes,
  /// FulfillmentInfo or LocalInventorys attributes.
  ///
  /// The attributes from all the matching variant Products or LocalInventorys
  /// are merged and de-duplicated. Notice that rollup attributes will lead to
  /// extra query latency. Maximum number of keys is 30. For FulfillmentInfo, a
  /// fulfillment type and a fulfillment ID must be provided in the format of
  /// "fulfillmentType.fulfillmentId". E.g., in "pickupInStore.store123",
  /// "pickupInStore" is fulfillment type and "store123" is the store ID.
  /// Supported keys are: * colorFamilies * price * originalPrice * discount *
  /// variantId * inventory(place_id,price) * inventory(place_id,original_price)
  /// * inventory(place_id,attributes.key), where key is any key in the
  /// Product.local_inventories.attributes map. * attributes.key, where key is
  /// any key in the Product.attributes map. * pickupInStore.id, where id is any
  /// FulfillmentInfo.place_ids for FulfillmentInfo.type "pickup-in-store". *
  /// shipToStore.id, where id is any FulfillmentInfo.place_ids for
  /// FulfillmentInfo.type "ship-to-store". * sameDayDelivery.id, where id is
  /// any FulfillmentInfo.place_ids for FulfillmentInfo.type
  /// "same-day-delivery". * nextDayDelivery.id, where id is any
  /// FulfillmentInfo.place_ids for FulfillmentInfo.type "next-day-delivery". *
  /// customFulfillment1.id, where id is any FulfillmentInfo.place_ids for
  /// FulfillmentInfo.type "custom-type-1". * customFulfillment2.id, where id is
  /// any FulfillmentInfo.place_ids for FulfillmentInfo.type "custom-type-2". *
  /// customFulfillment3.id, where id is any FulfillmentInfo.place_ids for
  /// FulfillmentInfo.type "custom-type-3". * customFulfillment4.id, where id is
  /// any FulfillmentInfo.place_ids for FulfillmentInfo.type "custom-type-4". *
  /// customFulfillment5.id, where id is any FulfillmentInfo.place_ids for
  /// FulfillmentInfo.type "custom-type-5". If this field is set to an invalid
  /// value other than these, an INVALID_ARGUMENT error is returned.
  core.List<core.String>? variantRollupKeys;

  /// A unique identifier for tracking visitors.
  ///
  /// For example, this could be implemented with an HTTP cookie, which should
  /// be able to uniquely identify a visitor on a single device. This unique
  /// identifier should not change if the visitor logs in or out of the website.
  /// This should be the same identifier as UserEvent.visitor_id. The field must
  /// be a UTF-8 encoded string with a length limit of 128 characters.
  /// Otherwise, an INVALID_ARGUMENT error is returned.
  ///
  /// Required.
  core.String? visitorId;

  GoogleCloudRetailV2alphaSearchRequest({
    this.boostSpec,
    this.branch,
    this.canonicalFilter,
    this.conversationalSearchSpec,
    this.dynamicFacetSpec,
    this.entity,
    this.experimentId,
    this.facetSpecs,
    this.filter,
    this.labels,
    this.languageCode,
    this.offset,
    this.orderBy,
    this.pageCategories,
    this.pageSize,
    this.pageToken,
    this.personalizationSpec,
    this.placeId,
    this.query,
    this.queryExpansionSpec,
    this.regionCode,
    this.relevanceThreshold,
    this.searchMode,
    this.spellCorrectionSpec,
    this.tileNavigationSpec,
    this.userAttributes,
    this.userInfo,
    this.variantRollupKeys,
    this.visitorId,
  });

  GoogleCloudRetailV2alphaSearchRequest.fromJson(core.Map json_)
    : this(
        boostSpec:
            json_.containsKey('boostSpec')
                ? GoogleCloudRetailV2alphaSearchRequestBoostSpec.fromJson(
                  json_['boostSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        branch: json_['branch'] as core.String?,
        canonicalFilter: json_['canonicalFilter'] as core.String?,
        conversationalSearchSpec:
            json_.containsKey('conversationalSearchSpec')
                ? GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec.fromJson(
                  json_['conversationalSearchSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        dynamicFacetSpec:
            json_.containsKey('dynamicFacetSpec')
                ? GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec.fromJson(
                  json_['dynamicFacetSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        entity: json_['entity'] as core.String?,
        experimentId: json_['experimentId'] as core.String?,
        facetSpecs:
            (json_['facetSpecs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaSearchRequestFacetSpec.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        filter: json_['filter'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        languageCode: json_['languageCode'] as core.String?,
        offset: json_['offset'] as core.int?,
        orderBy: json_['orderBy'] as core.String?,
        pageCategories:
            (json_['pageCategories'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        personalizationSpec:
            json_.containsKey('personalizationSpec')
                ? GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec.fromJson(
                  json_['personalizationSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        placeId: json_['placeId'] as core.String?,
        query: json_['query'] as core.String?,
        queryExpansionSpec:
            json_.containsKey('queryExpansionSpec')
                ? GoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec.fromJson(
                  json_['queryExpansionSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        regionCode: json_['regionCode'] as core.String?,
        relevanceThreshold: json_['relevanceThreshold'] as core.String?,
        searchMode: json_['searchMode'] as core.String?,
        spellCorrectionSpec:
            json_.containsKey('spellCorrectionSpec')
                ? GoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec.fromJson(
                  json_['spellCorrectionSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        tileNavigationSpec:
            json_.containsKey('tileNavigationSpec')
                ? GoogleCloudRetailV2alphaSearchRequestTileNavigationSpec.fromJson(
                  json_['tileNavigationSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        userAttributes: (json_['userAttributes']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudRetailV2alphaStringList.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        userInfo:
            json_.containsKey('userInfo')
                ? GoogleCloudRetailV2alphaUserInfo.fromJson(
                  json_['userInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        variantRollupKeys:
            (json_['variantRollupKeys'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        visitorId: json_['visitorId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boostSpec != null) 'boostSpec': boostSpec!,
    if (branch != null) 'branch': branch!,
    if (canonicalFilter != null) 'canonicalFilter': canonicalFilter!,
    if (conversationalSearchSpec != null)
      'conversationalSearchSpec': conversationalSearchSpec!,
    if (dynamicFacetSpec != null) 'dynamicFacetSpec': dynamicFacetSpec!,
    if (entity != null) 'entity': entity!,
    if (experimentId != null) 'experimentId': experimentId!,
    if (facetSpecs != null) 'facetSpecs': facetSpecs!,
    if (filter != null) 'filter': filter!,
    if (labels != null) 'labels': labels!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (offset != null) 'offset': offset!,
    if (orderBy != null) 'orderBy': orderBy!,
    if (pageCategories != null) 'pageCategories': pageCategories!,
    if (pageSize != null) 'pageSize': pageSize!,
    if (pageToken != null) 'pageToken': pageToken!,
    if (personalizationSpec != null)
      'personalizationSpec': personalizationSpec!,
    if (placeId != null) 'placeId': placeId!,
    if (query != null) 'query': query!,
    if (queryExpansionSpec != null) 'queryExpansionSpec': queryExpansionSpec!,
    if (regionCode != null) 'regionCode': regionCode!,
    if (relevanceThreshold != null) 'relevanceThreshold': relevanceThreshold!,
    if (searchMode != null) 'searchMode': searchMode!,
    if (spellCorrectionSpec != null)
      'spellCorrectionSpec': spellCorrectionSpec!,
    if (tileNavigationSpec != null) 'tileNavigationSpec': tileNavigationSpec!,
    if (userAttributes != null) 'userAttributes': userAttributes!,
    if (userInfo != null) 'userInfo': userInfo!,
    if (variantRollupKeys != null) 'variantRollupKeys': variantRollupKeys!,
    if (visitorId != null) 'visitorId': visitorId!,
  };
}

/// Boost specification to boost certain items.
class GoogleCloudRetailV2alphaSearchRequestBoostSpec {
  /// Condition boost specifications.
  ///
  /// If a product matches multiple conditions in the specifications, boost
  /// scores from these specifications are all applied and combined in a
  /// non-linear way. Maximum number of specifications is 20.
  core.List<GoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec>?
  conditionBoostSpecs;

  /// Whether to skip boostspec validation.
  ///
  /// If this field is set to true, invalid BoostSpec.condition_boost_specs will
  /// be ignored and valid BoostSpec.condition_boost_specs will still be
  /// applied.
  core.bool? skipBoostSpecValidation;

  GoogleCloudRetailV2alphaSearchRequestBoostSpec({
    this.conditionBoostSpecs,
    this.skipBoostSpecValidation,
  });

  GoogleCloudRetailV2alphaSearchRequestBoostSpec.fromJson(core.Map json_)
    : this(
        conditionBoostSpecs:
            (json_['conditionBoostSpecs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        skipBoostSpecValidation: json_['skipBoostSpecValidation'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conditionBoostSpecs != null)
      'conditionBoostSpecs': conditionBoostSpecs!,
    if (skipBoostSpecValidation != null)
      'skipBoostSpecValidation': skipBoostSpecValidation!,
  };
}

/// Boost applies to products which match a condition.
typedef GoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec =
    $SearchRequestBoostSpecConditionBoostSpec;

/// This field specifies all conversational related parameters addition to
/// traditional retail search.
class GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec {
  /// This field specifies the conversation id, which maintains the state of the
  /// conversation between client side and server side.
  ///
  /// Use the value from the previous
  /// ConversationalSearchResult.conversation_id. For the initial request, this
  /// should be empty.
  core.String? conversationId;

  /// This field specifies whether the customer would like to do conversational
  /// search.
  ///
  /// If this field is set to true, conversational related extra information
  /// will be returned from server side, including follow-up question, answer
  /// options, etc.
  core.bool? followupConversationRequested;

  /// This field specifies the current user answer during the conversational
  /// search.
  ///
  /// This can be either user selected from suggested answers or user input
  /// plain text.
  GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer?
  userAnswer;

  GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec({
    this.conversationId,
    this.followupConversationRequested,
    this.userAnswer,
  });

  GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec.fromJson(
    core.Map json_,
  ) : this(
        conversationId: json_['conversationId'] as core.String?,
        followupConversationRequested:
            json_['followupConversationRequested'] as core.bool?,
        userAnswer:
            json_.containsKey('userAnswer')
                ? GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer.fromJson(
                  json_['userAnswer'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conversationId != null) 'conversationId': conversationId!,
    if (followupConversationRequested != null)
      'followupConversationRequested': followupConversationRequested!,
    if (userAnswer != null) 'userAnswer': userAnswer!,
  };
}

/// This field specifies the current user answer during the conversational
/// search.
///
/// This can be either user selected from suggested answers or user input plain
/// text.
class GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer {
  /// This field specifies the selected attributes during the conversational
  /// search.
  ///
  /// This should be a subset of ConversationalSearchResult.suggested_answers.
  GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer?
  selectedAnswer;

  /// This field specifies the incremental input text from the user during the
  /// conversational search.
  core.String? textAnswer;

  GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer({
    this.selectedAnswer,
    this.textAnswer,
  });

  GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer.fromJson(
    core.Map json_,
  ) : this(
        selectedAnswer:
            json_.containsKey('selectedAnswer')
                ? GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer.fromJson(
                  json_['selectedAnswer']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        textAnswer: json_['textAnswer'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (selectedAnswer != null) 'selectedAnswer': selectedAnswer!,
    if (textAnswer != null) 'textAnswer': textAnswer!,
  };
}

/// This field specifies the selected answers during the conversational search.
class GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer {
  /// This field specifies the selected answer which is a attribute key-value.
  GoogleCloudRetailV2alphaProductAttributeValue? productAttributeValue;

  /// This field is deprecated and should not be set.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<GoogleCloudRetailV2alphaProductAttributeValue>?
  productAttributeValues;

  GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer({
    this.productAttributeValue,
    this.productAttributeValues,
  });

  GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer.fromJson(
    core.Map json_,
  ) : this(
        productAttributeValue:
            json_.containsKey('productAttributeValue')
                ? GoogleCloudRetailV2alphaProductAttributeValue.fromJson(
                  json_['productAttributeValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        productAttributeValues:
            (json_['productAttributeValues'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaProductAttributeValue.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (productAttributeValue != null)
      'productAttributeValue': productAttributeValue!,
    if (productAttributeValues != null)
      'productAttributeValues': productAttributeValues!,
  };
}

/// The specifications of dynamically generated facets.
typedef GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec =
    $SearchRequestDynamicFacetSpec;

/// A facet specification to perform faceted search.
class GoogleCloudRetailV2alphaSearchRequestFacetSpec {
  /// Enables dynamic position for this facet.
  ///
  /// If set to true, the position of this facet among all facets in the
  /// response is determined by Google Retail Search. It is ordered together
  /// with dynamic facets if dynamic facets is enabled. If set to false, the
  /// position of this facet in the response is the same as in the request, and
  /// it is ranked before the facets with dynamic position enable and all
  /// dynamic facets. For example, you may always want to have rating facet
  /// returned in the response, but it's not necessarily to always display the
  /// rating facet at the top. In that case, you can set enable_dynamic_position
  /// to true so that the position of rating facet in response is determined by
  /// Google Retail Search. Another example, assuming you have the following
  /// facets in the request: * "rating", enable_dynamic_position = true *
  /// "price", enable_dynamic_position = false * "brands",
  /// enable_dynamic_position = false And also you have a dynamic facets enable,
  /// which generates a facet "gender". Then, the final order of the facets in
  /// the response can be ("price", "brands", "rating", "gender") or ("price",
  /// "brands", "gender", "rating") depends on how Google Retail Search orders
  /// "gender" and "rating" facets. However, notice that "price" and "brands"
  /// are always ranked at first and second position because their
  /// enable_dynamic_position values are false.
  core.bool? enableDynamicPosition;

  /// List of keys to exclude when faceting.
  ///
  /// By default, FacetKey.key is not excluded from the filter unless it is
  /// listed in this field. Listing a facet key in this field allows its values
  /// to appear as facet results, even when they are filtered out of search
  /// results. Using this field does not affect what search results are
  /// returned. For example, suppose there are 100 products with the color facet
  /// "Red" and 200 products with the color facet "Blue". A query containing the
  /// filter "colorFamilies:ANY("Red")" and having "colorFamilies" as
  /// FacetKey.key would by default return only "Red" products in the search
  /// results, and also return "Red" with count 100 as the only color facet.
  /// Although there are also blue products available, "Blue" would not be shown
  /// as an available facet value. If "colorFamilies" is listed in
  /// "excludedFilterKeys", then the query returns the facet values "Red" with
  /// count 100 and "Blue" with count 200, because the "colorFamilies" key is
  /// now excluded from the filter. Because this field doesn't affect search
  /// results, the search results are still correctly filtered to return only
  /// "Red" products. A maximum of 100 values are allowed. Otherwise, an
  /// INVALID_ARGUMENT error is returned.
  core.List<core.String>? excludedFilterKeys;

  /// The facet key specification.
  ///
  /// Required.
  GoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey? facetKey;

  /// Maximum of facet values that should be returned for this facet.
  ///
  /// If unspecified, defaults to 50. The maximum allowed value is 300. Values
  /// above 300 will be coerced to 300. If this field is negative, an
  /// INVALID_ARGUMENT is returned.
  core.int? limit;

  GoogleCloudRetailV2alphaSearchRequestFacetSpec({
    this.enableDynamicPosition,
    this.excludedFilterKeys,
    this.facetKey,
    this.limit,
  });

  GoogleCloudRetailV2alphaSearchRequestFacetSpec.fromJson(core.Map json_)
    : this(
        enableDynamicPosition: json_['enableDynamicPosition'] as core.bool?,
        excludedFilterKeys:
            (json_['excludedFilterKeys'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        facetKey:
            json_.containsKey('facetKey')
                ? GoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey.fromJson(
                  json_['facetKey'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        limit: json_['limit'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enableDynamicPosition != null)
      'enableDynamicPosition': enableDynamicPosition!,
    if (excludedFilterKeys != null) 'excludedFilterKeys': excludedFilterKeys!,
    if (facetKey != null) 'facetKey': facetKey!,
    if (limit != null) 'limit': limit!,
  };
}

/// Specifies how a facet is computed.
class GoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey {
  /// True to make facet keys case insensitive when getting faceting values with
  /// prefixes or contains; false otherwise.
  core.bool? caseInsensitive;

  /// Only get facet values that contains the given strings.
  ///
  /// For example, suppose "categories" has three values "Women \> Shoe", "Women
  /// \> Dress" and "Men \> Shoe". If set "contains" to "Shoe", the "categories"
  /// facet gives only "Women \> Shoe" and "Men \> Shoe". Only supported on
  /// textual fields. Maximum is 10.
  core.List<core.String>? contains;

  /// Set only if values should be bucketized into intervals.
  ///
  /// Must be set for facets with numerical values. Must not be set for facet
  /// with text values. Maximum number of intervals is 40. For all numerical
  /// facet keys that appear in the list of products from the catalog, the
  /// percentiles 0, 10, 30, 50, 70, 90, and 100 are computed from their
  /// distribution weekly. If the model assigns a high score to a numerical
  /// facet key and its intervals are not specified in the search request, these
  /// percentiles become the bounds for its intervals and are returned in the
  /// response. If the facet key intervals are specified in the request, then
  /// the specified intervals are returned instead.
  core.List<GoogleCloudRetailV2alphaInterval>? intervals;

  /// Supported textual and numerical facet keys in Product object, over which
  /// the facet values are computed.
  ///
  /// Facet key is case-sensitive. Allowed facet keys when FacetKey.query is not
  /// specified: * textual_field = * "brands" * "categories" * "genders" *
  /// "ageGroups" * "availability" * "colorFamilies" * "colors" * "sizes" *
  /// "materials" * "patterns" * "conditions" * "attributes.key" *
  /// "pickupInStore" * "shipToStore" * "sameDayDelivery" * "nextDayDelivery" *
  /// "customFulfillment1" * "customFulfillment2" * "customFulfillment3" *
  /// "customFulfillment4" * "customFulfillment5" *
  /// "inventory(place_id,attributes.key)" * numerical_field = * "price" *
  /// "discount" * "rating" * "ratingCount" * "attributes.key" *
  /// "inventory(place_id,price)" * "inventory(place_id,original_price)" *
  /// "inventory(place_id,attributes.key)"
  ///
  /// Required.
  core.String? key;

  /// The order in which SearchResponse.Facet.values are returned.
  ///
  /// Allowed values are: * "count desc", which means order by
  /// SearchResponse.Facet.values.count descending. * "value desc", which means
  /// order by SearchResponse.Facet.values.value descending. Only applies to
  /// textual facets. If not set, textual values are sorted in
  /// [natural order](https://en.wikipedia.org/wiki/Natural_sort_order);
  /// numerical intervals are sorted in the order given by
  /// FacetSpec.FacetKey.intervals; FulfillmentInfo.place_ids are sorted in the
  /// order given by FacetSpec.FacetKey.restricted_values.
  core.String? orderBy;

  /// Only get facet values that start with the given string prefix.
  ///
  /// For example, suppose "categories" has three values "Women \> Shoe", "Women
  /// \> Dress" and "Men \> Shoe". If set "prefixes" to "Women", the
  /// "categories" facet gives only "Women \> Shoe" and "Women \> Dress". Only
  /// supported on textual fields. Maximum is 10.
  core.List<core.String>? prefixes;

  /// The query that is used to compute facet for the given facet key.
  ///
  /// When provided, it overrides the default behavior of facet computation. The
  /// query syntax is the same as a filter expression. See SearchRequest.filter
  /// for detail syntax and limitations. Notice that there is no limitation on
  /// FacetKey.key when query is specified. In the response,
  /// SearchResponse.Facet.values.value is always "1" and
  /// SearchResponse.Facet.values.count is the number of results that match the
  /// query. For example, you can set a customized facet for "shipToStore",
  /// where FacetKey.key is "customizedShipToStore", and FacetKey.query is
  /// "availability: ANY(\"IN_STOCK\") AND shipToStore: ANY(\"123\")". Then the
  /// facet counts the products that are both in stock and ship to store "123".
  core.String? query;

  /// Only get facet for the given restricted values.
  ///
  /// For example, when using "pickupInStore" as key and set restricted values
  /// to \["store123", "store456"\], only facets for "store123" and "store456"
  /// are returned. Only supported on predefined textual fields, custom textual
  /// attributes and fulfillments. Maximum is 20. Must be set for the
  /// fulfillment facet keys: * pickupInStore * shipToStore * sameDayDelivery *
  /// nextDayDelivery * customFulfillment1 * customFulfillment2 *
  /// customFulfillment3 * customFulfillment4 * customFulfillment5
  core.List<core.String>? restrictedValues;

  /// Returns the min and max value for each numerical facet intervals.
  ///
  /// Ignored for textual facets.
  core.bool? returnMinMax;

  GoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey({
    this.caseInsensitive,
    this.contains,
    this.intervals,
    this.key,
    this.orderBy,
    this.prefixes,
    this.query,
    this.restrictedValues,
    this.returnMinMax,
  });

  GoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey.fromJson(
    core.Map json_,
  ) : this(
        caseInsensitive: json_['caseInsensitive'] as core.bool?,
        contains:
            (json_['contains'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        intervals:
            (json_['intervals'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaInterval.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        key: json_['key'] as core.String?,
        orderBy: json_['orderBy'] as core.String?,
        prefixes:
            (json_['prefixes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        query: json_['query'] as core.String?,
        restrictedValues:
            (json_['restrictedValues'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        returnMinMax: json_['returnMinMax'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (caseInsensitive != null) 'caseInsensitive': caseInsensitive!,
    if (contains != null) 'contains': contains!,
    if (intervals != null) 'intervals': intervals!,
    if (key != null) 'key': key!,
    if (orderBy != null) 'orderBy': orderBy!,
    if (prefixes != null) 'prefixes': prefixes!,
    if (query != null) 'query': query!,
    if (restrictedValues != null) 'restrictedValues': restrictedValues!,
    if (returnMinMax != null) 'returnMinMax': returnMinMax!,
  };
}

/// The specification for personalization.
typedef GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec =
    $SearchRequestPersonalizationSpec00;

/// Specification to determine under which conditions query expansion should
/// occur.
typedef GoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec =
    $SearchRequestQueryExpansionSpec01;

/// The specification for query spell correction.
typedef GoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec =
    $SearchRequestSpellCorrectionSpec01;

/// This field specifies tile navigation related parameters.
class GoogleCloudRetailV2alphaSearchRequestTileNavigationSpec {
  /// This optional field specifies the tiles which are already clicked in
  /// client side.
  ///
  /// While the feature works without this field set, particularly for an
  /// initial query, it is highly recommended to set this field because it can
  /// improve the quality of the search response and removes possible duplicate
  /// tiles. NOTE: This field is not being used for filtering search products.
  /// Client side should also put all the applied tiles in SearchRequest.filter.
  core.List<GoogleCloudRetailV2alphaTile>? appliedTiles;

  /// This field specifies whether the customer would like to request tile
  /// navigation.
  core.bool? tileNavigationRequested;

  GoogleCloudRetailV2alphaSearchRequestTileNavigationSpec({
    this.appliedTiles,
    this.tileNavigationRequested,
  });

  GoogleCloudRetailV2alphaSearchRequestTileNavigationSpec.fromJson(
    core.Map json_,
  ) : this(
        appliedTiles:
            (json_['appliedTiles'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaTile.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        tileNavigationRequested: json_['tileNavigationRequested'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appliedTiles != null) 'appliedTiles': appliedTiles!,
    if (tileNavigationRequested != null)
      'tileNavigationRequested': tileNavigationRequested!,
  };
}

/// Response message for SearchService.Search method.
class GoogleCloudRetailV2alphaSearchResponse {
  /// The fully qualified resource name of applied
  /// [controls](https://cloud.google.com/retail/docs/serving-control-rules).
  core.List<core.String>? appliedControls;

  /// A unique search token.
  ///
  /// This should be included in the UserEvent logs resulting from this search,
  /// which enables accurate attribution of search model performance.
  core.String? attributionToken;

  /// This field specifies all related information that is needed on client side
  /// for UI rendering of conversational retail search.
  GoogleCloudRetailV2alphaSearchResponseConversationalSearchResult?
  conversationalSearchResult;

  /// Contains the spell corrected query, if found.
  ///
  /// If the spell correction type is AUTOMATIC, then the search results are
  /// based on corrected_query. Otherwise the original query is used for search.
  core.String? correctedQuery;

  /// Metadata related to A/B testing experiment associated with this response.
  ///
  /// Only exists when an experiment is triggered.
  core.List<GoogleCloudRetailV2alphaExperimentInfo>? experimentInfo;

  /// Results of facets requested by user.
  core.List<GoogleCloudRetailV2alphaSearchResponseFacet>? facets;

  /// The invalid SearchRequest.BoostSpec.condition_boost_specs that are not
  /// applied during serving.
  core.List<GoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec>?
  invalidConditionBoostSpecs;

  /// A token that can be sent as SearchRequest.page_token to retrieve the next
  /// page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Metadata for pin controls which were applicable to the request.
  ///
  /// This contains two map fields, one for all matched pins and one for pins
  /// which were matched but not applied. The two maps are keyed by pin
  /// position, and the values are the product ids which were matched to that
  /// pin.
  GoogleCloudRetailV2alphaPinControlMetadata? pinControlMetadata;

  /// Query expansion information for the returned results.
  GoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo? queryExpansionInfo;

  /// The URI of a customer-defined redirect page.
  ///
  /// If redirect action is triggered, no search is performed, and only
  /// redirect_uri and attribution_token are set in the response.
  core.String? redirectUri;

  /// A list of matched items.
  ///
  /// The order represents the ranking.
  core.List<GoogleCloudRetailV2alphaSearchResponseSearchResult>? results;

  /// This field specifies all related information for tile navigation that will
  /// be used in client side.
  GoogleCloudRetailV2alphaSearchResponseTileNavigationResult?
  tileNavigationResult;

  /// The estimated total count of matched items irrespective of pagination.
  ///
  /// The count of results returned by pagination may be less than the
  /// total_size that matches.
  core.int? totalSize;

  GoogleCloudRetailV2alphaSearchResponse({
    this.appliedControls,
    this.attributionToken,
    this.conversationalSearchResult,
    this.correctedQuery,
    this.experimentInfo,
    this.facets,
    this.invalidConditionBoostSpecs,
    this.nextPageToken,
    this.pinControlMetadata,
    this.queryExpansionInfo,
    this.redirectUri,
    this.results,
    this.tileNavigationResult,
    this.totalSize,
  });

  GoogleCloudRetailV2alphaSearchResponse.fromJson(core.Map json_)
    : this(
        appliedControls:
            (json_['appliedControls'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        attributionToken: json_['attributionToken'] as core.String?,
        conversationalSearchResult:
            json_.containsKey('conversationalSearchResult')
                ? GoogleCloudRetailV2alphaSearchResponseConversationalSearchResult.fromJson(
                  json_['conversationalSearchResult']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        correctedQuery: json_['correctedQuery'] as core.String?,
        experimentInfo:
            (json_['experimentInfo'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaExperimentInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        facets:
            (json_['facets'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaSearchResponseFacet.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        invalidConditionBoostSpecs:
            (json_['invalidConditionBoostSpecs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        pinControlMetadata:
            json_.containsKey('pinControlMetadata')
                ? GoogleCloudRetailV2alphaPinControlMetadata.fromJson(
                  json_['pinControlMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        queryExpansionInfo:
            json_.containsKey('queryExpansionInfo')
                ? GoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo.fromJson(
                  json_['queryExpansionInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        redirectUri: json_['redirectUri'] as core.String?,
        results:
            (json_['results'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaSearchResponseSearchResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        tileNavigationResult:
            json_.containsKey('tileNavigationResult')
                ? GoogleCloudRetailV2alphaSearchResponseTileNavigationResult.fromJson(
                  json_['tileNavigationResult']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appliedControls != null) 'appliedControls': appliedControls!,
    if (attributionToken != null) 'attributionToken': attributionToken!,
    if (conversationalSearchResult != null)
      'conversationalSearchResult': conversationalSearchResult!,
    if (correctedQuery != null) 'correctedQuery': correctedQuery!,
    if (experimentInfo != null) 'experimentInfo': experimentInfo!,
    if (facets != null) 'facets': facets!,
    if (invalidConditionBoostSpecs != null)
      'invalidConditionBoostSpecs': invalidConditionBoostSpecs!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (pinControlMetadata != null) 'pinControlMetadata': pinControlMetadata!,
    if (queryExpansionInfo != null) 'queryExpansionInfo': queryExpansionInfo!,
    if (redirectUri != null) 'redirectUri': redirectUri!,
    if (results != null) 'results': results!,
    if (tileNavigationResult != null)
      'tileNavigationResult': tileNavigationResult!,
    if (totalSize != null) 'totalSize': totalSize!,
  };
}

/// This field specifies all related information that is needed on client side
/// for UI rendering of conversational retail search.
class GoogleCloudRetailV2alphaSearchResponseConversationalSearchResult {
  /// This is the incremental additional filters implied from the current user
  /// answer.
  ///
  /// User should add the suggested addition filters to the previous
  /// SearchRequest.filter, and use the merged filter in the follow up search
  /// request.
  GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter?
  additionalFilter;

  /// This field is deprecated but will be kept for backward compatibility.
  ///
  /// There is expected to have only one additional filter and the value will be
  /// the same to the same as field `additional_filter`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<
    GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter
  >?
  additionalFilters;

  /// Conversation UUID.
  ///
  /// This field will be stored in client side storage to maintain the
  /// conversation session with server and will be used for next search
  /// request's SearchRequest.ConversationalSearchSpec.conversation_id to
  /// restore conversation state in server.
  core.String? conversationId;

  /// The follow-up question.
  ///
  /// e.g., `What is the color?`
  core.String? followupQuestion;

  /// The current refined query for the conversational search.
  ///
  /// This field will be used in customer UI that the query in the search bar
  /// should be replaced with the refined query. For example, if
  /// SearchRequest.query is `dress` and next
  /// SearchRequest.ConversationalSearchSpec.UserAnswer.text_answer is `red
  /// color`, which does not match any product attribute value filters, the
  /// refined query will be `dress, red color`.
  core.String? refinedQuery;

  /// The answer options provided to client for the follow-up question.
  core.List<
    GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer
  >?
  suggestedAnswers;

  GoogleCloudRetailV2alphaSearchResponseConversationalSearchResult({
    this.additionalFilter,
    this.additionalFilters,
    this.conversationId,
    this.followupQuestion,
    this.refinedQuery,
    this.suggestedAnswers,
  });

  GoogleCloudRetailV2alphaSearchResponseConversationalSearchResult.fromJson(
    core.Map json_,
  ) : this(
        additionalFilter:
            json_.containsKey('additionalFilter')
                ? GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter.fromJson(
                  json_['additionalFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        additionalFilters:
            (json_['additionalFilters'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        conversationId: json_['conversationId'] as core.String?,
        followupQuestion: json_['followupQuestion'] as core.String?,
        refinedQuery: json_['refinedQuery'] as core.String?,
        suggestedAnswers:
            (json_['suggestedAnswers'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalFilter != null) 'additionalFilter': additionalFilter!,
    if (additionalFilters != null) 'additionalFilters': additionalFilters!,
    if (conversationId != null) 'conversationId': conversationId!,
    if (followupQuestion != null) 'followupQuestion': followupQuestion!,
    if (refinedQuery != null) 'refinedQuery': refinedQuery!,
    if (suggestedAnswers != null) 'suggestedAnswers': suggestedAnswers!,
  };
}

/// Additional filter that client side need to apply.
class GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter {
  /// Product attribute value, including an attribute key and an attribute
  /// value.
  ///
  /// Other types can be added here in the future.
  GoogleCloudRetailV2alphaProductAttributeValue? productAttributeValue;

  GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter({
    this.productAttributeValue,
  });

  GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter.fromJson(
    core.Map json_,
  ) : this(
        productAttributeValue:
            json_.containsKey('productAttributeValue')
                ? GoogleCloudRetailV2alphaProductAttributeValue.fromJson(
                  json_['productAttributeValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (productAttributeValue != null)
      'productAttributeValue': productAttributeValue!,
  };
}

/// Suggested answers to the follow-up question.
class GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer {
  /// Product attribute value, including an attribute key and an attribute
  /// value.
  ///
  /// Other types can be added here in the future.
  GoogleCloudRetailV2alphaProductAttributeValue? productAttributeValue;

  GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer({
    this.productAttributeValue,
  });

  GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer.fromJson(
    core.Map json_,
  ) : this(
        productAttributeValue:
            json_.containsKey('productAttributeValue')
                ? GoogleCloudRetailV2alphaProductAttributeValue.fromJson(
                  json_['productAttributeValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (productAttributeValue != null)
      'productAttributeValue': productAttributeValue!,
  };
}

/// A facet result.
class GoogleCloudRetailV2alphaSearchResponseFacet {
  /// Whether the facet is dynamically generated.
  core.bool? dynamicFacet;

  /// The key for this facet.
  ///
  /// E.g., "colorFamilies" or "price" or "attributes.attr1".
  core.String? key;

  /// The facet values for this field.
  core.List<GoogleCloudRetailV2alphaSearchResponseFacetFacetValue>? values;

  GoogleCloudRetailV2alphaSearchResponseFacet({
    this.dynamicFacet,
    this.key,
    this.values,
  });

  GoogleCloudRetailV2alphaSearchResponseFacet.fromJson(core.Map json_)
    : this(
        dynamicFacet: json_['dynamicFacet'] as core.bool?,
        key: json_['key'] as core.String?,
        values:
            (json_['values'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudRetailV2alphaSearchResponseFacetFacetValue.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dynamicFacet != null) 'dynamicFacet': dynamicFacet!,
    if (key != null) 'key': key!,
    if (values != null) 'values': values!,
  };
}

/// A facet value which contains value names and their count.
class GoogleCloudRetailV2alphaSearchResponseFacetFacetValue {
  /// Number of items that have this facet value.
  core.String? count;

  /// Interval value for a facet, such as \[10, 20) for facet "price".
  GoogleCloudRetailV2alphaInterval? interval;

  /// The maximum value in the FacetValue.interval.
  ///
  /// Only supported on numerical facets and returned if
  /// SearchRequest.FacetSpec.FacetKey.return_min_max is true.
  core.double? maxValue;

  /// The minimum value in the FacetValue.interval.
  ///
  /// Only supported on numerical facets and returned if
  /// SearchRequest.FacetSpec.FacetKey.return_min_max is true.
  core.double? minValue;

  /// Text value of a facet, such as "Black" for facet "colorFamilies".
  core.String? value;

  GoogleCloudRetailV2alphaSearchResponseFacetFacetValue({
    this.count,
    this.interval,
    this.maxValue,
    this.minValue,
    this.value,
  });

  GoogleCloudRetailV2alphaSearchResponseFacetFacetValue.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.String?,
        interval:
            json_.containsKey('interval')
                ? GoogleCloudRetailV2alphaInterval.fromJson(
                  json_['interval'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        maxValue: (json_['maxValue'] as core.num?)?.toDouble(),
        minValue: (json_['minValue'] as core.num?)?.toDouble(),
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (count != null) 'count': count!,
    if (interval != null) 'interval': interval!,
    if (maxValue != null) 'maxValue': maxValue!,
    if (minValue != null) 'minValue': minValue!,
    if (value != null) 'value': value!,
  };
}

/// Information describing query expansion including whether expansion has
/// occurred.
typedef GoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo =
    $SearchResponseQueryExpansionInfo;

/// Represents the search results.
class GoogleCloudRetailV2alphaSearchResponseSearchResult {
  /// Product.id of the searched Product.
  core.String? id;

  /// The count of matched variant Products.
  core.int? matchingVariantCount;

  /// If a variant Product matches the search query, this map indicates which
  /// Product fields are matched.
  ///
  /// The key is the Product.name, the value is a field mask of the matched
  /// Product fields. If matched attributes cannot be determined, this map will
  /// be empty. For example, a key "sku1" with field mask "products.color_info"
  /// indicates there is a match between "sku1" ColorInfo and the query.
  core.Map<core.String, core.String>? matchingVariantFields;

  /// Google provided available scores.
  core.Map<core.String, GoogleCloudRetailV2alphaDoubleList>? modelScores;

  /// Specifies previous events related to this product for this user based on
  /// UserEvent with same SearchRequest.visitor_id or UserInfo.user_id.
  ///
  /// This is set only when SearchRequest.PersonalizationSpec.mode is
  /// SearchRequest.PersonalizationSpec.Mode.AUTO. Possible values: *
  /// `purchased`: Indicates that this product has been purchased before.
  core.List<core.String>? personalLabels;

  /// The product data snippet in the search response.
  ///
  /// Only Product.name is guaranteed to be populated. Product.variants contains
  /// the product variants that match the search query. If there are multiple
  /// product variants matching the query, top 5 most relevant product variants
  /// are returned and ordered by relevancy. If relevancy can be deternmined,
  /// use matching_variant_fields to look up matched product variants fields. If
  /// relevancy cannot be determined, e.g. when searching "shoe" all products in
  /// a shoe product can be a match, 5 product variants are returned but order
  /// is meaningless.
  GoogleCloudRetailV2alphaProduct? product;

  /// The rollup matching variant Product attributes.
  ///
  /// The key is one of the SearchRequest.variant_rollup_keys. The values are
  /// the merged and de-duplicated Product attributes. Notice that the rollup
  /// values are respect filter. For example, when filtering by
  /// "colorFamilies:ANY(\"red\")" and rollup "colorFamilies", only "red" is
  /// returned. For textual and numerical attributes, the rollup values is a
  /// list of string or double values with type google.protobuf.ListValue. For
  /// example, if there are two variants with colors "red" and "blue", the
  /// rollup values are { key: "colorFamilies" value { list_value { values {
  /// string_value: "red" } values { string_value: "blue" } } } } For
  /// FulfillmentInfo, the rollup values is a double value with type
  /// google.protobuf.Value. For example, `{key: "pickupInStore.store1" value {
  /// number_value: 10 }}` means a there are 10 variants in this product are
  /// available in the store "store1".
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? variantRollupValues;

  GoogleCloudRetailV2alphaSearchResponseSearchResult({
    this.id,
    this.matchingVariantCount,
    this.matchingVariantFields,
    this.modelScores,
    this.personalLabels,
    this.product,
    this.variantRollupValues,
  });

  GoogleCloudRetailV2alphaSearchResponseSearchResult.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        matchingVariantCount: json_['matchingVariantCount'] as core.int?,
        matchingVariantFields: (json_['matchingVariantFields']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        modelScores:
            (json_['modelScores'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudRetailV2alphaDoubleList.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        personalLabels:
            (json_['personalLabels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        product:
            json_.containsKey('product')
                ? GoogleCloudRetailV2alphaProduct.fromJson(
                  json_['product'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        variantRollupValues:
            json_.containsKey('variantRollupValues')
                ? json_['variantRollupValues']
                    as core.Map<core.String, core.dynamic>
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (id != null) 'id': id!,
    if (matchingVariantCount != null)
      'matchingVariantCount': matchingVariantCount!,
    if (matchingVariantFields != null)
      'matchingVariantFields': matchingVariantFields!,
    if (modelScores != null) 'modelScores': modelScores!,
    if (personalLabels != null) 'personalLabels': personalLabels!,
    if (product != null) 'product': product!,
    if (variantRollupValues != null)
      'variantRollupValues': variantRollupValues!,
  };
}

/// This field specifies all related information for tile navigation that will
/// be used in client side.
class GoogleCloudRetailV2alphaSearchResponseTileNavigationResult {
  /// The current tiles that are used for tile navigation, sorted by engagement.
  core.List<GoogleCloudRetailV2alphaTile>? tiles;

  GoogleCloudRetailV2alphaSearchResponseTileNavigationResult({this.tiles});

  GoogleCloudRetailV2alphaSearchResponseTileNavigationResult.fromJson(
    core.Map json_,
  ) : this(
        tiles:
            (json_['tiles'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaTile.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (tiles != null) 'tiles': tiles!,
  };
}

/// Configures metadata that is used to generate serving time results (e.g.
/// search results or recommendation predictions).
class GoogleCloudRetailV2alphaServingConfig {
  /// Condition boost specifications.
  ///
  /// If a product matches multiple conditions in the specifications, boost
  /// scores from these specifications are all applied and combined in a
  /// non-linear way. Maximum number of specifications is 100. Notice that if
  /// both ServingConfig.boost_control_ids and SearchRequest.boost_spec are set,
  /// the boost conditions from both places are evaluated. If a search request
  /// matches multiple boost conditions, the final boost score is equal to the
  /// sum of the boost scores from all matched boost conditions. Can only be set
  /// if solution_types is SOLUTION_TYPE_SEARCH.
  core.List<core.String>? boostControlIds;

  /// The human readable serving config display name.
  ///
  /// Used in Retail UI. This field must be a UTF-8 encoded string with a length
  /// limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  ///
  /// Required.
  core.String? displayName;

  /// How much diversity to use in recommendation model results e.g.
  /// `medium-diversity` or `high-diversity`.
  ///
  /// Currently supported values: * `no-diversity` * `low-diversity` *
  /// `medium-diversity` * `high-diversity` * `auto-diversity` If not specified,
  /// we choose default based on recommendation model type. Default value:
  /// `no-diversity`. Can only be set if solution_types is
  /// SOLUTION_TYPE_RECOMMENDATION.
  core.String? diversityLevel;

  /// What kind of diversity to use - data driven or rule based.
  ///
  /// If unset, the server behavior defaults to RULE_BASED_DIVERSITY.
  /// Possible string values are:
  /// - "DIVERSITY_TYPE_UNSPECIFIED" : Default value.
  /// - "RULE_BASED_DIVERSITY" : Rule based diversity.
  /// - "DATA_DRIVEN_DIVERSITY" : Data driven diversity.
  core.String? diversityType;

  /// Condition do not associate specifications.
  ///
  /// If multiple do not associate conditions match, all matching do not
  /// associate controls in the list will execute. - Order does not matter. -
  /// Maximum number of specifications is 100. Can only be set if solution_types
  /// is SOLUTION_TYPE_SEARCH.
  core.List<core.String>? doNotAssociateControlIds;

  /// The specification for dynamically generated facets.
  ///
  /// Notice that only textual facets can be dynamically generated. Can only be
  /// set if solution_types is SOLUTION_TYPE_SEARCH.
  GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec? dynamicFacetSpec;

  /// Whether to add additional category filters on the `similar-items` model.
  ///
  /// If not specified, we enable it by default. Allowed values are: *
  /// `no-category-match`: No additional filtering of original results from the
  /// model and the customer's filters. * `relaxed-category-match`: Only keep
  /// results with categories that match at least one item categories in the
  /// PredictRequests's context item. * If customer also sends filters in the
  /// PredictRequest, then the results will satisfy both conditions (user given
  /// and category match). Can only be set if solution_types is
  /// SOLUTION_TYPE_RECOMMENDATION.
  core.String? enableCategoryFilterLevel;

  /// Facet specifications for faceted search.
  ///
  /// If empty, no facets are returned. The ids refer to the ids of Control
  /// resources with only the Facet control set. These controls are assumed to
  /// be in the same Catalog as the ServingConfig. A maximum of 100 values are
  /// allowed. Otherwise, an INVALID_ARGUMENT error is returned. Can only be set
  /// if solution_types is SOLUTION_TYPE_SEARCH.
  core.List<core.String>? facetControlIds;

  /// Condition filter specifications.
  ///
  /// If a product matches multiple conditions in the specifications, filters
  /// from these specifications are all applied and combined via the AND
  /// operator. Maximum number of specifications is 100. Can only be set if
  /// solution_types is SOLUTION_TYPE_SEARCH.
  core.List<core.String>? filterControlIds;

  /// Condition ignore specifications.
  ///
  /// If multiple ignore conditions match, all matching ignore controls in the
  /// list will execute. - Order does not matter. - Maximum number of
  /// specifications is 100. Can only be set if solution_types is
  /// SOLUTION_TYPE_SEARCH.
  core.List<core.String>? ignoreControlIds;

  /// When the flag is enabled, the products in the denylist will not be
  /// filtered out in the recommendation filtering results.
  core.bool? ignoreRecsDenylist;

  /// The id of the model in the same Catalog to use at serving time.
  ///
  /// Currently only RecommendationModels are supported:
  /// https://cloud.google.com/retail/recommendations-ai/docs/create-models Can
  /// be changed but only to a compatible model (e.g. others-you-may-like CTR to
  /// others-you-may-like CVR). Required when solution_types is
  /// SOLUTION_TYPE_RECOMMENDATION.
  core.String? modelId;

  /// Fully qualified name `projects / * /locations/global/catalogs / *
  /// /servingConfig / * `
  ///
  /// Immutable.
  core.String? name;

  /// Condition oneway synonyms specifications.
  ///
  /// If multiple oneway synonyms conditions match, all matching oneway synonyms
  /// controls in the list will execute. Order of controls in the list will not
  /// matter. Maximum number of specifications is 100. Can only be set if
  /// solution_types is SOLUTION_TYPE_SEARCH.
  core.List<core.String>? onewaySynonymsControlIds;

  /// The specification for personalization spec.
  ///
  /// Can only be set if solution_types is SOLUTION_TYPE_SEARCH. Notice that if
  /// both ServingConfig.personalization_spec and
  /// SearchRequest.personalization_spec are set.
  /// SearchRequest.personalization_spec will override
  /// ServingConfig.personalization_spec.
  GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec? personalizationSpec;

  /// How much price ranking we want in serving results.
  ///
  /// Price reranking causes product items with a similar recommendation
  /// probability to be ordered by price, with the highest-priced items first.
  /// This setting could result in a decrease in click-through and conversion
  /// rates. Allowed values are: * `no-price-reranking` * `low-price-reranking`
  /// * `medium-price-reranking` * `high-price-reranking` If not specified, we
  /// choose default based on model type. Default value: `no-price-reranking`.
  /// Can only be set if solution_types is SOLUTION_TYPE_RECOMMENDATION.
  core.String? priceRerankingLevel;

  /// Condition redirect specifications.
  ///
  /// Only the first triggered redirect action is applied, even if multiple
  /// apply. Maximum number of specifications is 1000. Can only be set if
  /// solution_types is SOLUTION_TYPE_SEARCH.
  core.List<core.String>? redirectControlIds;

  /// Condition replacement specifications.
  ///
  /// - Applied according to the order in the list. - A previously replaced term
  /// can not be re-replaced. - Maximum number of specifications is 100. Can
  /// only be set if solution_types is SOLUTION_TYPE_SEARCH.
  core.List<core.String>? replacementControlIds;

  /// Specifies the solution types that a serving config can be associated with.
  ///
  /// Currently we support setting only one type of solution.
  ///
  /// Required. Immutable.
  core.List<core.String>? solutionTypes;

  /// Condition synonyms specifications.
  ///
  /// If multiple syonyms conditions match, all matching synonyms control in the
  /// list will execute. Order of controls in the list will not matter. Maximum
  /// number of specifications is 100. Can only be set if solution_types is
  /// SOLUTION_TYPE_SEARCH.
  core.List<core.String>? twowaySynonymsControlIds;

  GoogleCloudRetailV2alphaServingConfig({
    this.boostControlIds,
    this.displayName,
    this.diversityLevel,
    this.diversityType,
    this.doNotAssociateControlIds,
    this.dynamicFacetSpec,
    this.enableCategoryFilterLevel,
    this.facetControlIds,
    this.filterControlIds,
    this.ignoreControlIds,
    this.ignoreRecsDenylist,
    this.modelId,
    this.name,
    this.onewaySynonymsControlIds,
    this.personalizationSpec,
    this.priceRerankingLevel,
    this.redirectControlIds,
    this.replacementControlIds,
    this.solutionTypes,
    this.twowaySynonymsControlIds,
  });

  GoogleCloudRetailV2alphaServingConfig.fromJson(core.Map json_)
    : this(
        boostControlIds:
            (json_['boostControlIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        displayName: json_['displayName'] as core.String?,
        diversityLevel: json_['diversityLevel'] as core.String?,
        diversityType: json_['diversityType'] as core.String?,
        doNotAssociateControlIds:
            (json_['doNotAssociateControlIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        dynamicFacetSpec:
            json_.containsKey('dynamicFacetSpec')
                ? GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec.fromJson(
                  json_['dynamicFacetSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        enableCategoryFilterLevel:
            json_['enableCategoryFilterLevel'] as core.String?,
        facetControlIds:
            (json_['facetControlIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        filterControlIds:
            (json_['filterControlIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        ignoreControlIds:
            (json_['ignoreControlIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        ignoreRecsDenylist: json_['ignoreRecsDenylist'] as core.bool?,
        modelId: json_['modelId'] as core.String?,
        name: json_['name'] as core.String?,
        onewaySynonymsControlIds:
            (json_['onewaySynonymsControlIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        personalizationSpec:
            json_.containsKey('personalizationSpec')
                ? GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec.fromJson(
                  json_['personalizationSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        priceRerankingLevel: json_['priceRerankingLevel'] as core.String?,
        redirectControlIds:
            (json_['redirectControlIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        replacementControlIds:
            (json_['replacementControlIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        solutionTypes:
            (json_['solutionTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        twowaySynonymsControlIds:
            (json_['twowaySynonymsControlIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boostControlIds != null) 'boostControlIds': boostControlIds!,
    if (displayName != null) 'displayName': displayName!,
    if (diversityLevel != null) 'diversityLevel': diversityLevel!,
    if (diversityType != null) 'diversityType': diversityType!,
    if (doNotAssociateControlIds != null)
      'doNotAssociateControlIds': doNotAssociateControlIds!,
    if (dynamicFacetSpec != null) 'dynamicFacetSpec': dynamicFacetSpec!,
    if (enableCategoryFilterLevel != null)
      'enableCategoryFilterLevel': enableCategoryFilterLevel!,
    if (facetControlIds != null) 'facetControlIds': facetControlIds!,
    if (filterControlIds != null) 'filterControlIds': filterControlIds!,
    if (ignoreControlIds != null) 'ignoreControlIds': ignoreControlIds!,
    if (ignoreRecsDenylist != null) 'ignoreRecsDenylist': ignoreRecsDenylist!,
    if (modelId != null) 'modelId': modelId!,
    if (name != null) 'name': name!,
    if (onewaySynonymsControlIds != null)
      'onewaySynonymsControlIds': onewaySynonymsControlIds!,
    if (personalizationSpec != null)
      'personalizationSpec': personalizationSpec!,
    if (priceRerankingLevel != null)
      'priceRerankingLevel': priceRerankingLevel!,
    if (redirectControlIds != null) 'redirectControlIds': redirectControlIds!,
    if (replacementControlIds != null)
      'replacementControlIds': replacementControlIds!,
    if (solutionTypes != null) 'solutionTypes': solutionTypes!,
    if (twowaySynonymsControlIds != null)
      'twowaySynonymsControlIds': twowaySynonymsControlIds!,
  };
}

/// Request message to set a specified branch as new default_branch.
typedef GoogleCloudRetailV2alphaSetDefaultBranchRequest =
    $SetDefaultBranchRequest;

/// Request message for ProductService.SetInventory method.
class GoogleCloudRetailV2alphaSetInventoryRequest {
  /// If set to true, and the Product with name Product.name is not found, the
  /// inventory update will still be processed and retained for at most 1 day
  /// until the Product is created.
  ///
  /// If set to false, a NOT_FOUND error is returned if the Product is not
  /// found.
  core.bool? allowMissing;

  /// The inventory information to update.
  ///
  /// The allowable fields to update are: * Product.price_info *
  /// Product.availability * Product.available_quantity *
  /// Product.fulfillment_info The updated inventory fields must be specified in
  /// SetInventoryRequest.set_mask. If SetInventoryRequest.inventory.name is
  /// empty or invalid, an INVALID_ARGUMENT error is returned. If the caller
  /// does not have permission to update the Product named in Product.name,
  /// regardless of whether or not it exists, a PERMISSION_DENIED error is
  /// returned. If the Product to update does not have existing inventory
  /// information, the provided inventory information will be inserted. If the
  /// Product to update has existing inventory information, the provided
  /// inventory information will be merged while respecting the last update time
  /// for each inventory field, using the provided or default value for
  /// SetInventoryRequest.set_time. The caller can replace place IDs for a
  /// subset of fulfillment types in the following ways: * Adds
  /// "fulfillment_info" in SetInventoryRequest.set_mask * Specifies only the
  /// desired fulfillment types and corresponding place IDs to update in
  /// SetInventoryRequest.inventory.fulfillment_info The caller can clear all
  /// place IDs from a subset of fulfillment types in the following ways: * Adds
  /// "fulfillment_info" in SetInventoryRequest.set_mask * Specifies only the
  /// desired fulfillment types to clear in
  /// SetInventoryRequest.inventory.fulfillment_info * Checks that only the
  /// desired fulfillment info types have empty
  /// SetInventoryRequest.inventory.fulfillment_info.place_ids The last update
  /// time is recorded for the following inventory fields: * Product.price_info
  /// * Product.availability * Product.available_quantity *
  /// Product.fulfillment_info If a full overwrite of inventory information
  /// while ignoring timestamps is needed, ProductService.UpdateProduct should
  /// be invoked instead.
  ///
  /// Required.
  GoogleCloudRetailV2alphaProduct? inventory;

  /// Indicates which inventory fields in the provided Product to update.
  ///
  /// At least one field must be provided. If an unsupported or unknown field is
  /// provided, an INVALID_ARGUMENT error is returned and the entire update will
  /// be ignored.
  core.String? setMask;

  /// The time when the request is issued, used to prevent out-of-order updates
  /// on inventory fields with the last update time recorded.
  ///
  /// If not provided, the internal system time will be used.
  core.String? setTime;

  GoogleCloudRetailV2alphaSetInventoryRequest({
    this.allowMissing,
    this.inventory,
    this.setMask,
    this.setTime,
  });

  GoogleCloudRetailV2alphaSetInventoryRequest.fromJson(core.Map json_)
    : this(
        allowMissing: json_['allowMissing'] as core.bool?,
        inventory:
            json_.containsKey('inventory')
                ? GoogleCloudRetailV2alphaProduct.fromJson(
                  json_['inventory'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        setMask: json_['setMask'] as core.String?,
        setTime: json_['setTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowMissing != null) 'allowMissing': allowMissing!,
    if (inventory != null) 'inventory': inventory!,
    if (setMask != null) 'setMask': setMask!,
    if (setTime != null) 'setTime': setTime!,
  };
}

/// A list of string values.
typedef GoogleCloudRetailV2alphaStringList = $StringList00;

/// This field specifies the tile information including an attribute key,
/// attribute value.
///
/// More fields will be added in the future, eg: product id or product counts,
/// etc.
class GoogleCloudRetailV2alphaTile {
  /// The product attribute key-numeric interval.
  GoogleCloudRetailV2alphaProductAttributeInterval? productAttributeInterval;

  /// The product attribute key-value.
  GoogleCloudRetailV2alphaProductAttributeValue? productAttributeValue;

  /// The representative product id for this tile.
  core.String? representativeProductId;

  GoogleCloudRetailV2alphaTile({
    this.productAttributeInterval,
    this.productAttributeValue,
    this.representativeProductId,
  });

  GoogleCloudRetailV2alphaTile.fromJson(core.Map json_)
    : this(
        productAttributeInterval:
            json_.containsKey('productAttributeInterval')
                ? GoogleCloudRetailV2alphaProductAttributeInterval.fromJson(
                  json_['productAttributeInterval']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        productAttributeValue:
            json_.containsKey('productAttributeValue')
                ? GoogleCloudRetailV2alphaProductAttributeValue.fromJson(
                  json_['productAttributeValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        representativeProductId:
            json_['representativeProductId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (productAttributeInterval != null)
      'productAttributeInterval': productAttributeInterval!,
    if (productAttributeValue != null)
      'productAttributeValue': productAttributeValue!,
    if (representativeProductId != null)
      'representativeProductId': representativeProductId!,
  };
}

/// Request to manually start a tuning process now (instead of waiting for the
/// periodically scheduled tuning to happen).
typedef GoogleCloudRetailV2alphaTuneModelRequest = $Empty;

/// Request for UpdateGenerativeQuestionConfig method.
class GoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest {
  /// The question to update.
  ///
  /// Required.
  GoogleCloudRetailV2alphaGenerativeQuestionConfig? generativeQuestionConfig;

  /// Indicates which fields in the provided GenerativeQuestionConfig to update.
  ///
  /// The following are NOT supported: * GenerativeQuestionConfig.frequency If
  /// not set or empty, all supported fields are updated.
  ///
  /// Optional.
  core.String? updateMask;

  GoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest({
    this.generativeQuestionConfig,
    this.updateMask,
  });

  GoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest.fromJson(
    core.Map json_,
  ) : this(
        generativeQuestionConfig:
            json_.containsKey('generativeQuestionConfig')
                ? GoogleCloudRetailV2alphaGenerativeQuestionConfig.fromJson(
                  json_['generativeQuestionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (generativeQuestionConfig != null)
      'generativeQuestionConfig': generativeQuestionConfig!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// UserEvent captures all metadata information Retail API needs to know about
/// how end users interact with customers' website.
class GoogleCloudRetailV2alphaUserEvent {
  /// Extra user event features to include in the recommendation model.
  ///
  /// If you provide custom attributes for ingested user events, also include
  /// them in the user events that you associate with prediction requests.
  /// Custom attribute formatting must be consistent between imported events and
  /// events provided with prediction requests. This lets the Retail API use
  /// those custom attributes when training models and serving predictions,
  /// which helps improve recommendation quality. This field needs to pass all
  /// below criteria, otherwise an INVALID_ARGUMENT error is returned: * The key
  /// must be a UTF-8 encoded string with a length limit of 5,000 characters. *
  /// For text attributes, at most 400 values are allowed. Empty values are not
  /// allowed. Each value must be a UTF-8 encoded string with a length limit of
  /// 256 characters. * For number attributes, at most 400 values are allowed.
  /// For product recommendations, an example of extra user information is
  /// traffic_channel, which is how a user arrives at the site. Users can arrive
  /// at the site by coming to the site directly, coming through Google search,
  /// or in other ways.
  core.Map<core.String, GoogleCloudRetailV2alphaCustomAttribute>? attributes;

  /// Highly recommended for user events that are the result of
  /// PredictionService.Predict.
  ///
  /// This field enables accurate attribution of recommendation model
  /// performance. The value must be a valid PredictResponse.attribution_token
  /// for user events that are the result of PredictionService.Predict. The
  /// value must be a valid SearchResponse.attribution_token for user events
  /// that are the result of SearchService.Search. This token enables us to
  /// accurately attribute page view or purchase back to the event and the
  /// particular predict response containing this clicked/purchased product. If
  /// user clicks on product K in the recommendation results, pass
  /// PredictResponse.attribution_token as a URL parameter to product K's page.
  /// When recording events on product K's page, log the
  /// PredictResponse.attribution_token to this field.
  core.String? attributionToken;

  /// The ID or name of the associated shopping cart.
  ///
  /// This ID is used to associate multiple items added or present in the cart
  /// before purchase. This can only be set for `add-to-cart`,
  /// `purchase-complete`, or `shopping-cart-page-view` events.
  core.String? cartId;

  /// The main auto-completion details related to the event.
  ///
  /// This field should be set for `search` event when autocomplete function is
  /// enabled and the user clicks a suggestion for search.
  GoogleCloudRetailV2alphaCompletionDetail? completionDetail;

  /// The entity for customers that may run multiple different entities,
  /// domains, sites or regions, for example, `Google US`, `Google Ads`,
  /// `Waymo`, `google.com`, `youtube.com`, etc.
  ///
  /// We recommend that you set this field to get better per-entity search,
  /// completion, and prediction results.
  core.String? entity;

  /// Only required for UserEventService.ImportUserEvents method.
  ///
  /// Timestamp of when the user event happened.
  core.String? eventTime;

  /// User event type.
  ///
  /// Allowed values are: * `add-to-cart`: Products being added to cart. *
  /// `remove-from-cart`: Products being removed from cart. *
  /// `category-page-view`: Special pages such as sale or promotion pages
  /// viewed. * `detail-page-view`: Products detail page viewed. *
  /// `home-page-view`: Homepage viewed. * `purchase-complete`: User finishing a
  /// purchase. * `search`: Product search. * `shopping-cart-page-view`: User
  /// viewing a shopping cart.
  ///
  /// Required.
  core.String? eventType;

  /// A list of identifiers for the independent experiment groups this user
  /// event belongs to.
  ///
  /// This is used to distinguish between user events associated with different
  /// experiment setups (e.g. using Retail API, using different recommendation
  /// models).
  core.List<core.String>? experimentIds;

  /// The filter syntax consists of an expression language for constructing a
  /// predicate from one or more fields of the products being filtered.
  ///
  /// See SearchRequest.filter for definition and syntax. The value must be a
  /// UTF-8 encoded string with a length limit of 1,000 characters. Otherwise,
  /// an INVALID_ARGUMENT error is returned.
  core.String? filter;

  /// An integer that specifies the current offset for pagination (the 0-indexed
  /// starting location, amongst the products deemed by the API as relevant).
  ///
  /// See SearchRequest.offset for definition. If this field is negative, an
  /// INVALID_ARGUMENT is returned. This can only be set for `search` events.
  /// Other event types should not set this field. Otherwise, an
  /// INVALID_ARGUMENT error is returned.
  core.int? offset;

  /// The order in which products are returned.
  ///
  /// See SearchRequest.order_by for definition and syntax. The value must be a
  /// UTF-8 encoded string with a length limit of 1,000 characters. Otherwise,
  /// an INVALID_ARGUMENT error is returned. This can only be set for `search`
  /// events. Other event types should not set this field. Otherwise, an
  /// INVALID_ARGUMENT error is returned.
  core.String? orderBy;

  /// The categories associated with a category page.
  ///
  /// To represent full path of category, use '\>' sign to separate different
  /// hierarchies. If '\>' is part of the category name, replace it with other
  /// character(s). Category pages include special pages such as sales or
  /// promotions. For instance, a special sale page may have the category
  /// hierarchy: "pageCategories" : \["Sales \> 2017 Black Friday Deals"\].
  /// Required for `category-page-view` events. At least one of search_query or
  /// page_categories is required for `search` events. Other event types should
  /// not set this field. Otherwise, an INVALID_ARGUMENT error is returned.
  core.List<core.String>? pageCategories;

  /// A unique ID of a web page view.
  ///
  /// This should be kept the same for all user events triggered from the same
  /// pageview. For example, an item detail page view could trigger multiple
  /// events as the user is browsing the page. The `pageViewId` property should
  /// be kept the same for all these events so that they can be grouped together
  /// properly. When using the client side event reporting with JavaScript pixel
  /// and Google Tag Manager, this value is filled in automatically.
  core.String? pageViewId;

  /// List of panels associated with this event.
  ///
  /// Used for panel-level impression data.
  ///
  /// Optional.
  core.List<GoogleCloudRetailV2alphaPanelInfo>? panels;

  /// The main product details related to the event.
  ///
  /// This field is optional except for the following event types: *
  /// `add-to-cart` * `detail-page-view` * `purchase-complete` In a `search`
  /// event, this field represents the products returned to the end user on the
  /// current page (the end user may have not finished browsing the whole page
  /// yet). When a new page is returned to the end user, after
  /// pagination/filtering/ordering even for the same query, a new `search`
  /// event with different product_details is desired. The end user may have not
  /// finished browsing the whole page yet.
  core.List<GoogleCloudRetailV2alphaProductDetail>? productDetails;

  /// A transaction represents the entire purchase transaction.
  ///
  /// Required for `purchase-complete` events. Other event types should not set
  /// this field. Otherwise, an INVALID_ARGUMENT error is returned.
  GoogleCloudRetailV2alphaPurchaseTransaction? purchaseTransaction;

  /// The referrer URL of the current page.
  ///
  /// When using the client side event reporting with JavaScript pixel and
  /// Google Tag Manager, this value is filled in automatically.
  core.String? referrerUri;

  /// The user's search query.
  ///
  /// See SearchRequest.query for definition. The value must be a UTF-8 encoded
  /// string with a length limit of 5,000 characters. Otherwise, an
  /// INVALID_ARGUMENT error is returned. At least one of search_query or
  /// page_categories is required for `search` events. Other event types should
  /// not set this field. Otherwise, an INVALID_ARGUMENT error is returned.
  core.String? searchQuery;

  /// A unique identifier for tracking a visitor session with a length limit of
  /// 128 bytes.
  ///
  /// A session is an aggregation of an end user behavior in a time span. A
  /// general guideline to populate the session_id: 1. If user has no activity
  /// for 30 min, a new session_id should be assigned. 2. The session_id should
  /// be unique across users, suggest use uuid or add visitor_id as prefix.
  core.String? sessionId;

  /// Complete URL (window.location.href) of the user's current page.
  ///
  /// When using the client side event reporting with JavaScript pixel and
  /// Google Tag Manager, this value is filled in automatically. Maximum length
  /// 5,000 characters.
  core.String? uri;

  /// User information.
  GoogleCloudRetailV2alphaUserInfo? userInfo;

  /// A unique identifier for tracking visitors.
  ///
  /// For example, this could be implemented with an HTTP cookie, which should
  /// be able to uniquely identify a visitor on a single device. This unique
  /// identifier should not change if the visitor log in/out of the website.
  /// Don't set the field to the same fixed ID for different users. This mixes
  /// the event history of those users together, which results in degraded model
  /// quality. The field must be a UTF-8 encoded string with a length limit of
  /// 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. The
  /// field should not contain PII or user-data. We recommend to use Google
  /// Analytics
  /// [Client ID](https://developers.google.com/analytics/devguides/collection/analyticsjs/field-reference#clientId)
  /// for this field.
  ///
  /// Required.
  core.String? visitorId;

  GoogleCloudRetailV2alphaUserEvent({
    this.attributes,
    this.attributionToken,
    this.cartId,
    this.completionDetail,
    this.entity,
    this.eventTime,
    this.eventType,
    this.experimentIds,
    this.filter,
    this.offset,
    this.orderBy,
    this.pageCategories,
    this.pageViewId,
    this.panels,
    this.productDetails,
    this.purchaseTransaction,
    this.referrerUri,
    this.searchQuery,
    this.sessionId,
    this.uri,
    this.userInfo,
    this.visitorId,
  });

  GoogleCloudRetailV2alphaUserEvent.fromJson(core.Map json_)
    : this(
        attributes:
            (json_['attributes'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudRetailV2alphaCustomAttribute.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        attributionToken: json_['attributionToken'] as core.String?,
        cartId: json_['cartId'] as core.String?,
        completionDetail:
            json_.containsKey('completionDetail')
                ? GoogleCloudRetailV2alphaCompletionDetail.fromJson(
                  json_['completionDetail']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        entity: json_['entity'] as core.String?,
        eventTime: json_['eventTime'] as core.String?,
        eventType: json_['eventType'] as core.String?,
        experimentIds:
            (json_['experimentIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        filter: json_['filter'] as core.String?,
        offset: json_['offset'] as core.int?,
        orderBy: json_['orderBy'] as core.String?,
        pageCategories:
            (json_['pageCategories'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        pageViewId: json_['pageViewId'] as core.String?,
        panels:
            (json_['panels'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaPanelInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        productDetails:
            (json_['productDetails'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaProductDetail.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        purchaseTransaction:
            json_.containsKey('purchaseTransaction')
                ? GoogleCloudRetailV2alphaPurchaseTransaction.fromJson(
                  json_['purchaseTransaction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        referrerUri: json_['referrerUri'] as core.String?,
        searchQuery: json_['searchQuery'] as core.String?,
        sessionId: json_['sessionId'] as core.String?,
        uri: json_['uri'] as core.String?,
        userInfo:
            json_.containsKey('userInfo')
                ? GoogleCloudRetailV2alphaUserInfo.fromJson(
                  json_['userInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        visitorId: json_['visitorId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributes != null) 'attributes': attributes!,
    if (attributionToken != null) 'attributionToken': attributionToken!,
    if (cartId != null) 'cartId': cartId!,
    if (completionDetail != null) 'completionDetail': completionDetail!,
    if (entity != null) 'entity': entity!,
    if (eventTime != null) 'eventTime': eventTime!,
    if (eventType != null) 'eventType': eventType!,
    if (experimentIds != null) 'experimentIds': experimentIds!,
    if (filter != null) 'filter': filter!,
    if (offset != null) 'offset': offset!,
    if (orderBy != null) 'orderBy': orderBy!,
    if (pageCategories != null) 'pageCategories': pageCategories!,
    if (pageViewId != null) 'pageViewId': pageViewId!,
    if (panels != null) 'panels': panels!,
    if (productDetails != null) 'productDetails': productDetails!,
    if (purchaseTransaction != null)
      'purchaseTransaction': purchaseTransaction!,
    if (referrerUri != null) 'referrerUri': referrerUri!,
    if (searchQuery != null) 'searchQuery': searchQuery!,
    if (sessionId != null) 'sessionId': sessionId!,
    if (uri != null) 'uri': uri!,
    if (userInfo != null) 'userInfo': userInfo!,
    if (visitorId != null) 'visitorId': visitorId!,
  };
}

/// The inline source for the input config for ImportUserEvents method.
class GoogleCloudRetailV2alphaUserEventInlineSource {
  /// A list of user events to import.
  ///
  /// Recommended max of 10k items.
  ///
  /// Required.
  core.List<GoogleCloudRetailV2alphaUserEvent>? userEvents;

  GoogleCloudRetailV2alphaUserEventInlineSource({this.userEvents});

  GoogleCloudRetailV2alphaUserEventInlineSource.fromJson(core.Map json_)
    : this(
        userEvents:
            (json_['userEvents'] as core.List?)
                ?.map(
                  (value) => GoogleCloudRetailV2alphaUserEvent.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (userEvents != null) 'userEvents': userEvents!,
  };
}

/// The input config source for user events.
class GoogleCloudRetailV2alphaUserEventInputConfig {
  /// BigQuery input source.
  ///
  /// Required.
  GoogleCloudRetailV2alphaBigQuerySource? bigQuerySource;

  /// Google Cloud Storage location for the input content.
  ///
  /// Required.
  GoogleCloudRetailV2alphaGcsSource? gcsSource;

  /// The Inline source for the input content for UserEvents.
  ///
  /// Required.
  GoogleCloudRetailV2alphaUserEventInlineSource? userEventInlineSource;

  GoogleCloudRetailV2alphaUserEventInputConfig({
    this.bigQuerySource,
    this.gcsSource,
    this.userEventInlineSource,
  });

  GoogleCloudRetailV2alphaUserEventInputConfig.fromJson(core.Map json_)
    : this(
        bigQuerySource:
            json_.containsKey('bigQuerySource')
                ? GoogleCloudRetailV2alphaBigQuerySource.fromJson(
                  json_['bigQuerySource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        gcsSource:
            json_.containsKey('gcsSource')
                ? GoogleCloudRetailV2alphaGcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userEventInlineSource:
            json_.containsKey('userEventInlineSource')
                ? GoogleCloudRetailV2alphaUserEventInlineSource.fromJson(
                  json_['userEventInlineSource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bigQuerySource != null) 'bigQuerySource': bigQuerySource!,
    if (gcsSource != null) 'gcsSource': gcsSource!,
    if (userEventInlineSource != null)
      'userEventInlineSource': userEventInlineSource!,
  };
}

/// Information of an end user.
typedef GoogleCloudRetailV2alphaUserInfo = $UserInfo01;

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

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status00;

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
