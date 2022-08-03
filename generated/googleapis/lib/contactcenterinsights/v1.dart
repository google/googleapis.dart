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

/// Contact Center AI Insights API - v1
///
/// For more information, see
/// <https://cloud.google.com/contact-center/insights/docs>
///
/// Create an instance of [ContactcenterinsightsApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsConversationsResource]
///       - [ProjectsLocationsConversationsAnalysesResource]
///     - [ProjectsLocationsInsightsdataResource]
///     - [ProjectsLocationsIssueModelsResource]
///       - [ProjectsLocationsIssueModelsIssuesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsPhraseMatchersResource]
///     - [ProjectsLocationsViewsResource]
library contactcenterinsights.v1;

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

  ProjectsLocationsConversationsResource get conversations =>
      ProjectsLocationsConversationsResource(_requester);
  ProjectsLocationsInsightsdataResource get insightsdata =>
      ProjectsLocationsInsightsdataResource(_requester);
  ProjectsLocationsIssueModelsResource get issueModels =>
      ProjectsLocationsIssueModelsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsPhraseMatchersResource get phraseMatchers =>
      ProjectsLocationsPhraseMatchersResource(_requester);
  ProjectsLocationsViewsResource get views =>
      ProjectsLocationsViewsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

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

class ProjectsLocationsConversationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationsAnalysesResource get analyses =>
      ProjectsLocationsConversationsAnalysesResource(_requester);

  ProjectsLocationsConversationsResource(commons.ApiRequester client)
      : _requester = client;

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
  /// [pageSize] - The maximum number of conversations to return in the
  /// response. A valid page size ranges from 0 to 1,000 inclusive. If the page
  /// size is zero or unspecified, a default page size of 100 will be chosen.
  /// Note that a call might return fewer results than the requested page size.
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
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
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
  /// [updateMask] - The list of fields to be updated.
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
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
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
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
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
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          requestTime: json_.containsKey('requestTime')
              ? json_['requestTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysisResult != null) 'analysisResult': analysisResult!,
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
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
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

  /// Overall conversation-level sentiment for each channel of the call.
  core.List<GoogleCloudContactcenterinsightsV1ConversationLevelSentiment>?
      sentiments;

  GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata({
    this.annotations,
    this.entities,
    this.intents,
    this.issueModelResult,
    this.phraseMatchers,
    this.sentiments,
  });

  GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata.fromJson(
      core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.List)
                  .map((value) =>
                      GoogleCloudContactcenterinsightsV1CallAnnotation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          entities: json_.containsKey('entities')
              ? (json_['entities'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudContactcenterinsightsV1Entity.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          intents: json_.containsKey('intents')
              ? (json_['intents'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudContactcenterinsightsV1Intent.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          issueModelResult: json_.containsKey('issueModelResult')
              ? GoogleCloudContactcenterinsightsV1IssueModelResult.fromJson(
                  json_['issueModelResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          phraseMatchers: json_.containsKey('phraseMatchers')
              ? (json_['phraseMatchers'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudContactcenterinsightsV1PhraseMatchData.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          sentiments: json_.containsKey('sentiments')
              ? (json_['sentiments'] as core.List)
                  .map((value) =>
                      GoogleCloudContactcenterinsightsV1ConversationLevelSentiment
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (entities != null) 'entities': entities!,
        if (intents != null) 'intents': intents!,
        if (issueModelResult != null) 'issueModelResult': issueModelResult!,
        if (phraseMatchers != null) 'phraseMatchers': phraseMatchers!,
        if (sentiments != null) 'sentiments': sentiments!,
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
          transcriptIndex: json_.containsKey('transcriptIndex')
              ? json_['transcriptIndex'] as core.int
              : null,
          wordIndex: json_.containsKey('wordIndex')
              ? json_['wordIndex'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transcriptIndex != null) 'transcriptIndex': transcriptIndex!,
        if (wordIndex != null) 'wordIndex': wordIndex!,
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
          clicked: json_.containsKey('clicked')
              ? json_['clicked'] as core.bool
              : null,
          correctnessLevel: json_.containsKey('correctnessLevel')
              ? json_['correctnessLevel'] as core.String
              : null,
          displayed: json_.containsKey('displayed')
              ? json_['displayed'] as core.bool
              : null,
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
              ? (json_['confidenceScore'] as core.num).toDouble()
              : null,
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          queryRecord: json_.containsKey('queryRecord')
              ? json_['queryRecord'] as core.String
              : null,
          source: json_.containsKey('source')
              ? json_['source'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidenceScore != null) 'confidenceScore': confidenceScore!,
        if (metadata != null) 'metadata': metadata!,
        if (queryRecord != null) 'queryRecord': queryRecord!,
        if (source != null) 'source': source!,
        if (title != null) 'title': title!,
        if (uri != null) 'uri': uri!,
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
          averageDuration: json_.containsKey('averageDuration')
              ? json_['averageDuration'] as core.String
              : null,
          averageTurnCount: json_.containsKey('averageTurnCount')
              ? json_['averageTurnCount'] as core.int
              : null,
          conversationCount: json_.containsKey('conversationCount')
              ? json_['conversationCount'] as core.int
              : null,
          conversationCountTimeSeries: json_
                  .containsKey('conversationCountTimeSeries')
              ? GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries
                  .fromJson(json_['conversationCountTimeSeries']
                      as core.Map<core.String, core.dynamic>)
              : null,
          customHighlighterMatches:
              json_.containsKey('customHighlighterMatches')
                  ? (json_['customHighlighterMatches']
                          as core.Map<core.String, core.dynamic>)
                      .map(
                      (key, item) => core.MapEntry(
                        key,
                        item as core.int,
                      ),
                    )
                  : null,
          issueMatches: json_.containsKey('issueMatches')
              ? (json_['issueMatches'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.int,
                  ),
                )
              : null,
          issueMatchesStats: json_.containsKey('issueMatchesStats')
              ? (json_['issueMatchesStats']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats
                        .fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          smartHighlighterMatches: json_.containsKey('smartHighlighterMatches')
              ? (json_['smartHighlighterMatches']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.int,
                  ),
                )
              : null,
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
          intervalDuration: json_.containsKey('intervalDuration')
              ? json_['intervalDuration'] as core.String
              : null,
          points: json_.containsKey('points')
              ? (json_['points'] as core.List)
                  .map((value) =>
                      GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
          conversationCount: json_.containsKey('conversationCount')
              ? json_['conversationCount'] as core.int
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
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
          channelTag: json_.containsKey('channelTag')
              ? json_['channelTag'] as core.int
              : null,
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
  /// A maximum of 20 labels per conversation is allowed, with a maximum of 256
  /// characters per entry.
  core.Map<core.String, core.String>? labels;

  /// A user-specified language code for the conversation.
  core.String? languageCode;

  /// The conversation's latest analysis, if one exists.
  ///
  /// Output only.
  GoogleCloudContactcenterinsightsV1Analysis? latestAnalysis;

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

  /// The resource name of the conversation.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/conversations/{conversation}
  ///
  /// Immutable.
  core.String? name;

  /// Obfuscated user ID which the customer sent to us.
  core.String? obfuscatedUserId;

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
    this.medium,
    this.name,
    this.obfuscatedUserId,
    this.runtimeAnnotations,
    this.startTime,
    this.transcript,
    this.ttl,
    this.turnCount,
    this.updateTime,
  });

  GoogleCloudContactcenterinsightsV1Conversation.fromJson(core.Map json_)
      : this(
          agentId: json_.containsKey('agentId')
              ? json_['agentId'] as core.String
              : null,
          callMetadata: json_.containsKey('callMetadata')
              ? GoogleCloudContactcenterinsightsV1ConversationCallMetadata
                  .fromJson(json_['callMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          dataSource: json_.containsKey('dataSource')
              ? GoogleCloudContactcenterinsightsV1ConversationDataSource
                  .fromJson(json_['dataSource']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dialogflowIntents: json_.containsKey('dialogflowIntents')
              ? (json_['dialogflowIntents']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudContactcenterinsightsV1DialogflowIntent.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          duration: json_.containsKey('duration')
              ? json_['duration'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          latestAnalysis: json_.containsKey('latestAnalysis')
              ? GoogleCloudContactcenterinsightsV1Analysis.fromJson(
                  json_['latestAnalysis']
                      as core.Map<core.String, core.dynamic>)
              : null,
          medium: json_.containsKey('medium')
              ? json_['medium'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          obfuscatedUserId: json_.containsKey('obfuscatedUserId')
              ? json_['obfuscatedUserId'] as core.String
              : null,
          runtimeAnnotations: json_.containsKey('runtimeAnnotations')
              ? (json_['runtimeAnnotations'] as core.List)
                  .map((value) =>
                      GoogleCloudContactcenterinsightsV1RuntimeAnnotation
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          transcript: json_.containsKey('transcript')
              ? GoogleCloudContactcenterinsightsV1ConversationTranscript
                  .fromJson(json_['transcript']
                      as core.Map<core.String, core.dynamic>)
              : null,
          ttl: json_.containsKey('ttl') ? json_['ttl'] as core.String : null,
          turnCount: json_.containsKey('turnCount')
              ? json_['turnCount'] as core.int
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
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
        if (medium != null) 'medium': medium!,
        if (name != null) 'name': name!,
        if (obfuscatedUserId != null) 'obfuscatedUserId': obfuscatedUserId!,
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
          agentChannel: json_.containsKey('agentChannel')
              ? json_['agentChannel'] as core.int
              : null,
          customerChannel: json_.containsKey('customerChannel')
              ? json_['customerChannel'] as core.int
              : null,
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
          channelTag: json_.containsKey('channelTag')
              ? json_['channelTag'] as core.int
              : null,
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

/// The call participant speaking for a given utterance.
class GoogleCloudContactcenterinsightsV1ConversationParticipant {
  /// Use `dialogflow_participant_name` instead.
  ///
  /// The name of the Dialogflow participant. Format:
  /// projects/{project}/locations/{location}/conversations/{conversation}/participants/{participant}
  ///
  /// Deprecated.
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
          dialogflowParticipant: json_.containsKey('dialogflowParticipant')
              ? json_['dialogflowParticipant'] as core.String
              : null,
          dialogflowParticipantName:
              json_.containsKey('dialogflowParticipantName')
                  ? json_['dialogflowParticipantName'] as core.String
                  : null,
          obfuscatedExternalUserId:
              json_.containsKey('obfuscatedExternalUserId')
                  ? json_['obfuscatedExternalUserId'] as core.String
                  : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
          userId: json_.containsKey('userId')
              ? json_['userId'] as core.String
              : null,
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
          transcriptSegments: json_.containsKey('transcriptSegments')
              ? (json_['transcriptSegments'] as core.List)
                  .map((value) =>
                      GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
          channelTag: json_.containsKey('channelTag')
              ? json_['channelTag'] as core.int
              : null,
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          dialogflowSegmentMetadata: json_
                  .containsKey('dialogflowSegmentMetadata')
              ? GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata
                  .fromJson(json_['dialogflowSegmentMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          messageTime: json_.containsKey('messageTime')
              ? json_['messageTime'] as core.String
              : null,
          segmentParticipant: json_.containsKey('segmentParticipant')
              ? GoogleCloudContactcenterinsightsV1ConversationParticipant
                  .fromJson(json_['segmentParticipant']
                      as core.Map<core.String, core.dynamic>)
              : null,
          sentiment: json_.containsKey('sentiment')
              ? GoogleCloudContactcenterinsightsV1SentimentData.fromJson(
                  json_['sentiment'] as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
          words: json_.containsKey('words')
              ? (json_['words'] as core.List)
                  .map((value) =>
                      GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelTag != null) 'channelTag': channelTag!,
        if (confidence != null) 'confidence': confidence!,
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
              json_.containsKey('smartReplyAllowlistCovered')
                  ? json_['smartReplyAllowlistCovered'] as core.bool
                  : null,
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
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          endOffset: json_.containsKey('endOffset')
              ? json_['endOffset'] as core.String
              : null,
          startOffset: json_.containsKey('startOffset')
              ? json_['startOffset'] as core.String
              : null,
          word: json_.containsKey('word') ? json_['word'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
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
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

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
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
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
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          dialogflowIntentId: json_.containsKey('dialogflowIntentId')
              ? json_['dialogflowIntentId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
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
          audioUri: json_.containsKey('audioUri')
              ? json_['audioUri'] as core.String
              : null,
          dialogflowConversation: json_.containsKey('dialogflowConversation')
              ? json_['dialogflowConversation'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioUri != null) 'audioUri': audioUri!,
        if (dialogflowConversation != null)
          'dialogflowConversation': dialogflowConversation!,
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
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          salience: json_.containsKey('salience')
              ? (json_['salience'] as core.num).toDouble()
              : null,
          sentiment: json_.containsKey('sentiment')
              ? GoogleCloudContactcenterinsightsV1SentimentData.fromJson(
                  json_['sentiment'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (metadata != null) 'metadata': metadata!,
        if (salience != null) 'salience': salience!,
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
          entityUniqueId: json_.containsKey('entityUniqueId')
              ? json_['entityUniqueId'] as core.String
              : null,
          sentiment: json_.containsKey('sentiment')
              ? GoogleCloudContactcenterinsightsV1SentimentData.fromJson(
                  json_['sentiment'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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
          caseSensitive: json_.containsKey('caseSensitive')
              ? json_['caseSensitive'] as core.bool
              : null,
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
          filter: json_.containsKey('filter')
              ? json_['filter'] as core.String
              : null,
          kmsKey: json_.containsKey('kmsKey')
              ? json_['kmsKey'] as core.String
              : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          writeDisposition: json_.containsKey('writeDisposition')
              ? json_['writeDisposition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigQueryDestination != null)
          'bigQueryDestination': bigQueryDestination!,
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
          dataset: json_.containsKey('dataset')
              ? json_['dataset'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          table:
              json_.containsKey('table') ? json_['table'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataset != null) 'dataset': dataset!,
        if (projectId != null) 'projectId': projectId!,
        if (table != null) 'table': table!,
      };
}

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
          answer: json_.containsKey('answer')
              ? json_['answer'] as core.String
              : null,
          confidenceScore: json_.containsKey('confidenceScore')
              ? (json_['confidenceScore'] as core.num).toDouble()
              : null,
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          queryRecord: json_.containsKey('queryRecord')
              ? json_['queryRecord'] as core.String
              : null,
          question: json_.containsKey('question')
              ? json_['question'] as core.String
              : null,
          source: json_.containsKey('source')
              ? json_['source'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answer != null) 'answer': answer!,
        if (confidenceScore != null) 'confidenceScore': confidenceScore!,
        if (metadata != null) 'metadata': metadata!,
        if (queryRecord != null) 'queryRecord': queryRecord!,
        if (question != null) 'question': question!,
        if (source != null) 'source': source!,
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
          audioUri: json_.containsKey('audioUri')
              ? json_['audioUri'] as core.String
              : null,
          transcriptUri: json_.containsKey('transcriptUri')
              ? json_['transcriptUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioUri != null) 'audioUri': audioUri!,
        if (transcriptUri != null) 'transcriptUri': transcriptUri!,
      };
}

/// The data for a hold annotation.
typedef GoogleCloudContactcenterinsightsV1HoldData = $Empty;

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
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
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
          intentUniqueId: json_.containsKey('intentUniqueId')
              ? json_['intentUniqueId'] as core.String
              : null,
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

  /// The representative name for the issue.
  core.String? displayName;

  /// The resource name of the issue.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/issueModels/{issue_model}/issues/{issue}
  ///
  /// Immutable.
  core.String? name;

  /// The most recent time that this issue was updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudContactcenterinsightsV1Issue({
    this.createTime,
    this.displayName,
    this.name,
    this.updateTime,
  });

  GoogleCloudContactcenterinsightsV1Issue.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Information about the issue.
class GoogleCloudContactcenterinsightsV1IssueAssignment {
  /// Display name of the assigned issue.
  ///
  /// This field is set at time of analyis and immutable since then.
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
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          issue:
              json_.containsKey('issue') ? json_['issue'] as core.String : null,
          score: json_.containsKey('score')
              ? (json_['score'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (issue != null) 'issue': issue!,
        if (score != null) 'score': score!,
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
    this.name,
    this.state,
    this.trainingStats,
    this.updateTime,
  });

  GoogleCloudContactcenterinsightsV1IssueModel.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          inputDataConfig: json_.containsKey('inputDataConfig')
              ? GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig
                  .fromJson(json_['inputDataConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          trainingStats: json_.containsKey('trainingStats')
              ? GoogleCloudContactcenterinsightsV1IssueModelLabelStats.fromJson(
                  json_['trainingStats'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (inputDataConfig != null) 'inputDataConfig': inputDataConfig!,
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
          filter: json_.containsKey('filter')
              ? json_['filter'] as core.String
              : null,
          medium: json_.containsKey('medium')
              ? json_['medium'] as core.String
              : null,
          trainingConversationsCount:
              json_.containsKey('trainingConversationsCount')
                  ? json_['trainingConversationsCount'] as core.String
                  : null,
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
              json_.containsKey('analyzedConversationsCount')
                  ? json_['analyzedConversationsCount'] as core.String
                  : null,
          issueStats: json_.containsKey('issueStats')
              ? (json_['issueStats'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats
                        .fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          unclassifiedConversationsCount:
              json_.containsKey('unclassifiedConversationsCount')
                  ? json_['unclassifiedConversationsCount'] as core.String
                  : null,
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
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          issue:
              json_.containsKey('issue') ? json_['issue'] as core.String : null,
          labeledConversationsCount:
              json_.containsKey('labeledConversationsCount')
                  ? json_['labeledConversationsCount'] as core.String
                  : null,
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
          issueModel: json_.containsKey('issueModel')
              ? json_['issueModel'] as core.String
              : null,
          issues: json_.containsKey('issues')
              ? (json_['issues'] as core.List)
                  .map((value) =>
                      GoogleCloudContactcenterinsightsV1IssueAssignment
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (issueModel != null) 'issueModel': issueModel!,
        if (issues != null) 'issues': issues!,
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
          analyses: json_.containsKey('analyses')
              ? (json_['analyses'] as core.List)
                  .map((value) =>
                      GoogleCloudContactcenterinsightsV1Analysis.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analyses != null) 'analyses': analyses!,
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
          conversations: json_.containsKey('conversations')
              ? (json_['conversations'] as core.List)
                  .map((value) =>
                      GoogleCloudContactcenterinsightsV1Conversation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversations != null) 'conversations': conversations!,
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
          issueModels: json_.containsKey('issueModels')
              ? (json_['issueModels'] as core.List)
                  .map((value) =>
                      GoogleCloudContactcenterinsightsV1IssueModel.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
          issues: json_.containsKey('issues')
              ? (json_['issues'] as core.List)
                  .map((value) =>
                      GoogleCloudContactcenterinsightsV1Issue.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          phraseMatchers: json_.containsKey('phraseMatchers')
              ? (json_['phraseMatchers'] as core.List)
                  .map((value) =>
                      GoogleCloudContactcenterinsightsV1PhraseMatcher.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (phraseMatchers != null) 'phraseMatchers': phraseMatchers!,
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
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          views: json_.containsKey('views')
              ? (json_['views'] as core.List)
                  .map((value) =>
                      GoogleCloudContactcenterinsightsV1View.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          phraseMatcher: json_.containsKey('phraseMatcher')
              ? json_['phraseMatcher'] as core.String
              : null,
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
          negated: json_.containsKey('negated')
              ? json_['negated'] as core.bool
              : null,
          query:
              json_.containsKey('query') ? json_['query'] as core.String : null,
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
  /// A list of phase match rules that are included in this group.
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
          phraseMatchRules: json_.containsKey('phraseMatchRules')
              ? (json_['phraseMatchRules'] as core.List)
                  .map((value) =>
                      GoogleCloudContactcenterinsightsV1PhraseMatchRule
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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
          activationUpdateTime: json_.containsKey('activationUpdateTime')
              ? json_['activationUpdateTime'] as core.String
              : null,
          active:
              json_.containsKey('active') ? json_['active'] as core.bool : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          phraseMatchRuleGroups: json_.containsKey('phraseMatchRuleGroups')
              ? (json_['phraseMatchRuleGroups'] as core.List)
                  .map((value) =>
                      GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          revisionCreateTime: json_.containsKey('revisionCreateTime')
              ? json_['revisionCreateTime'] as core.String
              : null,
          revisionId: json_.containsKey('revisionId')
              ? json_['revisionId'] as core.String
              : null,
          roleMatch: json_.containsKey('roleMatch')
              ? json_['roleMatch'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          versionTag: json_.containsKey('versionTag')
              ? json_['versionTag'] as core.String
              : null,
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

  GoogleCloudContactcenterinsightsV1RuntimeAnnotation({
    this.annotationId,
    this.answerFeedback,
    this.articleSuggestion,
    this.createTime,
    this.dialogflowInteraction,
    this.endBoundary,
    this.faqAnswer,
    this.smartComposeSuggestion,
    this.smartReply,
    this.startBoundary,
  });

  GoogleCloudContactcenterinsightsV1RuntimeAnnotation.fromJson(core.Map json_)
      : this(
          annotationId: json_.containsKey('annotationId')
              ? json_['annotationId'] as core.String
              : null,
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
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
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
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationId != null) 'annotationId': annotationId!,
        if (answerFeedback != null) 'answerFeedback': answerFeedback!,
        if (articleSuggestion != null) 'articleSuggestion': articleSuggestion!,
        if (createTime != null) 'createTime': createTime!,
        if (dialogflowInteraction != null)
          'dialogflowInteraction': dialogflowInteraction!,
        if (endBoundary != null) 'endBoundary': endBoundary!,
        if (faqAnswer != null) 'faqAnswer': faqAnswer!,
        if (smartComposeSuggestion != null)
          'smartComposeSuggestion': smartComposeSuggestion!,
        if (smartReply != null) 'smartReply': smartReply!,
        if (startBoundary != null) 'startBoundary': startBoundary!,
      };
}

/// The data for a sentiment annotation.
class GoogleCloudContactcenterinsightsV1SentimentData {
  /// A non-negative number from 0 to infinity which represents the abolute
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
              ? (json_['magnitude'] as core.num).toDouble()
              : null,
          score: json_.containsKey('score')
              ? (json_['score'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (magnitude != null) 'magnitude': magnitude!,
        if (score != null) 'score': score!,
      };
}

/// The settings resource.
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
  /// "update-conversation": Notify each time a conversation is updated via
  /// UpdateConversation. Values are Pub/Sub topics. The format of each Pub/Sub
  /// topic is: projects/{project}/topics/{topic}
  core.Map<core.String, core.String>? pubsubNotificationSettings;

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
    this.updateTime,
  });

  GoogleCloudContactcenterinsightsV1Settings.fromJson(core.Map json_)
      : this(
          analysisConfig: json_.containsKey('analysisConfig')
              ? GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig
                  .fromJson(json_['analysisConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          conversationTtl: json_.containsKey('conversationTtl')
              ? json_['conversationTtl'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pubsubNotificationSettings:
              json_.containsKey('pubsubNotificationSettings')
                  ? (json_['pubsubNotificationSettings']
                          as core.Map<core.String, core.dynamic>)
                      .map(
                      (key, item) => core.MapEntry(
                        key,
                        item as core.String,
                      ),
                    )
                  : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysisConfig != null) 'analysisConfig': analysisConfig!,
        if (conversationTtl != null) 'conversationTtl': conversationTtl!,
        if (createTime != null) 'createTime': createTime!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (name != null) 'name': name!,
        if (pubsubNotificationSettings != null)
          'pubsubNotificationSettings': pubsubNotificationSettings!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Default configuration when creating Analyses in Insights.
class GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig {
  /// Percentage of conversations created using Dialogflow runtime integration
  /// to analyze automatically, between \[0, 100\].
  core.double? runtimeIntegrationAnalysisPercentage;

  GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig({
    this.runtimeIntegrationAnalysisPercentage,
  });

  GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig.fromJson(
      core.Map json_)
      : this(
          runtimeIntegrationAnalysisPercentage:
              json_.containsKey('runtimeIntegrationAnalysisPercentage')
                  ? (json_['runtimeIntegrationAnalysisPercentage'] as core.num)
                      .toDouble()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (runtimeIntegrationAnalysisPercentage != null)
          'runtimeIntegrationAnalysisPercentage':
              runtimeIntegrationAnalysisPercentage!,
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
              ? (json_['confidenceScore'] as core.num).toDouble()
              : null,
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          queryRecord: json_.containsKey('queryRecord')
              ? json_['queryRecord'] as core.String
              : null,
          suggestion: json_.containsKey('suggestion')
              ? json_['suggestion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidenceScore != null) 'confidenceScore': confidenceScore!,
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
              ? (json_['confidenceScore'] as core.num).toDouble()
              : null,
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          queryRecord: json_.containsKey('queryRecord')
              ? json_['queryRecord'] as core.String
              : null,
          reply:
              json_.containsKey('reply') ? json_['reply'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidenceScore != null) 'confidenceScore': confidenceScore!,
        if (metadata != null) 'metadata': metadata!,
        if (queryRecord != null) 'queryRecord': queryRecord!,
        if (reply != null) 'reply': reply!,
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
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
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

  /// String with specific view properties.
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
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
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
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) => GoogleLongrunningOperation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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

  /// The normal response of the operation in case of success.
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
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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
typedef GoogleRpcStatus = $Status;
