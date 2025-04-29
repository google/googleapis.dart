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
// ignore_for_file: unused_import

/// Contact Center AI Insights API - v1
///
/// For more information, see
/// <https://cloud.google.com/contact-center/insights/docs>
///
/// Create an instance of [ContactcenterinsightsApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAnalysisRulesResource]
///     - [ProjectsLocationsAuthorizedViewSetsResource]
///       - [ProjectsLocationsAuthorizedViewSetsAuthorizedViewsResource]
/// - [ProjectsLocationsAuthorizedViewSetsAuthorizedViewsConversationsResource]
///     - [ProjectsLocationsConversationsResource]
///       - [ProjectsLocationsConversationsAnalysesResource]
///       - [ProjectsLocationsConversationsFeedbackLabelsResource]
///     - [ProjectsLocationsEncryptionSpecResource]
///     - [ProjectsLocationsInsightsdataResource]
///     - [ProjectsLocationsIssueModelsResource]
///       - [ProjectsLocationsIssueModelsIssuesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsPhraseMatchersResource]
///     - [ProjectsLocationsQaScorecardsResource]
///       - [ProjectsLocationsQaScorecardsRevisionsResource]
///         - [ProjectsLocationsQaScorecardsRevisionsQaQuestionsResource]
///     - [ProjectsLocationsViewsResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/convert.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

class ContactcenterinsightsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  ContactcenterinsightsApi(http.Client client,
      {core.String rootUrl = 'https://contactcenterinsights.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAnalysisRulesResource get analysisRules =>
      ProjectsLocationsAnalysisRulesResource(_requester);
  ProjectsLocationsAuthorizedViewSetsResource get authorizedViewSets =>
      ProjectsLocationsAuthorizedViewSetsResource(_requester);
  ProjectsLocationsConversationsResource get conversations =>
      ProjectsLocationsConversationsResource(_requester);
  ProjectsLocationsEncryptionSpecResource get encryptionSpec =>
      ProjectsLocationsEncryptionSpecResource(_requester);
  ProjectsLocationsInsightsdataResource get insightsdata =>
      ProjectsLocationsInsightsdataResource(_requester);
  ProjectsLocationsIssueModelsResource get issueModels =>
      ProjectsLocationsIssueModelsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsPhraseMatchersResource get phraseMatchers =>
      ProjectsLocationsPhraseMatchersResource(_requester);
  ProjectsLocationsQaScorecardsResource get qaScorecards =>
      ProjectsLocationsQaScorecardsResource(_requester);
  ProjectsLocationsViewsResource get views =>
      ProjectsLocationsViewsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Download feedback labels in bulk from an external source.
  ///
  /// Currently supports exporting Quality AI example conversations with
  /// transcripts and question bodies.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource for new feedback labels.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> bulkDownloadFeedbackLabels(
    GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + ':bulkDownloadFeedbackLabels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Upload feedback labels from an external source in bulk.
  ///
  /// Currently supports labeling Quality AI example conversations.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource for new feedback labels.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> bulkUploadFeedbackLabels(
    GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + ':bulkUploadFeedbackLabels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets location-level encryption key specification.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the encryption spec resource to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/encryptionSpec$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1EncryptionSpec].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1EncryptionSpec>
      getEncryptionSpec(
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
    return GoogleCloudContactcenterinsightsV1EncryptionSpec.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets project-level settings.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the settings resource to get.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/settings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1Settings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1Settings> getSettings(
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
    return GoogleCloudContactcenterinsightsV1Settings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all feedback labels by project number.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of all feedback labels per
  /// project.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter to reduce results to a specific subset in
  /// the entire project. Supports disjunctions (OR) and conjunctions (AND).
  /// Supported fields: * `issue_model_id` * `qa_question_id` *
  /// `min_create_time` * `max_create_time` * `min_update_time` *
  /// `max_update_time` * `feedback_label_type`: QUALITY_AI, TOPIC_MODELING
  ///
  /// [pageSize] - Optional. The maximum number of feedback labels to return in
  /// the response. A valid page size ranges from 0 to 100,000 inclusive. If the
  /// page size is zero or unspecified, a default page size of 100 will be
  /// chosen. Note that a call might return fewer results than the requested
  /// page size.
  ///
  /// [pageToken] - Optional. The value returned by the last
  /// `ListAllFeedbackLabelsResponse`. This value indicates that this is a
  /// continuation of a prior `ListAllFeedbackLabels` call and that the system
  /// should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse>
      listAllFeedbackLabels(
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + ':listAllFeedbackLabels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Query metrics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [location] - Required. The location of the data.
  /// "projects/{project}/locations/{location}"
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> queryMetrics(
    GoogleCloudContactcenterinsightsV1QueryMetricsRequest request,
    core.String location, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$location') + ':queryMetrics';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates project-level settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of the settings resource. Format:
  /// projects/{project}/locations/{location}/settings
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/settings$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1Settings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1Settings> updateSettings(
    GoogleCloudContactcenterinsightsV1Settings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1Settings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAnalysisRulesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAnalysisRulesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a analysis rule.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the analysis rule. Required.
  /// The location to create a analysis rule for. Format: `projects//locations/`
  /// or `projects//locations/`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1AnalysisRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1AnalysisRule> create(
    GoogleCloudContactcenterinsightsV1AnalysisRule request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/analysisRules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1AnalysisRule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a analysis rule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the analysis rule to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/analysisRules/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get a analysis rule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the AnalysisRule to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/analysisRules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1AnalysisRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1AnalysisRule> get(
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
    return GoogleCloudContactcenterinsightsV1AnalysisRule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists analysis rules.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the analysis rules.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of analysis rule to return in
  /// the response. If this value is zero, the service will select a default
  /// size. A call may return fewer objects than requested. A non-empty
  /// `next_page_token` in the response indicates that more data is available.
  ///
  /// [pageToken] - Optional. The value returned by the last
  /// `ListAnalysisRulesResponse`; indicates that this is a continuation of a
  /// prior `ListAnalysisRules` call and the system should return the next page
  /// of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse>
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/analysisRules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a analysis rule.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the analysis rule. Format:
  /// projects/{project}/locations/{location}/analysisRules/{analysis_rule}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/analysisRules/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to be updated. If the
  /// update_mask is not provided, the update will be applied to all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1AnalysisRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1AnalysisRule> patch(
    GoogleCloudContactcenterinsightsV1AnalysisRule request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1AnalysisRule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAuthorizedViewSetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAuthorizedViewSetsAuthorizedViewsResource
      get authorizedViews =>
          ProjectsLocationsAuthorizedViewSetsAuthorizedViewsResource(
              _requester);

  ProjectsLocationsAuthorizedViewSetsResource(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsAuthorizedViewSetsAuthorizedViewsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAuthorizedViewSetsAuthorizedViewsConversationsResource
      get conversations =>
          ProjectsLocationsAuthorizedViewSetsAuthorizedViewsConversationsResource(
              _requester);

  ProjectsLocationsAuthorizedViewSetsAuthorizedViewsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Query metrics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [location] - Required. The location of the data.
  /// "projects/{project}/locations/{location}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authorizedViewSets/\[^/\]+/authorizedViews/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> queryMetrics(
    GoogleCloudContactcenterinsightsV1QueryMetricsRequest request,
    core.String location, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$location') + ':queryMetrics';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAuthorizedViewSetsAuthorizedViewsConversationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAuthorizedViewSetsAuthorizedViewsConversationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets conversation statistics.
  ///
  /// Request parameters:
  ///
  /// [location] - Required. The location of the conversations.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authorizedViewSets/\[^/\]+/authorizedViews/\[^/\]+$`.
  ///
  /// [filter] - A filter to reduce results to a specific subset. This field is
  /// useful for getting statistics about conversations with specific
  /// properties.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudContactcenterinsightsV1CalculateStatsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1CalculateStatsResponse>
      calculateStats(
    core.String location, {
    core.String? filter,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$location') +
        '/conversations:calculateStats';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1CalculateStatsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConversationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationsAnalysesResource get analyses =>
      ProjectsLocationsConversationsAnalysesResource(_requester);
  ProjectsLocationsConversationsFeedbackLabelsResource get feedbackLabels =>
      ProjectsLocationsConversationsFeedbackLabelsResource(_requester);

  ProjectsLocationsConversationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Analyzes multiple conversations in a single request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource to create analyses in.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> bulkAnalyze(
    GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/conversations:bulkAnalyze';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes multiple conversations in a single request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource to delete conversations from.
  /// Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> bulkDelete(
    GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/conversations:bulkDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets conversation statistics.
  ///
  /// Request parameters:
  ///
  /// [location] - Required. The location of the conversations.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter to reduce results to a specific subset. This field is
  /// useful for getting statistics about conversations with specific
  /// properties.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudContactcenterinsightsV1CalculateStatsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1CalculateStatsResponse>
      calculateStats(
    core.String location, {
    core.String? filter,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$location') +
        '/conversations:calculateStats';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1CalculateStatsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a conversation.
  ///
  /// Note that this method does not support audio transcription or redaction.
  /// Use `conversations.upload` instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the conversation.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [conversationId] - A unique ID for the new conversation. This ID will
  /// become the final component of the conversation's resource name. If no ID
  /// is specified, a server-generated ID will be used. This value should be
  /// 4-64 characters and must match the regular expression `^[a-z0-9-]{4,64}$`.
  /// Valid characters are `a-z-`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1Conversation> create(
    GoogleCloudContactcenterinsightsV1Conversation request,
    core.String parent, {
    core.String? conversationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (conversationId != null) 'conversationId': [conversationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/conversations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1Conversation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a conversation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the conversation to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [force] - If set to true, all of this conversation's analyses will also be
  /// deleted. Otherwise, the request will only succeed if the conversation has
  /// no analyses.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a conversation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the conversation to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [view] - The level of details of the conversation. Default is `FULL`.
  /// Possible string values are:
  /// - "CONVERSATION_VIEW_UNSPECIFIED" : The conversation view is not
  /// specified. * Defaults to `FULL` in `GetConversationRequest`. * Defaults to
  /// `BASIC` in `ListConversationsRequest`.
  /// - "FULL" : Populates all fields in the conversation.
  /// - "BASIC" : Populates all fields in the conversation except the
  /// transcript.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1Conversation> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1Conversation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Imports conversations and processes them according to the user's
  /// configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource for new conversations.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> ingest(
    GoogleCloudContactcenterinsightsV1IngestConversationsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/conversations:ingest';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists conversations.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the conversation.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter to reduce results to a specific subset. Useful for
  /// querying conversations with specific properties.
  ///
  /// [orderBy] - Optional. The attribute by which to order conversations in the
  /// response. If empty, conversations will be ordered by descending creation
  /// time. Supported values are one of the following: * create_time *
  /// customer_satisfaction_rating * duration * latest_analysis * start_time *
  /// turn_count The default sort order is ascending. To specify order, append
  /// `asc` or `desc` (`create_time desc`). For more details, see
  /// [Google AIPs Ordering](https://google.aip.dev/132#ordering).
  ///
  /// [pageSize] - The maximum number of conversations to return in the
  /// response. A valid page size ranges from 0 to 100,000 inclusive. If the
  /// page size is zero or unspecified, a default page size of 100 will be
  /// chosen. Note that a call might return fewer results than the requested
  /// page size.
  ///
  /// [pageToken] - The value returned by the last `ListConversationsResponse`.
  /// This value indicates that this is a continuation of a prior
  /// `ListConversations` call and that the system should return the next page
  /// of data.
  ///
  /// [view] - The level of details of the conversation. Default is `BASIC`.
  /// Possible string values are:
  /// - "CONVERSATION_VIEW_UNSPECIFIED" : The conversation view is not
  /// specified. * Defaults to `FULL` in `GetConversationRequest`. * Defaults to
  /// `BASIC` in `ListConversationsRequest`.
  /// - "FULL" : Populates all fields in the conversation.
  /// - "BASIC" : Populates all fields in the conversation except the
  /// transcript.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudContactcenterinsightsV1ListConversationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1ListConversationsResponse>
      list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/conversations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1ListConversationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a conversation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of the conversation. Format:
  /// projects/{project}/locations/{location}/conversations/{conversation}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated. All possible fields can
  /// be updated by passing `*`, or a subset of the following updateable fields
  /// can be provided: * `agent_id` * `language_code` * `labels` * `metadata` *
  /// `quality_metadata` * `call_metadata` * `start_time` * `expire_time` or
  /// `ttl` * `data_source.gcs_source.audio_uri` or
  /// `data_source.dialogflow_source.audio_uri`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1Conversation> patch(
    GoogleCloudContactcenterinsightsV1Conversation request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1Conversation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Create a long-running conversation upload operation.
  ///
  /// This method differs from `CreateConversation` by allowing audio
  /// transcription and optional DLP redaction.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the conversation.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> upload(
    GoogleCloudContactcenterinsightsV1UploadConversationRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/conversations:upload';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConversationsAnalysesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationsAnalysesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an analysis.
  ///
  /// The long running operation is done when the analysis has completed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the analysis.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
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
    GoogleCloudContactcenterinsightsV1Analysis request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/analyses';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an analysis.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the analysis to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+/analyses/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an analysis.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the analysis to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+/analyses/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1Analysis].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1Analysis> get(
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
    return GoogleCloudContactcenterinsightsV1Analysis.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists analyses.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the analyses.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [filter] - A filter to reduce results to a specific subset. Useful for
  /// querying conversations with specific properties.
  ///
  /// [pageSize] - The maximum number of analyses to return in the response. If
  /// this value is zero, the service will select a default size. A call might
  /// return fewer objects than requested. A non-empty `next_page_token` in the
  /// response indicates that more data is available.
  ///
  /// [pageToken] - The value returned by the last `ListAnalysesResponse`;
  /// indicates that this is a continuation of a prior `ListAnalyses` call and
  /// the system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1ListAnalysesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1ListAnalysesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/analyses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1ListAnalysesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConversationsFeedbackLabelsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationsFeedbackLabelsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Create feedback label.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the feedback label.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [feedbackLabelId] - Optional. The ID of the feedback label to create. If
  /// one is not specified it will be generated by the server.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1FeedbackLabel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1FeedbackLabel> create(
    GoogleCloudContactcenterinsightsV1FeedbackLabel request,
    core.String parent, {
    core.String? feedbackLabelId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (feedbackLabelId != null) 'feedbackLabelId': [feedbackLabelId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/feedbackLabels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1FeedbackLabel.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete feedback label.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the feedback label to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+/feedbackLabels/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get feedback label.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the feedback label to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+/feedbackLabels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1FeedbackLabel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1FeedbackLabel> get(
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
    return GoogleCloudContactcenterinsightsV1FeedbackLabel.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List feedback labels.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the feedback labels.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter to reduce results to a specific subset.
  /// Supports disjunctions (OR) and conjunctions (AND). Automatically sorts by
  /// conversation ID. To sort by all feedback labels in a project see
  /// ListAllFeedbackLabels. Supported fields: * `issue_model_id` *
  /// `qa_question_id` * `qa_scorecard_id` * `min_create_time` *
  /// `max_create_time` * `min_update_time` * `max_update_time` *
  /// `feedback_label_type`: QUALITY_AI, TOPIC_MODELING
  ///
  /// [pageSize] - Optional. The maximum number of feedback labels to return in
  /// the response. A valid page size ranges from 0 to 100,000 inclusive. If the
  /// page size is zero or unspecified, a default page size of 100 will be
  /// chosen. Note that a call might return fewer results than the requested
  /// page size.
  ///
  /// [pageToken] - Optional. The value returned by the last
  /// `ListFeedbackLabelsResponse`. This value indicates that this is a
  /// continuation of a prior `ListFeedbackLabels` call and that the system
  /// should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse>
      list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/feedbackLabels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update feedback label.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Resource name of the FeedbackLabel. Format:
  /// projects/{project}/locations/{location}/conversations/{conversation}/feedbackLabels/{feedback_label}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+/feedbackLabels/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1FeedbackLabel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1FeedbackLabel> patch(
    GoogleCloudContactcenterinsightsV1FeedbackLabel request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1FeedbackLabel.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsEncryptionSpecResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEncryptionSpecResource(commons.ApiRequester client)
      : _requester = client;

  /// Initializes a location-level encryption key specification.
  ///
  /// An error will result if the location has resources already created before
  /// the initialization. After the encryption specification is initialized at a
  /// location, it is immutable and all newly created resources under the
  /// location will be encrypted with the existing specification.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of the encryption key specification
  /// resource. Format: projects/{project}/locations/{location}/encryptionSpec
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/encryptionSpec$`.
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
  async.Future<GoogleLongrunningOperation> initialize(
    GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':initialize';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInsightsdataResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInsightsdataResource(commons.ApiRequester client)
      : _requester = client;

  /// Export insights data to a destination defined in the request body.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource to export data from.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/insightsdata:export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsIssueModelsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsIssueModelsIssuesResource get issues =>
      ProjectsLocationsIssueModelsIssuesResource(_requester);

  ProjectsLocationsIssueModelsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets an issue model's statistics.
  ///
  /// Request parameters:
  ///
  /// [issueModel] - Required. The resource name of the issue model to query
  /// against.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/issueModels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse>
      calculateIssueModelStats(
    core.String issueModel, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$issueModel') +
        ':calculateIssueModelStats';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates an issue model.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the issue model.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    GoogleCloudContactcenterinsightsV1IssueModel request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/issueModels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an issue model.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the issue model to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/issueModels/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deploys an issue model.
  ///
  /// Returns an error if a model is already deployed. An issue model can only
  /// be used in analysis after it has been deployed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The issue model to deploy.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/issueModels/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> deploy(
    GoogleCloudContactcenterinsightsV1DeployIssueModelRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':deploy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Exports an issue model to the provided destination.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The issue model to export.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/issueModels/\[^/\]+$`.
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
    GoogleCloudContactcenterinsightsV1ExportIssueModelRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an issue model.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the issue model to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/issueModels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1IssueModel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1IssueModel> get(
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
    return GoogleCloudContactcenterinsightsV1IssueModel.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Imports an issue model from a Cloud Storage bucket.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the issue model.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    GoogleCloudContactcenterinsightsV1ImportIssueModelRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/issueModels:import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists issue models.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the issue model.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudContactcenterinsightsV1ListIssueModelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1ListIssueModelsResponse> list(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/issueModels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1ListIssueModelsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an issue model.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of the issue model. Format:
  /// projects/{project}/locations/{location}/issueModels/{issue_model}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/issueModels/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1IssueModel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1IssueModel> patch(
    GoogleCloudContactcenterinsightsV1IssueModel request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1IssueModel.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Undeploys an issue model.
  ///
  /// An issue model can not be used in analysis after it has been undeployed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The issue model to undeploy.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/issueModels/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> undeploy(
    GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':undeploy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsIssueModelsIssuesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsIssueModelsIssuesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an issue.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the issue.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/issueModels/\[^/\]+$`.
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
    GoogleCloudContactcenterinsightsV1Issue request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/issues';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an issue.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the issue to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/issueModels/\[^/\]+/issues/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an issue.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the issue to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/issueModels/\[^/\]+/issues/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1Issue].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1Issue> get(
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
    return GoogleCloudContactcenterinsightsV1Issue.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists issues.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the issue.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/issueModels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1ListIssuesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1ListIssuesResponse> list(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/issues';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1ListIssuesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an issue.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of the issue. Format:
  /// projects/{project}/locations/{location}/issueModels/{issue_model}/issues/{issue}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/issueModels/\[^/\]+/issues/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1Issue].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1Issue> patch(
    GoogleCloudContactcenterinsightsV1Issue request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1Issue.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> cancel(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsPhraseMatchersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPhraseMatchersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a phrase matcher.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the phrase matcher. Required.
  /// The location to create a phrase matcher for. Format:
  /// `projects//locations/` or `projects//locations/`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1PhraseMatcher].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1PhraseMatcher> create(
    GoogleCloudContactcenterinsightsV1PhraseMatcher request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/phraseMatchers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1PhraseMatcher.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a phrase matcher.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the phrase matcher to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/phraseMatchers/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a phrase matcher.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the phrase matcher to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/phraseMatchers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1PhraseMatcher].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1PhraseMatcher> get(
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
    return GoogleCloudContactcenterinsightsV1PhraseMatcher.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists phrase matchers.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the phrase matcher.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter to reduce results to a specific subset. Useful for
  /// querying phrase matchers with specific properties.
  ///
  /// [pageSize] - The maximum number of phrase matchers to return in the
  /// response. If this value is zero, the service will select a default size. A
  /// call might return fewer objects than requested. A non-empty
  /// `next_page_token` in the response indicates that more data is available.
  ///
  /// [pageToken] - The value returned by the last `ListPhraseMatchersResponse`.
  /// This value indicates that this is a continuation of a prior
  /// `ListPhraseMatchers` call and that the system should return the next page
  /// of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse>
      list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/phraseMatchers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a phrase matcher.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the phrase matcher. Format:
  /// projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/phraseMatchers/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1PhraseMatcher].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1PhraseMatcher> patch(
    GoogleCloudContactcenterinsightsV1PhraseMatcher request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1PhraseMatcher.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsQaScorecardsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsQaScorecardsRevisionsResource get revisions =>
      ProjectsLocationsQaScorecardsRevisionsResource(_requester);

  ProjectsLocationsQaScorecardsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a QaScorecard.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the QaScorecard.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [qaScorecardId] - Optional. A unique ID for the new QaScorecard. This ID
  /// will become the final component of the QaScorecard's resource name. If no
  /// ID is specified, a server-generated ID will be used. This value should be
  /// 4-64 characters and must match the regular expression `^[a-z0-9-]{4,64}$`.
  /// Valid characters are `a-z-`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1QaScorecard].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1QaScorecard> create(
    GoogleCloudContactcenterinsightsV1QaScorecard request,
    core.String parent, {
    core.String? qaScorecardId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (qaScorecardId != null) 'qaScorecardId': [qaScorecardId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/qaScorecards';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1QaScorecard.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a QaScorecard.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the QaScorecard to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/qaScorecards/\[^/\]+$`.
  ///
  /// [force] - Optional. If set to true, all of this QaScorecard's child
  /// resources will also be deleted. Otherwise, the request will only succeed
  /// if it has none.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a QaScorecard.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the QaScorecard to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/qaScorecards/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1QaScorecard].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1QaScorecard> get(
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
    return GoogleCloudContactcenterinsightsV1QaScorecard.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists QaScorecards.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the scorecards.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of scorecards to return in the
  /// response. If the value is zero, the service will select a default size. A
  /// call might return fewer objects than requested. A non-empty
  /// `next_page_token` in the response indicates that more data is available.
  ///
  /// [pageToken] - Optional. The value returned by the last
  /// `ListQaScorecardsResponse`. This value indicates that this is a
  /// continuation of a prior `ListQaScorecards` call and that the system should
  /// return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/qaScorecards';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a QaScorecard.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The scorecard name. Format:
  /// projects/{project}/locations/{location}/qaScorecards/{qa_scorecard}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/qaScorecards/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. All possible
  /// fields can be updated by passing `*`, or a subset of the following
  /// updateable fields can be provided: * `description` * `display_name`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1QaScorecard].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1QaScorecard> patch(
    GoogleCloudContactcenterinsightsV1QaScorecard request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1QaScorecard.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsQaScorecardsRevisionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsQaScorecardsRevisionsQaQuestionsResource get qaQuestions =>
      ProjectsLocationsQaScorecardsRevisionsQaQuestionsResource(_requester);

  ProjectsLocationsQaScorecardsRevisionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a QaScorecardRevision.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the QaScorecardRevision.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/qaScorecards/\[^/\]+$`.
  ///
  /// [qaScorecardRevisionId] - Optional. A unique ID for the new
  /// QaScorecardRevision. This ID will become the final component of the
  /// QaScorecardRevision's resource name. If no ID is specified, a
  /// server-generated ID will be used. This value should be 4-64 characters and
  /// must match the regular expression `^[a-z0-9-]{4,64}$`. Valid characters
  /// are `a-z-`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1QaScorecardRevision].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1QaScorecardRevision> create(
    GoogleCloudContactcenterinsightsV1QaScorecardRevision request,
    core.String parent, {
    core.String? qaScorecardRevisionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (qaScorecardRevisionId != null)
        'qaScorecardRevisionId': [qaScorecardRevisionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/revisions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1QaScorecardRevision.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a QaScorecardRevision.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the QaScorecardRevision to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/qaScorecards/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [force] - Optional. If set to true, all of this QaScorecardRevision's
  /// child resources will also be deleted. Otherwise, the request will only
  /// succeed if it has none.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deploy a QaScorecardRevision.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the QaScorecardRevision to deploy.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/qaScorecards/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1QaScorecardRevision].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1QaScorecardRevision> deploy(
    GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':deploy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1QaScorecardRevision.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a QaScorecardRevision.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the QaScorecardRevision to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/qaScorecards/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1QaScorecardRevision].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1QaScorecardRevision> get(
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
    return GoogleCloudContactcenterinsightsV1QaScorecardRevision.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all revisions under the parent QaScorecard.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the scorecard revisions. To
  /// list all revisions of all scorecards, substitute the QaScorecard ID with a
  /// '-' character.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/qaScorecards/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter to reduce results to a specific subset.
  /// Useful for querying scorecard revisions with specific properties.
  ///
  /// [pageSize] - Optional. The maximum number of scorecard revisions to return
  /// in the response. If the value is zero, the service will select a default
  /// size. A call might return fewer objects than requested. A non-empty
  /// `next_page_token` in the response indicates that more data is available.
  ///
  /// [pageToken] - Optional. The value returned by the last
  /// `ListQaScorecardRevisionsResponse`. This value indicates that this is a
  /// continuation of a prior `ListQaScorecardRevisions` call and that the
  /// system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
      GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/revisions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Fine tune one or more QaModels.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource for new fine tuning job instance.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/qaScorecards/\[^/\]+/revisions/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> tuneQaScorecardRevision(
    GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + ':tuneQaScorecardRevision';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Undeploy a QaScorecardRevision.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the QaScorecardRevision to undeploy.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/qaScorecards/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1QaScorecardRevision].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1QaScorecardRevision> undeploy(
    GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest
        request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':undeploy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1QaScorecardRevision.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsQaScorecardsRevisionsQaQuestionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsQaScorecardsRevisionsQaQuestionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Create a QaQuestion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the QaQuestion.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/qaScorecards/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [qaQuestionId] - Optional. A unique ID for the new question. This ID will
  /// become the final component of the question's resource name. If no ID is
  /// specified, a server-generated ID will be used. This value should be 4-64
  /// characters and must match the regular expression `^[a-z0-9-]{4,64}$`.
  /// Valid characters are `a-z-`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1QaQuestion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1QaQuestion> create(
    GoogleCloudContactcenterinsightsV1QaQuestion request,
    core.String parent, {
    core.String? qaQuestionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (qaQuestionId != null) 'qaQuestionId': [qaQuestionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/qaQuestions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1QaQuestion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a QaQuestion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the QaQuestion to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/qaScorecards/\[^/\]+/revisions/\[^/\]+/qaQuestions/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a QaQuestion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the QaQuestion to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/qaScorecards/\[^/\]+/revisions/\[^/\]+/qaQuestions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1QaQuestion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1QaQuestion> get(
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
    return GoogleCloudContactcenterinsightsV1QaQuestion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists QaQuestions.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the questions.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/qaScorecards/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of questions to return in the
  /// response. If the value is zero, the service will select a default size. A
  /// call might return fewer objects than requested. A non-empty
  /// `next_page_token` in the response indicates that more data is available.
  ///
  /// [pageToken] - Optional. The value returned by the last
  /// `ListQaQuestionsResponse`. This value indicates that this is a
  /// continuation of a prior `ListQaQuestions` call and that the system should
  /// return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/qaQuestions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a QaQuestion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the question. Format:
  /// projects/{project}/locations/{location}/qaScorecards/{qa_scorecard}/revisions/{revision}/qaQuestions/{qa_question}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/qaScorecards/\[^/\]+/revisions/\[^/\]+/qaQuestions/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. All possible
  /// fields can be updated by passing `*`, or a subset of the following
  /// updateable fields can be provided: * `abbreviation` * `answer_choices` *
  /// `answer_instructions` * `order` * `question_body` * `tags`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1QaQuestion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1QaQuestion> patch(
    GoogleCloudContactcenterinsightsV1QaQuestion request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1QaQuestion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsViewsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsViewsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a view.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the view. Required. The
  /// location to create a view for. Format: `projects//locations/` or
  /// `projects//locations/`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1View].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1View> create(
    GoogleCloudContactcenterinsightsV1View request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/views';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1View.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a view.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the view to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/views/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a view.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the view to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/views/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1View].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1View> get(
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
    return GoogleCloudContactcenterinsightsV1View.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists views.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the views.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of views to return in the response. If
  /// this value is zero, the service will select a default size. A call may
  /// return fewer objects than requested. A non-empty `next_page_token` in the
  /// response indicates that more data is available.
  ///
  /// [pageToken] - The value returned by the last `ListViewsResponse`;
  /// indicates that this is a continuation of a prior `ListViews` call and the
  /// system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1ListViewsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1ListViewsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/views';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1ListViewsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a view.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of the view. Format:
  /// projects/{project}/locations/{location}/views/{view}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/views/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContactcenterinsightsV1View].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContactcenterinsightsV1View> patch(
    GoogleCloudContactcenterinsightsV1View request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContactcenterinsightsV1View.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// The analysis resource.
class GoogleCloudContactcenterinsightsV1Analysis {
  /// The result of the analysis, which is populated when the analysis finishes.
  ///
  /// Output only.
  GoogleCloudContactcenterinsightsV1AnalysisResult? analysisResult;

  /// To select the annotators to run and the phrase matchers to use (if any).
  ///
  /// If not specified, all annotators will be run.
  GoogleCloudContactcenterinsightsV1AnnotatorSelector? annotatorSelector;

  /// The time at which the analysis was created, which occurs when the
  /// long-running operation completes.
  ///
  /// Output only.
  core.String? createTime;

  /// The resource name of the analysis.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/conversations/{conversation}/analyses/{analysis}
  ///
  /// Immutable.
  core.String? name;

  /// The time at which the analysis was requested.
  ///
  /// Output only.
  core.String? requestTime;

  GoogleCloudContactcenterinsightsV1Analysis({
    this.analysisResult,
    this.annotatorSelector,
    this.createTime,
    this.name,
    this.requestTime,
  });

  GoogleCloudContactcenterinsightsV1Analysis.fromJson(core.Map json_)
      : this(
          analysisResult: json_.containsKey('analysisResult')
              ? GoogleCloudContactcenterinsightsV1AnalysisResult.fromJson(
                  json_['analysisResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          annotatorSelector: json_.containsKey('annotatorSelector')
              ? GoogleCloudContactcenterinsightsV1AnnotatorSelector.fromJson(
                  json_['annotatorSelector']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_['createTime'] as core.String?,
          name: json_['name'] as core.String?,
          requestTime: json_['requestTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysisResult != null) 'analysisResult': analysisResult!,
        if (annotatorSelector != null) 'annotatorSelector': annotatorSelector!,
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (requestTime != null) 'requestTime': requestTime!,
      };
}

/// The result of an analysis.
class GoogleCloudContactcenterinsightsV1AnalysisResult {
  /// Call-specific metadata created by the analysis.
  GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata?
      callAnalysisMetadata;

  /// The time at which the analysis ended.
  core.String? endTime;

  GoogleCloudContactcenterinsightsV1AnalysisResult({
    this.callAnalysisMetadata,
    this.endTime,
  });

  GoogleCloudContactcenterinsightsV1AnalysisResult.fromJson(core.Map json_)
      : this(
          callAnalysisMetadata: json_.containsKey('callAnalysisMetadata')
              ? GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata
                  .fromJson(json_['callAnalysisMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          endTime: json_['endTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (callAnalysisMetadata != null)
          'callAnalysisMetadata': callAnalysisMetadata!,
        if (endTime != null) 'endTime': endTime!,
      };
}

/// Call-specific metadata created during analysis.
class GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata {
  /// A list of call annotations that apply to this call.
  core.List<GoogleCloudContactcenterinsightsV1CallAnnotation>? annotations;

  /// All the entities in the call.
  core.Map<core.String, GoogleCloudContactcenterinsightsV1Entity>? entities;

  /// All the matched intents in the call.
  core.Map<core.String, GoogleCloudContactcenterinsightsV1Intent>? intents;

  /// Overall conversation-level issue modeling result.
  GoogleCloudContactcenterinsightsV1IssueModelResult? issueModelResult;

  /// All the matched phrase matchers in the call.
  core.Map<core.String, GoogleCloudContactcenterinsightsV1PhraseMatchData>?
      phraseMatchers;

  /// Results of scoring QaScorecards.
  core.List<GoogleCloudContactcenterinsightsV1QaScorecardResult>?
      qaScorecardResults;

  /// Overall conversation-level sentiment for each channel of the call.
  core.List<GoogleCloudContactcenterinsightsV1ConversationLevelSentiment>?
      sentiments;

  /// Overall conversation-level silence during the call.
  GoogleCloudContactcenterinsightsV1ConversationLevelSilence? silence;

  GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata({
    this.annotations,
    this.entities,
    this.intents,
    this.issueModelResult,
    this.phraseMatchers,
    this.qaScorecardResults,
    this.sentiments,
    this.silence,
  });

  GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata.fromJson(
      core.Map json_)
      : this(
          annotations: (json_['annotations'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1CallAnnotation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          entities:
              (json_['entities'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              GoogleCloudContactcenterinsightsV1Entity.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
          intents:
              (json_['intents'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              GoogleCloudContactcenterinsightsV1Intent.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
          issueModelResult: json_.containsKey('issueModelResult')
              ? GoogleCloudContactcenterinsightsV1IssueModelResult.fromJson(
                  json_['issueModelResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          phraseMatchers:
              (json_['phraseMatchers'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              GoogleCloudContactcenterinsightsV1PhraseMatchData.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
          qaScorecardResults: (json_['qaScorecardResults'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1QaScorecardResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          sentiments: (json_['sentiments'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1ConversationLevelSentiment
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          silence: json_.containsKey('silence')
              ? GoogleCloudContactcenterinsightsV1ConversationLevelSilence
                  .fromJson(
                      json_['silence'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (entities != null) 'entities': entities!,
        if (intents != null) 'intents': intents!,
        if (issueModelResult != null) 'issueModelResult': issueModelResult!,
        if (phraseMatchers != null) 'phraseMatchers': phraseMatchers!,
        if (qaScorecardResults != null)
          'qaScorecardResults': qaScorecardResults!,
        if (sentiments != null) 'sentiments': sentiments!,
        if (silence != null) 'silence': silence!,
      };
}

/// The CCAI Insights project wide analysis rule.
///
/// This rule will be applied to all conversations that match the filter defined
/// in the rule. For a conversation matches the filter, the annotators specified
/// in the rule will be run. If a conversation matches multiple rules, a union
/// of all the annotators will be run. One project can have multiple analysis
/// rules.
class GoogleCloudContactcenterinsightsV1AnalysisRule {
  /// If true, apply this rule to conversations.
  ///
  /// Otherwise, this rule is inactive and saved as a draft.
  core.bool? active;

  /// Percentage of conversations that we should apply this analysis setting
  /// automatically, between \[0, 1\].
  ///
  /// For example, 0.1 means 10%. Conversations are sampled in a determenestic
  /// way. The original runtime_percentage & upload percentage will be replaced
  /// by defining filters on the conversation.
  core.double? analysisPercentage;

  /// Selector of annotators to run and the phrase matchers to use for
  /// conversations that matches the conversation_filter.
  ///
  /// If not specified, NO annotators will be run.
  GoogleCloudContactcenterinsightsV1AnnotatorSelector? annotatorSelector;

  /// Filter for the conversations that should apply this analysis rule.
  ///
  /// An empty filter means this analysis rule applies to all conversations.
  /// Refer to https://cloud.google.com/contact-center/insights/docs/filtering
  /// for details.
  core.String? conversationFilter;

  /// The time at which this analysis rule was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Display Name of the analysis rule.
  core.String? displayName;

  /// Identifier.
  ///
  /// The resource name of the analysis rule. Format:
  /// projects/{project}/locations/{location}/analysisRules/{analysis_rule}
  core.String? name;

  /// The most recent time at which this analysis rule was updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudContactcenterinsightsV1AnalysisRule({
    this.active,
    this.analysisPercentage,
    this.annotatorSelector,
    this.conversationFilter,
    this.createTime,
    this.displayName,
    this.name,
    this.updateTime,
  });

  GoogleCloudContactcenterinsightsV1AnalysisRule.fromJson(core.Map json_)
      : this(
          active: json_['active'] as core.bool?,
          analysisPercentage: json_.containsKey('analysisPercentage')
              ? decodeDouble(json_['analysisPercentage'] as core.Object)
              : null,
          annotatorSelector: json_.containsKey('annotatorSelector')
              ? GoogleCloudContactcenterinsightsV1AnnotatorSelector.fromJson(
                  json_['annotatorSelector']
                      as core.Map<core.String, core.dynamic>)
              : null,
          conversationFilter: json_['conversationFilter'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          name: json_['name'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (active != null) 'active': active!,
        if (analysisPercentage != null)
          'analysisPercentage': encodeDouble(analysisPercentage!),
        if (annotatorSelector != null) 'annotatorSelector': annotatorSelector!,
        if (conversationFilter != null)
          'conversationFilter': conversationFilter!,
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A point in a conversation that marks the start or the end of an annotation.
class GoogleCloudContactcenterinsightsV1AnnotationBoundary {
  /// The index in the sequence of transcribed pieces of the conversation where
  /// the boundary is located.
  ///
  /// This index starts at zero.
  core.int? transcriptIndex;

  /// The word index of this boundary with respect to the first word in the
  /// transcript piece.
  ///
  /// This index starts at zero.
  core.int? wordIndex;

  GoogleCloudContactcenterinsightsV1AnnotationBoundary({
    this.transcriptIndex,
    this.wordIndex,
  });

  GoogleCloudContactcenterinsightsV1AnnotationBoundary.fromJson(core.Map json_)
      : this(
          transcriptIndex: json_['transcriptIndex'] as core.int?,
          wordIndex: json_['wordIndex'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transcriptIndex != null) 'transcriptIndex': transcriptIndex!,
        if (wordIndex != null) 'wordIndex': wordIndex!,
      };
}

/// Selector of all available annotators and phrase matchers to run.
class GoogleCloudContactcenterinsightsV1AnnotatorSelector {
  /// The issue model to run.
  ///
  /// If not provided, the most recently deployed topic model will be used. The
  /// provided issue model will only be used for inference if the issue model is
  /// deployed and if run_issue_model_annotator is set to true. If more than one
  /// issue model is provided, only the first provided issue model will be used
  /// for inference.
  core.List<core.String>? issueModels;

  /// The list of phrase matchers to run.
  ///
  /// If not provided, all active phrase matchers will be used. If inactive
  /// phrase matchers are provided, they will not be used. Phrase matchers will
  /// be run only if run_phrase_matcher_annotator is set to true. Format:
  /// projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  core.List<core.String>? phraseMatchers;

  /// Configuration for the QA annotator.
  GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig? qaConfig;

  /// Whether to run the entity annotator.
  core.bool? runEntityAnnotator;

  /// Whether to run the intent annotator.
  core.bool? runIntentAnnotator;

  /// Whether to run the interruption annotator.
  core.bool? runInterruptionAnnotator;

  /// Whether to run the issue model annotator.
  ///
  /// A model should have already been deployed for this to take effect.
  core.bool? runIssueModelAnnotator;

  /// Whether to run the active phrase matcher annotator(s).
  core.bool? runPhraseMatcherAnnotator;

  /// Whether to run the QA annotator.
  core.bool? runQaAnnotator;

  /// Whether to run the sentiment annotator.
  core.bool? runSentimentAnnotator;

  /// Whether to run the silence annotator.
  core.bool? runSilenceAnnotator;

  /// Whether to run the summarization annotator.
  core.bool? runSummarizationAnnotator;

  /// Configuration for the summarization annotator.
  GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig?
      summarizationConfig;

  GoogleCloudContactcenterinsightsV1AnnotatorSelector({
    this.issueModels,
    this.phraseMatchers,
    this.qaConfig,
    this.runEntityAnnotator,
    this.runIntentAnnotator,
    this.runInterruptionAnnotator,
    this.runIssueModelAnnotator,
    this.runPhraseMatcherAnnotator,
    this.runQaAnnotator,
    this.runSentimentAnnotator,
    this.runSilenceAnnotator,
    this.runSummarizationAnnotator,
    this.summarizationConfig,
  });

  GoogleCloudContactcenterinsightsV1AnnotatorSelector.fromJson(core.Map json_)
      : this(
          issueModels: (json_['issueModels'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          phraseMatchers: (json_['phraseMatchers'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          qaConfig: json_.containsKey('qaConfig')
              ? GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig
                  .fromJson(
                      json_['qaConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          runEntityAnnotator: json_['runEntityAnnotator'] as core.bool?,
          runIntentAnnotator: json_['runIntentAnnotator'] as core.bool?,
          runInterruptionAnnotator:
              json_['runInterruptionAnnotator'] as core.bool?,
          runIssueModelAnnotator: json_['runIssueModelAnnotator'] as core.bool?,
          runPhraseMatcherAnnotator:
              json_['runPhraseMatcherAnnotator'] as core.bool?,
          runQaAnnotator: json_['runQaAnnotator'] as core.bool?,
          runSentimentAnnotator: json_['runSentimentAnnotator'] as core.bool?,
          runSilenceAnnotator: json_['runSilenceAnnotator'] as core.bool?,
          runSummarizationAnnotator:
              json_['runSummarizationAnnotator'] as core.bool?,
          summarizationConfig: json_.containsKey('summarizationConfig')
              ? GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig
                  .fromJson(json_['summarizationConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (issueModels != null) 'issueModels': issueModels!,
        if (phraseMatchers != null) 'phraseMatchers': phraseMatchers!,
        if (qaConfig != null) 'qaConfig': qaConfig!,
        if (runEntityAnnotator != null)
          'runEntityAnnotator': runEntityAnnotator!,
        if (runIntentAnnotator != null)
          'runIntentAnnotator': runIntentAnnotator!,
        if (runInterruptionAnnotator != null)
          'runInterruptionAnnotator': runInterruptionAnnotator!,
        if (runIssueModelAnnotator != null)
          'runIssueModelAnnotator': runIssueModelAnnotator!,
        if (runPhraseMatcherAnnotator != null)
          'runPhraseMatcherAnnotator': runPhraseMatcherAnnotator!,
        if (runQaAnnotator != null) 'runQaAnnotator': runQaAnnotator!,
        if (runSentimentAnnotator != null)
          'runSentimentAnnotator': runSentimentAnnotator!,
        if (runSilenceAnnotator != null)
          'runSilenceAnnotator': runSilenceAnnotator!,
        if (runSummarizationAnnotator != null)
          'runSummarizationAnnotator': runSummarizationAnnotator!,
        if (summarizationConfig != null)
          'summarizationConfig': summarizationConfig!,
      };
}

/// Configuration for the QA feature.
class GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig {
  /// A manual list of scorecards to score.
  GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList?
      scorecardList;

  GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig({
    this.scorecardList,
  });

  GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig.fromJson(
      core.Map json_)
      : this(
          scorecardList: json_.containsKey('scorecardList')
              ? GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList
                  .fromJson(json_['scorecardList']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (scorecardList != null) 'scorecardList': scorecardList!,
      };
}

/// Container for a list of scorecards.
class GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList {
  /// List of QaScorecardRevisions.
  core.List<core.String>? qaScorecardRevisions;

  GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList({
    this.qaScorecardRevisions,
  });

  GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList.fromJson(
      core.Map json_)
      : this(
          qaScorecardRevisions: (json_['qaScorecardRevisions'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (qaScorecardRevisions != null)
          'qaScorecardRevisions': qaScorecardRevisions!,
      };
}

/// Configuration for summarization.
class GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig {
  /// Resource name of the Dialogflow conversation profile.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/conversationProfiles/{conversation_profile}
  core.String? conversationProfile;

  /// The resource name of the existing created generator.
  ///
  /// Format: projects//locations//generators/
  core.String? generator;

  /// Default summarization model to be used.
  /// Possible string values are:
  /// - "SUMMARIZATION_MODEL_UNSPECIFIED" : Unspecified summarization model.
  /// - "BASELINE_MODEL" : The CCAI baseline model.
  /// - "BASELINE_MODEL_V2_0" : The CCAI baseline model, V2.0.
  core.String? summarizationModel;

  GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig({
    this.conversationProfile,
    this.generator,
    this.summarizationModel,
  });

  GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig.fromJson(
      core.Map json_)
      : this(
          conversationProfile: json_['conversationProfile'] as core.String?,
          generator: json_['generator'] as core.String?,
          summarizationModel: json_['summarizationModel'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversationProfile != null)
          'conversationProfile': conversationProfile!,
        if (generator != null) 'generator': generator!,
        if (summarizationModel != null)
          'summarizationModel': summarizationModel!,
      };
}

/// The feedback that the customer has about a certain answer in the
/// conversation.
class GoogleCloudContactcenterinsightsV1AnswerFeedback {
  /// Indicates whether an answer or item was clicked by the human agent.
  core.bool? clicked;

  /// The correctness level of an answer.
  /// Possible string values are:
  /// - "CORRECTNESS_LEVEL_UNSPECIFIED" : Correctness level unspecified.
  /// - "NOT_CORRECT" : Answer is totally wrong.
  /// - "PARTIALLY_CORRECT" : Answer is partially correct.
  /// - "FULLY_CORRECT" : Answer is fully correct.
  core.String? correctnessLevel;

  /// Indicates whether an answer or item was displayed to the human agent in
  /// the agent desktop UI.
  core.bool? displayed;

  GoogleCloudContactcenterinsightsV1AnswerFeedback({
    this.clicked,
    this.correctnessLevel,
    this.displayed,
  });

  GoogleCloudContactcenterinsightsV1AnswerFeedback.fromJson(core.Map json_)
      : this(
          clicked: json_['clicked'] as core.bool?,
          correctnessLevel: json_['correctnessLevel'] as core.String?,
          displayed: json_['displayed'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clicked != null) 'clicked': clicked!,
        if (correctnessLevel != null) 'correctnessLevel': correctnessLevel!,
        if (displayed != null) 'displayed': displayed!,
      };
}

/// Agent Assist Article Suggestion data.
class GoogleCloudContactcenterinsightsV1ArticleSuggestionData {
  /// The system's confidence score that this article is a good match for this
  /// conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely
  /// certain).
  core.double? confidenceScore;

  /// Map that contains metadata about the Article Suggestion and the document
  /// that it originates from.
  core.Map<core.String, core.String>? metadata;

  /// The name of the answer record.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/answerRecords/{answer_record}
  core.String? queryRecord;

  /// The knowledge document that this answer was extracted from.
  ///
  /// Format:
  /// projects/{project}/knowledgeBases/{knowledge_base}/documents/{document}
  core.String? source;

  /// Article title.
  core.String? title;

  /// Article URI.
  core.String? uri;

  GoogleCloudContactcenterinsightsV1ArticleSuggestionData({
    this.confidenceScore,
    this.metadata,
    this.queryRecord,
    this.source,
    this.title,
    this.uri,
  });

  GoogleCloudContactcenterinsightsV1ArticleSuggestionData.fromJson(
      core.Map json_)
      : this(
          confidenceScore: json_.containsKey('confidenceScore')
              ? decodeDouble(json_['confidenceScore'] as core.Object)
              : null,
          metadata:
              (json_['metadata'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          queryRecord: json_['queryRecord'] as core.String?,
          source: json_['source'] as core.String?,
          title: json_['title'] as core.String?,
          uri: json_['uri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidenceScore != null)
          'confidenceScore': encodeDouble(confidenceScore!),
        if (metadata != null) 'metadata': metadata!,
        if (queryRecord != null) 'queryRecord': queryRecord!,
        if (source != null) 'source': source!,
        if (title != null) 'title': title!,
        if (uri != null) 'uri': uri!,
      };
}

/// The request to analyze conversations in bulk.
class GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest {
  /// Percentage of selected conversation to analyze, between \[0, 100\].
  ///
  /// Required.
  core.double? analysisPercentage;

  /// To select the annotators to run and the phrase matchers to use (if any).
  ///
  /// If not specified, all annotators will be run.
  GoogleCloudContactcenterinsightsV1AnnotatorSelector? annotatorSelector;

  /// Filter used to select the subset of conversations to analyze.
  ///
  /// Required.
  core.String? filter;

  /// The parent resource to create analyses in.
  ///
  /// Required.
  core.String? parent;

  GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest({
    this.analysisPercentage,
    this.annotatorSelector,
    this.filter,
    this.parent,
  });

  GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest.fromJson(
      core.Map json_)
      : this(
          analysisPercentage: json_.containsKey('analysisPercentage')
              ? decodeDouble(json_['analysisPercentage'] as core.Object)
              : null,
          annotatorSelector: json_.containsKey('annotatorSelector')
              ? GoogleCloudContactcenterinsightsV1AnnotatorSelector.fromJson(
                  json_['annotatorSelector']
                      as core.Map<core.String, core.dynamic>)
              : null,
          filter: json_['filter'] as core.String?,
          parent: json_['parent'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysisPercentage != null)
          'analysisPercentage': encodeDouble(analysisPercentage!),
        if (annotatorSelector != null) 'annotatorSelector': annotatorSelector!,
        if (filter != null) 'filter': filter!,
        if (parent != null) 'parent': parent!,
      };
}

/// The request to delete conversations in bulk.
class GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest {
  /// Filter used to select the subset of conversations to delete.
  core.String? filter;

  /// If set to true, all of this conversation's analyses will also be deleted.
  ///
  /// Otherwise, the request will only succeed if the conversation has no
  /// analyses.
  core.bool? force;

  /// Maximum number of conversations to delete.
  core.int? maxDeleteCount;

  /// The parent resource to delete conversations from.
  ///
  /// Format: projects/{project}/locations/{location}
  ///
  /// Required.
  core.String? parent;

  GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest({
    this.filter,
    this.force,
    this.maxDeleteCount,
    this.parent,
  });

  GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest.fromJson(
      core.Map json_)
      : this(
          filter: json_['filter'] as core.String?,
          force: json_['force'] as core.bool?,
          maxDeleteCount: json_['maxDeleteCount'] as core.int?,
          parent: json_['parent'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filter != null) 'filter': filter!,
        if (force != null) 'force': force!,
        if (maxDeleteCount != null) 'maxDeleteCount': maxDeleteCount!,
        if (parent != null) 'parent': parent!,
      };
}

/// Request for the BulkDownloadFeedbackLabel endpoint.
class GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest {
  /// Filter parent conversations to download feedback labels for.
  ///
  /// When specified, the feedback labels will be downloaded for the
  /// conversations that match the filter. If `template_qa_scorecard_id` is set,
  /// all the conversations that match the filter will be paired with the
  /// questions under the scorecard for labeling.
  ///
  /// Optional.
  core.String? conversationFilter;

  /// The type of feedback labels that will be downloaded.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "FEEDBACK_LABEL_TYPE_UNSPECIFIED" : Unspecified format
  /// - "QUALITY_AI" : Downloaded file will contain all Quality AI labels from
  /// the latest scorecard revision.
  /// - "TOPIC_MODELING" : Downloaded file will contain only Topic Modeling
  /// labels.
  core.String? feedbackLabelType;

  /// A filter to reduce results to a specific subset.
  ///
  /// Supports disjunctions (OR) and conjunctions (AND). Supported fields: *
  /// `issue_model_id` * `qa_question_id` * `qa_scorecard_id` *
  /// `min_create_time` * `max_create_time` * `min_update_time` *
  /// `max_update_time` * `feedback_label_type`: QUALITY_AI, TOPIC_MODELING
  ///
  /// Optional.
  core.String? filter;

  /// A cloud storage bucket destination.
  GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination?
      gcsDestination;

  /// Limits the maximum number of feedback labels that will be downloaded.
  ///
  /// The first `N` feedback labels will be downloaded.
  ///
  /// Optional.
  core.int? maxDownloadCount;

  /// The parent resource for new feedback labels.
  ///
  /// Required.
  core.String? parent;

  /// If set, a template for labeling conversations and scorecard questions will
  /// be created from the conversation_filter and the questions under the
  /// scorecard(s).
  ///
  /// The feedback label `filter` will be ignored.
  ///
  /// Optional.
  core.List<core.String>? templateQaScorecardId;

  GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest({
    this.conversationFilter,
    this.feedbackLabelType,
    this.filter,
    this.gcsDestination,
    this.maxDownloadCount,
    this.parent,
    this.templateQaScorecardId,
  });

  GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest.fromJson(
      core.Map json_)
      : this(
          conversationFilter: json_['conversationFilter'] as core.String?,
          feedbackLabelType: json_['feedbackLabelType'] as core.String?,
          filter: json_['filter'] as core.String?,
          gcsDestination: json_.containsKey('gcsDestination')
              ? GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination
                  .fromJson(json_['gcsDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
          maxDownloadCount: json_['maxDownloadCount'] as core.int?,
          parent: json_['parent'] as core.String?,
          templateQaScorecardId: (json_['templateQaScorecardId'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversationFilter != null)
          'conversationFilter': conversationFilter!,
        if (feedbackLabelType != null) 'feedbackLabelType': feedbackLabelType!,
        if (filter != null) 'filter': filter!,
        if (gcsDestination != null) 'gcsDestination': gcsDestination!,
        if (maxDownloadCount != null) 'maxDownloadCount': maxDownloadCount!,
        if (parent != null) 'parent': parent!,
        if (templateQaScorecardId != null)
          'templateQaScorecardId': templateQaScorecardId!,
      };
}

/// Google Cloud Storage Object details to write the feedback labels to.
class GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination {
  /// Add whitespace to the JSON file.
  ///
  /// Makes easier to read, but increases file size. Only applicable for JSON
  /// format.
  ///
  /// Optional.
  core.bool? addWhitespace;

  /// Always print fields with no presence.
  ///
  /// This is useful for printing fields that are not set, like implicit 0 value
  /// or empty lists/maps. Only applicable for JSON format.
  ///
  /// Optional.
  core.bool? alwaysPrintEmptyFields;

  /// File format in which the labels will be exported.
  ///
  /// Required.
  /// Possible string values are:
  /// - "FORMAT_UNSPECIFIED" : Unspecified format.
  /// - "CSV" : CSV format. 1,000 labels are stored per CSV file by default.
  /// - "JSON" : JSON format. 1 label stored per JSON file by default.
  core.String? format;

  /// The Google Cloud Storage URI to write the feedback labels to.
  ///
  /// The file name will be used as a prefix for the files written to the bucket
  /// if the output needs to be split across multiple files, otherwise it will
  /// be used as is. The file extension will be appended to the file name based
  /// on the format selected. E.g. `gs://bucket_name/object_uri_prefix`
  ///
  /// Required.
  core.String? objectUri;

  /// The number of records per file.
  ///
  /// Applicable for either format.
  ///
  /// Optional.
  core.String? recordsPerFileCount;

  GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination({
    this.addWhitespace,
    this.alwaysPrintEmptyFields,
    this.format,
    this.objectUri,
    this.recordsPerFileCount,
  });

  GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination.fromJson(
      core.Map json_)
      : this(
          addWhitespace: json_['addWhitespace'] as core.bool?,
          alwaysPrintEmptyFields: json_['alwaysPrintEmptyFields'] as core.bool?,
          format: json_['format'] as core.String?,
          objectUri: json_['objectUri'] as core.String?,
          recordsPerFileCount: json_['recordsPerFileCount'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addWhitespace != null) 'addWhitespace': addWhitespace!,
        if (alwaysPrintEmptyFields != null)
          'alwaysPrintEmptyFields': alwaysPrintEmptyFields!,
        if (format != null) 'format': format!,
        if (objectUri != null) 'objectUri': objectUri!,
        if (recordsPerFileCount != null)
          'recordsPerFileCount': recordsPerFileCount!,
      };
}

/// The request for bulk uploading feedback labels.
class GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest {
  /// A cloud storage bucket source.
  GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource?
      gcsSource;

  /// If set, upload will not happen and the labels will be validated.
  ///
  /// If not set, then default behavior will be to upload the labels after
  /// validation is complete.
  ///
  /// Optional.
  core.bool? validateOnly;

  GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest({
    this.gcsSource,
    this.validateOnly,
  });

  GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest.fromJson(
      core.Map json_)
      : this(
          gcsSource: json_.containsKey('gcsSource')
              ? GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource
                  .fromJson(
                      json_['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
          validateOnly: json_['validateOnly'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsSource != null) 'gcsSource': gcsSource!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// Google Cloud Storage Object details to get the feedback label file from.
class GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource {
  /// File format which will be ingested.
  ///
  /// Required.
  /// Possible string values are:
  /// - "FORMAT_UNSPECIFIED" : Unspecified format.
  /// - "CSV" : CSV format.
  /// - "JSON" : JSON format.
  core.String? format;

  /// The Google Cloud Storage URI of the file to import.
  ///
  /// Format: `gs://bucket_name/object_name`
  ///
  /// Required.
  core.String? objectUri;

  GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource({
    this.format,
    this.objectUri,
  });

  GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource.fromJson(
      core.Map json_)
      : this(
          format: json_['format'] as core.String?,
          objectUri: json_['objectUri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (format != null) 'format': format!,
        if (objectUri != null) 'objectUri': objectUri!,
      };
}

/// Response of querying an issue model's statistics.
class GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse {
  /// The latest label statistics for the queried issue model.
  ///
  /// Includes results on both training data and data labeled after deployment.
  GoogleCloudContactcenterinsightsV1IssueModelLabelStats? currentStats;

  GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse({
    this.currentStats,
  });

  GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse.fromJson(
      core.Map json_)
      : this(
          currentStats: json_.containsKey('currentStats')
              ? GoogleCloudContactcenterinsightsV1IssueModelLabelStats.fromJson(
                  json_['currentStats'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentStats != null) 'currentStats': currentStats!,
      };
}

/// The response for calculating conversation statistics.
class GoogleCloudContactcenterinsightsV1CalculateStatsResponse {
  /// The average duration of all conversations.
  ///
  /// The average is calculated using only conversations that have a time
  /// duration.
  core.String? averageDuration;

  /// The average number of turns per conversation.
  core.int? averageTurnCount;

  /// The total number of conversations.
  core.int? conversationCount;

  /// A time series representing the count of conversations created over time
  /// that match that requested filter criteria.
  GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries?
      conversationCountTimeSeries;

  /// A map associating each custom highlighter resource name with its
  /// respective number of matches in the set of conversations.
  core.Map<core.String, core.int>? customHighlighterMatches;

  /// A map associating each issue resource name with its respective number of
  /// matches in the set of conversations.
  ///
  /// Key has the format: `projects//locations//issueModels//issues/`
  /// Deprecated, use `issue_matches_stats` field instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.Map<core.String, core.int>? issueMatches;

  /// A map associating each issue resource name with its respective number of
  /// matches in the set of conversations.
  ///
  /// Key has the format: `projects//locations//issueModels//issues/`
  core.Map<core.String,
          GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats>?
      issueMatchesStats;

  /// A map associating each smart highlighter display name with its respective
  /// number of matches in the set of conversations.
  core.Map<core.String, core.int>? smartHighlighterMatches;

  GoogleCloudContactcenterinsightsV1CalculateStatsResponse({
    this.averageDuration,
    this.averageTurnCount,
    this.conversationCount,
    this.conversationCountTimeSeries,
    this.customHighlighterMatches,
    this.issueMatches,
    this.issueMatchesStats,
    this.smartHighlighterMatches,
  });

  GoogleCloudContactcenterinsightsV1CalculateStatsResponse.fromJson(
      core.Map json_)
      : this(
          averageDuration: json_['averageDuration'] as core.String?,
          averageTurnCount: json_['averageTurnCount'] as core.int?,
          conversationCount: json_['conversationCount'] as core.int?,
          conversationCountTimeSeries: json_
                  .containsKey('conversationCountTimeSeries')
              ? GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries
                  .fromJson(json_['conversationCountTimeSeries']
                      as core.Map<core.String, core.dynamic>)
              : null,
          customHighlighterMatches: (json_['customHighlighterMatches']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.int,
            ),
          ),
          issueMatches:
              (json_['issueMatches'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.int,
            ),
          ),
          issueMatchesStats: (json_['issueMatchesStats']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats
                  .fromJson(value as core.Map<core.String, core.dynamic>),
            ),
          ),
          smartHighlighterMatches: (json_['smartHighlighterMatches']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.int,
            ),
          ),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (averageDuration != null) 'averageDuration': averageDuration!,
        if (averageTurnCount != null) 'averageTurnCount': averageTurnCount!,
        if (conversationCount != null) 'conversationCount': conversationCount!,
        if (conversationCountTimeSeries != null)
          'conversationCountTimeSeries': conversationCountTimeSeries!,
        if (customHighlighterMatches != null)
          'customHighlighterMatches': customHighlighterMatches!,
        if (issueMatches != null) 'issueMatches': issueMatches!,
        if (issueMatchesStats != null) 'issueMatchesStats': issueMatchesStats!,
        if (smartHighlighterMatches != null)
          'smartHighlighterMatches': smartHighlighterMatches!,
      };
}

/// A time series representing conversations over time.
class GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries {
  /// The duration of each interval.
  core.String? intervalDuration;

  /// An ordered list of intervals from earliest to latest, where each interval
  /// represents the number of conversations that transpired during the time
  /// window.
  core.List<
          GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval>?
      points;

  GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries({
    this.intervalDuration,
    this.points,
  });

  GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries.fromJson(
      core.Map json_)
      : this(
          intervalDuration: json_['intervalDuration'] as core.String?,
          points: (json_['points'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (intervalDuration != null) 'intervalDuration': intervalDuration!,
        if (points != null) 'points': points!,
      };
}

/// A single interval in a time series.
class GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval {
  /// The number of conversations created in this interval.
  core.int? conversationCount;

  /// The start time of this interval.
  core.String? startTime;

  GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval({
    this.conversationCount,
    this.startTime,
  });

  GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval.fromJson(
      core.Map json_)
      : this(
          conversationCount: json_['conversationCount'] as core.int?,
          startTime: json_['startTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversationCount != null) 'conversationCount': conversationCount!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// A piece of metadata that applies to a window of a call.
class GoogleCloudContactcenterinsightsV1CallAnnotation {
  /// The boundary in the conversation where the annotation ends, inclusive.
  GoogleCloudContactcenterinsightsV1AnnotationBoundary? annotationEndBoundary;

  /// The boundary in the conversation where the annotation starts, inclusive.
  GoogleCloudContactcenterinsightsV1AnnotationBoundary? annotationStartBoundary;

  /// The channel of the audio where the annotation occurs.
  ///
  /// For single-channel audio, this field is not populated.
  core.int? channelTag;

  /// Data specifying an entity mention.
  GoogleCloudContactcenterinsightsV1EntityMentionData? entityMentionData;

  /// Data specifying a hold.
  GoogleCloudContactcenterinsightsV1HoldData? holdData;

  /// Data specifying an intent match.
  GoogleCloudContactcenterinsightsV1IntentMatchData? intentMatchData;

  /// Data specifying an interruption.
  GoogleCloudContactcenterinsightsV1InterruptionData? interruptionData;

  /// Data specifying an issue match.
  GoogleCloudContactcenterinsightsV1IssueMatchData? issueMatchData;

  /// Data specifying a phrase match.
  GoogleCloudContactcenterinsightsV1PhraseMatchData? phraseMatchData;

  /// Data specifying sentiment.
  GoogleCloudContactcenterinsightsV1SentimentData? sentimentData;

  /// Data specifying silence.
  GoogleCloudContactcenterinsightsV1SilenceData? silenceData;

  GoogleCloudContactcenterinsightsV1CallAnnotation({
    this.annotationEndBoundary,
    this.annotationStartBoundary,
    this.channelTag,
    this.entityMentionData,
    this.holdData,
    this.intentMatchData,
    this.interruptionData,
    this.issueMatchData,
    this.phraseMatchData,
    this.sentimentData,
    this.silenceData,
  });

  GoogleCloudContactcenterinsightsV1CallAnnotation.fromJson(core.Map json_)
      : this(
          annotationEndBoundary: json_.containsKey('annotationEndBoundary')
              ? GoogleCloudContactcenterinsightsV1AnnotationBoundary.fromJson(
                  json_['annotationEndBoundary']
                      as core.Map<core.String, core.dynamic>)
              : null,
          annotationStartBoundary: json_.containsKey('annotationStartBoundary')
              ? GoogleCloudContactcenterinsightsV1AnnotationBoundary.fromJson(
                  json_['annotationStartBoundary']
                      as core.Map<core.String, core.dynamic>)
              : null,
          channelTag: json_['channelTag'] as core.int?,
          entityMentionData: json_.containsKey('entityMentionData')
              ? GoogleCloudContactcenterinsightsV1EntityMentionData.fromJson(
                  json_['entityMentionData']
                      as core.Map<core.String, core.dynamic>)
              : null,
          holdData: json_.containsKey('holdData')
              ? GoogleCloudContactcenterinsightsV1HoldData.fromJson(
                  json_['holdData'] as core.Map<core.String, core.dynamic>)
              : null,
          intentMatchData: json_.containsKey('intentMatchData')
              ? GoogleCloudContactcenterinsightsV1IntentMatchData.fromJson(
                  json_['intentMatchData']
                      as core.Map<core.String, core.dynamic>)
              : null,
          interruptionData: json_.containsKey('interruptionData')
              ? GoogleCloudContactcenterinsightsV1InterruptionData.fromJson(
                  json_['interruptionData']
                      as core.Map<core.String, core.dynamic>)
              : null,
          issueMatchData: json_.containsKey('issueMatchData')
              ? GoogleCloudContactcenterinsightsV1IssueMatchData.fromJson(
                  json_['issueMatchData']
                      as core.Map<core.String, core.dynamic>)
              : null,
          phraseMatchData: json_.containsKey('phraseMatchData')
              ? GoogleCloudContactcenterinsightsV1PhraseMatchData.fromJson(
                  json_['phraseMatchData']
                      as core.Map<core.String, core.dynamic>)
              : null,
          sentimentData: json_.containsKey('sentimentData')
              ? GoogleCloudContactcenterinsightsV1SentimentData.fromJson(
                  json_['sentimentData'] as core.Map<core.String, core.dynamic>)
              : null,
          silenceData: json_.containsKey('silenceData')
              ? GoogleCloudContactcenterinsightsV1SilenceData.fromJson(
                  json_['silenceData'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationEndBoundary != null)
          'annotationEndBoundary': annotationEndBoundary!,
        if (annotationStartBoundary != null)
          'annotationStartBoundary': annotationStartBoundary!,
        if (channelTag != null) 'channelTag': channelTag!,
        if (entityMentionData != null) 'entityMentionData': entityMentionData!,
        if (holdData != null) 'holdData': holdData!,
        if (intentMatchData != null) 'intentMatchData': intentMatchData!,
        if (interruptionData != null) 'interruptionData': interruptionData!,
        if (issueMatchData != null) 'issueMatchData': issueMatchData!,
        if (phraseMatchData != null) 'phraseMatchData': phraseMatchData!,
        if (sentimentData != null) 'sentimentData': sentimentData!,
        if (silenceData != null) 'silenceData': silenceData!,
      };
}

/// The conversation resource.
class GoogleCloudContactcenterinsightsV1Conversation {
  /// An opaque, user-specified string representing the human agent who handled
  /// the conversation.
  core.String? agentId;

  /// Call-specific metadata.
  GoogleCloudContactcenterinsightsV1ConversationCallMetadata? callMetadata;

  /// The time at which the conversation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The source of the audio and transcription for the conversation.
  GoogleCloudContactcenterinsightsV1ConversationDataSource? dataSource;

  /// All the matched Dialogflow intents in the call.
  ///
  /// The key corresponds to a Dialogflow intent, format:
  /// projects/{project}/agent/{agent}/intents/{intent}
  ///
  /// Output only.
  core.Map<core.String, GoogleCloudContactcenterinsightsV1DialogflowIntent>?
      dialogflowIntents;

  /// The duration of the conversation.
  ///
  /// Output only.
  core.String? duration;

  /// The time at which this conversation should expire.
  ///
  /// After this time, the conversation data and any associated analyses will be
  /// deleted.
  core.String? expireTime;

  /// A map for the user to specify any custom fields.
  ///
  /// A maximum of 100 labels per conversation is allowed, with a maximum of 256
  /// characters per entry.
  core.Map<core.String, core.String>? labels;

  /// A user-specified language code for the conversation.
  core.String? languageCode;

  /// The conversation's latest analysis, if one exists.
  ///
  /// Output only.
  GoogleCloudContactcenterinsightsV1Analysis? latestAnalysis;

  /// Latest summary of the conversation.
  ///
  /// Output only.
  GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData?
      latestSummary;

  /// The conversation medium, if unspecified will default to PHONE_CALL.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "MEDIUM_UNSPECIFIED" : Default value, if unspecified will default to
  /// PHONE_CALL.
  /// - "PHONE_CALL" : The format for conversations that took place over the
  /// phone.
  /// - "CHAT" : The format for conversations that took place over chat.
  core.String? medium;

  /// Input only.
  ///
  /// JSON metadata encoded as a string. This field is primarily used by
  /// Insights integrations with various telephony systems and must be in one of
  /// Insight's supported formats.
  core.String? metadataJson;

  /// The resource name of the conversation.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/conversations/{conversation}
  ///
  /// Immutable.
  core.String? name;

  /// Obfuscated user ID which the customer sent to us.
  core.String? obfuscatedUserId;

  /// Conversation metadata related to quality management.
  GoogleCloudContactcenterinsightsV1ConversationQualityMetadata?
      qualityMetadata;

  /// The annotations that were generated during the customer and agent
  /// interaction.
  ///
  /// Output only.
  core.List<GoogleCloudContactcenterinsightsV1RuntimeAnnotation>?
      runtimeAnnotations;

  /// The time at which the conversation started.
  core.String? startTime;

  /// The conversation transcript.
  ///
  /// Output only.
  GoogleCloudContactcenterinsightsV1ConversationTranscript? transcript;

  /// Input only.
  ///
  /// The TTL for this resource. If specified, then this TTL will be used to
  /// calculate the expire time.
  core.String? ttl;

  /// The number of turns in the conversation.
  ///
  /// Output only.
  core.int? turnCount;

  /// The most recent time at which the conversation was updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudContactcenterinsightsV1Conversation({
    this.agentId,
    this.callMetadata,
    this.createTime,
    this.dataSource,
    this.dialogflowIntents,
    this.duration,
    this.expireTime,
    this.labels,
    this.languageCode,
    this.latestAnalysis,
    this.latestSummary,
    this.medium,
    this.metadataJson,
    this.name,
    this.obfuscatedUserId,
    this.qualityMetadata,
    this.runtimeAnnotations,
    this.startTime,
    this.transcript,
    this.ttl,
    this.turnCount,
    this.updateTime,
  });

  GoogleCloudContactcenterinsightsV1Conversation.fromJson(core.Map json_)
      : this(
          agentId: json_['agentId'] as core.String?,
          callMetadata: json_.containsKey('callMetadata')
              ? GoogleCloudContactcenterinsightsV1ConversationCallMetadata
                  .fromJson(json_['callMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_['createTime'] as core.String?,
          dataSource: json_.containsKey('dataSource')
              ? GoogleCloudContactcenterinsightsV1ConversationDataSource
                  .fromJson(json_['dataSource']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dialogflowIntents: (json_['dialogflowIntents']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              GoogleCloudContactcenterinsightsV1DialogflowIntent.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
          duration: json_['duration'] as core.String?,
          expireTime: json_['expireTime'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          languageCode: json_['languageCode'] as core.String?,
          latestAnalysis: json_.containsKey('latestAnalysis')
              ? GoogleCloudContactcenterinsightsV1Analysis.fromJson(
                  json_['latestAnalysis']
                      as core.Map<core.String, core.dynamic>)
              : null,
          latestSummary: json_.containsKey('latestSummary')
              ? GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData
                  .fromJson(json_['latestSummary']
                      as core.Map<core.String, core.dynamic>)
              : null,
          medium: json_['medium'] as core.String?,
          metadataJson: json_['metadataJson'] as core.String?,
          name: json_['name'] as core.String?,
          obfuscatedUserId: json_['obfuscatedUserId'] as core.String?,
          qualityMetadata: json_.containsKey('qualityMetadata')
              ? GoogleCloudContactcenterinsightsV1ConversationQualityMetadata
                  .fromJson(json_['qualityMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          runtimeAnnotations: (json_['runtimeAnnotations'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1RuntimeAnnotation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          startTime: json_['startTime'] as core.String?,
          transcript: json_.containsKey('transcript')
              ? GoogleCloudContactcenterinsightsV1ConversationTranscript
                  .fromJson(json_['transcript']
                      as core.Map<core.String, core.dynamic>)
              : null,
          ttl: json_['ttl'] as core.String?,
          turnCount: json_['turnCount'] as core.int?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentId != null) 'agentId': agentId!,
        if (callMetadata != null) 'callMetadata': callMetadata!,
        if (createTime != null) 'createTime': createTime!,
        if (dataSource != null) 'dataSource': dataSource!,
        if (dialogflowIntents != null) 'dialogflowIntents': dialogflowIntents!,
        if (duration != null) 'duration': duration!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (labels != null) 'labels': labels!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (latestAnalysis != null) 'latestAnalysis': latestAnalysis!,
        if (latestSummary != null) 'latestSummary': latestSummary!,
        if (medium != null) 'medium': medium!,
        if (metadataJson != null) 'metadataJson': metadataJson!,
        if (name != null) 'name': name!,
        if (obfuscatedUserId != null) 'obfuscatedUserId': obfuscatedUserId!,
        if (qualityMetadata != null) 'qualityMetadata': qualityMetadata!,
        if (runtimeAnnotations != null)
          'runtimeAnnotations': runtimeAnnotations!,
        if (startTime != null) 'startTime': startTime!,
        if (transcript != null) 'transcript': transcript!,
        if (ttl != null) 'ttl': ttl!,
        if (turnCount != null) 'turnCount': turnCount!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Call-specific metadata.
class GoogleCloudContactcenterinsightsV1ConversationCallMetadata {
  /// The audio channel that contains the agent.
  core.int? agentChannel;

  /// The audio channel that contains the customer.
  core.int? customerChannel;

  GoogleCloudContactcenterinsightsV1ConversationCallMetadata({
    this.agentChannel,
    this.customerChannel,
  });

  GoogleCloudContactcenterinsightsV1ConversationCallMetadata.fromJson(
      core.Map json_)
      : this(
          agentChannel: json_['agentChannel'] as core.int?,
          customerChannel: json_['customerChannel'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentChannel != null) 'agentChannel': agentChannel!,
        if (customerChannel != null) 'customerChannel': customerChannel!,
      };
}

/// The conversation source, which is a combination of transcript and audio.
class GoogleCloudContactcenterinsightsV1ConversationDataSource {
  /// The source when the conversation comes from Dialogflow.
  GoogleCloudContactcenterinsightsV1DialogflowSource? dialogflowSource;

  /// A Cloud Storage location specification for the audio and transcript.
  GoogleCloudContactcenterinsightsV1GcsSource? gcsSource;

  GoogleCloudContactcenterinsightsV1ConversationDataSource({
    this.dialogflowSource,
    this.gcsSource,
  });

  GoogleCloudContactcenterinsightsV1ConversationDataSource.fromJson(
      core.Map json_)
      : this(
          dialogflowSource: json_.containsKey('dialogflowSource')
              ? GoogleCloudContactcenterinsightsV1DialogflowSource.fromJson(
                  json_['dialogflowSource']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gcsSource: json_.containsKey('gcsSource')
              ? GoogleCloudContactcenterinsightsV1GcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dialogflowSource != null) 'dialogflowSource': dialogflowSource!,
        if (gcsSource != null) 'gcsSource': gcsSource!,
      };
}

/// One channel of conversation-level sentiment data.
class GoogleCloudContactcenterinsightsV1ConversationLevelSentiment {
  /// The channel of the audio that the data applies to.
  core.int? channelTag;

  /// Data specifying sentiment.
  GoogleCloudContactcenterinsightsV1SentimentData? sentimentData;

  GoogleCloudContactcenterinsightsV1ConversationLevelSentiment({
    this.channelTag,
    this.sentimentData,
  });

  GoogleCloudContactcenterinsightsV1ConversationLevelSentiment.fromJson(
      core.Map json_)
      : this(
          channelTag: json_['channelTag'] as core.int?,
          sentimentData: json_.containsKey('sentimentData')
              ? GoogleCloudContactcenterinsightsV1SentimentData.fromJson(
                  json_['sentimentData'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelTag != null) 'channelTag': channelTag!,
        if (sentimentData != null) 'sentimentData': sentimentData!,
      };
}

/// Conversation-level silence data.
class GoogleCloudContactcenterinsightsV1ConversationLevelSilence {
  /// Amount of time calculated to be in silence.
  core.String? silenceDuration;

  /// Percentage of the total conversation spent in silence.
  core.double? silencePercentage;

  GoogleCloudContactcenterinsightsV1ConversationLevelSilence({
    this.silenceDuration,
    this.silencePercentage,
  });

  GoogleCloudContactcenterinsightsV1ConversationLevelSilence.fromJson(
      core.Map json_)
      : this(
          silenceDuration: json_['silenceDuration'] as core.String?,
          silencePercentage: json_.containsKey('silencePercentage')
              ? decodeDouble(json_['silencePercentage'] as core.Object)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (silenceDuration != null) 'silenceDuration': silenceDuration!,
        if (silencePercentage != null)
          'silencePercentage': encodeDouble(silencePercentage!),
      };
}

/// The call participant speaking for a given utterance.
class GoogleCloudContactcenterinsightsV1ConversationParticipant {
  /// Use `dialogflow_participant_name` instead.
  ///
  /// The name of the Dialogflow participant. Format:
  /// projects/{project}/locations/{location}/conversations/{conversation}/participants/{participant}
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? dialogflowParticipant;

  /// The name of the participant provided by Dialogflow.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/conversations/{conversation}/participants/{participant}
  core.String? dialogflowParticipantName;

  /// Obfuscated user ID from Dialogflow.
  core.String? obfuscatedExternalUserId;

  /// The role of the participant.
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED" : Participant's role is not set.
  /// - "HUMAN_AGENT" : Participant is a human agent.
  /// - "AUTOMATED_AGENT" : Participant is an automated agent.
  /// - "END_USER" : Participant is an end user who conversed with the contact
  /// center.
  /// - "ANY_AGENT" : Participant is either a human or automated agent.
  core.String? role;

  /// A user-specified ID representing the participant.
  core.String? userId;

  GoogleCloudContactcenterinsightsV1ConversationParticipant({
    this.dialogflowParticipant,
    this.dialogflowParticipantName,
    this.obfuscatedExternalUserId,
    this.role,
    this.userId,
  });

  GoogleCloudContactcenterinsightsV1ConversationParticipant.fromJson(
      core.Map json_)
      : this(
          dialogflowParticipant: json_['dialogflowParticipant'] as core.String?,
          dialogflowParticipantName:
              json_['dialogflowParticipantName'] as core.String?,
          obfuscatedExternalUserId:
              json_['obfuscatedExternalUserId'] as core.String?,
          role: json_['role'] as core.String?,
          userId: json_['userId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dialogflowParticipant != null)
          'dialogflowParticipant': dialogflowParticipant!,
        if (dialogflowParticipantName != null)
          'dialogflowParticipantName': dialogflowParticipantName!,
        if (obfuscatedExternalUserId != null)
          'obfuscatedExternalUserId': obfuscatedExternalUserId!,
        if (role != null) 'role': role!,
        if (userId != null) 'userId': userId!,
      };
}

/// Conversation metadata related to quality management.
class GoogleCloudContactcenterinsightsV1ConversationQualityMetadata {
  /// Information about agents involved in the call.
  core.List<
          GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo>?
      agentInfo;

  /// An arbitrary integer value indicating the customer's satisfaction rating.
  core.int? customerSatisfactionRating;

  /// An arbitrary string value specifying the menu path the customer took.
  core.String? menuPath;

  /// The amount of time the customer waited to connect with an agent.
  core.String? waitDuration;

  GoogleCloudContactcenterinsightsV1ConversationQualityMetadata({
    this.agentInfo,
    this.customerSatisfactionRating,
    this.menuPath,
    this.waitDuration,
  });

  GoogleCloudContactcenterinsightsV1ConversationQualityMetadata.fromJson(
      core.Map json_)
      : this(
          agentInfo: (json_['agentInfo'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          customerSatisfactionRating:
              json_['customerSatisfactionRating'] as core.int?,
          menuPath: json_['menuPath'] as core.String?,
          waitDuration: json_['waitDuration'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentInfo != null) 'agentInfo': agentInfo!,
        if (customerSatisfactionRating != null)
          'customerSatisfactionRating': customerSatisfactionRating!,
        if (menuPath != null) 'menuPath': menuPath!,
        if (waitDuration != null) 'waitDuration': waitDuration!,
      };
}

/// Information about an agent involved in the conversation.
class GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo {
  /// A user-specified string representing the agent.
  core.String? agentId;

  /// The agent type, e.g. HUMAN_AGENT.
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED" : Participant's role is not set.
  /// - "HUMAN_AGENT" : Participant is a human agent.
  /// - "AUTOMATED_AGENT" : Participant is an automated agent.
  /// - "END_USER" : Participant is an end user who conversed with the contact
  /// center.
  /// - "ANY_AGENT" : Participant is either a human or automated agent.
  core.String? agentType;

  /// The agent's name.
  core.String? displayName;

  /// A user-provided string indicating the outcome of the agent's segment of
  /// the call.
  core.String? dispositionCode;

  /// The agent's location.
  core.String? location;

  /// A user-specified string representing the agent's team.
  ///
  /// Deprecated in favor of the `teams` field.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? team;

  /// User-specified strings representing the agent's teams.
  core.List<core.String>? teams;

  GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo({
    this.agentId,
    this.agentType,
    this.displayName,
    this.dispositionCode,
    this.location,
    this.team,
    this.teams,
  });

  GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo.fromJson(
      core.Map json_)
      : this(
          agentId: json_['agentId'] as core.String?,
          agentType: json_['agentType'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          dispositionCode: json_['dispositionCode'] as core.String?,
          location: json_['location'] as core.String?,
          team: json_['team'] as core.String?,
          teams: (json_['teams'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentId != null) 'agentId': agentId!,
        if (agentType != null) 'agentType': agentType!,
        if (displayName != null) 'displayName': displayName!,
        if (dispositionCode != null) 'dispositionCode': dispositionCode!,
        if (location != null) 'location': location!,
        if (team != null) 'team': team!,
        if (teams != null) 'teams': teams!,
      };
}

/// Conversation summarization suggestion data.
class GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData {
  /// The name of the answer record.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/answerRecords/{answer_record}
  core.String? answerRecord;

  /// The confidence score of the summarization.
  core.double? confidence;

  /// The name of the model that generates this summary.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/conversationModels/{conversation_model}
  core.String? conversationModel;

  /// A map that contains metadata about the summarization and the document from
  /// which it originates.
  core.Map<core.String, core.String>? metadata;

  /// The summarization content that is concatenated into one string.
  core.String? text;

  /// The summarization content that is divided into sections.
  ///
  /// The key is the section's name and the value is the section's content.
  /// There is no specific format for the key or value.
  core.Map<core.String, core.String>? textSections;

  GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData({
    this.answerRecord,
    this.confidence,
    this.conversationModel,
    this.metadata,
    this.text,
    this.textSections,
  });

  GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData.fromJson(
      core.Map json_)
      : this(
          answerRecord: json_['answerRecord'] as core.String?,
          confidence: json_.containsKey('confidence')
              ? decodeDouble(json_['confidence'] as core.Object)
              : null,
          conversationModel: json_['conversationModel'] as core.String?,
          metadata:
              (json_['metadata'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          text: json_['text'] as core.String?,
          textSections:
              (json_['textSections'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answerRecord != null) 'answerRecord': answerRecord!,
        if (confidence != null) 'confidence': encodeDouble(confidence!),
        if (conversationModel != null) 'conversationModel': conversationModel!,
        if (metadata != null) 'metadata': metadata!,
        if (text != null) 'text': text!,
        if (textSections != null) 'textSections': textSections!,
      };
}

/// A message representing the transcript of a conversation.
class GoogleCloudContactcenterinsightsV1ConversationTranscript {
  /// A list of sequential transcript segments that comprise the conversation.
  core.List<
          GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment>?
      transcriptSegments;

  GoogleCloudContactcenterinsightsV1ConversationTranscript({
    this.transcriptSegments,
  });

  GoogleCloudContactcenterinsightsV1ConversationTranscript.fromJson(
      core.Map json_)
      : this(
          transcriptSegments: (json_['transcriptSegments'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transcriptSegments != null)
          'transcriptSegments': transcriptSegments!,
      };
}

/// A segment of a full transcript.
class GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment {
  /// For conversations derived from multi-channel audio, this is the channel
  /// number corresponding to the audio from that channel.
  ///
  /// For audioChannelCount = N, its output values can range from '1' to 'N'. A
  /// channel tag of 0 indicates that the audio is mono.
  core.int? channelTag;

  /// A confidence estimate between 0.0 and 1.0 of the fidelity of this segment.
  ///
  /// A default value of 0.0 indicates that the value is unset.
  core.double? confidence;

  /// CCAI metadata relating to the current transcript segment.
  GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata?
      dialogflowSegmentMetadata;

  /// The language code of this segment as a
  /// \[BCP-47\](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag.
  ///
  /// Example: "en-US".
  core.String? languageCode;

  /// The time that the message occurred, if provided.
  core.String? messageTime;

  /// The participant of this segment.
  GoogleCloudContactcenterinsightsV1ConversationParticipant? segmentParticipant;

  /// The sentiment for this transcript segment.
  GoogleCloudContactcenterinsightsV1SentimentData? sentiment;

  /// The text of this segment.
  core.String? text;

  /// A list of the word-specific information for each word in the segment.
  core.List<
          GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo>?
      words;

  GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment({
    this.channelTag,
    this.confidence,
    this.dialogflowSegmentMetadata,
    this.languageCode,
    this.messageTime,
    this.segmentParticipant,
    this.sentiment,
    this.text,
    this.words,
  });

  GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment.fromJson(
      core.Map json_)
      : this(
          channelTag: json_['channelTag'] as core.int?,
          confidence: json_.containsKey('confidence')
              ? decodeDouble(json_['confidence'] as core.Object)
              : null,
          dialogflowSegmentMetadata: json_
                  .containsKey('dialogflowSegmentMetadata')
              ? GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata
                  .fromJson(json_['dialogflowSegmentMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          languageCode: json_['languageCode'] as core.String?,
          messageTime: json_['messageTime'] as core.String?,
          segmentParticipant: json_.containsKey('segmentParticipant')
              ? GoogleCloudContactcenterinsightsV1ConversationParticipant
                  .fromJson(json_['segmentParticipant']
                      as core.Map<core.String, core.dynamic>)
              : null,
          sentiment: json_.containsKey('sentiment')
              ? GoogleCloudContactcenterinsightsV1SentimentData.fromJson(
                  json_['sentiment'] as core.Map<core.String, core.dynamic>)
              : null,
          text: json_['text'] as core.String?,
          words: (json_['words'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelTag != null) 'channelTag': channelTag!,
        if (confidence != null) 'confidence': encodeDouble(confidence!),
        if (dialogflowSegmentMetadata != null)
          'dialogflowSegmentMetadata': dialogflowSegmentMetadata!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (messageTime != null) 'messageTime': messageTime!,
        if (segmentParticipant != null)
          'segmentParticipant': segmentParticipant!,
        if (sentiment != null) 'sentiment': sentiment!,
        if (text != null) 'text': text!,
        if (words != null) 'words': words!,
      };
}

/// Metadata from Dialogflow relating to the current transcript segment.
class GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata {
  /// Whether the transcript segment was covered under the configured smart
  /// reply allowlist in Agent Assist.
  core.bool? smartReplyAllowlistCovered;

  GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata({
    this.smartReplyAllowlistCovered,
  });

  GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata.fromJson(
      core.Map json_)
      : this(
          smartReplyAllowlistCovered:
              json_['smartReplyAllowlistCovered'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (smartReplyAllowlistCovered != null)
          'smartReplyAllowlistCovered': smartReplyAllowlistCovered!,
      };
}

/// Word-level info for words in a transcript.
class GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo {
  /// A confidence estimate between 0.0 and 1.0 of the fidelity of this word.
  ///
  /// A default value of 0.0 indicates that the value is unset.
  core.double? confidence;

  /// Time offset of the end of this word relative to the beginning of the total
  /// conversation.
  core.String? endOffset;

  /// Time offset of the start of this word relative to the beginning of the
  /// total conversation.
  core.String? startOffset;

  /// The word itself.
  ///
  /// Includes punctuation marks that surround the word.
  core.String? word;

  GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo({
    this.confidence,
    this.endOffset,
    this.startOffset,
    this.word,
  });

  GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo.fromJson(
      core.Map json_)
      : this(
          confidence: json_.containsKey('confidence')
              ? decodeDouble(json_['confidence'] as core.Object)
              : null,
          endOffset: json_['endOffset'] as core.String?,
          startOffset: json_['startOffset'] as core.String?,
          word: json_['word'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': encodeDouble(confidence!),
        if (endOffset != null) 'endOffset': endOffset!,
        if (startOffset != null) 'startOffset': startOffset!,
        if (word != null) 'word': word!,
      };
}

/// The request to deploy an issue model.
class GoogleCloudContactcenterinsightsV1DeployIssueModelRequest {
  /// The issue model to deploy.
  ///
  /// Required.
  core.String? name;

  GoogleCloudContactcenterinsightsV1DeployIssueModelRequest({
    this.name,
  });

  GoogleCloudContactcenterinsightsV1DeployIssueModelRequest.fromJson(
      core.Map json_)
      : this(
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// The request to deploy a QaScorecardRevision
typedef GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest
    = $Empty;

/// The data for a Dialogflow intent.
///
/// Represents a detected intent in the conversation, e.g. MAKES_PROMISE.
class GoogleCloudContactcenterinsightsV1DialogflowIntent {
  /// The human-readable name of the intent.
  core.String? displayName;

  GoogleCloudContactcenterinsightsV1DialogflowIntent({
    this.displayName,
  });

  GoogleCloudContactcenterinsightsV1DialogflowIntent.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
      };
}

/// Dialogflow interaction data.
class GoogleCloudContactcenterinsightsV1DialogflowInteractionData {
  /// The confidence of the match ranging from 0.0 (completely uncertain) to 1.0
  /// (completely certain).
  core.double? confidence;

  /// The Dialogflow intent resource path.
  ///
  /// Format: projects/{project}/agent/{agent}/intents/{intent}
  core.String? dialogflowIntentId;

  GoogleCloudContactcenterinsightsV1DialogflowInteractionData({
    this.confidence,
    this.dialogflowIntentId,
  });

  GoogleCloudContactcenterinsightsV1DialogflowInteractionData.fromJson(
      core.Map json_)
      : this(
          confidence: json_.containsKey('confidence')
              ? decodeDouble(json_['confidence'] as core.Object)
              : null,
          dialogflowIntentId: json_['dialogflowIntentId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': encodeDouble(confidence!),
        if (dialogflowIntentId != null)
          'dialogflowIntentId': dialogflowIntentId!,
      };
}

/// A Dialogflow source of conversation data.
class GoogleCloudContactcenterinsightsV1DialogflowSource {
  /// Cloud Storage URI that points to a file that contains the conversation
  /// audio.
  core.String? audioUri;

  /// The name of the Dialogflow conversation that this conversation resource is
  /// derived from.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/conversations/{conversation}
  ///
  /// Output only.
  core.String? dialogflowConversation;

  GoogleCloudContactcenterinsightsV1DialogflowSource({
    this.audioUri,
    this.dialogflowConversation,
  });

  GoogleCloudContactcenterinsightsV1DialogflowSource.fromJson(core.Map json_)
      : this(
          audioUri: json_['audioUri'] as core.String?,
          dialogflowConversation:
              json_['dialogflowConversation'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioUri != null) 'audioUri': audioUri!,
        if (dialogflowConversation != null)
          'dialogflowConversation': dialogflowConversation!,
      };
}

/// A dimension determines the grouping key for the query.
///
/// In SQL terms, these would be part of both the "SELECT" and "GROUP BY"
/// clauses.
class GoogleCloudContactcenterinsightsV1Dimension {
  /// Metadata about the agent dimension.
  ///
  /// Output only.
  GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata?
      agentDimensionMetadata;

  /// The key of the dimension.
  /// Possible string values are:
  /// - "DIMENSION_KEY_UNSPECIFIED" : The key of the dimension is unspecified.
  /// - "ISSUE" : The dimension is keyed by issues.
  /// - "ISSUE_NAME" : The dimension is keyed by issue names.
  /// - "AGENT" : The dimension is keyed by agents.
  /// - "AGENT_TEAM" : The dimension is keyed by agent teams.
  /// - "QA_QUESTION_ID" : The dimension is keyed by QaQuestionIds. Note that:
  /// We only group by the QuestionId and not the revision-id of the scorecard
  /// this question is a part of. This allows for showing stats for the same
  /// question across different scorecard revisions.
  /// - "QA_QUESTION_ANSWER_VALUE" : The dimension is keyed by
  /// QaQuestionIds-Answer value pairs. Note that: We only group by the
  /// QuestionId and not the revision-id of the scorecard this question is a
  /// part of. This allows for showing distribution of answers per question
  /// across different scorecard revisions.
  /// - "CONVERSATION_PROFILE_ID" : The dimension is keyed by the conversation
  /// profile ID.
  core.String? dimensionKey;

  /// Metadata about the issue dimension.
  ///
  /// Output only.
  GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata?
      issueDimensionMetadata;

  /// Metadata about the QA question-answer dimension.
  ///
  /// Output only.
  GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata?
      qaQuestionAnswerDimensionMetadata;

  /// Metadata about the QA question dimension.
  ///
  /// Output only.
  GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata?
      qaQuestionDimensionMetadata;

  GoogleCloudContactcenterinsightsV1Dimension({
    this.agentDimensionMetadata,
    this.dimensionKey,
    this.issueDimensionMetadata,
    this.qaQuestionAnswerDimensionMetadata,
    this.qaQuestionDimensionMetadata,
  });

  GoogleCloudContactcenterinsightsV1Dimension.fromJson(core.Map json_)
      : this(
          agentDimensionMetadata: json_.containsKey('agentDimensionMetadata')
              ? GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata
                  .fromJson(json_['agentDimensionMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dimensionKey: json_['dimensionKey'] as core.String?,
          issueDimensionMetadata: json_.containsKey('issueDimensionMetadata')
              ? GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata
                  .fromJson(json_['issueDimensionMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          qaQuestionAnswerDimensionMetadata: json_
                  .containsKey('qaQuestionAnswerDimensionMetadata')
              ? GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata
                  .fromJson(json_['qaQuestionAnswerDimensionMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          qaQuestionDimensionMetadata: json_
                  .containsKey('qaQuestionDimensionMetadata')
              ? GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata
                  .fromJson(json_['qaQuestionDimensionMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentDimensionMetadata != null)
          'agentDimensionMetadata': agentDimensionMetadata!,
        if (dimensionKey != null) 'dimensionKey': dimensionKey!,
        if (issueDimensionMetadata != null)
          'issueDimensionMetadata': issueDimensionMetadata!,
        if (qaQuestionAnswerDimensionMetadata != null)
          'qaQuestionAnswerDimensionMetadata':
              qaQuestionAnswerDimensionMetadata!,
        if (qaQuestionDimensionMetadata != null)
          'qaQuestionDimensionMetadata': qaQuestionDimensionMetadata!,
      };
}

/// Metadata about the agent dimension.
class GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata {
  /// The agent's name
  ///
  /// Optional.
  core.String? agentDisplayName;

  /// A user-specified string representing the agent.
  ///
  /// Optional.
  core.String? agentId;

  /// A user-specified string representing the agent's team.
  ///
  /// Optional.
  core.String? agentTeam;

  GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata({
    this.agentDisplayName,
    this.agentId,
    this.agentTeam,
  });

  GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata.fromJson(
      core.Map json_)
      : this(
          agentDisplayName: json_['agentDisplayName'] as core.String?,
          agentId: json_['agentId'] as core.String?,
          agentTeam: json_['agentTeam'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentDisplayName != null) 'agentDisplayName': agentDisplayName!,
        if (agentId != null) 'agentId': agentId!,
        if (agentTeam != null) 'agentTeam': agentTeam!,
      };
}

/// Metadata about the issue dimension.
class GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata {
  /// The issue display name.
  core.String? issueDisplayName;

  /// The issue ID.
  core.String? issueId;

  /// The parent issue model ID.
  core.String? issueModelId;

  GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata({
    this.issueDisplayName,
    this.issueId,
    this.issueModelId,
  });

  GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata.fromJson(
      core.Map json_)
      : this(
          issueDisplayName: json_['issueDisplayName'] as core.String?,
          issueId: json_['issueId'] as core.String?,
          issueModelId: json_['issueModelId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (issueDisplayName != null) 'issueDisplayName': issueDisplayName!,
        if (issueId != null) 'issueId': issueId!,
        if (issueModelId != null) 'issueModelId': issueModelId!,
      };
}

/// Metadata about the QA question-answer dimension.
///
/// This is useful for showing the answer distribution for questions for a given
/// scorecard.
class GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata {
  /// The full body of the question.
  ///
  /// Optional.
  core.String? answerValue;

  /// The QA question ID.
  ///
  /// Optional.
  core.String? qaQuestionId;

  /// The QA scorecard ID.
  ///
  /// Optional.
  core.String? qaScorecardId;

  /// The full body of the question.
  ///
  /// Optional.
  core.String? questionBody;

  GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata({
    this.answerValue,
    this.qaQuestionId,
    this.qaScorecardId,
    this.questionBody,
  });

  GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata.fromJson(
      core.Map json_)
      : this(
          answerValue: json_['answerValue'] as core.String?,
          qaQuestionId: json_['qaQuestionId'] as core.String?,
          qaScorecardId: json_['qaScorecardId'] as core.String?,
          questionBody: json_['questionBody'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answerValue != null) 'answerValue': answerValue!,
        if (qaQuestionId != null) 'qaQuestionId': qaQuestionId!,
        if (qaScorecardId != null) 'qaScorecardId': qaScorecardId!,
        if (questionBody != null) 'questionBody': questionBody!,
      };
}

/// Metadata about the QA question dimension.
class GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata {
  /// The QA question ID.
  ///
  /// Optional.
  core.String? qaQuestionId;

  /// The QA scorecard ID.
  ///
  /// Optional.
  core.String? qaScorecardId;

  /// The full body of the question.
  ///
  /// Optional.
  core.String? questionBody;

  GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata({
    this.qaQuestionId,
    this.qaScorecardId,
    this.questionBody,
  });

  GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata.fromJson(
      core.Map json_)
      : this(
          qaQuestionId: json_['qaQuestionId'] as core.String?,
          qaScorecardId: json_['qaScorecardId'] as core.String?,
          questionBody: json_['questionBody'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (qaQuestionId != null) 'qaQuestionId': qaQuestionId!,
        if (qaScorecardId != null) 'qaScorecardId': qaScorecardId!,
        if (questionBody != null) 'questionBody': questionBody!,
      };
}

/// A customer-managed encryption key specification that can be applied to all
/// created resources (e.g. `Conversation`).
class GoogleCloudContactcenterinsightsV1EncryptionSpec {
  /// The name of customer-managed encryption key that is used to secure a
  /// resource and its sub-resources.
  ///
  /// If empty, the resource is secured by our default encryption key. Only the
  /// key in the same location as this resource is allowed to be used for
  /// encryption. Format:
  /// `projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{key}`
  ///
  /// Required.
  core.String? kmsKey;

  /// The resource name of the encryption key specification resource.
  ///
  /// Format: projects/{project}/locations/{location}/encryptionSpec
  ///
  /// Immutable.
  core.String? name;

  GoogleCloudContactcenterinsightsV1EncryptionSpec({
    this.kmsKey,
    this.name,
  });

  GoogleCloudContactcenterinsightsV1EncryptionSpec.fromJson(core.Map json_)
      : this(
          kmsKey: json_['kmsKey'] as core.String?,
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kmsKey != null) 'kmsKey': kmsKey!,
        if (name != null) 'name': name!,
      };
}

/// The data for an entity annotation.
///
/// Represents a phrase in the conversation that is a known entity, such as a
/// person, an organization, or location.
class GoogleCloudContactcenterinsightsV1Entity {
  /// The representative name for the entity.
  core.String? displayName;

  /// Metadata associated with the entity.
  ///
  /// For most entity types, the metadata is a Wikipedia URL (`wikipedia_url`)
  /// and Knowledge Graph MID (`mid`), if they are available. For the metadata
  /// associated with other entity types, see the Type table below.
  core.Map<core.String, core.String>? metadata;

  /// The salience score associated with the entity in the \[0, 1.0\] range.
  ///
  /// The salience score for an entity provides information about the importance
  /// or centrality of that entity to the entire document text. Scores closer to
  /// 0 are less salient, while scores closer to 1.0 are highly salient.
  core.double? salience;

  /// The aggregate sentiment expressed for this entity in the conversation.
  GoogleCloudContactcenterinsightsV1SentimentData? sentiment;

  /// The entity type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified.
  /// - "PERSON" : Person.
  /// - "LOCATION" : Location.
  /// - "ORGANIZATION" : Organization.
  /// - "EVENT" : Event.
  /// - "WORK_OF_ART" : Artwork.
  /// - "CONSUMER_GOOD" : Consumer product.
  /// - "OTHER" : Other types of entities.
  /// - "PHONE_NUMBER" : Phone number. The metadata lists the phone number
  /// (formatted according to local convention), plus whichever additional
  /// elements appear in the text: * `number` - The actual number, broken down
  /// into sections according to local convention. * `national_prefix` - Country
  /// code, if detected. * `area_code` - Region or area code, if detected. *
  /// `extension` - Phone extension (to be dialed after connection), if
  /// detected.
  /// - "ADDRESS" : Address. The metadata identifies the street number and
  /// locality plus whichever additional elements appear in the text: *
  /// `street_number` - Street number. * `locality` - City or town. *
  /// `street_name` - Street/route name, if detected. * `postal_code` - Postal
  /// code, if detected. * `country` - Country, if detected. * `broad_region` -
  /// Administrative area, such as the state, if detected. * `narrow_region` -
  /// Smaller administrative area, such as county, if detected. * `sublocality`
  /// - Used in Asian addresses to demark a district within a city, if detected.
  /// - "DATE" : Date. The metadata identifies the components of the date: *
  /// `year` - Four digit year, if detected. * `month` - Two digit month number,
  /// if detected. * `day` - Two digit day number, if detected.
  /// - "NUMBER" : Number. The metadata is the number itself.
  /// - "PRICE" : Price. The metadata identifies the `value` and `currency`.
  core.String? type;

  GoogleCloudContactcenterinsightsV1Entity({
    this.displayName,
    this.metadata,
    this.salience,
    this.sentiment,
    this.type,
  });

  GoogleCloudContactcenterinsightsV1Entity.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          metadata:
              (json_['metadata'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          salience: json_.containsKey('salience')
              ? decodeDouble(json_['salience'] as core.Object)
              : null,
          sentiment: json_.containsKey('sentiment')
              ? GoogleCloudContactcenterinsightsV1SentimentData.fromJson(
                  json_['sentiment'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (metadata != null) 'metadata': metadata!,
        if (salience != null) 'salience': encodeDouble(salience!),
        if (sentiment != null) 'sentiment': sentiment!,
        if (type != null) 'type': type!,
      };
}

/// The data for an entity mention annotation.
///
/// This represents a mention of an `Entity` in the conversation.
class GoogleCloudContactcenterinsightsV1EntityMentionData {
  /// The key of this entity in conversation entities.
  ///
  /// Can be used to retrieve the exact `Entity` this mention is attached to.
  core.String? entityUniqueId;

  /// Sentiment expressed for this mention of the entity.
  GoogleCloudContactcenterinsightsV1SentimentData? sentiment;

  /// The type of the entity mention.
  /// Possible string values are:
  /// - "MENTION_TYPE_UNSPECIFIED" : Unspecified.
  /// - "PROPER" : Proper noun.
  /// - "COMMON" : Common noun (or noun compound).
  core.String? type;

  GoogleCloudContactcenterinsightsV1EntityMentionData({
    this.entityUniqueId,
    this.sentiment,
    this.type,
  });

  GoogleCloudContactcenterinsightsV1EntityMentionData.fromJson(core.Map json_)
      : this(
          entityUniqueId: json_['entityUniqueId'] as core.String?,
          sentiment: json_.containsKey('sentiment')
              ? GoogleCloudContactcenterinsightsV1SentimentData.fromJson(
                  json_['sentiment'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entityUniqueId != null) 'entityUniqueId': entityUniqueId!,
        if (sentiment != null) 'sentiment': sentiment!,
        if (type != null) 'type': type!,
      };
}

/// Exact match configuration.
class GoogleCloudContactcenterinsightsV1ExactMatchConfig {
  /// Whether to consider case sensitivity when performing an exact match.
  core.bool? caseSensitive;

  GoogleCloudContactcenterinsightsV1ExactMatchConfig({
    this.caseSensitive,
  });

  GoogleCloudContactcenterinsightsV1ExactMatchConfig.fromJson(core.Map json_)
      : this(
          caseSensitive: json_['caseSensitive'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caseSensitive != null) 'caseSensitive': caseSensitive!,
      };
}

/// The request to export insights.
class GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest {
  /// Specified if sink is a BigQuery table.
  GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination?
      bigQueryDestination;

  /// Version of the export schema.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EXPORT_SCHEMA_VERSION_UNSPECIFIED" : Unspecified. Defaults to
  /// EXPORT_V3.
  /// - "EXPORT_V1" : Export schema version 1.
  /// - "EXPORT_V2" : Export schema version 2.
  /// - "EXPORT_V3" : Export schema version 3.
  /// - "EXPORT_V4" : Export schema version 4.
  /// - "EXPORT_V5" : Export schema version 5.
  /// - "EXPORT_V6" : Export schema version 6.
  /// - "EXPORT_V7" : Export schema version 7.
  /// - "EXPORT_VERSION_LATEST_AVAILABLE" : Export schema version latest
  /// available.
  core.String? exportSchemaVersion;

  /// A filter to reduce results to a specific subset.
  ///
  /// Useful for exporting conversations with specific properties.
  core.String? filter;

  /// A fully qualified KMS key name for BigQuery tables protected by CMEK.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}/cryptoKeyVersions/{version}
  core.String? kmsKey;

  /// The parent resource to export data from.
  ///
  /// Required.
  core.String? parent;

  /// Options for what to do if the destination table already exists.
  /// Possible string values are:
  /// - "WRITE_DISPOSITION_UNSPECIFIED" : Write disposition is not specified.
  /// Defaults to WRITE_TRUNCATE.
  /// - "WRITE_TRUNCATE" : If the table already exists, BigQuery will overwrite
  /// the table data and use the schema from the load.
  /// - "WRITE_APPEND" : If the table already exists, BigQuery will append data
  /// to the table.
  core.String? writeDisposition;

  GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest({
    this.bigQueryDestination,
    this.exportSchemaVersion,
    this.filter,
    this.kmsKey,
    this.parent,
    this.writeDisposition,
  });

  GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest.fromJson(
      core.Map json_)
      : this(
          bigQueryDestination: json_.containsKey('bigQueryDestination')
              ? GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination
                  .fromJson(json_['bigQueryDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
          exportSchemaVersion: json_['exportSchemaVersion'] as core.String?,
          filter: json_['filter'] as core.String?,
          kmsKey: json_['kmsKey'] as core.String?,
          parent: json_['parent'] as core.String?,
          writeDisposition: json_['writeDisposition'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigQueryDestination != null)
          'bigQueryDestination': bigQueryDestination!,
        if (exportSchemaVersion != null)
          'exportSchemaVersion': exportSchemaVersion!,
        if (filter != null) 'filter': filter!,
        if (kmsKey != null) 'kmsKey': kmsKey!,
        if (parent != null) 'parent': parent!,
        if (writeDisposition != null) 'writeDisposition': writeDisposition!,
      };
}

/// A BigQuery Table Reference.
class GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination {
  /// The name of the BigQuery dataset that the snapshot result should be
  /// exported to.
  ///
  /// If this dataset does not exist, the export call returns an
  /// INVALID_ARGUMENT error.
  ///
  /// Required.
  core.String? dataset;

  /// A project ID or number.
  ///
  /// If specified, then export will attempt to write data to this project
  /// instead of the resource project. Otherwise, the resource project will be
  /// used.
  core.String? projectId;

  /// The BigQuery table name to which the insights data should be written.
  ///
  /// If this table does not exist, the export call returns an INVALID_ARGUMENT
  /// error.
  core.String? table;

  GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination({
    this.dataset,
    this.projectId,
    this.table,
  });

  GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination.fromJson(
      core.Map json_)
      : this(
          dataset: json_['dataset'] as core.String?,
          projectId: json_['projectId'] as core.String?,
          table: json_['table'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataset != null) 'dataset': dataset!,
        if (projectId != null) 'projectId': projectId!,
        if (table != null) 'table': table!,
      };
}

/// Request to export an issue model.
class GoogleCloudContactcenterinsightsV1ExportIssueModelRequest {
  /// Google Cloud Storage URI to export the issue model to.
  GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination?
      gcsDestination;

  /// The issue model to export.
  ///
  /// Required.
  core.String? name;

  GoogleCloudContactcenterinsightsV1ExportIssueModelRequest({
    this.gcsDestination,
    this.name,
  });

  GoogleCloudContactcenterinsightsV1ExportIssueModelRequest.fromJson(
      core.Map json_)
      : this(
          gcsDestination: json_.containsKey('gcsDestination')
              ? GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination
                  .fromJson(json_['gcsDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsDestination != null) 'gcsDestination': gcsDestination!,
        if (name != null) 'name': name!,
      };
}

/// Google Cloud Storage Object URI to save the issue model to.
typedef GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination
    = $Shared10;

/// Agent Assist frequently-asked-question answer data.
class GoogleCloudContactcenterinsightsV1FaqAnswerData {
  /// The piece of text from the `source` knowledge base document.
  core.String? answer;

  /// The system's confidence score that this answer is a good match for this
  /// conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely
  /// certain).
  core.double? confidenceScore;

  /// Map that contains metadata about the FAQ answer and the document that it
  /// originates from.
  core.Map<core.String, core.String>? metadata;

  /// The name of the answer record.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/answerRecords/{answer_record}
  core.String? queryRecord;

  /// The corresponding FAQ question.
  core.String? question;

  /// The knowledge document that this answer was extracted from.
  ///
  /// Format:
  /// projects/{project}/knowledgeBases/{knowledge_base}/documents/{document}.
  core.String? source;

  GoogleCloudContactcenterinsightsV1FaqAnswerData({
    this.answer,
    this.confidenceScore,
    this.metadata,
    this.queryRecord,
    this.question,
    this.source,
  });

  GoogleCloudContactcenterinsightsV1FaqAnswerData.fromJson(core.Map json_)
      : this(
          answer: json_['answer'] as core.String?,
          confidenceScore: json_.containsKey('confidenceScore')
              ? decodeDouble(json_['confidenceScore'] as core.Object)
              : null,
          metadata:
              (json_['metadata'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          queryRecord: json_['queryRecord'] as core.String?,
          question: json_['question'] as core.String?,
          source: json_['source'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answer != null) 'answer': answer!,
        if (confidenceScore != null)
          'confidenceScore': encodeDouble(confidenceScore!),
        if (metadata != null) 'metadata': metadata!,
        if (queryRecord != null) 'queryRecord': queryRecord!,
        if (question != null) 'question': question!,
        if (source != null) 'source': source!,
      };
}

/// Represents a conversation, resource, and label provided by the user.
///
/// Can take the form of a string label or a QaAnswer label. QaAnswer labels are
/// used for Quality AI example conversations. String labels are used for Topic
/// Modeling.
class GoogleCloudContactcenterinsightsV1FeedbackLabel {
  /// Create time of the label.
  ///
  /// Output only.
  core.String? createTime;

  /// String label used for Topic Modeling.
  core.String? label;

  /// Resource name of the resource to be labeled.
  ///
  /// Supported resources: -
  /// qaScorecards/{scorecard}/revisions/{revision}/qaQuestions/{question} -
  /// issueModels/{issue_model}
  core.String? labeledResource;

  /// Resource name of the FeedbackLabel.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/conversations/{conversation}/feedbackLabels/{feedback_label}
  ///
  /// Immutable.
  core.String? name;

  /// QaAnswer label used for Quality AI example conversations.
  GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue? qaAnswerLabel;

  /// Update time of the label.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudContactcenterinsightsV1FeedbackLabel({
    this.createTime,
    this.label,
    this.labeledResource,
    this.name,
    this.qaAnswerLabel,
    this.updateTime,
  });

  GoogleCloudContactcenterinsightsV1FeedbackLabel.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          label: json_['label'] as core.String?,
          labeledResource: json_['labeledResource'] as core.String?,
          name: json_['name'] as core.String?,
          qaAnswerLabel: json_.containsKey('qaAnswerLabel')
              ? GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue.fromJson(
                  json_['qaAnswerLabel'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (label != null) 'label': label!,
        if (labeledResource != null) 'labeledResource': labeledResource!,
        if (name != null) 'name': name!,
        if (qaAnswerLabel != null) 'qaAnswerLabel': qaAnswerLabel!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A Cloud Storage source of conversation data.
class GoogleCloudContactcenterinsightsV1GcsSource {
  /// Cloud Storage URI that points to a file that contains the conversation
  /// audio.
  core.String? audioUri;

  /// Cloud Storage URI that points to a file that contains the conversation
  /// transcript.
  ///
  /// Immutable.
  core.String? transcriptUri;

  GoogleCloudContactcenterinsightsV1GcsSource({
    this.audioUri,
    this.transcriptUri,
  });

  GoogleCloudContactcenterinsightsV1GcsSource.fromJson(core.Map json_)
      : this(
          audioUri: json_['audioUri'] as core.String?,
          transcriptUri: json_['transcriptUri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioUri != null) 'audioUri': audioUri!,
        if (transcriptUri != null) 'transcriptUri': transcriptUri!,
      };
}

/// The data for a hold annotation.
typedef GoogleCloudContactcenterinsightsV1HoldData = $Empty;

/// Request to import an issue model.
class GoogleCloudContactcenterinsightsV1ImportIssueModelRequest {
  /// If set to true, will create an issue model from the imported file with
  /// randomly generated IDs for the issue model and corresponding issues.
  ///
  /// Otherwise, replaces an existing model with the same ID as the file.
  ///
  /// Optional.
  core.bool? createNewModel;

  /// Google Cloud Storage source message.
  GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource? gcsSource;

  /// The parent resource of the issue model.
  ///
  /// Required.
  core.String? parent;

  GoogleCloudContactcenterinsightsV1ImportIssueModelRequest({
    this.createNewModel,
    this.gcsSource,
    this.parent,
  });

  GoogleCloudContactcenterinsightsV1ImportIssueModelRequest.fromJson(
      core.Map json_)
      : this(
          createNewModel: json_['createNewModel'] as core.bool?,
          gcsSource: json_.containsKey('gcsSource')
              ? GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource
                  .fromJson(
                      json_['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
          parent: json_['parent'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createNewModel != null) 'createNewModel': createNewModel!,
        if (gcsSource != null) 'gcsSource': gcsSource!,
        if (parent != null) 'parent': parent!,
      };
}

/// Google Cloud Storage Object URI to get the issue model file from.
typedef GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource
    = $Shared10;

/// The request to ingest conversations.
class GoogleCloudContactcenterinsightsV1IngestConversationsRequest {
  /// Configuration that applies to all conversations.
  GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig?
      conversationConfig;

  /// A cloud storage bucket source.
  ///
  /// Note that any previously ingested objects from the source will be skipped
  /// to avoid duplication.
  GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource?
      gcsSource;

  /// The parent resource for new conversations.
  ///
  /// Required.
  core.String? parent;

  /// DLP settings for transcript redaction.
  ///
  /// Optional, will default to the config specified in Settings.
  ///
  /// Optional.
  GoogleCloudContactcenterinsightsV1RedactionConfig? redactionConfig;

  /// If set, this fields indicates the number of objects to ingest from the
  /// Cloud Storage bucket.
  ///
  /// If empty, the entire bucket will be ingested. Unless they are first
  /// deleted, conversations produced through sampling won't be ingested by
  /// subsequent ingest requests.
  ///
  /// Optional.
  core.int? sampleSize;

  /// Default Speech-to-Text configuration.
  ///
  /// Optional, will default to the config specified in Settings.
  ///
  /// Optional.
  GoogleCloudContactcenterinsightsV1SpeechConfig? speechConfig;

  /// Configuration for when `source` contains conversation transcripts.
  GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig?
      transcriptObjectConfig;

  GoogleCloudContactcenterinsightsV1IngestConversationsRequest({
    this.conversationConfig,
    this.gcsSource,
    this.parent,
    this.redactionConfig,
    this.sampleSize,
    this.speechConfig,
    this.transcriptObjectConfig,
  });

  GoogleCloudContactcenterinsightsV1IngestConversationsRequest.fromJson(
      core.Map json_)
      : this(
          conversationConfig: json_.containsKey('conversationConfig')
              ? GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig
                  .fromJson(json_['conversationConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gcsSource: json_.containsKey('gcsSource')
              ? GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource
                  .fromJson(
                      json_['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
          parent: json_['parent'] as core.String?,
          redactionConfig: json_.containsKey('redactionConfig')
              ? GoogleCloudContactcenterinsightsV1RedactionConfig.fromJson(
                  json_['redactionConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          sampleSize: json_['sampleSize'] as core.int?,
          speechConfig: json_.containsKey('speechConfig')
              ? GoogleCloudContactcenterinsightsV1SpeechConfig.fromJson(
                  json_['speechConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          transcriptObjectConfig: json_.containsKey('transcriptObjectConfig')
              ? GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig
                  .fromJson(json_['transcriptObjectConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversationConfig != null)
          'conversationConfig': conversationConfig!,
        if (gcsSource != null) 'gcsSource': gcsSource!,
        if (parent != null) 'parent': parent!,
        if (redactionConfig != null) 'redactionConfig': redactionConfig!,
        if (sampleSize != null) 'sampleSize': sampleSize!,
        if (speechConfig != null) 'speechConfig': speechConfig!,
        if (transcriptObjectConfig != null)
          'transcriptObjectConfig': transcriptObjectConfig!,
      };
}

/// Configuration that applies to all conversations.
class GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig {
  /// Indicates which of the channels, 1 or 2, contains the agent.
  ///
  /// Note that this must be set for conversations to be properly displayed and
  /// analyzed.
  ///
  /// Optional.
  core.int? agentChannel;

  /// An opaque, user-specified string representing a human agent who handled
  /// all conversations in the import.
  ///
  /// Note that this will be overridden if per-conversation metadata is provided
  /// through the `metadata_bucket_uri`.
  ///
  /// Optional.
  core.String? agentId;

  /// Indicates which of the channels, 1 or 2, contains the agent.
  ///
  /// Note that this must be set for conversations to be properly displayed and
  /// analyzed.
  ///
  /// Optional.
  core.int? customerChannel;

  GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig({
    this.agentChannel,
    this.agentId,
    this.customerChannel,
  });

  GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig.fromJson(
      core.Map json_)
      : this(
          agentChannel: json_['agentChannel'] as core.int?,
          agentId: json_['agentId'] as core.String?,
          customerChannel: json_['customerChannel'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentChannel != null) 'agentChannel': agentChannel!,
        if (agentId != null) 'agentId': agentId!,
        if (customerChannel != null) 'customerChannel': customerChannel!,
      };
}

/// Configuration for Cloud Storage bucket sources.
class GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource {
  /// Specifies the type of the objects in `bucket_uri`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "BUCKET_OBJECT_TYPE_UNSPECIFIED" : The object type is unspecified and
  /// will default to `TRANSCRIPT`.
  /// - "TRANSCRIPT" : The object is a transcript.
  /// - "AUDIO" : The object is an audio file.
  core.String? bucketObjectType;

  /// The Cloud Storage bucket containing source objects.
  ///
  /// Required.
  core.String? bucketUri;

  /// Custom keys to extract as conversation labels from metadata files in
  /// `metadata_bucket_uri`.
  ///
  /// Keys not included in this field will be ignored. Note that there is a
  /// limit of 100 labels per conversation.
  ///
  /// Optional.
  core.List<core.String>? customMetadataKeys;

  /// The Cloud Storage path to the conversation metadata.
  ///
  /// Note that: \[1\] Metadata files are expected to be in JSON format. \[2\]
  /// Metadata and source files (transcripts or audio) must be in separate
  /// buckets. \[3\] A source file and its corresponding metadata file must
  /// share the same name to be properly ingested, E.g.
  /// `gs://bucket/audio/conversation1.mp3` and
  /// `gs://bucket/metadata/conversation1.json`.
  ///
  /// Optional.
  core.String? metadataBucketUri;

  GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource({
    this.bucketObjectType,
    this.bucketUri,
    this.customMetadataKeys,
    this.metadataBucketUri,
  });

  GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource.fromJson(
      core.Map json_)
      : this(
          bucketObjectType: json_['bucketObjectType'] as core.String?,
          bucketUri: json_['bucketUri'] as core.String?,
          customMetadataKeys: (json_['customMetadataKeys'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          metadataBucketUri: json_['metadataBucketUri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketObjectType != null) 'bucketObjectType': bucketObjectType!,
        if (bucketUri != null) 'bucketUri': bucketUri!,
        if (customMetadataKeys != null)
          'customMetadataKeys': customMetadataKeys!,
        if (metadataBucketUri != null) 'metadataBucketUri': metadataBucketUri!,
      };
}

/// Configuration for processing transcript objects.
class GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig {
  /// The medium transcript objects represent.
  ///
  /// Required.
  /// Possible string values are:
  /// - "MEDIUM_UNSPECIFIED" : Default value, if unspecified will default to
  /// PHONE_CALL.
  /// - "PHONE_CALL" : The format for conversations that took place over the
  /// phone.
  /// - "CHAT" : The format for conversations that took place over chat.
  core.String? medium;

  GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig({
    this.medium,
  });

  GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig.fromJson(
      core.Map json_)
      : this(
          medium: json_['medium'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (medium != null) 'medium': medium!,
      };
}

/// The request to initialize a location-level encryption specification.
class GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest {
  /// The encryption spec used for CMEK encryption.
  ///
  /// It is required that the kms key is in the same region as the endpoint. The
  /// same key will be used for all provisioned resources, if encryption is
  /// available. If the `kms_key_name` field is left empty, no encryption will
  /// be enforced.
  ///
  /// Required.
  GoogleCloudContactcenterinsightsV1EncryptionSpec? encryptionSpec;

  GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest({
    this.encryptionSpec,
  });

  GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest.fromJson(
      core.Map json_)
      : this(
          encryptionSpec: json_.containsKey('encryptionSpec')
              ? GoogleCloudContactcenterinsightsV1EncryptionSpec.fromJson(
                  json_['encryptionSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encryptionSpec != null) 'encryptionSpec': encryptionSpec!,
      };
}

/// The data for an intent.
///
/// Represents a detected intent in the conversation, for example MAKES_PROMISE.
class GoogleCloudContactcenterinsightsV1Intent {
  /// The human-readable name of the intent.
  core.String? displayName;

  /// The unique identifier of the intent.
  core.String? id;

  GoogleCloudContactcenterinsightsV1Intent({
    this.displayName,
    this.id,
  });

  GoogleCloudContactcenterinsightsV1Intent.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          id: json_['id'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (id != null) 'id': id!,
      };
}

/// The data for an intent match.
///
/// Represents an intent match for a text segment in the conversation. A text
/// segment can be part of a sentence, a complete sentence, or an utterance with
/// multiple sentences.
class GoogleCloudContactcenterinsightsV1IntentMatchData {
  /// The id of the matched intent.
  ///
  /// Can be used to retrieve the corresponding intent information.
  core.String? intentUniqueId;

  GoogleCloudContactcenterinsightsV1IntentMatchData({
    this.intentUniqueId,
  });

  GoogleCloudContactcenterinsightsV1IntentMatchData.fromJson(core.Map json_)
      : this(
          intentUniqueId: json_['intentUniqueId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (intentUniqueId != null) 'intentUniqueId': intentUniqueId!,
      };
}

/// The data for an interruption annotation.
typedef GoogleCloudContactcenterinsightsV1InterruptionData = $Empty;

/// The issue resource.
class GoogleCloudContactcenterinsightsV1Issue {
  /// The time at which this issue was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Representative description of the issue.
  core.String? displayDescription;

  /// The representative name for the issue.
  core.String? displayName;

  /// The resource name of the issue.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/issueModels/{issue_model}/issues/{issue}
  ///
  /// Immutable.
  core.String? name;

  /// Resource names of the sample representative utterances that match to this
  /// issue.
  ///
  /// Output only.
  core.List<core.String>? sampleUtterances;

  /// The most recent time that this issue was updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudContactcenterinsightsV1Issue({
    this.createTime,
    this.displayDescription,
    this.displayName,
    this.name,
    this.sampleUtterances,
    this.updateTime,
  });

  GoogleCloudContactcenterinsightsV1Issue.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          displayDescription: json_['displayDescription'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          name: json_['name'] as core.String?,
          sampleUtterances: (json_['sampleUtterances'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayDescription != null)
          'displayDescription': displayDescription!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (sampleUtterances != null) 'sampleUtterances': sampleUtterances!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Information about the issue.
class GoogleCloudContactcenterinsightsV1IssueAssignment {
  /// Display name of the assigned issue.
  ///
  /// This field is set at time of analysis and immutable since then.
  ///
  /// Immutable.
  core.String? displayName;

  /// Resource name of the assigned issue.
  core.String? issue;

  /// Score indicating the likelihood of the issue assignment.
  ///
  /// currently bounded on \[0,1\].
  core.double? score;

  GoogleCloudContactcenterinsightsV1IssueAssignment({
    this.displayName,
    this.issue,
    this.score,
  });

  GoogleCloudContactcenterinsightsV1IssueAssignment.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          issue: json_['issue'] as core.String?,
          score: json_.containsKey('score')
              ? decodeDouble(json_['score'] as core.Object)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (issue != null) 'issue': issue!,
        if (score != null) 'score': encodeDouble(score!),
      };
}

/// The data for an issue match annotation.
class GoogleCloudContactcenterinsightsV1IssueMatchData {
  /// Information about the issue's assignment.
  GoogleCloudContactcenterinsightsV1IssueAssignment? issueAssignment;

  GoogleCloudContactcenterinsightsV1IssueMatchData({
    this.issueAssignment,
  });

  GoogleCloudContactcenterinsightsV1IssueMatchData.fromJson(core.Map json_)
      : this(
          issueAssignment: json_.containsKey('issueAssignment')
              ? GoogleCloudContactcenterinsightsV1IssueAssignment.fromJson(
                  json_['issueAssignment']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (issueAssignment != null) 'issueAssignment': issueAssignment!,
      };
}

/// The issue model resource.
class GoogleCloudContactcenterinsightsV1IssueModel {
  /// The time at which this issue model was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The representative name for the issue model.
  core.String? displayName;

  /// Configs for the input data that used to create the issue model.
  GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig? inputDataConfig;

  /// Number of issues in this issue model.
  ///
  /// Output only.
  core.String? issueCount;

  /// Language of the model.
  core.String? languageCode;

  /// Type of the model.
  /// Possible string values are:
  /// - "MODEL_TYPE_UNSPECIFIED" : Unspecified model type.
  /// - "TYPE_V1" : Type V1.
  /// - "TYPE_V2" : Type V2.
  core.String? modelType;

  /// The resource name of the issue model.
  ///
  /// Format: projects/{project}/locations/{location}/issueModels/{issue_model}
  ///
  /// Immutable.
  core.String? name;

  /// State of the model.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified.
  /// - "UNDEPLOYED" : Model is not deployed but is ready to deploy.
  /// - "DEPLOYING" : Model is being deployed.
  /// - "DEPLOYED" : Model is deployed and is ready to be used. A model can only
  /// be used in analysis if it's in this state.
  /// - "UNDEPLOYING" : Model is being undeployed.
  /// - "DELETING" : Model is being deleted.
  core.String? state;

  /// The issue model's label statistics on its training data.
  ///
  /// Output only. Immutable.
  GoogleCloudContactcenterinsightsV1IssueModelLabelStats? trainingStats;

  /// The most recent time at which the issue model was updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudContactcenterinsightsV1IssueModel({
    this.createTime,
    this.displayName,
    this.inputDataConfig,
    this.issueCount,
    this.languageCode,
    this.modelType,
    this.name,
    this.state,
    this.trainingStats,
    this.updateTime,
  });

  GoogleCloudContactcenterinsightsV1IssueModel.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          inputDataConfig: json_.containsKey('inputDataConfig')
              ? GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig
                  .fromJson(json_['inputDataConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          issueCount: json_['issueCount'] as core.String?,
          languageCode: json_['languageCode'] as core.String?,
          modelType: json_['modelType'] as core.String?,
          name: json_['name'] as core.String?,
          state: json_['state'] as core.String?,
          trainingStats: json_.containsKey('trainingStats')
              ? GoogleCloudContactcenterinsightsV1IssueModelLabelStats.fromJson(
                  json_['trainingStats'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (inputDataConfig != null) 'inputDataConfig': inputDataConfig!,
        if (issueCount != null) 'issueCount': issueCount!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (modelType != null) 'modelType': modelType!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (trainingStats != null) 'trainingStats': trainingStats!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Configs for the input data used to create the issue model.
class GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig {
  /// A filter to reduce the conversations used for training the model to a
  /// specific subset.
  ///
  /// Refer to https://cloud.google.com/contact-center/insights/docs/filtering
  /// for details.
  core.String? filter;

  /// Medium of conversations used in training data.
  ///
  /// This field is being deprecated. To specify the medium to be used in
  /// training a new issue model, set the `medium` field on `filter`.
  /// Possible string values are:
  /// - "MEDIUM_UNSPECIFIED" : Default value, if unspecified will default to
  /// PHONE_CALL.
  /// - "PHONE_CALL" : The format for conversations that took place over the
  /// phone.
  /// - "CHAT" : The format for conversations that took place over chat.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? medium;

  /// Number of conversations used in training.
  ///
  /// Output only.
  ///
  /// Output only.
  core.String? trainingConversationsCount;

  GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig({
    this.filter,
    this.medium,
    this.trainingConversationsCount,
  });

  GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig.fromJson(
      core.Map json_)
      : this(
          filter: json_['filter'] as core.String?,
          medium: json_['medium'] as core.String?,
          trainingConversationsCount:
              json_['trainingConversationsCount'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filter != null) 'filter': filter!,
        if (medium != null) 'medium': medium!,
        if (trainingConversationsCount != null)
          'trainingConversationsCount': trainingConversationsCount!,
      };
}

/// Aggregated statistics about an issue model.
class GoogleCloudContactcenterinsightsV1IssueModelLabelStats {
  /// Number of conversations the issue model has analyzed at this point in
  /// time.
  core.String? analyzedConversationsCount;

  /// Statistics on each issue.
  ///
  /// Key is the issue's resource name.
  core.Map<core.String,
          GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats>?
      issueStats;

  /// Number of analyzed conversations for which no issue was applicable at this
  /// point in time.
  core.String? unclassifiedConversationsCount;

  GoogleCloudContactcenterinsightsV1IssueModelLabelStats({
    this.analyzedConversationsCount,
    this.issueStats,
    this.unclassifiedConversationsCount,
  });

  GoogleCloudContactcenterinsightsV1IssueModelLabelStats.fromJson(
      core.Map json_)
      : this(
          analyzedConversationsCount:
              json_['analyzedConversationsCount'] as core.String?,
          issueStats:
              (json_['issueStats'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats
                  .fromJson(value as core.Map<core.String, core.dynamic>),
            ),
          ),
          unclassifiedConversationsCount:
              json_['unclassifiedConversationsCount'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analyzedConversationsCount != null)
          'analyzedConversationsCount': analyzedConversationsCount!,
        if (issueStats != null) 'issueStats': issueStats!,
        if (unclassifiedConversationsCount != null)
          'unclassifiedConversationsCount': unclassifiedConversationsCount!,
      };
}

/// Aggregated statistics about an issue.
class GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats {
  /// Display name of the issue.
  core.String? displayName;

  /// Issue resource.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/issueModels/{issue_model}/issues/{issue}
  core.String? issue;

  /// Number of conversations attached to the issue at this point in time.
  core.String? labeledConversationsCount;

  GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats({
    this.displayName,
    this.issue,
    this.labeledConversationsCount,
  });

  GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats.fromJson(
      core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          issue: json_['issue'] as core.String?,
          labeledConversationsCount:
              json_['labeledConversationsCount'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (issue != null) 'issue': issue!,
        if (labeledConversationsCount != null)
          'labeledConversationsCount': labeledConversationsCount!,
      };
}

/// Issue Modeling result on a conversation.
class GoogleCloudContactcenterinsightsV1IssueModelResult {
  /// Issue model that generates the result.
  ///
  /// Format: projects/{project}/locations/{location}/issueModels/{issue_model}
  core.String? issueModel;

  /// All the matched issues.
  core.List<GoogleCloudContactcenterinsightsV1IssueAssignment>? issues;

  GoogleCloudContactcenterinsightsV1IssueModelResult({
    this.issueModel,
    this.issues,
  });

  GoogleCloudContactcenterinsightsV1IssueModelResult.fromJson(core.Map json_)
      : this(
          issueModel: json_['issueModel'] as core.String?,
          issues: (json_['issues'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1IssueAssignment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (issueModel != null) 'issueModel': issueModel!,
        if (issues != null) 'issues': issues!,
      };
}

/// The response for listing all feedback labels.
class GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse {
  /// The feedback labels that match the request.
  core.List<GoogleCloudContactcenterinsightsV1FeedbackLabel>? feedbackLabels;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse({
    this.feedbackLabels,
    this.nextPageToken,
  });

  GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse.fromJson(
      core.Map json_)
      : this(
          feedbackLabels: (json_['feedbackLabels'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1FeedbackLabel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (feedbackLabels != null) 'feedbackLabels': feedbackLabels!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response to list analyses.
class GoogleCloudContactcenterinsightsV1ListAnalysesResponse {
  /// The analyses that match the request.
  core.List<GoogleCloudContactcenterinsightsV1Analysis>? analyses;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudContactcenterinsightsV1ListAnalysesResponse({
    this.analyses,
    this.nextPageToken,
  });

  GoogleCloudContactcenterinsightsV1ListAnalysesResponse.fromJson(
      core.Map json_)
      : this(
          analyses: (json_['analyses'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1Analysis.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analyses != null) 'analyses': analyses!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response of listing views.
class GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse {
  /// The analysis_rule that match the request.
  core.List<GoogleCloudContactcenterinsightsV1AnalysisRule>? analysisRules;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse({
    this.analysisRules,
    this.nextPageToken,
  });

  GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse.fromJson(
      core.Map json_)
      : this(
          analysisRules: (json_['analysisRules'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1AnalysisRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysisRules != null) 'analysisRules': analysisRules!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response of listing conversations.
class GoogleCloudContactcenterinsightsV1ListConversationsResponse {
  /// The conversations that match the request.
  core.List<GoogleCloudContactcenterinsightsV1Conversation>? conversations;

  /// A token which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is set, it means there is another page available. If it is
  /// not set, it means no other pages are available.
  core.String? nextPageToken;

  GoogleCloudContactcenterinsightsV1ListConversationsResponse({
    this.conversations,
    this.nextPageToken,
  });

  GoogleCloudContactcenterinsightsV1ListConversationsResponse.fromJson(
      core.Map json_)
      : this(
          conversations: (json_['conversations'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1Conversation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversations != null) 'conversations': conversations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response for listing feedback labels.
class GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse {
  /// The feedback labels that match the request.
  core.List<GoogleCloudContactcenterinsightsV1FeedbackLabel>? feedbackLabels;

  /// The next page token.
  core.String? nextPageToken;

  GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse({
    this.feedbackLabels,
    this.nextPageToken,
  });

  GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse.fromJson(
      core.Map json_)
      : this(
          feedbackLabels: (json_['feedbackLabels'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1FeedbackLabel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (feedbackLabels != null) 'feedbackLabels': feedbackLabels!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response of listing issue models.
class GoogleCloudContactcenterinsightsV1ListIssueModelsResponse {
  /// The issue models that match the request.
  core.List<GoogleCloudContactcenterinsightsV1IssueModel>? issueModels;

  GoogleCloudContactcenterinsightsV1ListIssueModelsResponse({
    this.issueModels,
  });

  GoogleCloudContactcenterinsightsV1ListIssueModelsResponse.fromJson(
      core.Map json_)
      : this(
          issueModels: (json_['issueModels'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1IssueModel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (issueModels != null) 'issueModels': issueModels!,
      };
}

/// The response of listing issues.
class GoogleCloudContactcenterinsightsV1ListIssuesResponse {
  /// The issues that match the request.
  core.List<GoogleCloudContactcenterinsightsV1Issue>? issues;

  GoogleCloudContactcenterinsightsV1ListIssuesResponse({
    this.issues,
  });

  GoogleCloudContactcenterinsightsV1ListIssuesResponse.fromJson(core.Map json_)
      : this(
          issues: (json_['issues'] as core.List?)
              ?.map((value) => GoogleCloudContactcenterinsightsV1Issue.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (issues != null) 'issues': issues!,
      };
}

/// The response of listing phrase matchers.
class GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The phrase matchers that match the request.
  core.List<GoogleCloudContactcenterinsightsV1PhraseMatcher>? phraseMatchers;

  GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse({
    this.nextPageToken,
    this.phraseMatchers,
  });

  GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse.fromJson(
      core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          phraseMatchers: (json_['phraseMatchers'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1PhraseMatcher.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (phraseMatchers != null) 'phraseMatchers': phraseMatchers!,
      };
}

/// The response from a ListQaQuestions request.
class GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The QaQuestions under the parent.
  core.List<GoogleCloudContactcenterinsightsV1QaQuestion>? qaQuestions;

  GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse({
    this.nextPageToken,
    this.qaQuestions,
  });

  GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse.fromJson(
      core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          qaQuestions: (json_['qaQuestions'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1QaQuestion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (qaQuestions != null) 'qaQuestions': qaQuestions!,
      };
}

/// The response from a ListQaScorecardRevisions request.
class GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The QaScorecards under the parent.
  core.List<GoogleCloudContactcenterinsightsV1QaScorecardRevision>?
      qaScorecardRevisions;

  GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse({
    this.nextPageToken,
    this.qaScorecardRevisions,
  });

  GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse.fromJson(
      core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          qaScorecardRevisions: (json_['qaScorecardRevisions'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1QaScorecardRevision
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (qaScorecardRevisions != null)
          'qaScorecardRevisions': qaScorecardRevisions!,
      };
}

/// The response from a ListQaScorecards request.
class GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The QaScorecards under the parent.
  core.List<GoogleCloudContactcenterinsightsV1QaScorecard>? qaScorecards;

  GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse({
    this.nextPageToken,
    this.qaScorecards,
  });

  GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse.fromJson(
      core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          qaScorecards: (json_['qaScorecards'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1QaScorecard.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (qaScorecards != null) 'qaScorecards': qaScorecards!,
      };
}

/// The response of listing views.
class GoogleCloudContactcenterinsightsV1ListViewsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The views that match the request.
  core.List<GoogleCloudContactcenterinsightsV1View>? views;

  GoogleCloudContactcenterinsightsV1ListViewsResponse({
    this.nextPageToken,
    this.views,
  });

  GoogleCloudContactcenterinsightsV1ListViewsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          views: (json_['views'] as core.List?)
              ?.map((value) => GoogleCloudContactcenterinsightsV1View.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (views != null) 'views': views!,
      };
}

/// The data for a matched phrase matcher.
///
/// Represents information identifying a phrase matcher for a given match.
class GoogleCloudContactcenterinsightsV1PhraseMatchData {
  /// The human-readable name of the phrase matcher.
  core.String? displayName;

  /// The unique identifier (the resource name) of the phrase matcher.
  core.String? phraseMatcher;

  GoogleCloudContactcenterinsightsV1PhraseMatchData({
    this.displayName,
    this.phraseMatcher,
  });

  GoogleCloudContactcenterinsightsV1PhraseMatchData.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          phraseMatcher: json_['phraseMatcher'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (phraseMatcher != null) 'phraseMatcher': phraseMatcher!,
      };
}

/// The data for a phrase match rule.
class GoogleCloudContactcenterinsightsV1PhraseMatchRule {
  /// Provides additional information about the rule that specifies how to apply
  /// the rule.
  GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig? config;

  /// Specifies whether the phrase must be missing from the transcript segment
  /// or present in the transcript segment.
  core.bool? negated;

  /// The phrase to be matched.
  ///
  /// Required.
  core.String? query;

  GoogleCloudContactcenterinsightsV1PhraseMatchRule({
    this.config,
    this.negated,
    this.query,
  });

  GoogleCloudContactcenterinsightsV1PhraseMatchRule.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig
                  .fromJson(
                      json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          negated: json_['negated'] as core.bool?,
          query: json_['query'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (negated != null) 'negated': negated!,
        if (query != null) 'query': query!,
      };
}

/// Configuration information of a phrase match rule.
class GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig {
  /// The configuration for the exact match rule.
  GoogleCloudContactcenterinsightsV1ExactMatchConfig? exactMatchConfig;

  GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig({
    this.exactMatchConfig,
  });

  GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig.fromJson(
      core.Map json_)
      : this(
          exactMatchConfig: json_.containsKey('exactMatchConfig')
              ? GoogleCloudContactcenterinsightsV1ExactMatchConfig.fromJson(
                  json_['exactMatchConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exactMatchConfig != null) 'exactMatchConfig': exactMatchConfig!,
      };
}

/// A message representing a rule in the phrase matcher.
class GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup {
  /// A list of phrase match rules that are included in this group.
  core.List<GoogleCloudContactcenterinsightsV1PhraseMatchRule>?
      phraseMatchRules;

  /// The type of this phrase match rule group.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PHRASE_MATCH_RULE_GROUP_TYPE_UNSPECIFIED" : Unspecified.
  /// - "ALL_OF" : Must meet all phrase match rules or there is no match.
  /// - "ANY_OF" : If any of the phrase match rules are met, there is a match.
  core.String? type;

  GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup({
    this.phraseMatchRules,
    this.type,
  });

  GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup.fromJson(
      core.Map json_)
      : this(
          phraseMatchRules: (json_['phraseMatchRules'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1PhraseMatchRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (phraseMatchRules != null) 'phraseMatchRules': phraseMatchRules!,
        if (type != null) 'type': type!,
      };
}

/// The phrase matcher resource.
class GoogleCloudContactcenterinsightsV1PhraseMatcher {
  /// The most recent time at which the activation status was updated.
  ///
  /// Output only.
  core.String? activationUpdateTime;

  /// Applies the phrase matcher only when it is active.
  core.bool? active;

  /// The human-readable name of the phrase matcher.
  core.String? displayName;

  /// The resource name of the phrase matcher.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  core.String? name;

  /// A list of phase match rule groups that are included in this matcher.
  core.List<GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup>?
      phraseMatchRuleGroups;

  /// The timestamp of when the revision was created.
  ///
  /// It is also the create time when a new matcher is added.
  ///
  /// Output only.
  core.String? revisionCreateTime;

  /// The revision ID of the phrase matcher.
  ///
  /// A new revision is committed whenever the matcher is changed, except when
  /// it is activated or deactivated. A server generated random ID will be used.
  /// Example: locations/global/phraseMatchers/my-first-matcher@1234567
  ///
  /// Output only. Immutable.
  core.String? revisionId;

  /// The role whose utterances the phrase matcher should be matched against.
  ///
  /// If the role is ROLE_UNSPECIFIED it will be matched against any utterances
  /// in the transcript.
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED" : Participant's role is not set.
  /// - "HUMAN_AGENT" : Participant is a human agent.
  /// - "AUTOMATED_AGENT" : Participant is an automated agent.
  /// - "END_USER" : Participant is an end user who conversed with the contact
  /// center.
  /// - "ANY_AGENT" : Participant is either a human or automated agent.
  core.String? roleMatch;

  /// The type of this phrase matcher.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PHRASE_MATCHER_TYPE_UNSPECIFIED" : Unspecified.
  /// - "ALL_OF" : Must meet all phrase match rule groups or there is no match.
  /// - "ANY_OF" : If any of the phrase match rule groups are met, there is a
  /// match.
  core.String? type;

  /// The most recent time at which the phrase matcher was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The customized version tag to use for the phrase matcher.
  ///
  /// If not specified, it will default to `revision_id`.
  core.String? versionTag;

  GoogleCloudContactcenterinsightsV1PhraseMatcher({
    this.activationUpdateTime,
    this.active,
    this.displayName,
    this.name,
    this.phraseMatchRuleGroups,
    this.revisionCreateTime,
    this.revisionId,
    this.roleMatch,
    this.type,
    this.updateTime,
    this.versionTag,
  });

  GoogleCloudContactcenterinsightsV1PhraseMatcher.fromJson(core.Map json_)
      : this(
          activationUpdateTime: json_['activationUpdateTime'] as core.String?,
          active: json_['active'] as core.bool?,
          displayName: json_['displayName'] as core.String?,
          name: json_['name'] as core.String?,
          phraseMatchRuleGroups: (json_['phraseMatchRuleGroups'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          revisionCreateTime: json_['revisionCreateTime'] as core.String?,
          revisionId: json_['revisionId'] as core.String?,
          roleMatch: json_['roleMatch'] as core.String?,
          type: json_['type'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
          versionTag: json_['versionTag'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activationUpdateTime != null)
          'activationUpdateTime': activationUpdateTime!,
        if (active != null) 'active': active!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (phraseMatchRuleGroups != null)
          'phraseMatchRuleGroups': phraseMatchRuleGroups!,
        if (revisionCreateTime != null)
          'revisionCreateTime': revisionCreateTime!,
        if (revisionId != null) 'revisionId': revisionId!,
        if (roleMatch != null) 'roleMatch': roleMatch!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (versionTag != null) 'versionTag': versionTag!,
      };
}

/// An answer to a QaQuestion.
class GoogleCloudContactcenterinsightsV1QaAnswer {
  /// List of all individual answers given to the question.
  core.List<GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource>?
      answerSources;

  /// The main answer value, incorporating any manual edits if they exist.
  GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue? answerValue;

  /// The conversation the answer applies to.
  core.String? conversation;

  /// The QaQuestion answered by this answer.
  core.String? qaQuestion;

  /// Question text.
  ///
  /// E.g., "Did the agent greet the customer?"
  core.String? questionBody;

  /// User-defined list of arbitrary tags.
  ///
  /// Matches the value from QaScorecard.ScorecardQuestion.tags. Used for
  /// grouping/organization and for weighting the score of each answer.
  core.List<core.String>? tags;

  GoogleCloudContactcenterinsightsV1QaAnswer({
    this.answerSources,
    this.answerValue,
    this.conversation,
    this.qaQuestion,
    this.questionBody,
    this.tags,
  });

  GoogleCloudContactcenterinsightsV1QaAnswer.fromJson(core.Map json_)
      : this(
          answerSources: (json_['answerSources'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          answerValue: json_.containsKey('answerValue')
              ? GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue.fromJson(
                  json_['answerValue'] as core.Map<core.String, core.dynamic>)
              : null,
          conversation: json_['conversation'] as core.String?,
          qaQuestion: json_['qaQuestion'] as core.String?,
          questionBody: json_['questionBody'] as core.String?,
          tags: (json_['tags'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answerSources != null) 'answerSources': answerSources!,
        if (answerValue != null) 'answerValue': answerValue!,
        if (conversation != null) 'conversation': conversation!,
        if (qaQuestion != null) 'qaQuestion': qaQuestion!,
        if (questionBody != null) 'questionBody': questionBody!,
        if (tags != null) 'tags': tags!,
      };
}

/// A question may have multiple answers from varying sources, one of which
/// becomes the "main" answer above.
///
/// AnswerSource represents each individual answer.
class GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource {
  /// The answer value from this source.
  GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue? answerValue;

  /// What created the answer.
  /// Possible string values are:
  /// - "SOURCE_TYPE_UNSPECIFIED" : Source type is unspecified.
  /// - "SYSTEM_GENERATED" : Answer was system-generated; created during an
  /// Insights analysis.
  /// - "MANUAL_EDIT" : Answer was created by a human via manual edit.
  core.String? sourceType;

  GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource({
    this.answerValue,
    this.sourceType,
  });

  GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource.fromJson(
      core.Map json_)
      : this(
          answerValue: json_.containsKey('answerValue')
              ? GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue.fromJson(
                  json_['answerValue'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceType: json_['sourceType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answerValue != null) 'answerValue': answerValue!,
        if (sourceType != null) 'sourceType': sourceType!,
      };
}

/// Message for holding the value of a QaAnswer.
///
/// QaQuestion.AnswerChoice defines the possible answer values for a question.
class GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue {
  /// Boolean value.
  core.bool? boolValue;

  /// A short string used as an identifier.
  ///
  /// Matches the value used in QaQuestion.AnswerChoice.key.
  core.String? key;

  /// A value of "Not Applicable (N/A)".
  ///
  /// Should only ever be `true`.
  core.bool? naValue;

  /// Normalized score of the questions.
  ///
  /// Calculated as score / potential_score.
  ///
  /// Output only.
  core.double? normalizedScore;

  /// Numerical value.
  core.double? numValue;

  /// The maximum potential score of the question.
  ///
  /// Output only.
  core.double? potentialScore;

  /// Numerical score of the answer.
  ///
  /// Output only.
  core.double? score;

  /// String value.
  core.String? strValue;

  GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue({
    this.boolValue,
    this.key,
    this.naValue,
    this.normalizedScore,
    this.numValue,
    this.potentialScore,
    this.score,
    this.strValue,
  });

  GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue.fromJson(core.Map json_)
      : this(
          boolValue: json_['boolValue'] as core.bool?,
          key: json_['key'] as core.String?,
          naValue: json_['naValue'] as core.bool?,
          normalizedScore: json_.containsKey('normalizedScore')
              ? decodeDouble(json_['normalizedScore'] as core.Object)
              : null,
          numValue: json_.containsKey('numValue')
              ? decodeDouble(json_['numValue'] as core.Object)
              : null,
          potentialScore: json_.containsKey('potentialScore')
              ? decodeDouble(json_['potentialScore'] as core.Object)
              : null,
          score: json_.containsKey('score')
              ? decodeDouble(json_['score'] as core.Object)
              : null,
          strValue: json_['strValue'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boolValue != null) 'boolValue': boolValue!,
        if (key != null) 'key': key!,
        if (naValue != null) 'naValue': naValue!,
        if (normalizedScore != null)
          'normalizedScore': encodeDouble(normalizedScore!),
        if (numValue != null) 'numValue': encodeDouble(numValue!),
        if (potentialScore != null)
          'potentialScore': encodeDouble(potentialScore!),
        if (score != null) 'score': encodeDouble(score!),
        if (strValue != null) 'strValue': strValue!,
      };
}

/// A single question to be scored by the Insights QA feature.
class GoogleCloudContactcenterinsightsV1QaQuestion {
  /// Short, descriptive string, used in the UI where it's not practical to
  /// display the full question body.
  ///
  /// E.g., "Greeting".
  core.String? abbreviation;

  /// A list of valid answers to the question, which the LLM must choose from.
  core.List<GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice>?
      answerChoices;

  /// Instructions describing how to determine the answer.
  core.String? answerInstructions;

  /// The time at which this question was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Metrics of the underlying tuned LLM over a holdout/test set while fine
  /// tuning the underlying LLM for the given question.
  ///
  /// This field will only be populated if and only if the question is part of a
  /// scorecard revision that has been tuned.
  GoogleCloudContactcenterinsightsV1QaQuestionMetrics? metrics;

  /// Identifier.
  ///
  /// The resource name of the question. Format:
  /// projects/{project}/locations/{location}/qaScorecards/{qa_scorecard}/revisions/{revision}/qaQuestions/{qa_question}
  core.String? name;

  /// Defines the order of the question within its parent scorecard revision.
  core.int? order;

  /// Question text.
  ///
  /// E.g., "Did the agent greet the customer?"
  core.String? questionBody;

  /// User-defined list of arbitrary tags for the question.
  ///
  /// Used for grouping/organization and for weighting the score of each
  /// question.
  core.List<core.String>? tags;

  /// Metadata about the tuning operation for the question.This field will only
  /// be populated if and only if the question is part of a scorecard revision
  /// that has been tuned.
  GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata? tuningMetadata;

  /// The most recent time at which the question was updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudContactcenterinsightsV1QaQuestion({
    this.abbreviation,
    this.answerChoices,
    this.answerInstructions,
    this.createTime,
    this.metrics,
    this.name,
    this.order,
    this.questionBody,
    this.tags,
    this.tuningMetadata,
    this.updateTime,
  });

  GoogleCloudContactcenterinsightsV1QaQuestion.fromJson(core.Map json_)
      : this(
          abbreviation: json_['abbreviation'] as core.String?,
          answerChoices: (json_['answerChoices'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          answerInstructions: json_['answerInstructions'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          metrics: json_.containsKey('metrics')
              ? GoogleCloudContactcenterinsightsV1QaQuestionMetrics.fromJson(
                  json_['metrics'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_['name'] as core.String?,
          order: json_['order'] as core.int?,
          questionBody: json_['questionBody'] as core.String?,
          tags: (json_['tags'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          tuningMetadata: json_.containsKey('tuningMetadata')
              ? GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata
                  .fromJson(json_['tuningMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (abbreviation != null) 'abbreviation': abbreviation!,
        if (answerChoices != null) 'answerChoices': answerChoices!,
        if (answerInstructions != null)
          'answerInstructions': answerInstructions!,
        if (createTime != null) 'createTime': createTime!,
        if (metrics != null) 'metrics': metrics!,
        if (name != null) 'name': name!,
        if (order != null) 'order': order!,
        if (questionBody != null) 'questionBody': questionBody!,
        if (tags != null) 'tags': tags!,
        if (tuningMetadata != null) 'tuningMetadata': tuningMetadata!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Message representing a possible answer to the question.
class GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice {
  /// Boolean value.
  core.bool? boolValue;

  /// A short string used as an identifier.
  core.String? key;

  /// A value of "Not Applicable (N/A)".
  ///
  /// If provided, this field may only be set to `true`. If a question receives
  /// this answer, it will be excluded from any score calculations.
  core.bool? naValue;

  /// Numerical value.
  core.double? numValue;

  /// Numerical score of the answer, used for generating the overall score of a
  /// QaScorecardResult.
  ///
  /// If the answer uses na_value, this field is unused.
  core.double? score;

  /// String value.
  core.String? strValue;

  GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice({
    this.boolValue,
    this.key,
    this.naValue,
    this.numValue,
    this.score,
    this.strValue,
  });

  GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice.fromJson(
      core.Map json_)
      : this(
          boolValue: json_['boolValue'] as core.bool?,
          key: json_['key'] as core.String?,
          naValue: json_['naValue'] as core.bool?,
          numValue: json_.containsKey('numValue')
              ? decodeDouble(json_['numValue'] as core.Object)
              : null,
          score: json_.containsKey('score')
              ? decodeDouble(json_['score'] as core.Object)
              : null,
          strValue: json_['strValue'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boolValue != null) 'boolValue': boolValue!,
        if (key != null) 'key': key!,
        if (naValue != null) 'naValue': naValue!,
        if (numValue != null) 'numValue': encodeDouble(numValue!),
        if (score != null) 'score': encodeDouble(score!),
        if (strValue != null) 'strValue': strValue!,
      };
}

/// A wrapper representing metrics calculated against a test-set on a LLM that
/// was fine tuned for this question.
class GoogleCloudContactcenterinsightsV1QaQuestionMetrics {
  /// Accuracy of the model.
  ///
  /// Measures the percentage of correct answers the model gave on the test set.
  ///
  /// Output only.
  core.double? accuracy;

  GoogleCloudContactcenterinsightsV1QaQuestionMetrics({
    this.accuracy,
  });

  GoogleCloudContactcenterinsightsV1QaQuestionMetrics.fromJson(core.Map json_)
      : this(
          accuracy: json_.containsKey('accuracy')
              ? decodeDouble(json_['accuracy'] as core.Object)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accuracy != null) 'accuracy': encodeDouble(accuracy!),
      };
}

/// Metadata about the tuning operation for the question.
///
/// Will only be set if a scorecard containing this question has been tuned.
class GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata {
  /// A list of any applicable data validation warnings about the question's
  /// feedback labels.
  core.List<core.String>? datasetValidationWarnings;

  /// Total number of valid labels provided for the question at the time of
  /// tuining.
  core.String? totalValidLabelCount;

  /// Error status of the tuning operation for the question.
  ///
  /// Will only be set if the tuning operation failed.
  core.String? tuningError;

  GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata({
    this.datasetValidationWarnings,
    this.totalValidLabelCount,
    this.tuningError,
  });

  GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata.fromJson(
      core.Map json_)
      : this(
          datasetValidationWarnings:
              (json_['datasetValidationWarnings'] as core.List?)
                  ?.map((value) => value as core.String)
                  .toList(),
          totalValidLabelCount: json_['totalValidLabelCount'] as core.String?,
          tuningError: json_['tuningError'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetValidationWarnings != null)
          'datasetValidationWarnings': datasetValidationWarnings!,
        if (totalValidLabelCount != null)
          'totalValidLabelCount': totalValidLabelCount!,
        if (tuningError != null) 'tuningError': tuningError!,
      };
}

/// A QaScorecard represents a collection of questions to be scored during
/// analysis.
class GoogleCloudContactcenterinsightsV1QaScorecard {
  /// The time at which this scorecard was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A text description explaining the intent of the scorecard.
  core.String? description;

  /// The user-specified display name of the scorecard.
  core.String? displayName;

  /// Identifier.
  ///
  /// The scorecard name. Format:
  /// projects/{project}/locations/{location}/qaScorecards/{qa_scorecard}
  core.String? name;

  /// The most recent time at which the scorecard was updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudContactcenterinsightsV1QaScorecard({
    this.createTime,
    this.description,
    this.displayName,
    this.name,
    this.updateTime,
  });

  GoogleCloudContactcenterinsightsV1QaScorecard.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          description: json_['description'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          name: json_['name'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The results of scoring a single conversation against a QaScorecard.
///
/// Contains a collection of QaAnswers and aggregate score.
class GoogleCloudContactcenterinsightsV1QaScorecardResult {
  /// ID of the agent that handled the conversation.
  core.String? agentId;

  /// The conversation scored by this result.
  core.String? conversation;

  /// The timestamp that the revision was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Identifier.
  ///
  /// The name of the scorecard result. Format:
  /// projects/{project}/locations/{location}/qaScorecardResults/{qa_scorecard_result}
  core.String? name;

  /// The normalized score, which is the score divided by the potential score.
  ///
  /// Any manual edits are included if they exist.
  core.double? normalizedScore;

  /// The maximum potential overall score of the scorecard.
  ///
  /// Any questions answered using `na_value` are excluded from this
  /// calculation.
  core.double? potentialScore;

  /// Set of QaAnswers represented in the result.
  core.List<GoogleCloudContactcenterinsightsV1QaAnswer>? qaAnswers;

  /// The QaScorecardRevision scored by this result.
  core.String? qaScorecardRevision;

  /// Collection of tags and their scores.
  core.List<GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult>?
      qaTagResults;

  /// The overall numerical score of the result, incorporating any manual edits
  /// if they exist.
  core.double? score;

  /// List of all individual score sets.
  core.List<GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource>?
      scoreSources;

  GoogleCloudContactcenterinsightsV1QaScorecardResult({
    this.agentId,
    this.conversation,
    this.createTime,
    this.name,
    this.normalizedScore,
    this.potentialScore,
    this.qaAnswers,
    this.qaScorecardRevision,
    this.qaTagResults,
    this.score,
    this.scoreSources,
  });

  GoogleCloudContactcenterinsightsV1QaScorecardResult.fromJson(core.Map json_)
      : this(
          agentId: json_['agentId'] as core.String?,
          conversation: json_['conversation'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          name: json_['name'] as core.String?,
          normalizedScore: json_.containsKey('normalizedScore')
              ? decodeDouble(json_['normalizedScore'] as core.Object)
              : null,
          potentialScore: json_.containsKey('potentialScore')
              ? decodeDouble(json_['potentialScore'] as core.Object)
              : null,
          qaAnswers: (json_['qaAnswers'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1QaAnswer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          qaScorecardRevision: json_['qaScorecardRevision'] as core.String?,
          qaTagResults: (json_['qaTagResults'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          score: json_.containsKey('score')
              ? decodeDouble(json_['score'] as core.Object)
              : null,
          scoreSources: (json_['scoreSources'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentId != null) 'agentId': agentId!,
        if (conversation != null) 'conversation': conversation!,
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (normalizedScore != null)
          'normalizedScore': encodeDouble(normalizedScore!),
        if (potentialScore != null)
          'potentialScore': encodeDouble(potentialScore!),
        if (qaAnswers != null) 'qaAnswers': qaAnswers!,
        if (qaScorecardRevision != null)
          'qaScorecardRevision': qaScorecardRevision!,
        if (qaTagResults != null) 'qaTagResults': qaTagResults!,
        if (score != null) 'score': encodeDouble(score!),
        if (scoreSources != null) 'scoreSources': scoreSources!,
      };
}

/// Tags and their corresponding results.
class GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult {
  /// The normalized score the tag applies to.
  core.double? normalizedScore;

  /// The potential score the tag applies to.
  core.double? potentialScore;

  /// The score the tag applies to.
  core.double? score;

  /// The tag the score applies to.
  core.String? tag;

  GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult({
    this.normalizedScore,
    this.potentialScore,
    this.score,
    this.tag,
  });

  GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult.fromJson(
      core.Map json_)
      : this(
          normalizedScore: json_.containsKey('normalizedScore')
              ? decodeDouble(json_['normalizedScore'] as core.Object)
              : null,
          potentialScore: json_.containsKey('potentialScore')
              ? decodeDouble(json_['potentialScore'] as core.Object)
              : null,
          score: json_.containsKey('score')
              ? decodeDouble(json_['score'] as core.Object)
              : null,
          tag: json_['tag'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (normalizedScore != null)
          'normalizedScore': encodeDouble(normalizedScore!),
        if (potentialScore != null)
          'potentialScore': encodeDouble(potentialScore!),
        if (score != null) 'score': encodeDouble(score!),
        if (tag != null) 'tag': tag!,
      };
}

/// A scorecard result may have multiple sets of scores from varying sources,
/// one of which becomes the "main" answer above.
///
/// A ScoreSource represents each individual set of scores.
class GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource {
  /// The normalized score, which is the score divided by the potential score.
  core.double? normalizedScore;

  /// The maximum potential overall score of the scorecard.
  ///
  /// Any questions answered using `na_value` are excluded from this
  /// calculation.
  core.double? potentialScore;

  /// Collection of tags and their scores.
  core.List<GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult>?
      qaTagResults;

  /// The overall numerical score of the result.
  core.double? score;

  /// What created the score.
  /// Possible string values are:
  /// - "SOURCE_TYPE_UNSPECIFIED" : Source type is unspecified.
  /// - "SYSTEM_GENERATED_ONLY" : Score is derived only from system-generated
  /// answers.
  /// - "INCLUDES_MANUAL_EDITS" : Score is derived from both system-generated
  /// answers, and includes any manual edits if they exist.
  core.String? sourceType;

  GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource({
    this.normalizedScore,
    this.potentialScore,
    this.qaTagResults,
    this.score,
    this.sourceType,
  });

  GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource.fromJson(
      core.Map json_)
      : this(
          normalizedScore: json_.containsKey('normalizedScore')
              ? decodeDouble(json_['normalizedScore'] as core.Object)
              : null,
          potentialScore: json_.containsKey('potentialScore')
              ? decodeDouble(json_['potentialScore'] as core.Object)
              : null,
          qaTagResults: (json_['qaTagResults'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          score: json_.containsKey('score')
              ? decodeDouble(json_['score'] as core.Object)
              : null,
          sourceType: json_['sourceType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (normalizedScore != null)
          'normalizedScore': encodeDouble(normalizedScore!),
        if (potentialScore != null)
          'potentialScore': encodeDouble(potentialScore!),
        if (qaTagResults != null) 'qaTagResults': qaTagResults!,
        if (score != null) 'score': encodeDouble(score!),
        if (sourceType != null) 'sourceType': sourceType!,
      };
}

/// A revision of a QaScorecard.
///
/// Modifying published scorecard fields would invalidate existing scorecard
/// results — the questions may have changed, or the score weighting will make
/// existing scores impossible to understand. So changes must create a new
/// revision, rather than modifying the existing resource.
class GoogleCloudContactcenterinsightsV1QaScorecardRevision {
  /// Alternative IDs for this revision of the scorecard, e.g., `latest`.
  ///
  /// Output only.
  core.List<core.String>? alternateIds;

  /// The timestamp that the revision was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Identifier.
  ///
  /// The name of the scorecard revision. Format:
  /// projects/{project}/locations/{location}/qaScorecards/{qa_scorecard}/revisions/{revision}
  core.String? name;

  /// The snapshot of the scorecard at the time of this revision's creation.
  GoogleCloudContactcenterinsightsV1QaScorecard? snapshot;

  /// State of the scorecard revision, indicating whether it's ready to be used
  /// in analysis.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified.
  /// - "EDITABLE" : The scorecard revision can be edited.
  /// - "TRAINING" : Scorecard model training is in progress.
  /// - "TRAINING_FAILED" : Scorecard revision model training failed.
  /// - "READY" : The revision can be used in analysis.
  /// - "DELETING" : Scorecard is being deleted.
  /// - "TRAINING_CANCELLED" : Scorecard model training was explicitly cancelled
  /// by the user.
  core.String? state;

  GoogleCloudContactcenterinsightsV1QaScorecardRevision({
    this.alternateIds,
    this.createTime,
    this.name,
    this.snapshot,
    this.state,
  });

  GoogleCloudContactcenterinsightsV1QaScorecardRevision.fromJson(core.Map json_)
      : this(
          alternateIds: (json_['alternateIds'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          createTime: json_['createTime'] as core.String?,
          name: json_['name'] as core.String?,
          snapshot: json_.containsKey('snapshot')
              ? GoogleCloudContactcenterinsightsV1QaScorecard.fromJson(
                  json_['snapshot'] as core.Map<core.String, core.dynamic>)
              : null,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternateIds != null) 'alternateIds': alternateIds!,
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (snapshot != null) 'snapshot': snapshot!,
        if (state != null) 'state': state!,
      };
}

/// The request for querying metrics.
class GoogleCloudContactcenterinsightsV1QueryMetricsRequest {
  /// The dimensions that determine the grouping key for the query.
  ///
  /// Defaults to no dimension if this field is unspecified. If a dimension is
  /// specified, its key must also be specified. Each dimension's key must be
  /// unique. If a time granularity is also specified, metric values in the
  /// dimension will be bucketed by this granularity. Up to one dimension is
  /// supported for now.
  core.List<GoogleCloudContactcenterinsightsV1Dimension>? dimensions;

  /// Filter to select a subset of conversations to compute the metrics.
  ///
  /// Must specify a window of the conversation create time to compute the
  /// metrics. The returned metrics will be from the range \[DATE(starting
  /// create time), DATE(ending create time)).
  ///
  /// Required.
  core.String? filter;

  /// Measures to return.
  ///
  /// Defaults to all measures if this field is unspecified. A valid mask should
  /// traverse from the `measure` field from the response. For example, a path
  /// from a measure mask to get the conversation count is
  /// "conversation_measure.count".
  core.String? measureMask;

  /// The time granularity of each data point in the time series.
  ///
  /// Defaults to NONE if this field is unspecified.
  /// Possible string values are:
  /// - "TIME_GRANULARITY_UNSPECIFIED" : The time granularity is unspecified and
  /// will default to NONE.
  /// - "NONE" : No time granularity. The response won't contain a time series.
  /// This is the default value if no time granularity is specified.
  /// - "DAILY" : Data points in the time series will aggregate at a daily
  /// granularity. 1 day means \[midnight to midnight).
  /// - "HOURLY" : Data points in the time series will aggregate at a daily
  /// granularity. 1 HOUR means \[01:00 to 02:00).
  /// - "PER_MINUTE" : Data points in the time series will aggregate at a daily
  /// granularity. PER_MINUTE means \[01:00 to 01:01).
  /// - "PER_5_MINUTES" : Data points in the time series will aggregate at a 1
  /// minute granularity. PER_5_MINUTES means \[01:00 to 01:05).
  /// - "MONTHLY" : Data points in the time series will aggregate at a monthly
  /// granularity. 1 MONTH means \[01st of the month to 1st of the next month).
  core.String? timeGranularity;

  GoogleCloudContactcenterinsightsV1QueryMetricsRequest({
    this.dimensions,
    this.filter,
    this.measureMask,
    this.timeGranularity,
  });

  GoogleCloudContactcenterinsightsV1QueryMetricsRequest.fromJson(core.Map json_)
      : this(
          dimensions: (json_['dimensions'] as core.List?)
              ?.map((value) =>
                  GoogleCloudContactcenterinsightsV1Dimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          filter: json_['filter'] as core.String?,
          measureMask: json_['measureMask'] as core.String?,
          timeGranularity: json_['timeGranularity'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensions != null) 'dimensions': dimensions!,
        if (filter != null) 'filter': filter!,
        if (measureMask != null) 'measureMask': measureMask!,
        if (timeGranularity != null) 'timeGranularity': timeGranularity!,
      };
}

/// DLP resources used for redaction while ingesting conversations.
///
/// DLP settings are applied to conversations ingested from the
/// `UploadConversation` and `IngestConversations` endpoints, including
/// conversation coming from CCAI Platform. They are not applied to
/// conversations ingested from the `CreateConversation` endpoint or the
/// Dialogflow / Agent Assist runtime integrations. When using Dialogflow /
/// Agent Assist runtime integrations, redaction should be performed in
/// Dialogflow / Agent Assist.
class GoogleCloudContactcenterinsightsV1RedactionConfig {
  /// The fully-qualified DLP deidentify template resource name.
  ///
  /// Format: `projects/{project}/deidentifyTemplates/{template}`
  core.String? deidentifyTemplate;

  /// The fully-qualified DLP inspect template resource name.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/inspectTemplates/{template}`
  core.String? inspectTemplate;

  GoogleCloudContactcenterinsightsV1RedactionConfig({
    this.deidentifyTemplate,
    this.inspectTemplate,
  });

  GoogleCloudContactcenterinsightsV1RedactionConfig.fromJson(core.Map json_)
      : this(
          deidentifyTemplate: json_['deidentifyTemplate'] as core.String?,
          inspectTemplate: json_['inspectTemplate'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deidentifyTemplate != null)
          'deidentifyTemplate': deidentifyTemplate!,
        if (inspectTemplate != null) 'inspectTemplate': inspectTemplate!,
      };
}

/// An annotation that was generated during the customer and agent interaction.
class GoogleCloudContactcenterinsightsV1RuntimeAnnotation {
  /// The unique identifier of the annotation.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/conversationDatasets/{dataset}/conversationDataItems/{data_item}/conversationAnnotations/{annotation}
  core.String? annotationId;

  /// The feedback that the customer has about the answer in `data`.
  GoogleCloudContactcenterinsightsV1AnswerFeedback? answerFeedback;

  /// Agent Assist Article Suggestion data.
  GoogleCloudContactcenterinsightsV1ArticleSuggestionData? articleSuggestion;

  /// Conversation summarization suggestion data.
  GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData?
      conversationSummarizationSuggestion;

  /// The time at which this annotation was created.
  core.String? createTime;

  /// Dialogflow interaction data.
  GoogleCloudContactcenterinsightsV1DialogflowInteractionData?
      dialogflowInteraction;

  /// The boundary in the conversation where the annotation ends, inclusive.
  GoogleCloudContactcenterinsightsV1AnnotationBoundary? endBoundary;

  /// Agent Assist FAQ answer data.
  GoogleCloudContactcenterinsightsV1FaqAnswerData? faqAnswer;

  /// Agent Assist Smart Compose suggestion data.
  GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData?
      smartComposeSuggestion;

  /// Agent Assist Smart Reply data.
  GoogleCloudContactcenterinsightsV1SmartReplyData? smartReply;

  /// The boundary in the conversation where the annotation starts, inclusive.
  GoogleCloudContactcenterinsightsV1AnnotationBoundary? startBoundary;

  /// Explicit input used for generating the answer
  GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput? userInput;

  GoogleCloudContactcenterinsightsV1RuntimeAnnotation({
    this.annotationId,
    this.answerFeedback,
    this.articleSuggestion,
    this.conversationSummarizationSuggestion,
    this.createTime,
    this.dialogflowInteraction,
    this.endBoundary,
    this.faqAnswer,
    this.smartComposeSuggestion,
    this.smartReply,
    this.startBoundary,
    this.userInput,
  });

  GoogleCloudContactcenterinsightsV1RuntimeAnnotation.fromJson(core.Map json_)
      : this(
          annotationId: json_['annotationId'] as core.String?,
          answerFeedback: json_.containsKey('answerFeedback')
              ? GoogleCloudContactcenterinsightsV1AnswerFeedback.fromJson(
                  json_['answerFeedback']
                      as core.Map<core.String, core.dynamic>)
              : null,
          articleSuggestion: json_.containsKey('articleSuggestion')
              ? GoogleCloudContactcenterinsightsV1ArticleSuggestionData
                  .fromJson(json_['articleSuggestion']
                      as core.Map<core.String, core.dynamic>)
              : null,
          conversationSummarizationSuggestion: json_
                  .containsKey('conversationSummarizationSuggestion')
              ? GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData
                  .fromJson(json_['conversationSummarizationSuggestion']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_['createTime'] as core.String?,
          dialogflowInteraction: json_.containsKey('dialogflowInteraction')
              ? GoogleCloudContactcenterinsightsV1DialogflowInteractionData
                  .fromJson(json_['dialogflowInteraction']
                      as core.Map<core.String, core.dynamic>)
              : null,
          endBoundary: json_.containsKey('endBoundary')
              ? GoogleCloudContactcenterinsightsV1AnnotationBoundary.fromJson(
                  json_['endBoundary'] as core.Map<core.String, core.dynamic>)
              : null,
          faqAnswer: json_.containsKey('faqAnswer')
              ? GoogleCloudContactcenterinsightsV1FaqAnswerData.fromJson(
                  json_['faqAnswer'] as core.Map<core.String, core.dynamic>)
              : null,
          smartComposeSuggestion: json_.containsKey('smartComposeSuggestion')
              ? GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData
                  .fromJson(json_['smartComposeSuggestion']
                      as core.Map<core.String, core.dynamic>)
              : null,
          smartReply: json_.containsKey('smartReply')
              ? GoogleCloudContactcenterinsightsV1SmartReplyData.fromJson(
                  json_['smartReply'] as core.Map<core.String, core.dynamic>)
              : null,
          startBoundary: json_.containsKey('startBoundary')
              ? GoogleCloudContactcenterinsightsV1AnnotationBoundary.fromJson(
                  json_['startBoundary'] as core.Map<core.String, core.dynamic>)
              : null,
          userInput: json_.containsKey('userInput')
              ? GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput
                  .fromJson(
                      json_['userInput'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationId != null) 'annotationId': annotationId!,
        if (answerFeedback != null) 'answerFeedback': answerFeedback!,
        if (articleSuggestion != null) 'articleSuggestion': articleSuggestion!,
        if (conversationSummarizationSuggestion != null)
          'conversationSummarizationSuggestion':
              conversationSummarizationSuggestion!,
        if (createTime != null) 'createTime': createTime!,
        if (dialogflowInteraction != null)
          'dialogflowInteraction': dialogflowInteraction!,
        if (endBoundary != null) 'endBoundary': endBoundary!,
        if (faqAnswer != null) 'faqAnswer': faqAnswer!,
        if (smartComposeSuggestion != null)
          'smartComposeSuggestion': smartComposeSuggestion!,
        if (smartReply != null) 'smartReply': smartReply!,
        if (startBoundary != null) 'startBoundary': startBoundary!,
        if (userInput != null) 'userInput': userInput!,
      };
}

/// Explicit input used for generating the answer
class GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput {
  /// The resource name of associated generator.
  ///
  /// Format: `projects//locations//generators/`
  core.String? generatorName;

  /// Query text.
  ///
  /// Article Search uses this to store the input query used to generate the
  /// search results.
  core.String? query;

  /// Query source for the answer.
  /// Possible string values are:
  /// - "QUERY_SOURCE_UNSPECIFIED" : Unknown query source.
  /// - "AGENT_QUERY" : The query is from agents.
  /// - "SUGGESTED_QUERY" : The query is a query from previous suggestions, e.g.
  /// from a preceding SuggestKnowledgeAssist response.
  core.String? querySource;

  GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput({
    this.generatorName,
    this.query,
    this.querySource,
  });

  GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput.fromJson(
      core.Map json_)
      : this(
          generatorName: json_['generatorName'] as core.String?,
          query: json_['query'] as core.String?,
          querySource: json_['querySource'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (generatorName != null) 'generatorName': generatorName!,
        if (query != null) 'query': query!,
        if (querySource != null) 'querySource': querySource!,
      };
}

/// The data for a sentiment annotation.
class GoogleCloudContactcenterinsightsV1SentimentData {
  /// A non-negative number from 0 to infinity which represents the absolute
  /// magnitude of sentiment regardless of score.
  core.double? magnitude;

  /// The sentiment score between -1.0 (negative) and 1.0 (positive).
  core.double? score;

  GoogleCloudContactcenterinsightsV1SentimentData({
    this.magnitude,
    this.score,
  });

  GoogleCloudContactcenterinsightsV1SentimentData.fromJson(core.Map json_)
      : this(
          magnitude: json_.containsKey('magnitude')
              ? decodeDouble(json_['magnitude'] as core.Object)
              : null,
          score: json_.containsKey('score')
              ? decodeDouble(json_['score'] as core.Object)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (magnitude != null) 'magnitude': encodeDouble(magnitude!),
        if (score != null) 'score': encodeDouble(score!),
      };
}

/// The CCAI Insights project wide settings.
///
/// Use these settings to configure the behavior of Insights. View these
/// settings with
/// \[`getsettings`\](https://cloud.google.com/contact-center/insights/docs/reference/rest/v1/projects.locations/getSettings)
/// and change the settings with
/// \[`updateSettings`\](https://cloud.google.com/contact-center/insights/docs/reference/rest/v1/projects.locations/updateSettings).
class GoogleCloudContactcenterinsightsV1Settings {
  /// Default analysis settings.
  GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig? analysisConfig;

  /// The default TTL for newly-created conversations.
  ///
  /// If a conversation has a specified expiration, that value will be used
  /// instead. Changing this value will not change the expiration of existing
  /// conversations. Conversations with no expire time persist until they are
  /// deleted.
  core.String? conversationTtl;

  /// The time at which the settings was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A language code to be applied to each transcript segment unless the
  /// segment already specifies a language code.
  ///
  /// Language code defaults to "en-US" if it is neither specified on the
  /// segment nor here.
  core.String? languageCode;

  /// The resource name of the settings resource.
  ///
  /// Format: projects/{project}/locations/{location}/settings
  ///
  /// Immutable.
  core.String? name;

  /// A map that maps a notification trigger to a Pub/Sub topic.
  ///
  /// Each time a specified trigger occurs, Insights will notify the
  /// corresponding Pub/Sub topic. Keys are notification triggers. Supported
  /// keys are: * "all-triggers": Notify each time any of the supported triggers
  /// occurs. * "create-analysis": Notify each time an analysis is created. *
  /// "create-conversation": Notify each time a conversation is created. *
  /// "export-insights-data": Notify each time an export is complete. *
  /// "ingest-conversations": Notify each time an IngestConversations LRO is
  /// complete. * "update-conversation": Notify each time a conversation is
  /// updated via UpdateConversation. * "upload-conversation": Notify when an
  /// UploadConversation LRO is complete. Values are Pub/Sub topics. The format
  /// of each Pub/Sub topic is: projects/{project}/topics/{topic}
  core.Map<core.String, core.String>? pubsubNotificationSettings;

  /// Default DLP redaction resources to be applied while ingesting
  /// conversations.
  ///
  /// This applies to conversations ingested from the `UploadConversation` and
  /// `IngestConversations` endpoints, including conversations coming from CCAI
  /// Platform.
  GoogleCloudContactcenterinsightsV1RedactionConfig? redactionConfig;

  /// Default Speech-to-Text resources to use while ingesting audio files.
  ///
  /// Optional, CCAI Insights will create a default if not provided. This
  /// applies to conversations ingested from the `UploadConversation` and
  /// `IngestConversations` endpoints, including conversations coming from CCAI
  /// Platform.
  ///
  /// Optional.
  GoogleCloudContactcenterinsightsV1SpeechConfig? speechConfig;

  /// The time at which the settings were last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudContactcenterinsightsV1Settings({
    this.analysisConfig,
    this.conversationTtl,
    this.createTime,
    this.languageCode,
    this.name,
    this.pubsubNotificationSettings,
    this.redactionConfig,
    this.speechConfig,
    this.updateTime,
  });

  GoogleCloudContactcenterinsightsV1Settings.fromJson(core.Map json_)
      : this(
          analysisConfig: json_.containsKey('analysisConfig')
              ? GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig
                  .fromJson(json_['analysisConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          conversationTtl: json_['conversationTtl'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          languageCode: json_['languageCode'] as core.String?,
          name: json_['name'] as core.String?,
          pubsubNotificationSettings: (json_['pubsubNotificationSettings']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          redactionConfig: json_.containsKey('redactionConfig')
              ? GoogleCloudContactcenterinsightsV1RedactionConfig.fromJson(
                  json_['redactionConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          speechConfig: json_.containsKey('speechConfig')
              ? GoogleCloudContactcenterinsightsV1SpeechConfig.fromJson(
                  json_['speechConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysisConfig != null) 'analysisConfig': analysisConfig!,
        if (conversationTtl != null) 'conversationTtl': conversationTtl!,
        if (createTime != null) 'createTime': createTime!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (name != null) 'name': name!,
        if (pubsubNotificationSettings != null)
          'pubsubNotificationSettings': pubsubNotificationSettings!,
        if (redactionConfig != null) 'redactionConfig': redactionConfig!,
        if (speechConfig != null) 'speechConfig': speechConfig!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Default configuration when creating Analyses in Insights.
class GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig {
  /// To select the annotators to run and the phrase matchers to use (if any).
  ///
  /// If not specified, all annotators will be run.
  GoogleCloudContactcenterinsightsV1AnnotatorSelector? annotatorSelector;

  /// Percentage of conversations created using Dialogflow runtime integration
  /// to analyze automatically, between \[0, 100\].
  core.double? runtimeIntegrationAnalysisPercentage;

  /// Percentage of conversations created using the UploadConversation endpoint
  /// to analyze automatically, between \[0, 100\].
  core.double? uploadConversationAnalysisPercentage;

  GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig({
    this.annotatorSelector,
    this.runtimeIntegrationAnalysisPercentage,
    this.uploadConversationAnalysisPercentage,
  });

  GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig.fromJson(
      core.Map json_)
      : this(
          annotatorSelector: json_.containsKey('annotatorSelector')
              ? GoogleCloudContactcenterinsightsV1AnnotatorSelector.fromJson(
                  json_['annotatorSelector']
                      as core.Map<core.String, core.dynamic>)
              : null,
          runtimeIntegrationAnalysisPercentage: json_
                  .containsKey('runtimeIntegrationAnalysisPercentage')
              ? decodeDouble(
                  json_['runtimeIntegrationAnalysisPercentage'] as core.Object)
              : null,
          uploadConversationAnalysisPercentage: json_
                  .containsKey('uploadConversationAnalysisPercentage')
              ? decodeDouble(
                  json_['uploadConversationAnalysisPercentage'] as core.Object)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotatorSelector != null) 'annotatorSelector': annotatorSelector!,
        if (runtimeIntegrationAnalysisPercentage != null)
          'runtimeIntegrationAnalysisPercentage':
              encodeDouble(runtimeIntegrationAnalysisPercentage!),
        if (uploadConversationAnalysisPercentage != null)
          'uploadConversationAnalysisPercentage':
              encodeDouble(uploadConversationAnalysisPercentage!),
      };
}

/// The data for a silence annotation.
typedef GoogleCloudContactcenterinsightsV1SilenceData = $Empty;

/// Agent Assist Smart Compose suggestion data.
class GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData {
  /// The system's confidence score that this suggestion is a good match for
  /// this conversation, ranging from 0.0 (completely uncertain) to 1.0
  /// (completely certain).
  core.double? confidenceScore;

  /// Map that contains metadata about the Smart Compose suggestion and the
  /// document from which it originates.
  core.Map<core.String, core.String>? metadata;

  /// The name of the answer record.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/answerRecords/{answer_record}
  core.String? queryRecord;

  /// The content of the suggestion.
  core.String? suggestion;

  GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData({
    this.confidenceScore,
    this.metadata,
    this.queryRecord,
    this.suggestion,
  });

  GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData.fromJson(
      core.Map json_)
      : this(
          confidenceScore: json_.containsKey('confidenceScore')
              ? decodeDouble(json_['confidenceScore'] as core.Object)
              : null,
          metadata:
              (json_['metadata'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          queryRecord: json_['queryRecord'] as core.String?,
          suggestion: json_['suggestion'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidenceScore != null)
          'confidenceScore': encodeDouble(confidenceScore!),
        if (metadata != null) 'metadata': metadata!,
        if (queryRecord != null) 'queryRecord': queryRecord!,
        if (suggestion != null) 'suggestion': suggestion!,
      };
}

/// Agent Assist Smart Reply data.
class GoogleCloudContactcenterinsightsV1SmartReplyData {
  /// The system's confidence score that this reply is a good match for this
  /// conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely
  /// certain).
  core.double? confidenceScore;

  /// Map that contains metadata about the Smart Reply and the document from
  /// which it originates.
  core.Map<core.String, core.String>? metadata;

  /// The name of the answer record.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/answerRecords/{answer_record}
  core.String? queryRecord;

  /// The content of the reply.
  core.String? reply;

  GoogleCloudContactcenterinsightsV1SmartReplyData({
    this.confidenceScore,
    this.metadata,
    this.queryRecord,
    this.reply,
  });

  GoogleCloudContactcenterinsightsV1SmartReplyData.fromJson(core.Map json_)
      : this(
          confidenceScore: json_.containsKey('confidenceScore')
              ? decodeDouble(json_['confidenceScore'] as core.Object)
              : null,
          metadata:
              (json_['metadata'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          queryRecord: json_['queryRecord'] as core.String?,
          reply: json_['reply'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidenceScore != null)
          'confidenceScore': encodeDouble(confidenceScore!),
        if (metadata != null) 'metadata': metadata!,
        if (queryRecord != null) 'queryRecord': queryRecord!,
        if (reply != null) 'reply': reply!,
      };
}

/// Speech-to-Text configuration.
///
/// Speech-to-Text settings are applied to conversations ingested from the
/// `UploadConversation` and `IngestConversations` endpoints, including
/// conversation coming from CCAI Platform. They are not applied to
/// conversations ingested from the `CreateConversation` endpoint.
class GoogleCloudContactcenterinsightsV1SpeechConfig {
  /// The fully-qualified Speech Recognizer resource name.
  ///
  /// Format:
  /// `projects/{project_id}/locations/{location}/recognizer/{recognizer}`
  core.String? speechRecognizer;

  GoogleCloudContactcenterinsightsV1SpeechConfig({
    this.speechRecognizer,
  });

  GoogleCloudContactcenterinsightsV1SpeechConfig.fromJson(core.Map json_)
      : this(
          speechRecognizer: json_['speechRecognizer'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (speechRecognizer != null) 'speechRecognizer': speechRecognizer!,
      };
}

/// Request for TuneQaScorecardRevision endpoint.
class GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest {
  /// Filter for selecting the feedback labels that needs to be used for
  /// training.
  ///
  /// This filter can be used to limit the feedback labels used for tuning to a
  /// feedback labels created or updated for a specific time-window etc.
  ///
  /// Required.
  core.String? filter;

  /// Run in validate only mode, no fine tuning will actually run.
  ///
  /// Data quality validations like training data distributions will run. Even
  /// when set to false, the data quality validations will still run but once
  /// the validations complete we will proceed with the fine tune, if
  /// applicable.
  ///
  /// Optional.
  core.bool? validateOnly;

  GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest({
    this.filter,
    this.validateOnly,
  });

  GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest.fromJson(
      core.Map json_)
      : this(
          filter: json_['filter'] as core.String?,
          validateOnly: json_['validateOnly'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filter != null) 'filter': filter!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// The request to undeploy an issue model.
class GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest {
  /// The issue model to undeploy.
  ///
  /// Required.
  core.String? name;

  GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest({
    this.name,
  });

  GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest.fromJson(
      core.Map json_)
      : this(
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// The request to undeploy a QaScorecardRevision
typedef GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest
    = $Empty;

/// Request to upload a conversation.
class GoogleCloudContactcenterinsightsV1UploadConversationRequest {
  /// The conversation resource to create.
  ///
  /// Required.
  GoogleCloudContactcenterinsightsV1Conversation? conversation;

  /// A unique ID for the new conversation.
  ///
  /// This ID will become the final component of the conversation's resource
  /// name. If no ID is specified, a server-generated ID will be used. This
  /// value should be 4-64 characters and must match the regular expression
  /// `^[a-z0-9-]{4,64}$`. Valid characters are `a-z-`
  ///
  /// Optional.
  core.String? conversationId;

  /// The parent resource of the conversation.
  ///
  /// Required.
  core.String? parent;

  /// DLP settings for transcript redaction.
  ///
  /// Will default to the config specified in Settings.
  ///
  /// Optional.
  GoogleCloudContactcenterinsightsV1RedactionConfig? redactionConfig;

  /// Speech-to-Text configuration.
  ///
  /// Will default to the config specified in Settings.
  ///
  /// Optional.
  GoogleCloudContactcenterinsightsV1SpeechConfig? speechConfig;

  GoogleCloudContactcenterinsightsV1UploadConversationRequest({
    this.conversation,
    this.conversationId,
    this.parent,
    this.redactionConfig,
    this.speechConfig,
  });

  GoogleCloudContactcenterinsightsV1UploadConversationRequest.fromJson(
      core.Map json_)
      : this(
          conversation: json_.containsKey('conversation')
              ? GoogleCloudContactcenterinsightsV1Conversation.fromJson(
                  json_['conversation'] as core.Map<core.String, core.dynamic>)
              : null,
          conversationId: json_['conversationId'] as core.String?,
          parent: json_['parent'] as core.String?,
          redactionConfig: json_.containsKey('redactionConfig')
              ? GoogleCloudContactcenterinsightsV1RedactionConfig.fromJson(
                  json_['redactionConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          speechConfig: json_.containsKey('speechConfig')
              ? GoogleCloudContactcenterinsightsV1SpeechConfig.fromJson(
                  json_['speechConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversation != null) 'conversation': conversation!,
        if (conversationId != null) 'conversationId': conversationId!,
        if (parent != null) 'parent': parent!,
        if (redactionConfig != null) 'redactionConfig': redactionConfig!,
        if (speechConfig != null) 'speechConfig': speechConfig!,
      };
}

/// The View resource.
class GoogleCloudContactcenterinsightsV1View {
  /// The time at which this view was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The human-readable display name of the view.
  core.String? displayName;

  /// The resource name of the view.
  ///
  /// Format: projects/{project}/locations/{location}/views/{view}
  ///
  /// Immutable.
  core.String? name;

  /// The most recent time at which the view was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// A filter to reduce conversation results to a specific subset.
  ///
  /// Refer to https://cloud.google.com/contact-center/insights/docs/filtering
  /// for details.
  core.String? value;

  GoogleCloudContactcenterinsightsV1View({
    this.createTime,
    this.displayName,
    this.name,
    this.updateTime,
    this.value,
  });

  GoogleCloudContactcenterinsightsV1View.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          name: json_['name'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
          value: json_['value'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (value != null) 'value': value!,
      };
}

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
          operations: (json_['operations'] as core.List?)
              ?.map((value) => GoogleLongrunningOperation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
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
          error: json_.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_['name'] as core.String?,
          response: json_.containsKey('response')
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
