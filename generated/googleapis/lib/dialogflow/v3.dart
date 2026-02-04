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

/// Dialogflow API - v3
///
/// Builds conversational interfaces (for example, chatbots, and voice-powered
/// apps and devices).
///
/// For more information, see <https://cloud.google.com/dialogflow/>
///
/// Create an instance of [DialogflowApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAgentsResource]
///       - [ProjectsLocationsAgentsChangelogsResource]
///       - [ProjectsLocationsAgentsEntityTypesResource]
///       - [ProjectsLocationsAgentsEnvironmentsResource]
/// - [ProjectsLocationsAgentsEnvironmentsContinuousTestResultsResource]
///         - [ProjectsLocationsAgentsEnvironmentsDeploymentsResource]
///         - [ProjectsLocationsAgentsEnvironmentsExperimentsResource]
///         - [ProjectsLocationsAgentsEnvironmentsSessionsResource]
/// - [ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesResource]
///       - [ProjectsLocationsAgentsFlowsResource]
///         - [ProjectsLocationsAgentsFlowsPagesResource]
///         - [ProjectsLocationsAgentsFlowsTransitionRouteGroupsResource]
///         - [ProjectsLocationsAgentsFlowsVersionsResource]
///       - [ProjectsLocationsAgentsGeneratorsResource]
///       - [ProjectsLocationsAgentsIntentsResource]
///       - [ProjectsLocationsAgentsPlaybooksResource]
///         - [ProjectsLocationsAgentsPlaybooksExamplesResource]
///         - [ProjectsLocationsAgentsPlaybooksVersionsResource]
///       - [ProjectsLocationsAgentsSessionsResource]
///         - [ProjectsLocationsAgentsSessionsEntityTypesResource]
///       - [ProjectsLocationsAgentsTestCasesResource]
///         - [ProjectsLocationsAgentsTestCasesResultsResource]
///       - [ProjectsLocationsAgentsToolsResource]
///         - [ProjectsLocationsAgentsToolsVersionsResource]
///       - [ProjectsLocationsAgentsTransitionRouteGroupsResource]
///       - [ProjectsLocationsAgentsWebhooksResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsSecuritySettingsResource]
///   - [ProjectsOperationsResource]
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

/// Builds conversational interfaces (for example, chatbots, and voice-powered
/// apps and devices).
class DialogflowApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View, manage and query your Dialogflow agents
  static const dialogflowScope = 'https://www.googleapis.com/auth/dialogflow';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DialogflowApi(
    http.Client client, {
    core.String rootUrl = 'https://dialogflow.googleapis.com/',
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

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsResource get agents =>
      ProjectsLocationsAgentsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsSecuritySettingsResource get securitySettings =>
      ProjectsLocationsSecuritySettingsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudLocationLocation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [extraLocationTypes] - null
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
      'extraLocationTypes': ?extraLocationTypes,
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/locations';

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

class ProjectsLocationsAgentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsChangelogsResource get changelogs =>
      ProjectsLocationsAgentsChangelogsResource(_requester);
  ProjectsLocationsAgentsEntityTypesResource get entityTypes =>
      ProjectsLocationsAgentsEntityTypesResource(_requester);
  ProjectsLocationsAgentsEnvironmentsResource get environments =>
      ProjectsLocationsAgentsEnvironmentsResource(_requester);
  ProjectsLocationsAgentsFlowsResource get flows =>
      ProjectsLocationsAgentsFlowsResource(_requester);
  ProjectsLocationsAgentsGeneratorsResource get generators =>
      ProjectsLocationsAgentsGeneratorsResource(_requester);
  ProjectsLocationsAgentsIntentsResource get intents =>
      ProjectsLocationsAgentsIntentsResource(_requester);
  ProjectsLocationsAgentsPlaybooksResource get playbooks =>
      ProjectsLocationsAgentsPlaybooksResource(_requester);
  ProjectsLocationsAgentsSessionsResource get sessions =>
      ProjectsLocationsAgentsSessionsResource(_requester);
  ProjectsLocationsAgentsTestCasesResource get testCases =>
      ProjectsLocationsAgentsTestCasesResource(_requester);
  ProjectsLocationsAgentsToolsResource get tools =>
      ProjectsLocationsAgentsToolsResource(_requester);
  ProjectsLocationsAgentsTransitionRouteGroupsResource
  get transitionRouteGroups =>
      ProjectsLocationsAgentsTransitionRouteGroupsResource(_requester);
  ProjectsLocationsAgentsWebhooksResource get webhooks =>
      ProjectsLocationsAgentsWebhooksResource(_requester);

  ProjectsLocationsAgentsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Agent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Agent> create(
    GoogleCloudDialogflowCxV3Agent request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/agents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Agent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
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
    GoogleCloudDialogflowCxV3ExportAgentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':export';

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

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Agent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Agent> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Agent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/generativeSettings$`.
  ///
  /// [languageCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3GenerativeSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3GenerativeSettings>
  getGenerativeSettings(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3GenerativeSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/validationResult$`.
  ///
  /// [languageCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3AgentValidationResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3AgentValidationResult>
  getValidationResult(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3AgentValidationResult.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListAgentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListAgentsResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/agents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListAgentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Agent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Agent> patch(
    GoogleCloudDialogflowCxV3Agent request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Agent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> restore(
    GoogleCloudDialogflowCxV3RestoreAgentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':restore';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/generativeSettings$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3GenerativeSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3GenerativeSettings>
  updateGenerativeSettings(
    GoogleCloudDialogflowCxV3GenerativeSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3GenerativeSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3AgentValidationResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3AgentValidationResult> validate(
    GoogleCloudDialogflowCxV3ValidateAgentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':validate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3AgentValidationResult.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsChangelogsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsChangelogsResource(commons.ApiRequester client)
    : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/changelogs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Changelog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Changelog> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Changelog.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListChangelogsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListChangelogsResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/changelogs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListChangelogsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEntityTypesResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3EntityType> create(
    GoogleCloudDialogflowCxV3EntityType request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3EntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [force] - null
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
      'force': ?force == null ? null : ['${force}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
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
    GoogleCloudDialogflowCxV3ExportEntityTypesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/entityTypes:export';

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

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3EntityType> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3EntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
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
    GoogleCloudDialogflowCxV3ImportEntityTypesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/entityTypes:import';

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

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListEntityTypesResponse> list(
    core.String parent, {
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListEntityTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3EntityType> patch(
    GoogleCloudDialogflowCxV3EntityType request,
    core.String name, {
    core.String? languageCode,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3EntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsEnvironmentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEnvironmentsContinuousTestResultsResource
  get continuousTestResults =>
      ProjectsLocationsAgentsEnvironmentsContinuousTestResultsResource(
        _requester,
      );
  ProjectsLocationsAgentsEnvironmentsDeploymentsResource get deployments =>
      ProjectsLocationsAgentsEnvironmentsDeploymentsResource(_requester);
  ProjectsLocationsAgentsEnvironmentsExperimentsResource get experiments =>
      ProjectsLocationsAgentsEnvironmentsExperimentsResource(_requester);
  ProjectsLocationsAgentsEnvironmentsSessionsResource get sessions =>
      ProjectsLocationsAgentsEnvironmentsSessionsResource(_requester);

  ProjectsLocationsAgentsEnvironmentsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
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
    GoogleCloudDialogflowCxV3Environment request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/environments';

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

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [environment] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> deployFlow(
    GoogleCloudDialogflowCxV3DeployFlowRequest request,
    core.String environment, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$environment') + ':deployFlow';

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

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Environment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Environment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListEnvironmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListEnvironmentsResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/environments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListEnvironmentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse>
  lookupEnvironmentHistory(
    core.String name, {
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
        'v3/' + core.Uri.encodeFull('$name') + ':lookupEnvironmentHistory';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    GoogleCloudDialogflowCxV3Environment request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [environment] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> runContinuousTest(
    GoogleCloudDialogflowCxV3RunContinuousTestRequest request,
    core.String environment, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$environment') + ':runContinuousTest';

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

class ProjectsLocationsAgentsEnvironmentsContinuousTestResultsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEnvironmentsContinuousTestResultsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse> list(
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
        'v3/' + core.Uri.encodeFull('$parent') + '/continuousTestResults';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsEnvironmentsDeploymentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEnvironmentsDeploymentsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Deployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Deployment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Deployment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListDeploymentsResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/deployments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListDeploymentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsEnvironmentsExperimentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEnvironmentsExperimentsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Experiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Experiment> create(
    GoogleCloudDialogflowCxV3Experiment request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/experiments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Experiment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/experiments/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/experiments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Experiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Experiment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Experiment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListExperimentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListExperimentsResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/experiments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListExperimentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/experiments/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Experiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Experiment> patch(
    GoogleCloudDialogflowCxV3Experiment request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Experiment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/experiments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Experiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Experiment> start(
    GoogleCloudDialogflowCxV3StartExperimentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':start';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Experiment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/experiments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Experiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Experiment> stop(
    GoogleCloudDialogflowCxV3StopExperimentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':stop';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Experiment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsEnvironmentsSessionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesResource
  get entityTypes =>
      ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesResource(
        _requester,
      );

  ProjectsLocationsAgentsEnvironmentsSessionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3DetectIntentResponse> detectIntent(
    GoogleCloudDialogflowCxV3DetectIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$session') + ':detectIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3DetectIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3FulfillIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3FulfillIntentResponse> fulfillIntent(
    GoogleCloudDialogflowCxV3FulfillIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$session') + ':fulfillIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3FulfillIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3MatchIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3MatchIntentResponse> matchIntent(
    GoogleCloudDialogflowCxV3MatchIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$session') + ':matchIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3MatchIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3DetectIntentResponse>
  serverStreamingDetectIntent(
    GoogleCloudDialogflowCxV3DetectIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v3/' +
        core.Uri.encodeFull('$session') +
        ':serverStreamingDetectIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3DetectIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3SessionEntityType> create(
    GoogleCloudDialogflowCxV3SessionEntityType request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3SessionEntityType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3SessionEntityType> patch(
    GoogleCloudDialogflowCxV3SessionEntityType request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsFlowsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsFlowsPagesResource get pages =>
      ProjectsLocationsAgentsFlowsPagesResource(_requester);
  ProjectsLocationsAgentsFlowsTransitionRouteGroupsResource
  get transitionRouteGroups =>
      ProjectsLocationsAgentsFlowsTransitionRouteGroupsResource(_requester);
  ProjectsLocationsAgentsFlowsVersionsResource get versions =>
      ProjectsLocationsAgentsFlowsVersionsResource(_requester);

  ProjectsLocationsAgentsFlowsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Flow].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Flow> create(
    GoogleCloudDialogflowCxV3Flow request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/flows';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Flow.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [force] - null
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
      'force': ?force == null ? null : ['${force}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
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
    GoogleCloudDialogflowCxV3ExportFlowRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':export';

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

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Flow].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Flow> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Flow.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/validationResult$`.
  ///
  /// [languageCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3FlowValidationResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3FlowValidationResult>
  getValidationResult(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3FlowValidationResult.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
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
    GoogleCloudDialogflowCxV3ImportFlowRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/flows:import';

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

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListFlowsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListFlowsResponse> list(
    core.String parent, {
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/flows';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListFlowsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Flow].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Flow> patch(
    GoogleCloudDialogflowCxV3Flow request,
    core.String name, {
    core.String? languageCode,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Flow.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> train(
    GoogleCloudDialogflowCxV3TrainFlowRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':train';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3FlowValidationResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3FlowValidationResult> validate(
    GoogleCloudDialogflowCxV3ValidateFlowRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':validate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3FlowValidationResult.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsFlowsPagesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsFlowsPagesResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Page].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Page> create(
    GoogleCloudDialogflowCxV3Page request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/pages';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Page.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/pages/\[^/\]+$`.
  ///
  /// [force] - null
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
      'force': ?force == null ? null : ['${force}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/pages/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Page].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Page> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Page.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListPagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListPagesResponse> list(
    core.String parent, {
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/pages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListPagesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/pages/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Page].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Page> patch(
    GoogleCloudDialogflowCxV3Page request,
    core.String name, {
    core.String? languageCode,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Page.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsFlowsTransitionRouteGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsFlowsTransitionRouteGroupsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3TransitionRouteGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3TransitionRouteGroup> create(
    GoogleCloudDialogflowCxV3TransitionRouteGroup request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$parent') + '/transitionRouteGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/transitionRouteGroups/\[^/\]+$`.
  ///
  /// [force] - null
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
      'force': ?force == null ? null : ['${force}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/transitionRouteGroups/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3TransitionRouteGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3TransitionRouteGroup> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse> list(
    core.String parent, {
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$parent') + '/transitionRouteGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/transitionRouteGroups/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3TransitionRouteGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3TransitionRouteGroup> patch(
    GoogleCloudDialogflowCxV3TransitionRouteGroup request,
    core.String name, {
    core.String? languageCode,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsFlowsVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsFlowsVersionsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [baseVersion] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3CompareVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3CompareVersionsResponse>
  compareVersions(
    GoogleCloudDialogflowCxV3CompareVersionsRequest request,
    core.String baseVersion, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$baseVersion') + ':compareVersions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3CompareVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
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
    GoogleCloudDialogflowCxV3Version request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/versions';

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

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/versions/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Version> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Version.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListVersionsResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/versions/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> load(
    GoogleCloudDialogflowCxV3LoadVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':load';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Version> patch(
    GoogleCloudDialogflowCxV3Version request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Version.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsGeneratorsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsGeneratorsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Generator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Generator> create(
    GoogleCloudDialogflowCxV3Generator request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/generators';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Generator.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/generators/\[^/\]+$`.
  ///
  /// [force] - null
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
      'force': ?force == null ? null : ['${force}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/generators/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Generator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Generator> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Generator.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListGeneratorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListGeneratorsResponse> list(
    core.String parent, {
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/generators';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListGeneratorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/generators/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Generator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Generator> patch(
    GoogleCloudDialogflowCxV3Generator request,
    core.String name, {
    core.String? languageCode,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Generator.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsIntentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsIntentsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Intent> create(
    GoogleCloudDialogflowCxV3Intent request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/intents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Intent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/intents/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
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
    GoogleCloudDialogflowCxV3ExportIntentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/intents:export';

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

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/intents/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Intent> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Intent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
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
    GoogleCloudDialogflowCxV3ImportIntentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/intents:import';

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

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [intentView] - null
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED"
  /// - "INTENT_VIEW_PARTIAL"
  /// - "INTENT_VIEW_FULL"
  ///
  /// [languageCode] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListIntentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListIntentsResponse> list(
    core.String parent, {
    core.String? intentView,
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'intentView': ?intentView == null ? null : [intentView],
      'languageCode': ?languageCode == null ? null : [languageCode],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/intents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListIntentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/intents/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Intent> patch(
    GoogleCloudDialogflowCxV3Intent request,
    core.String name, {
    core.String? languageCode,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Intent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsPlaybooksResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsPlaybooksExamplesResource get examples =>
      ProjectsLocationsAgentsPlaybooksExamplesResource(_requester);
  ProjectsLocationsAgentsPlaybooksVersionsResource get versions =>
      ProjectsLocationsAgentsPlaybooksVersionsResource(_requester);

  ProjectsLocationsAgentsPlaybooksResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Playbook].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Playbook> create(
    GoogleCloudDialogflowCxV3Playbook request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/playbooks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Playbook.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+$`.
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
    GoogleCloudDialogflowCxV3ExportPlaybookRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':export';

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

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Playbook].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Playbook> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Playbook.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
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
    GoogleCloudDialogflowCxV3ImportPlaybookRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/playbooks:import';

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

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListPlaybooksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListPlaybooksResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/playbooks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListPlaybooksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Playbook].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Playbook> patch(
    GoogleCloudDialogflowCxV3Playbook request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Playbook.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsPlaybooksExamplesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsPlaybooksExamplesResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Example].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Example> create(
    GoogleCloudDialogflowCxV3Example request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/examples';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Example.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+/examples/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+/examples/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Example].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Example> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Example.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListExamplesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListExamplesResponse> list(
    core.String parent, {
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/examples';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListExamplesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+/examples/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Example].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Example> patch(
    GoogleCloudDialogflowCxV3Example request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Example.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsPlaybooksVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsPlaybooksVersionsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3PlaybookVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3PlaybookVersion> create(
    GoogleCloudDialogflowCxV3PlaybookVersion request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3PlaybookVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+/versions/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3PlaybookVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3PlaybookVersion> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3PlaybookVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListPlaybookVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListPlaybookVersionsResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListPlaybookVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowCxV3RestorePlaybookVersionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3RestorePlaybookVersionResponse> restore(
    GoogleCloudDialogflowCxV3RestorePlaybookVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':restore';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3RestorePlaybookVersionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsSessionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsSessionsEntityTypesResource get entityTypes =>
      ProjectsLocationsAgentsSessionsEntityTypesResource(_requester);

  ProjectsLocationsAgentsSessionsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3DetectIntentResponse> detectIntent(
    GoogleCloudDialogflowCxV3DetectIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$session') + ':detectIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3DetectIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3FulfillIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3FulfillIntentResponse> fulfillIntent(
    GoogleCloudDialogflowCxV3FulfillIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$session') + ':fulfillIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3FulfillIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3MatchIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3MatchIntentResponse> matchIntent(
    GoogleCloudDialogflowCxV3MatchIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$session') + ':matchIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3MatchIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3DetectIntentResponse>
  serverStreamingDetectIntent(
    GoogleCloudDialogflowCxV3DetectIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v3/' +
        core.Uri.encodeFull('$session') +
        ':serverStreamingDetectIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3DetectIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3AnswerFeedback].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3AnswerFeedback> submitAnswerFeedback(
    GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$session') + ':submitAnswerFeedback';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3AnswerFeedback.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsSessionsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsSessionsEntityTypesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3SessionEntityType> create(
    GoogleCloudDialogflowCxV3SessionEntityType request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3SessionEntityType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3SessionEntityType> patch(
    GoogleCloudDialogflowCxV3SessionEntityType request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsTestCasesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsTestCasesResultsResource get results =>
      ProjectsLocationsAgentsTestCasesResultsResource(_requester);

  ProjectsLocationsAgentsTestCasesResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
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
    GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$parent') + '/testCases:batchDelete';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> batchRun(
    GoogleCloudDialogflowCxV3BatchRunTestCasesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/testCases:batchRun';

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

  /// Request parameters:
  ///
  /// [agent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [type] - null
  /// Possible string values are:
  /// - "COVERAGE_TYPE_UNSPECIFIED"
  /// - "INTENT"
  /// - "PAGE_TRANSITION"
  /// - "TRANSITION_ROUTE_GROUP"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3CalculateCoverageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3CalculateCoverageResponse>
  calculateCoverage(
    core.String agent, {
    core.String? type,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'type': ?type == null ? null : [type],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$agent') + '/testCases:calculateCoverage';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3CalculateCoverageResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3TestCase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3TestCase> create(
    GoogleCloudDialogflowCxV3TestCase request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/testCases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3TestCase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
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
    GoogleCloudDialogflowCxV3ExportTestCasesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/testCases:export';

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

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/testCases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3TestCase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3TestCase> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3TestCase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
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
    GoogleCloudDialogflowCxV3ImportTestCasesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/testCases:import';

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

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [view] - null
  /// Possible string values are:
  /// - "TEST_CASE_VIEW_UNSPECIFIED"
  /// - "BASIC"
  /// - "FULL"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListTestCasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListTestCasesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/testCases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListTestCasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/testCases/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3TestCase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3TestCase> patch(
    GoogleCloudDialogflowCxV3TestCase request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3TestCase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/testCases/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> run(
    GoogleCloudDialogflowCxV3RunTestCaseRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':run';

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

class ProjectsLocationsAgentsTestCasesResultsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsTestCasesResultsResource(commons.ApiRequester client)
    : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/testCases/\[^/\]+/results/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3TestCaseResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3TestCaseResult> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3TestCaseResult.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/testCases/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListTestCaseResultsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListTestCaseResultsResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/results';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListTestCaseResultsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsToolsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsToolsVersionsResource get versions =>
      ProjectsLocationsAgentsToolsVersionsResource(_requester);

  ProjectsLocationsAgentsToolsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Tool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Tool> create(
    GoogleCloudDialogflowCxV3Tool request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/tools';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Tool.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/tools/\[^/\]+$`.
  ///
  /// [force] - null
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
      'force': ?force == null ? null : ['${force}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/tools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Tool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Tool> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Tool.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListToolsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListToolsResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/tools';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListToolsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/tools/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Tool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Tool> patch(
    GoogleCloudDialogflowCxV3Tool request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Tool.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsToolsVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsToolsVersionsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/tools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ToolVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ToolVersion> create(
    GoogleCloudDialogflowCxV3ToolVersion request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ToolVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/tools/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [force] - null
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
      'force': ?force == null ? null : ['${force}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/tools/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ToolVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ToolVersion> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ToolVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/tools/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListToolVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListToolVersionsResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListToolVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/tools/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3RestoreToolVersionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3RestoreToolVersionResponse> restore(
    GoogleCloudDialogflowCxV3RestoreToolVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':restore';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3RestoreToolVersionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsTransitionRouteGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsTransitionRouteGroupsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3TransitionRouteGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3TransitionRouteGroup> create(
    GoogleCloudDialogflowCxV3TransitionRouteGroup request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$parent') + '/transitionRouteGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/transitionRouteGroups/\[^/\]+$`.
  ///
  /// [force] - null
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
      'force': ?force == null ? null : ['${force}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/transitionRouteGroups/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3TransitionRouteGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3TransitionRouteGroup> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse> list(
    core.String parent, {
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$parent') + '/transitionRouteGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/transitionRouteGroups/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3TransitionRouteGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3TransitionRouteGroup> patch(
    GoogleCloudDialogflowCxV3TransitionRouteGroup request,
    core.String name, {
    core.String? languageCode,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsWebhooksResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsWebhooksResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Webhook].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Webhook> create(
    GoogleCloudDialogflowCxV3Webhook request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/webhooks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Webhook.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/webhooks/\[^/\]+$`.
  ///
  /// [force] - null
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
      'force': ?force == null ? null : ['${force}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/webhooks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Webhook].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Webhook> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Webhook.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListWebhooksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListWebhooksResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/webhooks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListWebhooksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/webhooks/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Webhook].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Webhook> patch(
    GoogleCloudDialogflowCxV3Webhook request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Webhook.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [returnPartialSuccess] - null
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'returnPartialSuccess': ?returnPartialSuccess == null
          ? null
          : ['${returnPartialSuccess}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/operations';

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

class ProjectsLocationsSecuritySettingsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSecuritySettingsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3SecuritySettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3SecuritySettings> create(
    GoogleCloudDialogflowCxV3SecuritySettings request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/securitySettings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3SecuritySettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/securitySettings/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/securitySettings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3SecuritySettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3SecuritySettings> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3SecuritySettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListSecuritySettingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListSecuritySettingsResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/securitySettings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListSecuritySettingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/securitySettings/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3SecuritySettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3SecuritySettings> patch(
    GoogleCloudDialogflowCxV3SecuritySettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3SecuritySettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsOperationsResource(commons.ApiRequester client) : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/operations/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [returnPartialSuccess] - null
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'returnPartialSuccess': ?returnPartialSuccess == null
          ? null
          : ['${returnPartialSuccess}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/operations';

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

class GoogleCloudDialogflowCxV3Action {
  GoogleCloudDialogflowCxV3AgentUtterance? agentUtterance;
  GoogleCloudDialogflowCxV3FlowInvocation? flowInvocation;
  GoogleCloudDialogflowCxV3FlowTransition? flowTransition;
  GoogleCloudDialogflowCxV3PlaybookInvocation? playbookInvocation;
  GoogleCloudDialogflowCxV3PlaybookTransition? playbookTransition;
  GoogleCloudDialogflowCxV3ToolUse? toolUse;
  GoogleCloudDialogflowCxV3UserUtterance? userUtterance;

  GoogleCloudDialogflowCxV3Action({
    this.agentUtterance,
    this.flowInvocation,
    this.flowTransition,
    this.playbookInvocation,
    this.playbookTransition,
    this.toolUse,
    this.userUtterance,
  });

  GoogleCloudDialogflowCxV3Action.fromJson(core.Map json_)
    : this(
        agentUtterance: json_.containsKey('agentUtterance')
            ? GoogleCloudDialogflowCxV3AgentUtterance.fromJson(
                json_['agentUtterance'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        flowInvocation: json_.containsKey('flowInvocation')
            ? GoogleCloudDialogflowCxV3FlowInvocation.fromJson(
                json_['flowInvocation'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        flowTransition: json_.containsKey('flowTransition')
            ? GoogleCloudDialogflowCxV3FlowTransition.fromJson(
                json_['flowTransition'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        playbookInvocation: json_.containsKey('playbookInvocation')
            ? GoogleCloudDialogflowCxV3PlaybookInvocation.fromJson(
                json_['playbookInvocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        playbookTransition: json_.containsKey('playbookTransition')
            ? GoogleCloudDialogflowCxV3PlaybookTransition.fromJson(
                json_['playbookTransition']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        toolUse: json_.containsKey('toolUse')
            ? GoogleCloudDialogflowCxV3ToolUse.fromJson(
                json_['toolUse'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        userUtterance: json_.containsKey('userUtterance')
            ? GoogleCloudDialogflowCxV3UserUtterance.fromJson(
                json_['userUtterance'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentUtterance = this.agentUtterance;
    final flowInvocation = this.flowInvocation;
    final flowTransition = this.flowTransition;
    final playbookInvocation = this.playbookInvocation;
    final playbookTransition = this.playbookTransition;
    final toolUse = this.toolUse;
    final userUtterance = this.userUtterance;
    return {
      'agentUtterance': ?agentUtterance,
      'flowInvocation': ?flowInvocation,
      'flowTransition': ?flowTransition,
      'playbookInvocation': ?playbookInvocation,
      'playbookTransition': ?playbookTransition,
      'toolUse': ?toolUse,
      'userUtterance': ?userUtterance,
    };
  }
}

class GoogleCloudDialogflowCxV3AdvancedSettings {
  GoogleCloudDialogflowCxV3GcsDestination? audioExportGcsDestination;
  GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings? dtmfSettings;
  GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings? loggingSettings;
  GoogleCloudDialogflowCxV3AdvancedSettingsSpeechSettings? speechSettings;

  GoogleCloudDialogflowCxV3AdvancedSettings({
    this.audioExportGcsDestination,
    this.dtmfSettings,
    this.loggingSettings,
    this.speechSettings,
  });

  GoogleCloudDialogflowCxV3AdvancedSettings.fromJson(core.Map json_)
    : this(
        audioExportGcsDestination:
            json_.containsKey('audioExportGcsDestination')
            ? GoogleCloudDialogflowCxV3GcsDestination.fromJson(
                json_['audioExportGcsDestination']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dtmfSettings: json_.containsKey('dtmfSettings')
            ? GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings.fromJson(
                json_['dtmfSettings'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        loggingSettings: json_.containsKey('loggingSettings')
            ? GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings.fromJson(
                json_['loggingSettings'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        speechSettings: json_.containsKey('speechSettings')
            ? GoogleCloudDialogflowCxV3AdvancedSettingsSpeechSettings.fromJson(
                json_['speechSettings'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audioExportGcsDestination = this.audioExportGcsDestination;
    final dtmfSettings = this.dtmfSettings;
    final loggingSettings = this.loggingSettings;
    final speechSettings = this.speechSettings;
    return {
      'audioExportGcsDestination': ?audioExportGcsDestination,
      'dtmfSettings': ?dtmfSettings,
      'loggingSettings': ?loggingSettings,
      'speechSettings': ?speechSettings,
    };
  }
}

class GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings {
  core.bool? enabled;
  core.String? endpointingTimeoutDuration;
  core.String? finishDigit;
  core.String? interdigitTimeoutDuration;
  core.int? maxDigits;

  GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings({
    this.enabled,
    this.endpointingTimeoutDuration,
    this.finishDigit,
    this.interdigitTimeoutDuration,
    this.maxDigits,
  });

  GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings.fromJson(core.Map json_)
    : this(
        enabled: json_['enabled'] as core.bool?,
        endpointingTimeoutDuration:
            json_['endpointingTimeoutDuration'] as core.String?,
        finishDigit: json_['finishDigit'] as core.String?,
        interdigitTimeoutDuration:
            json_['interdigitTimeoutDuration'] as core.String?,
        maxDigits: json_['maxDigits'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enabled = this.enabled;
    final endpointingTimeoutDuration = this.endpointingTimeoutDuration;
    final finishDigit = this.finishDigit;
    final interdigitTimeoutDuration = this.interdigitTimeoutDuration;
    final maxDigits = this.maxDigits;
    return {
      'enabled': ?enabled,
      'endpointingTimeoutDuration': ?endpointingTimeoutDuration,
      'finishDigit': ?finishDigit,
      'interdigitTimeoutDuration': ?interdigitTimeoutDuration,
      'maxDigits': ?maxDigits,
    };
  }
}

class GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings {
  core.bool? enableConsentBasedRedaction;
  core.bool? enableInteractionLogging;
  core.bool? enableStackdriverLogging;

  GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings({
    this.enableConsentBasedRedaction,
    this.enableInteractionLogging,
    this.enableStackdriverLogging,
  });

  GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings.fromJson(
    core.Map json_,
  ) : this(
        enableConsentBasedRedaction:
            json_['enableConsentBasedRedaction'] as core.bool?,
        enableInteractionLogging:
            json_['enableInteractionLogging'] as core.bool?,
        enableStackdriverLogging:
            json_['enableStackdriverLogging'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enableConsentBasedRedaction = this.enableConsentBasedRedaction;
    final enableInteractionLogging = this.enableInteractionLogging;
    final enableStackdriverLogging = this.enableStackdriverLogging;
    return {
      'enableConsentBasedRedaction': ?enableConsentBasedRedaction,
      'enableInteractionLogging': ?enableInteractionLogging,
      'enableStackdriverLogging': ?enableStackdriverLogging,
    };
  }
}

class GoogleCloudDialogflowCxV3AdvancedSettingsSpeechSettings {
  core.int? endpointerSensitivity;
  core.Map<core.String, core.String>? models;
  core.String? noSpeechTimeout;
  core.bool? useTimeoutBasedEndpointing;

  GoogleCloudDialogflowCxV3AdvancedSettingsSpeechSettings({
    this.endpointerSensitivity,
    this.models,
    this.noSpeechTimeout,
    this.useTimeoutBasedEndpointing,
  });

  GoogleCloudDialogflowCxV3AdvancedSettingsSpeechSettings.fromJson(
    core.Map json_,
  ) : this(
        endpointerSensitivity: json_['endpointerSensitivity'] as core.int?,
        models: (json_['models'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        noSpeechTimeout: json_['noSpeechTimeout'] as core.String?,
        useTimeoutBasedEndpointing:
            json_['useTimeoutBasedEndpointing'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endpointerSensitivity = this.endpointerSensitivity;
    final models = this.models;
    final noSpeechTimeout = this.noSpeechTimeout;
    final useTimeoutBasedEndpointing = this.useTimeoutBasedEndpointing;
    return {
      'endpointerSensitivity': ?endpointerSensitivity,
      'models': ?models,
      'noSpeechTimeout': ?noSpeechTimeout,
      'useTimeoutBasedEndpointing': ?useTimeoutBasedEndpointing,
    };
  }
}

class GoogleCloudDialogflowCxV3Agent {
  GoogleCloudDialogflowCxV3AdvancedSettings? advancedSettings;
  GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings? answerFeedbackSettings;
  core.String? avatarUri;
  GoogleCloudDialogflowCxV3AgentClientCertificateSettings?
  clientCertificateSettings;
  core.String? defaultLanguageCode;
  core.String? description;
  core.String? displayName;
  core.bool? enableMultiLanguageTraining;
  core.bool? enableSpellCorrection;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? enableStackdriverLogging;
  GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings? genAppBuilderSettings;
  GoogleCloudDialogflowCxV3AgentGitIntegrationSettings? gitIntegrationSettings;
  core.bool? locked;
  core.String? name;
  GoogleCloudDialogflowCxV3AgentPersonalizationSettings?
  personalizationSettings;
  core.bool? satisfiesPzi;
  core.bool? satisfiesPzs;
  core.String? securitySettings;
  GoogleCloudDialogflowCxV3SpeechToTextSettings? speechToTextSettings;
  core.String? startFlow;
  core.String? startPlaybook;
  core.List<core.String>? supportedLanguageCodes;
  GoogleCloudDialogflowCxV3TextToSpeechSettings? textToSpeechSettings;
  core.String? timeZone;

  GoogleCloudDialogflowCxV3Agent({
    this.advancedSettings,
    this.answerFeedbackSettings,
    this.avatarUri,
    this.clientCertificateSettings,
    this.defaultLanguageCode,
    this.description,
    this.displayName,
    this.enableMultiLanguageTraining,
    this.enableSpellCorrection,
    this.enableStackdriverLogging,
    this.genAppBuilderSettings,
    this.gitIntegrationSettings,
    this.locked,
    this.name,
    this.personalizationSettings,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.securitySettings,
    this.speechToTextSettings,
    this.startFlow,
    this.startPlaybook,
    this.supportedLanguageCodes,
    this.textToSpeechSettings,
    this.timeZone,
  });

  GoogleCloudDialogflowCxV3Agent.fromJson(core.Map json_)
    : this(
        advancedSettings: json_.containsKey('advancedSettings')
            ? GoogleCloudDialogflowCxV3AdvancedSettings.fromJson(
                json_['advancedSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        answerFeedbackSettings: json_.containsKey('answerFeedbackSettings')
            ? GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings.fromJson(
                json_['answerFeedbackSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        avatarUri: json_['avatarUri'] as core.String?,
        clientCertificateSettings:
            json_.containsKey('clientCertificateSettings')
            ? GoogleCloudDialogflowCxV3AgentClientCertificateSettings.fromJson(
                json_['clientCertificateSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        defaultLanguageCode: json_['defaultLanguageCode'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        enableMultiLanguageTraining:
            json_['enableMultiLanguageTraining'] as core.bool?,
        enableSpellCorrection: json_['enableSpellCorrection'] as core.bool?,
        enableStackdriverLogging:
            json_['enableStackdriverLogging'] as core.bool?,
        genAppBuilderSettings: json_.containsKey('genAppBuilderSettings')
            ? GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings.fromJson(
                json_['genAppBuilderSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        gitIntegrationSettings: json_.containsKey('gitIntegrationSettings')
            ? GoogleCloudDialogflowCxV3AgentGitIntegrationSettings.fromJson(
                json_['gitIntegrationSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        locked: json_['locked'] as core.bool?,
        name: json_['name'] as core.String?,
        personalizationSettings: json_.containsKey('personalizationSettings')
            ? GoogleCloudDialogflowCxV3AgentPersonalizationSettings.fromJson(
                json_['personalizationSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        securitySettings: json_['securitySettings'] as core.String?,
        speechToTextSettings: json_.containsKey('speechToTextSettings')
            ? GoogleCloudDialogflowCxV3SpeechToTextSettings.fromJson(
                json_['speechToTextSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        startFlow: json_['startFlow'] as core.String?,
        startPlaybook: json_['startPlaybook'] as core.String?,
        supportedLanguageCodes: (json_['supportedLanguageCodes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        textToSpeechSettings: json_.containsKey('textToSpeechSettings')
            ? GoogleCloudDialogflowCxV3TextToSpeechSettings.fromJson(
                json_['textToSpeechSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        timeZone: json_['timeZone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final advancedSettings = this.advancedSettings;
    final answerFeedbackSettings = this.answerFeedbackSettings;
    final avatarUri = this.avatarUri;
    final clientCertificateSettings = this.clientCertificateSettings;
    final defaultLanguageCode = this.defaultLanguageCode;
    final description = this.description;
    final displayName = this.displayName;
    final enableMultiLanguageTraining = this.enableMultiLanguageTraining;
    final enableSpellCorrection = this.enableSpellCorrection;
    final enableStackdriverLogging = this.enableStackdriverLogging;
    final genAppBuilderSettings = this.genAppBuilderSettings;
    final gitIntegrationSettings = this.gitIntegrationSettings;
    final locked = this.locked;
    final name = this.name;
    final personalizationSettings = this.personalizationSettings;
    final satisfiesPzi = this.satisfiesPzi;
    final satisfiesPzs = this.satisfiesPzs;
    final securitySettings = this.securitySettings;
    final speechToTextSettings = this.speechToTextSettings;
    final startFlow = this.startFlow;
    final startPlaybook = this.startPlaybook;
    final supportedLanguageCodes = this.supportedLanguageCodes;
    final textToSpeechSettings = this.textToSpeechSettings;
    final timeZone = this.timeZone;
    return {
      'advancedSettings': ?advancedSettings,
      'answerFeedbackSettings': ?answerFeedbackSettings,
      'avatarUri': ?avatarUri,
      'clientCertificateSettings': ?clientCertificateSettings,
      'defaultLanguageCode': ?defaultLanguageCode,
      'description': ?description,
      'displayName': ?displayName,
      'enableMultiLanguageTraining': ?enableMultiLanguageTraining,
      'enableSpellCorrection': ?enableSpellCorrection,
      'enableStackdriverLogging': ?enableStackdriverLogging,
      'genAppBuilderSettings': ?genAppBuilderSettings,
      'gitIntegrationSettings': ?gitIntegrationSettings,
      'locked': ?locked,
      'name': ?name,
      'personalizationSettings': ?personalizationSettings,
      'satisfiesPzi': ?satisfiesPzi,
      'satisfiesPzs': ?satisfiesPzs,
      'securitySettings': ?securitySettings,
      'speechToTextSettings': ?speechToTextSettings,
      'startFlow': ?startFlow,
      'startPlaybook': ?startPlaybook,
      'supportedLanguageCodes': ?supportedLanguageCodes,
      'textToSpeechSettings': ?textToSpeechSettings,
      'timeZone': ?timeZone,
    };
  }
}

class GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings {
  core.bool? enableAnswerFeedback;

  GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings({
    this.enableAnswerFeedback,
  });

  GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings.fromJson(core.Map json_)
    : this(enableAnswerFeedback: json_['enableAnswerFeedback'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final enableAnswerFeedback = this.enableAnswerFeedback;
    return {'enableAnswerFeedback': ?enableAnswerFeedback};
  }
}

class GoogleCloudDialogflowCxV3AgentClientCertificateSettings {
  core.String? passphrase;
  core.String? privateKey;
  core.String? sslCertificate;

  GoogleCloudDialogflowCxV3AgentClientCertificateSettings({
    this.passphrase,
    this.privateKey,
    this.sslCertificate,
  });

  GoogleCloudDialogflowCxV3AgentClientCertificateSettings.fromJson(
    core.Map json_,
  ) : this(
        passphrase: json_['passphrase'] as core.String?,
        privateKey: json_['privateKey'] as core.String?,
        sslCertificate: json_['sslCertificate'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final passphrase = this.passphrase;
    final privateKey = this.privateKey;
    final sslCertificate = this.sslCertificate;
    return {
      'passphrase': ?passphrase,
      'privateKey': ?privateKey,
      'sslCertificate': ?sslCertificate,
    };
  }
}

class GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings {
  core.String? engine;

  GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings({this.engine});

  GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings.fromJson(core.Map json_)
    : this(engine: json_['engine'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final engine = this.engine;
    return {'engine': ?engine};
  }
}

class GoogleCloudDialogflowCxV3AgentGitIntegrationSettings {
  GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings?
  githubSettings;

  GoogleCloudDialogflowCxV3AgentGitIntegrationSettings({this.githubSettings});

  GoogleCloudDialogflowCxV3AgentGitIntegrationSettings.fromJson(core.Map json_)
    : this(
        githubSettings: json_.containsKey('githubSettings')
            ? GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings.fromJson(
                json_['githubSettings'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final githubSettings = this.githubSettings;
    return {'githubSettings': ?githubSettings};
  }
}

class GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings {
  core.String? accessToken;
  core.List<core.String>? branches;
  core.String? displayName;
  core.String? repositoryUri;
  core.String? trackingBranch;

  GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings({
    this.accessToken,
    this.branches,
    this.displayName,
    this.repositoryUri,
    this.trackingBranch,
  });

  GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings.fromJson(
    core.Map json_,
  ) : this(
        accessToken: json_['accessToken'] as core.String?,
        branches: (json_['branches'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        displayName: json_['displayName'] as core.String?,
        repositoryUri: json_['repositoryUri'] as core.String?,
        trackingBranch: json_['trackingBranch'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessToken = this.accessToken;
    final branches = this.branches;
    final displayName = this.displayName;
    final repositoryUri = this.repositoryUri;
    final trackingBranch = this.trackingBranch;
    return {
      'accessToken': ?accessToken,
      'branches': ?branches,
      'displayName': ?displayName,
      'repositoryUri': ?repositoryUri,
      'trackingBranch': ?trackingBranch,
    };
  }
}

class GoogleCloudDialogflowCxV3AgentPersonalizationSettings {
  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? defaultEndUserMetadata;

  GoogleCloudDialogflowCxV3AgentPersonalizationSettings({
    this.defaultEndUserMetadata,
  });

  GoogleCloudDialogflowCxV3AgentPersonalizationSettings.fromJson(core.Map json_)
    : this(
        defaultEndUserMetadata: json_.containsKey('defaultEndUserMetadata')
            ? json_['defaultEndUserMetadata']
                  as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final defaultEndUserMetadata = this.defaultEndUserMetadata;
    return {'defaultEndUserMetadata': ?defaultEndUserMetadata};
  }
}

typedef GoogleCloudDialogflowCxV3AgentUtterance = $Shared02;

class GoogleCloudDialogflowCxV3AgentValidationResult {
  core.List<GoogleCloudDialogflowCxV3FlowValidationResult>?
  flowValidationResults;
  core.String? name;

  GoogleCloudDialogflowCxV3AgentValidationResult({
    this.flowValidationResults,
    this.name,
  });

  GoogleCloudDialogflowCxV3AgentValidationResult.fromJson(core.Map json_)
    : this(
        flowValidationResults: (json_['flowValidationResults'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3FlowValidationResult.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final flowValidationResults = this.flowValidationResults;
    final name = this.name;
    return {'flowValidationResults': ?flowValidationResults, 'name': ?name};
  }
}

class GoogleCloudDialogflowCxV3AnswerFeedback {
  core.String? customRating;

  ///
  /// Possible string values are:
  /// - "RATING_UNSPECIFIED"
  /// - "THUMBS_UP"
  /// - "THUMBS_DOWN"
  core.String? rating;
  GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason? ratingReason;

  GoogleCloudDialogflowCxV3AnswerFeedback({
    this.customRating,
    this.rating,
    this.ratingReason,
  });

  GoogleCloudDialogflowCxV3AnswerFeedback.fromJson(core.Map json_)
    : this(
        customRating: json_['customRating'] as core.String?,
        rating: json_['rating'] as core.String?,
        ratingReason: json_.containsKey('ratingReason')
            ? GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason.fromJson(
                json_['ratingReason'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customRating = this.customRating;
    final rating = this.rating;
    final ratingReason = this.ratingReason;
    return {
      'customRating': ?customRating,
      'rating': ?rating,
      'ratingReason': ?ratingReason,
    };
  }
}

class GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason {
  core.String? feedback;
  core.List<core.String>? reasonLabels;

  GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason({
    this.feedback,
    this.reasonLabels,
  });

  GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason.fromJson(core.Map json_)
    : this(
        feedback: json_['feedback'] as core.String?,
        reasonLabels: (json_['reasonLabels'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final feedback = this.feedback;
    final reasonLabels = this.reasonLabels;
    return {'feedback': ?feedback, 'reasonLabels': ?reasonLabels};
  }
}

class GoogleCloudDialogflowCxV3AudioInput {
  core.String? audio;
  core.List<core.int> get audioAsBytes => convert.base64.decode(audio!);

  set audioAsBytes(core.List<core.int> bytes_) {
    audio = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  GoogleCloudDialogflowCxV3InputAudioConfig? config;

  GoogleCloudDialogflowCxV3AudioInput({this.audio, this.config});

  GoogleCloudDialogflowCxV3AudioInput.fromJson(core.Map json_)
    : this(
        audio: json_['audio'] as core.String?,
        config: json_.containsKey('config')
            ? GoogleCloudDialogflowCxV3InputAudioConfig.fromJson(
                json_['config'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audio = this.audio;
    final config = this.config;
    return {'audio': ?audio, 'config': ?config};
  }
}

class GoogleCloudDialogflowCxV3BargeInConfig {
  core.String? noBargeInDuration;
  core.String? totalDuration;

  GoogleCloudDialogflowCxV3BargeInConfig({
    this.noBargeInDuration,
    this.totalDuration,
  });

  GoogleCloudDialogflowCxV3BargeInConfig.fromJson(core.Map json_)
    : this(
        noBargeInDuration: json_['noBargeInDuration'] as core.String?,
        totalDuration: json_['totalDuration'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final noBargeInDuration = this.noBargeInDuration;
    final totalDuration = this.totalDuration;
    return {
      'noBargeInDuration': ?noBargeInDuration,
      'totalDuration': ?totalDuration,
    };
  }
}

class GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest {
  core.List<core.String>? names;

  GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest({this.names});

  GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest.fromJson(core.Map json_)
    : this(
        names: (json_['names'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final names = this.names;
    return {'names': ?names};
  }
}

class GoogleCloudDialogflowCxV3BatchRunTestCasesRequest {
  core.String? environment;
  core.List<core.String>? testCases;

  GoogleCloudDialogflowCxV3BatchRunTestCasesRequest({
    this.environment,
    this.testCases,
  });

  GoogleCloudDialogflowCxV3BatchRunTestCasesRequest.fromJson(core.Map json_)
    : this(
        environment: json_['environment'] as core.String?,
        testCases: (json_['testCases'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final environment = this.environment;
    final testCases = this.testCases;
    return {'environment': ?environment, 'testCases': ?testCases};
  }
}

class GoogleCloudDialogflowCxV3BoostSpec {
  core.List<GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec>?
  conditionBoostSpecs;

  GoogleCloudDialogflowCxV3BoostSpec({this.conditionBoostSpecs});

  GoogleCloudDialogflowCxV3BoostSpec.fromJson(core.Map json_)
    : this(
        conditionBoostSpecs: (json_['conditionBoostSpecs'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conditionBoostSpecs = this.conditionBoostSpecs;
    return {'conditionBoostSpecs': ?conditionBoostSpecs};
  }
}

class GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec {
  core.double? boost;
  GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec?
  boostControlSpec;
  core.String? condition;

  GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec({
    this.boost,
    this.boostControlSpec,
    this.condition,
  });

  GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec.fromJson(core.Map json_)
    : this(
        boost: (json_['boost'] as core.num?)?.toDouble(),
        boostControlSpec: json_.containsKey('boostControlSpec')
            ? GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec.fromJson(
                json_['boostControlSpec']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        condition: json_['condition'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final boost = this.boost;
    final boostControlSpec = this.boostControlSpec;
    final condition = this.condition;
    return {
      'boost': ?boost,
      'boostControlSpec': ?boostControlSpec,
      'condition': ?condition,
    };
  }
}

class GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec {
  ///
  /// Possible string values are:
  /// - "ATTRIBUTE_TYPE_UNSPECIFIED"
  /// - "NUMERICAL"
  /// - "FRESHNESS"
  core.String? attributeType;
  core.List<
    GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpecControlPoint
  >?
  controlPoints;
  core.String? fieldName;

  ///
  /// Possible string values are:
  /// - "INTERPOLATION_TYPE_UNSPECIFIED"
  /// - "LINEAR"
  core.String? interpolationType;

  GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec({
    this.attributeType,
    this.controlPoints,
    this.fieldName,
    this.interpolationType,
  });

  GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec.fromJson(
    core.Map json_,
  ) : this(
        attributeType: json_['attributeType'] as core.String?,
        controlPoints: (json_['controlPoints'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpecControlPoint.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        fieldName: json_['fieldName'] as core.String?,
        interpolationType: json_['interpolationType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributeType = this.attributeType;
    final controlPoints = this.controlPoints;
    final fieldName = this.fieldName;
    final interpolationType = this.interpolationType;
    return {
      'attributeType': ?attributeType,
      'controlPoints': ?controlPoints,
      'fieldName': ?fieldName,
      'interpolationType': ?interpolationType,
    };
  }
}

typedef GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpecControlPoint =
    $BoostSpecConditionBoostSpecBoostControlSpecControlPoint;

class GoogleCloudDialogflowCxV3BoostSpecs {
  core.List<core.String>? dataStores;
  core.List<GoogleCloudDialogflowCxV3BoostSpec>? spec;

  GoogleCloudDialogflowCxV3BoostSpecs({this.dataStores, this.spec});

  GoogleCloudDialogflowCxV3BoostSpecs.fromJson(core.Map json_)
    : this(
        dataStores: (json_['dataStores'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        spec: (json_['spec'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3BoostSpec.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataStores = this.dataStores;
    final spec = this.spec;
    return {'dataStores': ?dataStores, 'spec': ?spec};
  }
}

class GoogleCloudDialogflowCxV3CalculateCoverageResponse {
  core.String? agent;
  GoogleCloudDialogflowCxV3IntentCoverage? intentCoverage;
  GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage? routeGroupCoverage;
  GoogleCloudDialogflowCxV3TransitionCoverage? transitionCoverage;

  GoogleCloudDialogflowCxV3CalculateCoverageResponse({
    this.agent,
    this.intentCoverage,
    this.routeGroupCoverage,
    this.transitionCoverage,
  });

  GoogleCloudDialogflowCxV3CalculateCoverageResponse.fromJson(core.Map json_)
    : this(
        agent: json_['agent'] as core.String?,
        intentCoverage: json_.containsKey('intentCoverage')
            ? GoogleCloudDialogflowCxV3IntentCoverage.fromJson(
                json_['intentCoverage'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        routeGroupCoverage: json_.containsKey('routeGroupCoverage')
            ? GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage.fromJson(
                json_['routeGroupCoverage']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        transitionCoverage: json_.containsKey('transitionCoverage')
            ? GoogleCloudDialogflowCxV3TransitionCoverage.fromJson(
                json_['transitionCoverage']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agent = this.agent;
    final intentCoverage = this.intentCoverage;
    final routeGroupCoverage = this.routeGroupCoverage;
    final transitionCoverage = this.transitionCoverage;
    return {
      'agent': ?agent,
      'intentCoverage': ?intentCoverage,
      'routeGroupCoverage': ?routeGroupCoverage,
      'transitionCoverage': ?transitionCoverage,
    };
  }
}

class GoogleCloudDialogflowCxV3Changelog {
  core.String? action;
  core.String? createTime;
  core.String? displayName;
  core.String? languageCode;
  core.String? name;
  core.String? resource;
  core.String? type;
  core.String? userEmail;

  GoogleCloudDialogflowCxV3Changelog({
    this.action,
    this.createTime,
    this.displayName,
    this.languageCode,
    this.name,
    this.resource,
    this.type,
    this.userEmail,
  });

  GoogleCloudDialogflowCxV3Changelog.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        name: json_['name'] as core.String?,
        resource: json_['resource'] as core.String?,
        type: json_['type'] as core.String?,
        userEmail: json_['userEmail'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final action = this.action;
    final createTime = this.createTime;
    final displayName = this.displayName;
    final languageCode = this.languageCode;
    final name = this.name;
    final resource = this.resource;
    final type = this.type;
    final userEmail = this.userEmail;
    return {
      'action': ?action,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'languageCode': ?languageCode,
      'name': ?name,
      'resource': ?resource,
      'type': ?type,
      'userEmail': ?userEmail,
    };
  }
}

class GoogleCloudDialogflowCxV3CodeBlock {
  core.String? code;

  GoogleCloudDialogflowCxV3CodeBlock({this.code});

  GoogleCloudDialogflowCxV3CodeBlock.fromJson(core.Map json_)
    : this(code: json_['code'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final code = this.code;
    return {'code': ?code};
  }
}

class GoogleCloudDialogflowCxV3CompareVersionsRequest {
  core.String? languageCode;
  core.String? targetVersion;

  GoogleCloudDialogflowCxV3CompareVersionsRequest({
    this.languageCode,
    this.targetVersion,
  });

  GoogleCloudDialogflowCxV3CompareVersionsRequest.fromJson(core.Map json_)
    : this(
        languageCode: json_['languageCode'] as core.String?,
        targetVersion: json_['targetVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final languageCode = this.languageCode;
    final targetVersion = this.targetVersion;
    return {'languageCode': ?languageCode, 'targetVersion': ?targetVersion};
  }
}

class GoogleCloudDialogflowCxV3CompareVersionsResponse {
  core.String? baseVersionContentJson;
  core.String? compareTime;
  core.String? targetVersionContentJson;

  GoogleCloudDialogflowCxV3CompareVersionsResponse({
    this.baseVersionContentJson,
    this.compareTime,
    this.targetVersionContentJson,
  });

  GoogleCloudDialogflowCxV3CompareVersionsResponse.fromJson(core.Map json_)
    : this(
        baseVersionContentJson: json_['baseVersionContentJson'] as core.String?,
        compareTime: json_['compareTime'] as core.String?,
        targetVersionContentJson:
            json_['targetVersionContentJson'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final baseVersionContentJson = this.baseVersionContentJson;
    final compareTime = this.compareTime;
    final targetVersionContentJson = this.targetVersionContentJson;
    return {
      'baseVersionContentJson': ?baseVersionContentJson,
      'compareTime': ?compareTime,
      'targetVersionContentJson': ?targetVersionContentJson,
    };
  }
}

class GoogleCloudDialogflowCxV3ContinuousTestResult {
  core.String? name;

  ///
  /// Possible string values are:
  /// - "AGGREGATED_TEST_RESULT_UNSPECIFIED"
  /// - "PASSED"
  /// - "FAILED"
  core.String? result;
  core.String? runTime;
  core.List<core.String>? testCaseResults;

  GoogleCloudDialogflowCxV3ContinuousTestResult({
    this.name,
    this.result,
    this.runTime,
    this.testCaseResults,
  });

  GoogleCloudDialogflowCxV3ContinuousTestResult.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        result: json_['result'] as core.String?,
        runTime: json_['runTime'] as core.String?,
        testCaseResults: (json_['testCaseResults'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final result = this.result;
    final runTime = this.runTime;
    final testCaseResults = this.testCaseResults;
    return {
      'name': ?name,
      'result': ?result,
      'runTime': ?runTime,
      'testCaseResults': ?testCaseResults,
    };
  }
}

class GoogleCloudDialogflowCxV3ConversationTurn {
  GoogleCloudDialogflowCxV3ConversationTurnUserInput? userInput;
  GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput?
  virtualAgentOutput;

  GoogleCloudDialogflowCxV3ConversationTurn({
    this.userInput,
    this.virtualAgentOutput,
  });

  GoogleCloudDialogflowCxV3ConversationTurn.fromJson(core.Map json_)
    : this(
        userInput: json_.containsKey('userInput')
            ? GoogleCloudDialogflowCxV3ConversationTurnUserInput.fromJson(
                json_['userInput'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        virtualAgentOutput: json_.containsKey('virtualAgentOutput')
            ? GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput.fromJson(
                json_['virtualAgentOutput']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final userInput = this.userInput;
    final virtualAgentOutput = this.virtualAgentOutput;
    return {'userInput': ?userInput, 'virtualAgentOutput': ?virtualAgentOutput};
  }
}

class GoogleCloudDialogflowCxV3ConversationTurnUserInput {
  core.bool? enableSentimentAnalysis;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? injectedParameters;
  GoogleCloudDialogflowCxV3QueryInput? input;
  core.bool? isWebhookEnabled;

  GoogleCloudDialogflowCxV3ConversationTurnUserInput({
    this.enableSentimentAnalysis,
    this.injectedParameters,
    this.input,
    this.isWebhookEnabled,
  });

  GoogleCloudDialogflowCxV3ConversationTurnUserInput.fromJson(core.Map json_)
    : this(
        enableSentimentAnalysis: json_['enableSentimentAnalysis'] as core.bool?,
        injectedParameters: json_.containsKey('injectedParameters')
            ? json_['injectedParameters'] as core.Map<core.String, core.dynamic>
            : null,
        input: json_.containsKey('input')
            ? GoogleCloudDialogflowCxV3QueryInput.fromJson(
                json_['input'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        isWebhookEnabled: json_['isWebhookEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enableSentimentAnalysis = this.enableSentimentAnalysis;
    final injectedParameters = this.injectedParameters;
    final input = this.input;
    final isWebhookEnabled = this.isWebhookEnabled;
    return {
      'enableSentimentAnalysis': ?enableSentimentAnalysis,
      'injectedParameters': ?injectedParameters,
      'input': ?input,
      'isWebhookEnabled': ?isWebhookEnabled,
    };
  }
}

class GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput {
  GoogleCloudDialogflowCxV3Page? currentPage;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? diagnosticInfo;
  core.List<GoogleCloudDialogflowCxV3TestRunDifference>? differences;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? sessionParameters;
  GoogleRpcStatus? status;
  core.List<GoogleCloudDialogflowCxV3ResponseMessageText>? textResponses;
  GoogleCloudDialogflowCxV3Intent? triggeredIntent;

  GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput({
    this.currentPage,
    this.diagnosticInfo,
    this.differences,
    this.sessionParameters,
    this.status,
    this.textResponses,
    this.triggeredIntent,
  });

  GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput.fromJson(
    core.Map json_,
  ) : this(
        currentPage: json_.containsKey('currentPage')
            ? GoogleCloudDialogflowCxV3Page.fromJson(
                json_['currentPage'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        diagnosticInfo: json_.containsKey('diagnosticInfo')
            ? json_['diagnosticInfo'] as core.Map<core.String, core.dynamic>
            : null,
        differences: (json_['differences'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3TestRunDifference.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        sessionParameters: json_.containsKey('sessionParameters')
            ? json_['sessionParameters'] as core.Map<core.String, core.dynamic>
            : null,
        status: json_.containsKey('status')
            ? GoogleRpcStatus.fromJson(
                json_['status'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        textResponses: (json_['textResponses'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3ResponseMessageText.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        triggeredIntent: json_.containsKey('triggeredIntent')
            ? GoogleCloudDialogflowCxV3Intent.fromJson(
                json_['triggeredIntent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final currentPage = this.currentPage;
    final diagnosticInfo = this.diagnosticInfo;
    final differences = this.differences;
    final sessionParameters = this.sessionParameters;
    final status = this.status;
    final textResponses = this.textResponses;
    final triggeredIntent = this.triggeredIntent;
    return {
      'currentPage': ?currentPage,
      'diagnosticInfo': ?diagnosticInfo,
      'differences': ?differences,
      'sessionParameters': ?sessionParameters,
      'status': ?status,
      'textResponses': ?textResponses,
      'triggeredIntent': ?triggeredIntent,
    };
  }
}

class GoogleCloudDialogflowCxV3DataStoreConnection {
  core.String? dataStore;

  ///
  /// Possible string values are:
  /// - "DATA_STORE_TYPE_UNSPECIFIED"
  /// - "PUBLIC_WEB"
  /// - "UNSTRUCTURED"
  /// - "STRUCTURED"
  core.String? dataStoreType;

  ///
  /// Possible string values are:
  /// - "DOCUMENT_PROCESSING_MODE_UNSPECIFIED"
  /// - "DOCUMENTS"
  /// - "CHUNKS"
  core.String? documentProcessingMode;

  GoogleCloudDialogflowCxV3DataStoreConnection({
    this.dataStore,
    this.dataStoreType,
    this.documentProcessingMode,
  });

  GoogleCloudDialogflowCxV3DataStoreConnection.fromJson(core.Map json_)
    : this(
        dataStore: json_['dataStore'] as core.String?,
        dataStoreType: json_['dataStoreType'] as core.String?,
        documentProcessingMode: json_['documentProcessingMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataStore = this.dataStore;
    final dataStoreType = this.dataStoreType;
    final documentProcessingMode = this.documentProcessingMode;
    return {
      'dataStore': ?dataStore,
      'dataStoreType': ?dataStoreType,
      'documentProcessingMode': ?documentProcessingMode,
    };
  }
}

class GoogleCloudDialogflowCxV3DataStoreConnectionSignals {
  core.String? answer;
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerGenerationModelCallSignals?
  answerGenerationModelCallSignals;
  core.List<GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerPart>?
  answerParts;
  core.List<GoogleCloudDialogflowCxV3DataStoreConnectionSignalsCitedSnippet>?
  citedSnippets;
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals?
  groundingSignals;
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsRewriterModelCallSignals?
  rewriterModelCallSignals;
  core.String? rewrittenQuery;
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals?
  safetySignals;
  core.List<GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet>?
  searchSnippets;

  GoogleCloudDialogflowCxV3DataStoreConnectionSignals({
    this.answer,
    this.answerGenerationModelCallSignals,
    this.answerParts,
    this.citedSnippets,
    this.groundingSignals,
    this.rewriterModelCallSignals,
    this.rewrittenQuery,
    this.safetySignals,
    this.searchSnippets,
  });

  GoogleCloudDialogflowCxV3DataStoreConnectionSignals.fromJson(core.Map json_)
    : this(
        answer: json_['answer'] as core.String?,
        answerGenerationModelCallSignals:
            json_.containsKey('answerGenerationModelCallSignals')
            ? GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerGenerationModelCallSignals.fromJson(
                json_['answerGenerationModelCallSignals']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        answerParts: (json_['answerParts'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerPart.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        citedSnippets: (json_['citedSnippets'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsCitedSnippet.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        groundingSignals: json_.containsKey('groundingSignals')
            ? GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals.fromJson(
                json_['groundingSignals']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        rewriterModelCallSignals: json_.containsKey('rewriterModelCallSignals')
            ? GoogleCloudDialogflowCxV3DataStoreConnectionSignalsRewriterModelCallSignals.fromJson(
                json_['rewriterModelCallSignals']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        rewrittenQuery: json_['rewrittenQuery'] as core.String?,
        safetySignals: json_.containsKey('safetySignals')
            ? GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals.fromJson(
                json_['safetySignals'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        searchSnippets: (json_['searchSnippets'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answer = this.answer;
    final answerGenerationModelCallSignals =
        this.answerGenerationModelCallSignals;
    final answerParts = this.answerParts;
    final citedSnippets = this.citedSnippets;
    final groundingSignals = this.groundingSignals;
    final rewriterModelCallSignals = this.rewriterModelCallSignals;
    final rewrittenQuery = this.rewrittenQuery;
    final safetySignals = this.safetySignals;
    final searchSnippets = this.searchSnippets;
    return {
      'answer': ?answer,
      'answerGenerationModelCallSignals': ?answerGenerationModelCallSignals,
      'answerParts': ?answerParts,
      'citedSnippets': ?citedSnippets,
      'groundingSignals': ?groundingSignals,
      'rewriterModelCallSignals': ?rewriterModelCallSignals,
      'rewrittenQuery': ?rewrittenQuery,
      'safetySignals': ?safetySignals,
      'searchSnippets': ?searchSnippets,
    };
  }
}

typedef GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerGenerationModelCallSignals =
    $ModelCallSignals;

class GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerPart {
  core.List<core.int>? supportingIndices;
  core.String? text;

  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerPart({
    this.supportingIndices,
    this.text,
  });

  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerPart.fromJson(
    core.Map json_,
  ) : this(
        supportingIndices: (json_['supportingIndices'] as core.List?)
            ?.map((value) => value as core.int)
            .toList(),
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final supportingIndices = this.supportingIndices;
    final text = this.text;
    return {'supportingIndices': ?supportingIndices, 'text': ?text};
  }
}

class GoogleCloudDialogflowCxV3DataStoreConnectionSignalsCitedSnippet {
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet?
  searchSnippet;
  core.int? snippetIndex;

  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsCitedSnippet({
    this.searchSnippet,
    this.snippetIndex,
  });

  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsCitedSnippet.fromJson(
    core.Map json_,
  ) : this(
        searchSnippet: json_.containsKey('searchSnippet')
            ? GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet.fromJson(
                json_['searchSnippet'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        snippetIndex: json_['snippetIndex'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final searchSnippet = this.searchSnippet;
    final snippetIndex = this.snippetIndex;
    return {'searchSnippet': ?searchSnippet, 'snippetIndex': ?snippetIndex};
  }
}

class GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals {
  ///
  /// Possible string values are:
  /// - "GROUNDING_DECISION_UNSPECIFIED"
  /// - "ACCEPTED_BY_GROUNDING"
  /// - "REJECTED_BY_GROUNDING"
  core.String? decision;

  ///
  /// Possible string values are:
  /// - "GROUNDING_SCORE_BUCKET_UNSPECIFIED"
  /// - "VERY_LOW"
  /// - "LOW"
  /// - "MEDIUM"
  /// - "HIGH"
  /// - "VERY_HIGH"
  core.String? score;

  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals({
    this.decision,
    this.score,
  });

  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals.fromJson(
    core.Map json_,
  ) : this(
        decision: json_['decision'] as core.String?,
        score: json_['score'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final decision = this.decision;
    final score = this.score;
    return {'decision': ?decision, 'score': ?score};
  }
}

typedef GoogleCloudDialogflowCxV3DataStoreConnectionSignalsRewriterModelCallSignals =
    $ModelCallSignals;

class GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals {
  ///
  /// Possible string values are:
  /// - "BANNED_PHRASE_MATCH_UNSPECIFIED"
  /// - "BANNED_PHRASE_MATCH_NONE"
  /// - "BANNED_PHRASE_MATCH_QUERY"
  /// - "BANNED_PHRASE_MATCH_RESPONSE"
  core.String? bannedPhraseMatch;

  ///
  /// Possible string values are:
  /// - "SAFETY_DECISION_UNSPECIFIED"
  /// - "ACCEPTED_BY_SAFETY_CHECK"
  /// - "REJECTED_BY_SAFETY_CHECK"
  core.String? decision;
  core.String? matchedBannedPhrase;

  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals({
    this.bannedPhraseMatch,
    this.decision,
    this.matchedBannedPhrase,
  });

  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals.fromJson(
    core.Map json_,
  ) : this(
        bannedPhraseMatch: json_['bannedPhraseMatch'] as core.String?,
        decision: json_['decision'] as core.String?,
        matchedBannedPhrase: json_['matchedBannedPhrase'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bannedPhraseMatch = this.bannedPhraseMatch;
    final decision = this.decision;
    final matchedBannedPhrase = this.matchedBannedPhrase;
    return {
      'bannedPhraseMatch': ?bannedPhraseMatch,
      'decision': ?decision,
      'matchedBannedPhrase': ?matchedBannedPhrase,
    };
  }
}

class GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet {
  core.String? documentTitle;
  core.String? documentUri;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;
  core.String? text;

  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet({
    this.documentTitle,
    this.documentUri,
    this.metadata,
    this.text,
  });

  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet.fromJson(
    core.Map json_,
  ) : this(
        documentTitle: json_['documentTitle'] as core.String?,
        documentUri: json_['documentUri'] as core.String?,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final documentTitle = this.documentTitle;
    final documentUri = this.documentUri;
    final metadata = this.metadata;
    final text = this.text;
    return {
      'documentTitle': ?documentTitle,
      'documentUri': ?documentUri,
      'metadata': ?metadata,
      'text': ?text,
    };
  }
}

class GoogleCloudDialogflowCxV3DeployFlowRequest {
  core.String? flowVersion;

  GoogleCloudDialogflowCxV3DeployFlowRequest({this.flowVersion});

  GoogleCloudDialogflowCxV3DeployFlowRequest.fromJson(core.Map json_)
    : this(flowVersion: json_['flowVersion'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final flowVersion = this.flowVersion;
    return {'flowVersion': ?flowVersion};
  }
}

class GoogleCloudDialogflowCxV3Deployment {
  core.String? endTime;
  core.String? flowVersion;
  core.String? name;
  GoogleCloudDialogflowCxV3DeploymentResult? result;
  core.String? startTime;

  ///
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "RUNNING"
  /// - "SUCCEEDED"
  /// - "FAILED"
  core.String? state;

  GoogleCloudDialogflowCxV3Deployment({
    this.endTime,
    this.flowVersion,
    this.name,
    this.result,
    this.startTime,
    this.state,
  });

  GoogleCloudDialogflowCxV3Deployment.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        flowVersion: json_['flowVersion'] as core.String?,
        name: json_['name'] as core.String?,
        result: json_.containsKey('result')
            ? GoogleCloudDialogflowCxV3DeploymentResult.fromJson(
                json_['result'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        startTime: json_['startTime'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endTime = this.endTime;
    final flowVersion = this.flowVersion;
    final name = this.name;
    final result = this.result;
    final startTime = this.startTime;
    final state = this.state;
    return {
      'endTime': ?endTime,
      'flowVersion': ?flowVersion,
      'name': ?name,
      'result': ?result,
      'startTime': ?startTime,
      'state': ?state,
    };
  }
}

class GoogleCloudDialogflowCxV3DeploymentResult {
  core.List<core.String>? deploymentTestResults;
  core.String? experiment;

  GoogleCloudDialogflowCxV3DeploymentResult({
    this.deploymentTestResults,
    this.experiment,
  });

  GoogleCloudDialogflowCxV3DeploymentResult.fromJson(core.Map json_)
    : this(
        deploymentTestResults: (json_['deploymentTestResults'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        experiment: json_['experiment'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deploymentTestResults = this.deploymentTestResults;
    final experiment = this.experiment;
    return {
      'deploymentTestResults': ?deploymentTestResults,
      'experiment': ?experiment,
    };
  }
}

class GoogleCloudDialogflowCxV3DetectIntentRequest {
  GoogleCloudDialogflowCxV3OutputAudioConfig? outputAudioConfig;
  GoogleCloudDialogflowCxV3QueryInput? queryInput;
  GoogleCloudDialogflowCxV3QueryParameters? queryParams;

  ///
  /// Possible string values are:
  /// - "DETECT_INTENT_RESPONSE_VIEW_UNSPECIFIED"
  /// - "DETECT_INTENT_RESPONSE_VIEW_FULL"
  /// - "DETECT_INTENT_RESPONSE_VIEW_BASIC"
  /// - "DETECT_INTENT_RESPONSE_VIEW_DEFAULT"
  core.String? responseView;

  GoogleCloudDialogflowCxV3DetectIntentRequest({
    this.outputAudioConfig,
    this.queryInput,
    this.queryParams,
    this.responseView,
  });

  GoogleCloudDialogflowCxV3DetectIntentRequest.fromJson(core.Map json_)
    : this(
        outputAudioConfig: json_.containsKey('outputAudioConfig')
            ? GoogleCloudDialogflowCxV3OutputAudioConfig.fromJson(
                json_['outputAudioConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        queryInput: json_.containsKey('queryInput')
            ? GoogleCloudDialogflowCxV3QueryInput.fromJson(
                json_['queryInput'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        queryParams: json_.containsKey('queryParams')
            ? GoogleCloudDialogflowCxV3QueryParameters.fromJson(
                json_['queryParams'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        responseView: json_['responseView'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final outputAudioConfig = this.outputAudioConfig;
    final queryInput = this.queryInput;
    final queryParams = this.queryParams;
    final responseView = this.responseView;
    return {
      'outputAudioConfig': ?outputAudioConfig,
      'queryInput': ?queryInput,
      'queryParams': ?queryParams,
      'responseView': ?responseView,
    };
  }
}

class GoogleCloudDialogflowCxV3DetectIntentResponse {
  core.bool? allowCancellation;
  core.String? outputAudio;
  core.List<core.int> get outputAudioAsBytes =>
      convert.base64.decode(outputAudio!);

  set outputAudioAsBytes(core.List<core.int> bytes_) {
    outputAudio = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  GoogleCloudDialogflowCxV3OutputAudioConfig? outputAudioConfig;
  GoogleCloudDialogflowCxV3QueryResult? queryResult;
  core.String? responseId;

  ///
  /// Possible string values are:
  /// - "RESPONSE_TYPE_UNSPECIFIED"
  /// - "PARTIAL"
  /// - "FINAL"
  core.String? responseType;

  GoogleCloudDialogflowCxV3DetectIntentResponse({
    this.allowCancellation,
    this.outputAudio,
    this.outputAudioConfig,
    this.queryResult,
    this.responseId,
    this.responseType,
  });

  GoogleCloudDialogflowCxV3DetectIntentResponse.fromJson(core.Map json_)
    : this(
        allowCancellation: json_['allowCancellation'] as core.bool?,
        outputAudio: json_['outputAudio'] as core.String?,
        outputAudioConfig: json_.containsKey('outputAudioConfig')
            ? GoogleCloudDialogflowCxV3OutputAudioConfig.fromJson(
                json_['outputAudioConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        queryResult: json_.containsKey('queryResult')
            ? GoogleCloudDialogflowCxV3QueryResult.fromJson(
                json_['queryResult'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        responseId: json_['responseId'] as core.String?,
        responseType: json_['responseType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowCancellation = this.allowCancellation;
    final outputAudio = this.outputAudio;
    final outputAudioConfig = this.outputAudioConfig;
    final queryResult = this.queryResult;
    final responseId = this.responseId;
    final responseType = this.responseType;
    return {
      'allowCancellation': ?allowCancellation,
      'outputAudio': ?outputAudio,
      'outputAudioConfig': ?outputAudioConfig,
      'queryResult': ?queryResult,
      'responseId': ?responseId,
      'responseType': ?responseType,
    };
  }
}

class GoogleCloudDialogflowCxV3DtmfInput {
  core.String? digits;
  core.String? finishDigit;

  GoogleCloudDialogflowCxV3DtmfInput({this.digits, this.finishDigit});

  GoogleCloudDialogflowCxV3DtmfInput.fromJson(core.Map json_)
    : this(
        digits: json_['digits'] as core.String?,
        finishDigit: json_['finishDigit'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final digits = this.digits;
    final finishDigit = this.finishDigit;
    return {'digits': ?digits, 'finishDigit': ?finishDigit};
  }
}

class GoogleCloudDialogflowCxV3EntityType {
  ///
  /// Possible string values are:
  /// - "AUTO_EXPANSION_MODE_UNSPECIFIED"
  /// - "AUTO_EXPANSION_MODE_DEFAULT"
  core.String? autoExpansionMode;
  core.String? displayName;
  core.bool? enableFuzzyExtraction;
  core.List<GoogleCloudDialogflowCxV3EntityTypeEntity>? entities;
  core.List<GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase>? excludedPhrases;

  ///
  /// Possible string values are:
  /// - "KIND_UNSPECIFIED"
  /// - "KIND_MAP"
  /// - "KIND_LIST"
  /// - "KIND_REGEXP"
  core.String? kind;
  core.String? name;
  core.bool? redact;

  GoogleCloudDialogflowCxV3EntityType({
    this.autoExpansionMode,
    this.displayName,
    this.enableFuzzyExtraction,
    this.entities,
    this.excludedPhrases,
    this.kind,
    this.name,
    this.redact,
  });

  GoogleCloudDialogflowCxV3EntityType.fromJson(core.Map json_)
    : this(
        autoExpansionMode: json_['autoExpansionMode'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        enableFuzzyExtraction: json_['enableFuzzyExtraction'] as core.bool?,
        entities: (json_['entities'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3EntityTypeEntity.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        excludedPhrases: (json_['excludedPhrases'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
        redact: json_['redact'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final autoExpansionMode = this.autoExpansionMode;
    final displayName = this.displayName;
    final enableFuzzyExtraction = this.enableFuzzyExtraction;
    final entities = this.entities;
    final excludedPhrases = this.excludedPhrases;
    final kind = this.kind;
    final name = this.name;
    final redact = this.redact;
    return {
      'autoExpansionMode': ?autoExpansionMode,
      'displayName': ?displayName,
      'enableFuzzyExtraction': ?enableFuzzyExtraction,
      'entities': ?entities,
      'excludedPhrases': ?excludedPhrases,
      'kind': ?kind,
      'name': ?name,
      'redact': ?redact,
    };
  }
}

typedef GoogleCloudDialogflowCxV3EntityTypeEntity = $EntityTypeEntity;
typedef GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase = $Shared20;

class GoogleCloudDialogflowCxV3Environment {
  core.String? description;
  core.String? displayName;
  core.String? name;
  GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig? testCasesConfig;
  core.String? updateTime;
  core.List<GoogleCloudDialogflowCxV3EnvironmentVersionConfig>? versionConfigs;
  GoogleCloudDialogflowCxV3EnvironmentWebhookConfig? webhookConfig;

  GoogleCloudDialogflowCxV3Environment({
    this.description,
    this.displayName,
    this.name,
    this.testCasesConfig,
    this.updateTime,
    this.versionConfigs,
    this.webhookConfig,
  });

  GoogleCloudDialogflowCxV3Environment.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        testCasesConfig: json_.containsKey('testCasesConfig')
            ? GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig.fromJson(
                json_['testCasesConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateTime: json_['updateTime'] as core.String?,
        versionConfigs: (json_['versionConfigs'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3EnvironmentVersionConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        webhookConfig: json_.containsKey('webhookConfig')
            ? GoogleCloudDialogflowCxV3EnvironmentWebhookConfig.fromJson(
                json_['webhookConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final displayName = this.displayName;
    final name = this.name;
    final testCasesConfig = this.testCasesConfig;
    final updateTime = this.updateTime;
    final versionConfigs = this.versionConfigs;
    final webhookConfig = this.webhookConfig;
    return {
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'testCasesConfig': ?testCasesConfig,
      'updateTime': ?updateTime,
      'versionConfigs': ?versionConfigs,
      'webhookConfig': ?webhookConfig,
    };
  }
}

class GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig {
  core.bool? enableContinuousRun;
  core.bool? enablePredeploymentRun;
  core.List<core.String>? testCases;

  GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig({
    this.enableContinuousRun,
    this.enablePredeploymentRun,
    this.testCases,
  });

  GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig.fromJson(core.Map json_)
    : this(
        enableContinuousRun: json_['enableContinuousRun'] as core.bool?,
        enablePredeploymentRun: json_['enablePredeploymentRun'] as core.bool?,
        testCases: (json_['testCases'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enableContinuousRun = this.enableContinuousRun;
    final enablePredeploymentRun = this.enablePredeploymentRun;
    final testCases = this.testCases;
    return {
      'enableContinuousRun': ?enableContinuousRun,
      'enablePredeploymentRun': ?enablePredeploymentRun,
      'testCases': ?testCases,
    };
  }
}

class GoogleCloudDialogflowCxV3EnvironmentVersionConfig {
  core.String? version;

  GoogleCloudDialogflowCxV3EnvironmentVersionConfig({this.version});

  GoogleCloudDialogflowCxV3EnvironmentVersionConfig.fromJson(core.Map json_)
    : this(version: json_['version'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final version = this.version;
    return {'version': ?version};
  }
}

class GoogleCloudDialogflowCxV3EnvironmentWebhookConfig {
  core.List<GoogleCloudDialogflowCxV3Webhook>? webhookOverrides;

  GoogleCloudDialogflowCxV3EnvironmentWebhookConfig({this.webhookOverrides});

  GoogleCloudDialogflowCxV3EnvironmentWebhookConfig.fromJson(core.Map json_)
    : this(
        webhookOverrides: (json_['webhookOverrides'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3Webhook.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final webhookOverrides = this.webhookOverrides;
    return {'webhookOverrides': ?webhookOverrides};
  }
}

class GoogleCloudDialogflowCxV3EventHandler {
  core.String? event;
  core.String? name;
  core.String? targetFlow;
  core.String? targetPage;
  core.String? targetPlaybook;
  GoogleCloudDialogflowCxV3Fulfillment? triggerFulfillment;

  GoogleCloudDialogflowCxV3EventHandler({
    this.event,
    this.name,
    this.targetFlow,
    this.targetPage,
    this.targetPlaybook,
    this.triggerFulfillment,
  });

  GoogleCloudDialogflowCxV3EventHandler.fromJson(core.Map json_)
    : this(
        event: json_['event'] as core.String?,
        name: json_['name'] as core.String?,
        targetFlow: json_['targetFlow'] as core.String?,
        targetPage: json_['targetPage'] as core.String?,
        targetPlaybook: json_['targetPlaybook'] as core.String?,
        triggerFulfillment: json_.containsKey('triggerFulfillment')
            ? GoogleCloudDialogflowCxV3Fulfillment.fromJson(
                json_['triggerFulfillment']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final event = this.event;
    final name = this.name;
    final targetFlow = this.targetFlow;
    final targetPage = this.targetPage;
    final targetPlaybook = this.targetPlaybook;
    final triggerFulfillment = this.triggerFulfillment;
    return {
      'event': ?event,
      'name': ?name,
      'targetFlow': ?targetFlow,
      'targetPage': ?targetPage,
      'targetPlaybook': ?targetPlaybook,
      'triggerFulfillment': ?triggerFulfillment,
    };
  }
}

class GoogleCloudDialogflowCxV3EventInput {
  core.String? event;

  GoogleCloudDialogflowCxV3EventInput({this.event});

  GoogleCloudDialogflowCxV3EventInput.fromJson(core.Map json_)
    : this(event: json_['event'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final event = this.event;
    return {'event': ?event};
  }
}

class GoogleCloudDialogflowCxV3Example {
  core.List<GoogleCloudDialogflowCxV3Action>? actions;

  ///
  /// Possible string values are:
  /// - "OUTPUT_STATE_UNSPECIFIED"
  /// - "OUTPUT_STATE_OK"
  /// - "OUTPUT_STATE_CANCELLED"
  /// - "OUTPUT_STATE_FAILED"
  /// - "OUTPUT_STATE_ESCALATED"
  /// - "OUTPUT_STATE_PENDING"
  core.String? conversationState;
  core.String? createTime;
  core.String? description;
  core.String? displayName;
  core.String? languageCode;
  core.String? name;
  GoogleCloudDialogflowCxV3PlaybookInput? playbookInput;
  GoogleCloudDialogflowCxV3PlaybookOutput? playbookOutput;
  core.String? tokenCount;
  core.String? updateTime;

  GoogleCloudDialogflowCxV3Example({
    this.actions,
    this.conversationState,
    this.createTime,
    this.description,
    this.displayName,
    this.languageCode,
    this.name,
    this.playbookInput,
    this.playbookOutput,
    this.tokenCount,
    this.updateTime,
  });

  GoogleCloudDialogflowCxV3Example.fromJson(core.Map json_)
    : this(
        actions: (json_['actions'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3Action.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        conversationState: json_['conversationState'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        name: json_['name'] as core.String?,
        playbookInput: json_.containsKey('playbookInput')
            ? GoogleCloudDialogflowCxV3PlaybookInput.fromJson(
                json_['playbookInput'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        playbookOutput: json_.containsKey('playbookOutput')
            ? GoogleCloudDialogflowCxV3PlaybookOutput.fromJson(
                json_['playbookOutput'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tokenCount: json_['tokenCount'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final actions = this.actions;
    final conversationState = this.conversationState;
    final createTime = this.createTime;
    final description = this.description;
    final displayName = this.displayName;
    final languageCode = this.languageCode;
    final name = this.name;
    final playbookInput = this.playbookInput;
    final playbookOutput = this.playbookOutput;
    final tokenCount = this.tokenCount;
    final updateTime = this.updateTime;
    return {
      'actions': ?actions,
      'conversationState': ?conversationState,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'languageCode': ?languageCode,
      'name': ?name,
      'playbookInput': ?playbookInput,
      'playbookOutput': ?playbookOutput,
      'tokenCount': ?tokenCount,
      'updateTime': ?updateTime,
    };
  }
}

class GoogleCloudDialogflowCxV3Experiment {
  core.String? createTime;
  GoogleCloudDialogflowCxV3ExperimentDefinition? definition;
  core.String? description;
  core.String? displayName;
  core.String? endTime;
  core.String? experimentLength;
  core.String? lastUpdateTime;
  core.String? name;
  GoogleCloudDialogflowCxV3ExperimentResult? result;
  GoogleCloudDialogflowCxV3RolloutConfig? rolloutConfig;
  core.String? rolloutFailureReason;
  GoogleCloudDialogflowCxV3RolloutState? rolloutState;
  core.String? startTime;

  ///
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "DRAFT"
  /// - "RUNNING"
  /// - "DONE"
  /// - "ROLLOUT_FAILED"
  core.String? state;
  core.List<GoogleCloudDialogflowCxV3VariantsHistory>? variantsHistory;

  GoogleCloudDialogflowCxV3Experiment({
    this.createTime,
    this.definition,
    this.description,
    this.displayName,
    this.endTime,
    this.experimentLength,
    this.lastUpdateTime,
    this.name,
    this.result,
    this.rolloutConfig,
    this.rolloutFailureReason,
    this.rolloutState,
    this.startTime,
    this.state,
    this.variantsHistory,
  });

  GoogleCloudDialogflowCxV3Experiment.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        definition: json_.containsKey('definition')
            ? GoogleCloudDialogflowCxV3ExperimentDefinition.fromJson(
                json_['definition'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        endTime: json_['endTime'] as core.String?,
        experimentLength: json_['experimentLength'] as core.String?,
        lastUpdateTime: json_['lastUpdateTime'] as core.String?,
        name: json_['name'] as core.String?,
        result: json_.containsKey('result')
            ? GoogleCloudDialogflowCxV3ExperimentResult.fromJson(
                json_['result'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        rolloutConfig: json_.containsKey('rolloutConfig')
            ? GoogleCloudDialogflowCxV3RolloutConfig.fromJson(
                json_['rolloutConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        rolloutFailureReason: json_['rolloutFailureReason'] as core.String?,
        rolloutState: json_.containsKey('rolloutState')
            ? GoogleCloudDialogflowCxV3RolloutState.fromJson(
                json_['rolloutState'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        startTime: json_['startTime'] as core.String?,
        state: json_['state'] as core.String?,
        variantsHistory: (json_['variantsHistory'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3VariantsHistory.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final definition = this.definition;
    final description = this.description;
    final displayName = this.displayName;
    final endTime = this.endTime;
    final experimentLength = this.experimentLength;
    final lastUpdateTime = this.lastUpdateTime;
    final name = this.name;
    final result = this.result;
    final rolloutConfig = this.rolloutConfig;
    final rolloutFailureReason = this.rolloutFailureReason;
    final rolloutState = this.rolloutState;
    final startTime = this.startTime;
    final state = this.state;
    final variantsHistory = this.variantsHistory;
    return {
      'createTime': ?createTime,
      'definition': ?definition,
      'description': ?description,
      'displayName': ?displayName,
      'endTime': ?endTime,
      'experimentLength': ?experimentLength,
      'lastUpdateTime': ?lastUpdateTime,
      'name': ?name,
      'result': ?result,
      'rolloutConfig': ?rolloutConfig,
      'rolloutFailureReason': ?rolloutFailureReason,
      'rolloutState': ?rolloutState,
      'startTime': ?startTime,
      'state': ?state,
      'variantsHistory': ?variantsHistory,
    };
  }
}

class GoogleCloudDialogflowCxV3ExperimentDefinition {
  core.String? condition;
  GoogleCloudDialogflowCxV3VersionVariants? versionVariants;

  GoogleCloudDialogflowCxV3ExperimentDefinition({
    this.condition,
    this.versionVariants,
  });

  GoogleCloudDialogflowCxV3ExperimentDefinition.fromJson(core.Map json_)
    : this(
        condition: json_['condition'] as core.String?,
        versionVariants: json_.containsKey('versionVariants')
            ? GoogleCloudDialogflowCxV3VersionVariants.fromJson(
                json_['versionVariants'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final condition = this.condition;
    final versionVariants = this.versionVariants;
    return {'condition': ?condition, 'versionVariants': ?versionVariants};
  }
}

class GoogleCloudDialogflowCxV3ExperimentResult {
  core.String? lastUpdateTime;
  core.List<GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics>?
  versionMetrics;

  GoogleCloudDialogflowCxV3ExperimentResult({
    this.lastUpdateTime,
    this.versionMetrics,
  });

  GoogleCloudDialogflowCxV3ExperimentResult.fromJson(core.Map json_)
    : this(
        lastUpdateTime: json_['lastUpdateTime'] as core.String?,
        versionMetrics: (json_['versionMetrics'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final lastUpdateTime = this.lastUpdateTime;
    final versionMetrics = this.versionMetrics;
    return {
      'lastUpdateTime': ?lastUpdateTime,
      'versionMetrics': ?versionMetrics,
    };
  }
}

class GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval {
  core.double? confidenceLevel;
  core.double? lowerBound;
  core.double? ratio;
  core.double? upperBound;

  GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval({
    this.confidenceLevel,
    this.lowerBound,
    this.ratio,
    this.upperBound,
  });

  GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval.fromJson(
    core.Map json_,
  ) : this(
        confidenceLevel: (json_['confidenceLevel'] as core.num?)?.toDouble(),
        lowerBound: (json_['lowerBound'] as core.num?)?.toDouble(),
        ratio: (json_['ratio'] as core.num?)?.toDouble(),
        upperBound: (json_['upperBound'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final confidenceLevel = this.confidenceLevel;
    final lowerBound = this.lowerBound;
    final ratio = this.ratio;
    final upperBound = this.upperBound;
    return {
      'confidenceLevel': ?confidenceLevel,
      'lowerBound': ?lowerBound,
      'ratio': ?ratio,
      'upperBound': ?upperBound,
    };
  }
}

class GoogleCloudDialogflowCxV3ExperimentResultMetric {
  GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval?
  confidenceInterval;
  core.double? count;

  ///
  /// Possible string values are:
  /// - "COUNT_TYPE_UNSPECIFIED"
  /// - "TOTAL_NO_MATCH_COUNT"
  /// - "TOTAL_TURN_COUNT"
  /// - "AVERAGE_TURN_COUNT"
  core.String? countType;
  core.double? ratio;

  ///
  /// Possible string values are:
  /// - "METRIC_UNSPECIFIED"
  /// - "CONTAINED_SESSION_NO_CALLBACK_RATE"
  /// - "LIVE_AGENT_HANDOFF_RATE"
  /// - "CALLBACK_SESSION_RATE"
  /// - "ABANDONED_SESSION_RATE"
  /// - "SESSION_END_RATE"
  core.String? type;

  GoogleCloudDialogflowCxV3ExperimentResultMetric({
    this.confidenceInterval,
    this.count,
    this.countType,
    this.ratio,
    this.type,
  });

  GoogleCloudDialogflowCxV3ExperimentResultMetric.fromJson(core.Map json_)
    : this(
        confidenceInterval: json_.containsKey('confidenceInterval')
            ? GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval.fromJson(
                json_['confidenceInterval']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        count: (json_['count'] as core.num?)?.toDouble(),
        countType: json_['countType'] as core.String?,
        ratio: (json_['ratio'] as core.num?)?.toDouble(),
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final confidenceInterval = this.confidenceInterval;
    final count = this.count;
    final countType = this.countType;
    final ratio = this.ratio;
    final type = this.type;
    return {
      'confidenceInterval': ?confidenceInterval,
      'count': ?count,
      'countType': ?countType,
      'ratio': ?ratio,
      'type': ?type,
    };
  }
}

class GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics {
  core.List<GoogleCloudDialogflowCxV3ExperimentResultMetric>? metrics;
  core.int? sessionCount;
  core.String? version;

  GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics({
    this.metrics,
    this.sessionCount,
    this.version,
  });

  GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics.fromJson(
    core.Map json_,
  ) : this(
        metrics: (json_['metrics'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3ExperimentResultMetric.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        sessionCount: json_['sessionCount'] as core.int?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final metrics = this.metrics;
    final sessionCount = this.sessionCount;
    final version = this.version;
    return {
      'metrics': ?metrics,
      'sessionCount': ?sessionCount,
      'version': ?version,
    };
  }
}

class GoogleCloudDialogflowCxV3ExportAgentRequest {
  core.String? agentUri;

  ///
  /// Possible string values are:
  /// - "DATA_FORMAT_UNSPECIFIED"
  /// - "BLOB"
  /// - "JSON_PACKAGE"
  core.String? dataFormat;
  core.String? environment;
  GoogleCloudDialogflowCxV3ExportAgentRequestGitDestination? gitDestination;
  core.bool? includeBigqueryExportSettings;

  GoogleCloudDialogflowCxV3ExportAgentRequest({
    this.agentUri,
    this.dataFormat,
    this.environment,
    this.gitDestination,
    this.includeBigqueryExportSettings,
  });

  GoogleCloudDialogflowCxV3ExportAgentRequest.fromJson(core.Map json_)
    : this(
        agentUri: json_['agentUri'] as core.String?,
        dataFormat: json_['dataFormat'] as core.String?,
        environment: json_['environment'] as core.String?,
        gitDestination: json_.containsKey('gitDestination')
            ? GoogleCloudDialogflowCxV3ExportAgentRequestGitDestination.fromJson(
                json_['gitDestination'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        includeBigqueryExportSettings:
            json_['includeBigqueryExportSettings'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentUri = this.agentUri;
    final dataFormat = this.dataFormat;
    final environment = this.environment;
    final gitDestination = this.gitDestination;
    final includeBigqueryExportSettings = this.includeBigqueryExportSettings;
    return {
      'agentUri': ?agentUri,
      'dataFormat': ?dataFormat,
      'environment': ?environment,
      'gitDestination': ?gitDestination,
      'includeBigqueryExportSettings': ?includeBigqueryExportSettings,
    };
  }
}

class GoogleCloudDialogflowCxV3ExportAgentRequestGitDestination {
  core.String? commitMessage;
  core.String? trackingBranch;

  GoogleCloudDialogflowCxV3ExportAgentRequestGitDestination({
    this.commitMessage,
    this.trackingBranch,
  });

  GoogleCloudDialogflowCxV3ExportAgentRequestGitDestination.fromJson(
    core.Map json_,
  ) : this(
        commitMessage: json_['commitMessage'] as core.String?,
        trackingBranch: json_['trackingBranch'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final commitMessage = this.commitMessage;
    final trackingBranch = this.trackingBranch;
    return {'commitMessage': ?commitMessage, 'trackingBranch': ?trackingBranch};
  }
}

class GoogleCloudDialogflowCxV3ExportEntityTypesRequest {
  ///
  /// Possible string values are:
  /// - "DATA_FORMAT_UNSPECIFIED"
  /// - "BLOB"
  /// - "JSON_PACKAGE"
  core.String? dataFormat;
  core.List<core.String>? entityTypes;
  core.bool? entityTypesContentInline;
  core.String? entityTypesUri;
  core.String? languageCode;

  GoogleCloudDialogflowCxV3ExportEntityTypesRequest({
    this.dataFormat,
    this.entityTypes,
    this.entityTypesContentInline,
    this.entityTypesUri,
    this.languageCode,
  });

  GoogleCloudDialogflowCxV3ExportEntityTypesRequest.fromJson(core.Map json_)
    : this(
        dataFormat: json_['dataFormat'] as core.String?,
        entityTypes: (json_['entityTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        entityTypesContentInline:
            json_['entityTypesContentInline'] as core.bool?,
        entityTypesUri: json_['entityTypesUri'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataFormat = this.dataFormat;
    final entityTypes = this.entityTypes;
    final entityTypesContentInline = this.entityTypesContentInline;
    final entityTypesUri = this.entityTypesUri;
    final languageCode = this.languageCode;
    return {
      'dataFormat': ?dataFormat,
      'entityTypes': ?entityTypes,
      'entityTypesContentInline': ?entityTypesContentInline,
      'entityTypesUri': ?entityTypesUri,
      'languageCode': ?languageCode,
    };
  }
}

class GoogleCloudDialogflowCxV3ExportFlowRequest {
  core.String? flowUri;
  core.bool? includeReferencedFlows;

  GoogleCloudDialogflowCxV3ExportFlowRequest({
    this.flowUri,
    this.includeReferencedFlows,
  });

  GoogleCloudDialogflowCxV3ExportFlowRequest.fromJson(core.Map json_)
    : this(
        flowUri: json_['flowUri'] as core.String?,
        includeReferencedFlows: json_['includeReferencedFlows'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final flowUri = this.flowUri;
    final includeReferencedFlows = this.includeReferencedFlows;
    return {
      'flowUri': ?flowUri,
      'includeReferencedFlows': ?includeReferencedFlows,
    };
  }
}

class GoogleCloudDialogflowCxV3ExportIntentsRequest {
  ///
  /// Possible string values are:
  /// - "DATA_FORMAT_UNSPECIFIED"
  /// - "BLOB"
  /// - "JSON"
  /// - "CSV"
  core.String? dataFormat;
  core.List<core.String>? intents;
  core.bool? intentsContentInline;
  core.String? intentsUri;

  GoogleCloudDialogflowCxV3ExportIntentsRequest({
    this.dataFormat,
    this.intents,
    this.intentsContentInline,
    this.intentsUri,
  });

  GoogleCloudDialogflowCxV3ExportIntentsRequest.fromJson(core.Map json_)
    : this(
        dataFormat: json_['dataFormat'] as core.String?,
        intents: (json_['intents'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        intentsContentInline: json_['intentsContentInline'] as core.bool?,
        intentsUri: json_['intentsUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataFormat = this.dataFormat;
    final intents = this.intents;
    final intentsContentInline = this.intentsContentInline;
    final intentsUri = this.intentsUri;
    return {
      'dataFormat': ?dataFormat,
      'intents': ?intents,
      'intentsContentInline': ?intentsContentInline,
      'intentsUri': ?intentsUri,
    };
  }
}

class GoogleCloudDialogflowCxV3ExportPlaybookRequest {
  ///
  /// Possible string values are:
  /// - "DATA_FORMAT_UNSPECIFIED"
  /// - "BLOB"
  /// - "JSON"
  core.String? dataFormat;
  core.String? playbookUri;

  GoogleCloudDialogflowCxV3ExportPlaybookRequest({
    this.dataFormat,
    this.playbookUri,
  });

  GoogleCloudDialogflowCxV3ExportPlaybookRequest.fromJson(core.Map json_)
    : this(
        dataFormat: json_['dataFormat'] as core.String?,
        playbookUri: json_['playbookUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataFormat = this.dataFormat;
    final playbookUri = this.playbookUri;
    return {'dataFormat': ?dataFormat, 'playbookUri': ?playbookUri};
  }
}

class GoogleCloudDialogflowCxV3ExportTestCasesRequest {
  ///
  /// Possible string values are:
  /// - "DATA_FORMAT_UNSPECIFIED"
  /// - "BLOB"
  /// - "JSON"
  core.String? dataFormat;
  core.String? filter;
  core.String? gcsUri;

  GoogleCloudDialogflowCxV3ExportTestCasesRequest({
    this.dataFormat,
    this.filter,
    this.gcsUri,
  });

  GoogleCloudDialogflowCxV3ExportTestCasesRequest.fromJson(core.Map json_)
    : this(
        dataFormat: json_['dataFormat'] as core.String?,
        filter: json_['filter'] as core.String?,
        gcsUri: json_['gcsUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataFormat = this.dataFormat;
    final filter = this.filter;
    final gcsUri = this.gcsUri;
    return {'dataFormat': ?dataFormat, 'filter': ?filter, 'gcsUri': ?gcsUri};
  }
}

typedef GoogleCloudDialogflowCxV3FilterSpecs = $FilterSpecs;

class GoogleCloudDialogflowCxV3Flow {
  GoogleCloudDialogflowCxV3AdvancedSettings? advancedSettings;
  core.String? description;
  core.String? displayName;
  core.List<GoogleCloudDialogflowCxV3EventHandler>? eventHandlers;
  core.List<GoogleCloudDialogflowCxV3ParameterDefinition>?
  inputParameterDefinitions;
  GoogleCloudDialogflowCxV3KnowledgeConnectorSettings?
  knowledgeConnectorSettings;
  core.bool? locked;
  GoogleCloudDialogflowCxV3FlowMultiLanguageSettings? multiLanguageSettings;
  core.String? name;
  GoogleCloudDialogflowCxV3NluSettings? nluSettings;
  core.List<GoogleCloudDialogflowCxV3ParameterDefinition>?
  outputParameterDefinitions;
  core.List<core.String>? transitionRouteGroups;
  core.List<GoogleCloudDialogflowCxV3TransitionRoute>? transitionRoutes;

  GoogleCloudDialogflowCxV3Flow({
    this.advancedSettings,
    this.description,
    this.displayName,
    this.eventHandlers,
    this.inputParameterDefinitions,
    this.knowledgeConnectorSettings,
    this.locked,
    this.multiLanguageSettings,
    this.name,
    this.nluSettings,
    this.outputParameterDefinitions,
    this.transitionRouteGroups,
    this.transitionRoutes,
  });

  GoogleCloudDialogflowCxV3Flow.fromJson(core.Map json_)
    : this(
        advancedSettings: json_.containsKey('advancedSettings')
            ? GoogleCloudDialogflowCxV3AdvancedSettings.fromJson(
                json_['advancedSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        eventHandlers: (json_['eventHandlers'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3EventHandler.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        inputParameterDefinitions:
            (json_['inputParameterDefinitions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3ParameterDefinition.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        knowledgeConnectorSettings:
            json_.containsKey('knowledgeConnectorSettings')
            ? GoogleCloudDialogflowCxV3KnowledgeConnectorSettings.fromJson(
                json_['knowledgeConnectorSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        locked: json_['locked'] as core.bool?,
        multiLanguageSettings: json_.containsKey('multiLanguageSettings')
            ? GoogleCloudDialogflowCxV3FlowMultiLanguageSettings.fromJson(
                json_['multiLanguageSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        nluSettings: json_.containsKey('nluSettings')
            ? GoogleCloudDialogflowCxV3NluSettings.fromJson(
                json_['nluSettings'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        outputParameterDefinitions:
            (json_['outputParameterDefinitions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3ParameterDefinition.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        transitionRouteGroups: (json_['transitionRouteGroups'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        transitionRoutes: (json_['transitionRoutes'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3TransitionRoute.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final advancedSettings = this.advancedSettings;
    final description = this.description;
    final displayName = this.displayName;
    final eventHandlers = this.eventHandlers;
    final inputParameterDefinitions = this.inputParameterDefinitions;
    final knowledgeConnectorSettings = this.knowledgeConnectorSettings;
    final locked = this.locked;
    final multiLanguageSettings = this.multiLanguageSettings;
    final name = this.name;
    final nluSettings = this.nluSettings;
    final outputParameterDefinitions = this.outputParameterDefinitions;
    final transitionRouteGroups = this.transitionRouteGroups;
    final transitionRoutes = this.transitionRoutes;
    return {
      'advancedSettings': ?advancedSettings,
      'description': ?description,
      'displayName': ?displayName,
      'eventHandlers': ?eventHandlers,
      'inputParameterDefinitions': ?inputParameterDefinitions,
      'knowledgeConnectorSettings': ?knowledgeConnectorSettings,
      'locked': ?locked,
      'multiLanguageSettings': ?multiLanguageSettings,
      'name': ?name,
      'nluSettings': ?nluSettings,
      'outputParameterDefinitions': ?outputParameterDefinitions,
      'transitionRouteGroups': ?transitionRouteGroups,
      'transitionRoutes': ?transitionRoutes,
    };
  }
}

class GoogleCloudDialogflowCxV3FlowImportStrategy {
  ///
  /// Possible string values are:
  /// - "IMPORT_STRATEGY_UNSPECIFIED"
  /// - "IMPORT_STRATEGY_CREATE_NEW"
  /// - "IMPORT_STRATEGY_REPLACE"
  /// - "IMPORT_STRATEGY_KEEP"
  /// - "IMPORT_STRATEGY_MERGE"
  /// - "IMPORT_STRATEGY_THROW_ERROR"
  core.String? globalImportStrategy;

  GoogleCloudDialogflowCxV3FlowImportStrategy({this.globalImportStrategy});

  GoogleCloudDialogflowCxV3FlowImportStrategy.fromJson(core.Map json_)
    : this(globalImportStrategy: json_['globalImportStrategy'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final globalImportStrategy = this.globalImportStrategy;
    return {'globalImportStrategy': ?globalImportStrategy};
  }
}

class GoogleCloudDialogflowCxV3FlowInvocation {
  core.String? displayName;
  core.String? flow;

  ///
  /// Possible string values are:
  /// - "OUTPUT_STATE_UNSPECIFIED"
  /// - "OUTPUT_STATE_OK"
  /// - "OUTPUT_STATE_CANCELLED"
  /// - "OUTPUT_STATE_FAILED"
  /// - "OUTPUT_STATE_ESCALATED"
  /// - "OUTPUT_STATE_PENDING"
  core.String? flowState;

  GoogleCloudDialogflowCxV3FlowInvocation({
    this.displayName,
    this.flow,
    this.flowState,
  });

  GoogleCloudDialogflowCxV3FlowInvocation.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        flow: json_['flow'] as core.String?,
        flowState: json_['flowState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final flow = this.flow;
    final flowState = this.flowState;
    return {
      'displayName': ?displayName,
      'flow': ?flow,
      'flowState': ?flowState,
    };
  }
}

class GoogleCloudDialogflowCxV3FlowMultiLanguageSettings {
  core.bool? enableMultiLanguageDetection;
  core.List<core.String>? supportedResponseLanguageCodes;

  GoogleCloudDialogflowCxV3FlowMultiLanguageSettings({
    this.enableMultiLanguageDetection,
    this.supportedResponseLanguageCodes,
  });

  GoogleCloudDialogflowCxV3FlowMultiLanguageSettings.fromJson(core.Map json_)
    : this(
        enableMultiLanguageDetection:
            json_['enableMultiLanguageDetection'] as core.bool?,
        supportedResponseLanguageCodes:
            (json_['supportedResponseLanguageCodes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enableMultiLanguageDetection = this.enableMultiLanguageDetection;
    final supportedResponseLanguageCodes = this.supportedResponseLanguageCodes;
    return {
      'enableMultiLanguageDetection': ?enableMultiLanguageDetection,
      'supportedResponseLanguageCodes': ?supportedResponseLanguageCodes,
    };
  }
}

class GoogleCloudDialogflowCxV3FlowTransition {
  core.String? displayName;
  core.String? flow;

  GoogleCloudDialogflowCxV3FlowTransition({this.displayName, this.flow});

  GoogleCloudDialogflowCxV3FlowTransition.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        flow: json_['flow'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final flow = this.flow;
    return {'displayName': ?displayName, 'flow': ?flow};
  }
}

class GoogleCloudDialogflowCxV3FlowValidationResult {
  core.String? name;
  core.String? updateTime;
  core.List<GoogleCloudDialogflowCxV3ValidationMessage>? validationMessages;

  GoogleCloudDialogflowCxV3FlowValidationResult({
    this.name,
    this.updateTime,
    this.validationMessages,
  });

  GoogleCloudDialogflowCxV3FlowValidationResult.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        validationMessages: (json_['validationMessages'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3ValidationMessage.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final updateTime = this.updateTime;
    final validationMessages = this.validationMessages;
    return {
      'name': ?name,
      'updateTime': ?updateTime,
      'validationMessages': ?validationMessages,
    };
  }
}

class GoogleCloudDialogflowCxV3Form {
  core.List<GoogleCloudDialogflowCxV3FormParameter>? parameters;

  GoogleCloudDialogflowCxV3Form({this.parameters});

  GoogleCloudDialogflowCxV3Form.fromJson(core.Map json_)
    : this(
        parameters: (json_['parameters'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3FormParameter.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final parameters = this.parameters;
    return {'parameters': ?parameters};
  }
}

class GoogleCloudDialogflowCxV3FormParameter {
  GoogleCloudDialogflowCxV3AdvancedSettings? advancedSettings;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? defaultValue;
  core.String? displayName;
  core.String? entityType;
  GoogleCloudDialogflowCxV3FormParameterFillBehavior? fillBehavior;
  core.bool? isList;
  core.bool? redact;
  core.bool? required;

  GoogleCloudDialogflowCxV3FormParameter({
    this.advancedSettings,
    this.defaultValue,
    this.displayName,
    this.entityType,
    this.fillBehavior,
    this.isList,
    this.redact,
    this.required,
  });

  GoogleCloudDialogflowCxV3FormParameter.fromJson(core.Map json_)
    : this(
        advancedSettings: json_.containsKey('advancedSettings')
            ? GoogleCloudDialogflowCxV3AdvancedSettings.fromJson(
                json_['advancedSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        defaultValue: json_['defaultValue'],
        displayName: json_['displayName'] as core.String?,
        entityType: json_['entityType'] as core.String?,
        fillBehavior: json_.containsKey('fillBehavior')
            ? GoogleCloudDialogflowCxV3FormParameterFillBehavior.fromJson(
                json_['fillBehavior'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        isList: json_['isList'] as core.bool?,
        redact: json_['redact'] as core.bool?,
        required: json_['required'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final advancedSettings = this.advancedSettings;
    final defaultValue = this.defaultValue;
    final displayName = this.displayName;
    final entityType = this.entityType;
    final fillBehavior = this.fillBehavior;
    final isList = this.isList;
    final redact = this.redact;
    final required = this.required;
    return {
      'advancedSettings': ?advancedSettings,
      'defaultValue': ?defaultValue,
      'displayName': ?displayName,
      'entityType': ?entityType,
      'fillBehavior': ?fillBehavior,
      'isList': ?isList,
      'redact': ?redact,
      'required': ?required,
    };
  }
}

class GoogleCloudDialogflowCxV3FormParameterFillBehavior {
  GoogleCloudDialogflowCxV3Fulfillment? initialPromptFulfillment;
  core.List<GoogleCloudDialogflowCxV3EventHandler>? repromptEventHandlers;

  GoogleCloudDialogflowCxV3FormParameterFillBehavior({
    this.initialPromptFulfillment,
    this.repromptEventHandlers,
  });

  GoogleCloudDialogflowCxV3FormParameterFillBehavior.fromJson(core.Map json_)
    : this(
        initialPromptFulfillment: json_.containsKey('initialPromptFulfillment')
            ? GoogleCloudDialogflowCxV3Fulfillment.fromJson(
                json_['initialPromptFulfillment']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        repromptEventHandlers: (json_['repromptEventHandlers'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3EventHandler.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final initialPromptFulfillment = this.initialPromptFulfillment;
    final repromptEventHandlers = this.repromptEventHandlers;
    return {
      'initialPromptFulfillment': ?initialPromptFulfillment,
      'repromptEventHandlers': ?repromptEventHandlers,
    };
  }
}

class GoogleCloudDialogflowCxV3FulfillIntentRequest {
  GoogleCloudDialogflowCxV3Match? match;
  GoogleCloudDialogflowCxV3MatchIntentRequest? matchIntentRequest;
  GoogleCloudDialogflowCxV3OutputAudioConfig? outputAudioConfig;

  GoogleCloudDialogflowCxV3FulfillIntentRequest({
    this.match,
    this.matchIntentRequest,
    this.outputAudioConfig,
  });

  GoogleCloudDialogflowCxV3FulfillIntentRequest.fromJson(core.Map json_)
    : this(
        match: json_.containsKey('match')
            ? GoogleCloudDialogflowCxV3Match.fromJson(
                json_['match'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        matchIntentRequest: json_.containsKey('matchIntentRequest')
            ? GoogleCloudDialogflowCxV3MatchIntentRequest.fromJson(
                json_['matchIntentRequest']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        outputAudioConfig: json_.containsKey('outputAudioConfig')
            ? GoogleCloudDialogflowCxV3OutputAudioConfig.fromJson(
                json_['outputAudioConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final match = this.match;
    final matchIntentRequest = this.matchIntentRequest;
    final outputAudioConfig = this.outputAudioConfig;
    return {
      'match': ?match,
      'matchIntentRequest': ?matchIntentRequest,
      'outputAudioConfig': ?outputAudioConfig,
    };
  }
}

class GoogleCloudDialogflowCxV3FulfillIntentResponse {
  core.String? outputAudio;
  core.List<core.int> get outputAudioAsBytes =>
      convert.base64.decode(outputAudio!);

  set outputAudioAsBytes(core.List<core.int> bytes_) {
    outputAudio = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  GoogleCloudDialogflowCxV3OutputAudioConfig? outputAudioConfig;
  GoogleCloudDialogflowCxV3QueryResult? queryResult;
  core.String? responseId;

  GoogleCloudDialogflowCxV3FulfillIntentResponse({
    this.outputAudio,
    this.outputAudioConfig,
    this.queryResult,
    this.responseId,
  });

  GoogleCloudDialogflowCxV3FulfillIntentResponse.fromJson(core.Map json_)
    : this(
        outputAudio: json_['outputAudio'] as core.String?,
        outputAudioConfig: json_.containsKey('outputAudioConfig')
            ? GoogleCloudDialogflowCxV3OutputAudioConfig.fromJson(
                json_['outputAudioConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        queryResult: json_.containsKey('queryResult')
            ? GoogleCloudDialogflowCxV3QueryResult.fromJson(
                json_['queryResult'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        responseId: json_['responseId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final outputAudio = this.outputAudio;
    final outputAudioConfig = this.outputAudioConfig;
    final queryResult = this.queryResult;
    final responseId = this.responseId;
    return {
      'outputAudio': ?outputAudio,
      'outputAudioConfig': ?outputAudioConfig,
      'queryResult': ?queryResult,
      'responseId': ?responseId,
    };
  }
}

class GoogleCloudDialogflowCxV3Fulfillment {
  GoogleCloudDialogflowCxV3AdvancedSettings? advancedSettings;
  core.List<GoogleCloudDialogflowCxV3FulfillmentConditionalCases>?
  conditionalCases;
  core.bool? enableGenerativeFallback;
  core.List<GoogleCloudDialogflowCxV3FulfillmentGeneratorSettings>? generators;
  core.List<GoogleCloudDialogflowCxV3ResponseMessage>? messages;
  core.bool? returnPartialResponses;
  core.List<GoogleCloudDialogflowCxV3FulfillmentSetParameterAction>?
  setParameterActions;
  core.String? tag;
  core.String? webhook;

  GoogleCloudDialogflowCxV3Fulfillment({
    this.advancedSettings,
    this.conditionalCases,
    this.enableGenerativeFallback,
    this.generators,
    this.messages,
    this.returnPartialResponses,
    this.setParameterActions,
    this.tag,
    this.webhook,
  });

  GoogleCloudDialogflowCxV3Fulfillment.fromJson(core.Map json_)
    : this(
        advancedSettings: json_.containsKey('advancedSettings')
            ? GoogleCloudDialogflowCxV3AdvancedSettings.fromJson(
                json_['advancedSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        conditionalCases: (json_['conditionalCases'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3FulfillmentConditionalCases.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        enableGenerativeFallback:
            json_['enableGenerativeFallback'] as core.bool?,
        generators: (json_['generators'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3FulfillmentGeneratorSettings.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        messages: (json_['messages'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3ResponseMessage.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        returnPartialResponses: json_['returnPartialResponses'] as core.bool?,
        setParameterActions: (json_['setParameterActions'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3FulfillmentSetParameterAction.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        tag: json_['tag'] as core.String?,
        webhook: json_['webhook'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final advancedSettings = this.advancedSettings;
    final conditionalCases = this.conditionalCases;
    final enableGenerativeFallback = this.enableGenerativeFallback;
    final generators = this.generators;
    final messages = this.messages;
    final returnPartialResponses = this.returnPartialResponses;
    final setParameterActions = this.setParameterActions;
    final tag = this.tag;
    final webhook = this.webhook;
    return {
      'advancedSettings': ?advancedSettings,
      'conditionalCases': ?conditionalCases,
      'enableGenerativeFallback': ?enableGenerativeFallback,
      'generators': ?generators,
      'messages': ?messages,
      'returnPartialResponses': ?returnPartialResponses,
      'setParameterActions': ?setParameterActions,
      'tag': ?tag,
      'webhook': ?webhook,
    };
  }
}

class GoogleCloudDialogflowCxV3FulfillmentConditionalCases {
  core.List<GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase>? cases;

  GoogleCloudDialogflowCxV3FulfillmentConditionalCases({this.cases});

  GoogleCloudDialogflowCxV3FulfillmentConditionalCases.fromJson(core.Map json_)
    : this(
        cases: (json_['cases'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cases = this.cases;
    return {'cases': ?cases};
  }
}

class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase {
  core.List<
    GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent
  >?
  caseContent;
  core.String? condition;

  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase({
    this.caseContent,
    this.condition,
  });

  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase.fromJson(
    core.Map json_,
  ) : this(
        caseContent: (json_['caseContent'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        condition: json_['condition'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final caseContent = this.caseContent;
    final condition = this.condition;
    return {'caseContent': ?caseContent, 'condition': ?condition};
  }
}

class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent {
  GoogleCloudDialogflowCxV3FulfillmentConditionalCases? additionalCases;
  GoogleCloudDialogflowCxV3ResponseMessage? message;

  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent({
    this.additionalCases,
    this.message,
  });

  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent.fromJson(
    core.Map json_,
  ) : this(
        additionalCases: json_.containsKey('additionalCases')
            ? GoogleCloudDialogflowCxV3FulfillmentConditionalCases.fromJson(
                json_['additionalCases'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        message: json_.containsKey('message')
            ? GoogleCloudDialogflowCxV3ResponseMessage.fromJson(
                json_['message'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalCases = this.additionalCases;
    final message = this.message;
    return {'additionalCases': ?additionalCases, 'message': ?message};
  }
}

class GoogleCloudDialogflowCxV3FulfillmentGeneratorSettings {
  core.String? generator;
  core.Map<core.String, core.String>? inputParameters;
  core.String? outputParameter;

  GoogleCloudDialogflowCxV3FulfillmentGeneratorSettings({
    this.generator,
    this.inputParameters,
    this.outputParameter,
  });

  GoogleCloudDialogflowCxV3FulfillmentGeneratorSettings.fromJson(core.Map json_)
    : this(
        generator: json_['generator'] as core.String?,
        inputParameters:
            (json_['inputParameters'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        outputParameter: json_['outputParameter'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final generator = this.generator;
    final inputParameters = this.inputParameters;
    final outputParameter = this.outputParameter;
    return {
      'generator': ?generator,
      'inputParameters': ?inputParameters,
      'outputParameter': ?outputParameter,
    };
  }
}

class GoogleCloudDialogflowCxV3FulfillmentSetParameterAction {
  core.String? parameter;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? value;

  GoogleCloudDialogflowCxV3FulfillmentSetParameterAction({
    this.parameter,
    this.value,
  });

  GoogleCloudDialogflowCxV3FulfillmentSetParameterAction.fromJson(
    core.Map json_,
  ) : this(
        parameter: json_['parameter'] as core.String?,
        value: json_['value'],
      );

  core.Map<core.String, core.dynamic> toJson() {
    final parameter = this.parameter;
    final value = this.value;
    return {'parameter': ?parameter, 'value': ?value};
  }
}

typedef GoogleCloudDialogflowCxV3GcsDestination = $Shared08;

class GoogleCloudDialogflowCxV3GenerativeSettings {
  GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings? fallbackSettings;
  GoogleCloudDialogflowCxV3SafetySettings? generativeSafetySettings;
  GoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings?
  knowledgeConnectorSettings;
  core.String? languageCode;
  GoogleCloudDialogflowCxV3LlmModelSettings? llmModelSettings;
  core.String? name;

  GoogleCloudDialogflowCxV3GenerativeSettings({
    this.fallbackSettings,
    this.generativeSafetySettings,
    this.knowledgeConnectorSettings,
    this.languageCode,
    this.llmModelSettings,
    this.name,
  });

  GoogleCloudDialogflowCxV3GenerativeSettings.fromJson(core.Map json_)
    : this(
        fallbackSettings: json_.containsKey('fallbackSettings')
            ? GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings.fromJson(
                json_['fallbackSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        generativeSafetySettings: json_.containsKey('generativeSafetySettings')
            ? GoogleCloudDialogflowCxV3SafetySettings.fromJson(
                json_['generativeSafetySettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        knowledgeConnectorSettings:
            json_.containsKey('knowledgeConnectorSettings')
            ? GoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings.fromJson(
                json_['knowledgeConnectorSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        languageCode: json_['languageCode'] as core.String?,
        llmModelSettings: json_.containsKey('llmModelSettings')
            ? GoogleCloudDialogflowCxV3LlmModelSettings.fromJson(
                json_['llmModelSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fallbackSettings = this.fallbackSettings;
    final generativeSafetySettings = this.generativeSafetySettings;
    final knowledgeConnectorSettings = this.knowledgeConnectorSettings;
    final languageCode = this.languageCode;
    final llmModelSettings = this.llmModelSettings;
    final name = this.name;
    return {
      'fallbackSettings': ?fallbackSettings,
      'generativeSafetySettings': ?generativeSafetySettings,
      'knowledgeConnectorSettings': ?knowledgeConnectorSettings,
      'languageCode': ?languageCode,
      'llmModelSettings': ?llmModelSettings,
      'name': ?name,
    };
  }
}

class GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings {
  core.List<
    GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate
  >?
  promptTemplates;
  core.String? selectedPrompt;

  GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings({
    this.promptTemplates,
    this.selectedPrompt,
  });

  GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings.fromJson(
    core.Map json_,
  ) : this(
        promptTemplates: (json_['promptTemplates'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        selectedPrompt: json_['selectedPrompt'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final promptTemplates = this.promptTemplates;
    final selectedPrompt = this.selectedPrompt;
    return {
      'promptTemplates': ?promptTemplates,
      'selectedPrompt': ?selectedPrompt,
    };
  }
}

class GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate {
  core.String? displayName;
  core.bool? frozen;
  core.String? promptText;

  GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate({
    this.displayName,
    this.frozen,
    this.promptText,
  });

  GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate.fromJson(
    core.Map json_,
  ) : this(
        displayName: json_['displayName'] as core.String?,
        frozen: json_['frozen'] as core.bool?,
        promptText: json_['promptText'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final frozen = this.frozen;
    final promptText = this.promptText;
    return {
      'displayName': ?displayName,
      'frozen': ?frozen,
      'promptText': ?promptText,
    };
  }
}

class GoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings {
  core.String? agent;
  core.String? agentIdentity;
  core.String? agentScope;
  core.String? business;
  core.String? businessDescription;
  core.bool? disableDataStoreFallback;

  GoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings({
    this.agent,
    this.agentIdentity,
    this.agentScope,
    this.business,
    this.businessDescription,
    this.disableDataStoreFallback,
  });

  GoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings.fromJson(
    core.Map json_,
  ) : this(
        agent: json_['agent'] as core.String?,
        agentIdentity: json_['agentIdentity'] as core.String?,
        agentScope: json_['agentScope'] as core.String?,
        business: json_['business'] as core.String?,
        businessDescription: json_['businessDescription'] as core.String?,
        disableDataStoreFallback:
            json_['disableDataStoreFallback'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agent = this.agent;
    final agentIdentity = this.agentIdentity;
    final agentScope = this.agentScope;
    final business = this.business;
    final businessDescription = this.businessDescription;
    final disableDataStoreFallback = this.disableDataStoreFallback;
    return {
      'agent': ?agent,
      'agentIdentity': ?agentIdentity,
      'agentScope': ?agentScope,
      'business': ?business,
      'businessDescription': ?businessDescription,
      'disableDataStoreFallback': ?disableDataStoreFallback,
    };
  }
}

class GoogleCloudDialogflowCxV3Generator {
  core.String? displayName;
  GoogleCloudDialogflowCxV3LlmModelSettings? llmModelSettings;
  GoogleCloudDialogflowCxV3GeneratorModelParameter? modelParameter;
  core.String? name;
  core.List<GoogleCloudDialogflowCxV3GeneratorPlaceholder>? placeholders;
  GoogleCloudDialogflowCxV3Phrase? promptText;

  GoogleCloudDialogflowCxV3Generator({
    this.displayName,
    this.llmModelSettings,
    this.modelParameter,
    this.name,
    this.placeholders,
    this.promptText,
  });

  GoogleCloudDialogflowCxV3Generator.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        llmModelSettings: json_.containsKey('llmModelSettings')
            ? GoogleCloudDialogflowCxV3LlmModelSettings.fromJson(
                json_['llmModelSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        modelParameter: json_.containsKey('modelParameter')
            ? GoogleCloudDialogflowCxV3GeneratorModelParameter.fromJson(
                json_['modelParameter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        placeholders: (json_['placeholders'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3GeneratorPlaceholder.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        promptText: json_.containsKey('promptText')
            ? GoogleCloudDialogflowCxV3Phrase.fromJson(
                json_['promptText'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final llmModelSettings = this.llmModelSettings;
    final modelParameter = this.modelParameter;
    final name = this.name;
    final placeholders = this.placeholders;
    final promptText = this.promptText;
    return {
      'displayName': ?displayName,
      'llmModelSettings': ?llmModelSettings,
      'modelParameter': ?modelParameter,
      'name': ?name,
      'placeholders': ?placeholders,
      'promptText': ?promptText,
    };
  }
}

class GoogleCloudDialogflowCxV3GeneratorModelParameter {
  core.int? maxDecodeSteps;
  core.double? temperature;
  core.int? topK;
  core.double? topP;

  GoogleCloudDialogflowCxV3GeneratorModelParameter({
    this.maxDecodeSteps,
    this.temperature,
    this.topK,
    this.topP,
  });

  GoogleCloudDialogflowCxV3GeneratorModelParameter.fromJson(core.Map json_)
    : this(
        maxDecodeSteps: json_['maxDecodeSteps'] as core.int?,
        temperature: (json_['temperature'] as core.num?)?.toDouble(),
        topK: json_['topK'] as core.int?,
        topP: (json_['topP'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final maxDecodeSteps = this.maxDecodeSteps;
    final temperature = this.temperature;
    final topK = this.topK;
    final topP = this.topP;
    return {
      'maxDecodeSteps': ?maxDecodeSteps,
      'temperature': ?temperature,
      'topK': ?topK,
      'topP': ?topP,
    };
  }
}

class GoogleCloudDialogflowCxV3GeneratorPlaceholder {
  core.String? id;
  core.String? name;

  GoogleCloudDialogflowCxV3GeneratorPlaceholder({this.id, this.name});

  GoogleCloudDialogflowCxV3GeneratorPlaceholder.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    final name = this.name;
    return {'id': ?id, 'name': ?name};
  }
}

class GoogleCloudDialogflowCxV3Handler {
  GoogleCloudDialogflowCxV3HandlerEventHandler? eventHandler;
  GoogleCloudDialogflowCxV3HandlerLifecycleHandler? lifecycleHandler;

  GoogleCloudDialogflowCxV3Handler({this.eventHandler, this.lifecycleHandler});

  GoogleCloudDialogflowCxV3Handler.fromJson(core.Map json_)
    : this(
        eventHandler: json_.containsKey('eventHandler')
            ? GoogleCloudDialogflowCxV3HandlerEventHandler.fromJson(
                json_['eventHandler'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        lifecycleHandler: json_.containsKey('lifecycleHandler')
            ? GoogleCloudDialogflowCxV3HandlerLifecycleHandler.fromJson(
                json_['lifecycleHandler']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eventHandler = this.eventHandler;
    final lifecycleHandler = this.lifecycleHandler;
    return {
      'eventHandler': ?eventHandler,
      'lifecycleHandler': ?lifecycleHandler,
    };
  }
}

class GoogleCloudDialogflowCxV3HandlerEventHandler {
  core.String? condition;
  core.String? event;
  GoogleCloudDialogflowCxV3Fulfillment? fulfillment;

  GoogleCloudDialogflowCxV3HandlerEventHandler({
    this.condition,
    this.event,
    this.fulfillment,
  });

  GoogleCloudDialogflowCxV3HandlerEventHandler.fromJson(core.Map json_)
    : this(
        condition: json_['condition'] as core.String?,
        event: json_['event'] as core.String?,
        fulfillment: json_.containsKey('fulfillment')
            ? GoogleCloudDialogflowCxV3Fulfillment.fromJson(
                json_['fulfillment'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final condition = this.condition;
    final event = this.event;
    final fulfillment = this.fulfillment;
    return {
      'condition': ?condition,
      'event': ?event,
      'fulfillment': ?fulfillment,
    };
  }
}

class GoogleCloudDialogflowCxV3HandlerLifecycleHandler {
  core.String? condition;
  GoogleCloudDialogflowCxV3Fulfillment? fulfillment;
  core.String? lifecycleStage;

  GoogleCloudDialogflowCxV3HandlerLifecycleHandler({
    this.condition,
    this.fulfillment,
    this.lifecycleStage,
  });

  GoogleCloudDialogflowCxV3HandlerLifecycleHandler.fromJson(core.Map json_)
    : this(
        condition: json_['condition'] as core.String?,
        fulfillment: json_.containsKey('fulfillment')
            ? GoogleCloudDialogflowCxV3Fulfillment.fromJson(
                json_['fulfillment'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        lifecycleStage: json_['lifecycleStage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final condition = this.condition;
    final fulfillment = this.fulfillment;
    final lifecycleStage = this.lifecycleStage;
    return {
      'condition': ?condition,
      'fulfillment': ?fulfillment,
      'lifecycleStage': ?lifecycleStage,
    };
  }
}

class GoogleCloudDialogflowCxV3ImportEntityTypesRequest {
  GoogleCloudDialogflowCxV3InlineSource? entityTypesContent;
  core.String? entityTypesUri;

  ///
  /// Possible string values are:
  /// - "MERGE_OPTION_UNSPECIFIED"
  /// - "REPLACE"
  /// - "MERGE"
  /// - "RENAME"
  /// - "REPORT_CONFLICT"
  /// - "KEEP"
  core.String? mergeOption;
  core.String? targetEntityType;

  GoogleCloudDialogflowCxV3ImportEntityTypesRequest({
    this.entityTypesContent,
    this.entityTypesUri,
    this.mergeOption,
    this.targetEntityType,
  });

  GoogleCloudDialogflowCxV3ImportEntityTypesRequest.fromJson(core.Map json_)
    : this(
        entityTypesContent: json_.containsKey('entityTypesContent')
            ? GoogleCloudDialogflowCxV3InlineSource.fromJson(
                json_['entityTypesContent']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        entityTypesUri: json_['entityTypesUri'] as core.String?,
        mergeOption: json_['mergeOption'] as core.String?,
        targetEntityType: json_['targetEntityType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final entityTypesContent = this.entityTypesContent;
    final entityTypesUri = this.entityTypesUri;
    final mergeOption = this.mergeOption;
    final targetEntityType = this.targetEntityType;
    return {
      'entityTypesContent': ?entityTypesContent,
      'entityTypesUri': ?entityTypesUri,
      'mergeOption': ?mergeOption,
      'targetEntityType': ?targetEntityType,
    };
  }
}

class GoogleCloudDialogflowCxV3ImportFlowRequest {
  core.String? flowContent;
  core.List<core.int> get flowContentAsBytes =>
      convert.base64.decode(flowContent!);

  set flowContentAsBytes(core.List<core.int> bytes_) {
    flowContent = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  GoogleCloudDialogflowCxV3FlowImportStrategy? flowImportStrategy;
  core.String? flowUri;

  ///
  /// Possible string values are:
  /// - "IMPORT_OPTION_UNSPECIFIED"
  /// - "KEEP"
  /// - "FALLBACK"
  core.String? importOption;

  GoogleCloudDialogflowCxV3ImportFlowRequest({
    this.flowContent,
    this.flowImportStrategy,
    this.flowUri,
    this.importOption,
  });

  GoogleCloudDialogflowCxV3ImportFlowRequest.fromJson(core.Map json_)
    : this(
        flowContent: json_['flowContent'] as core.String?,
        flowImportStrategy: json_.containsKey('flowImportStrategy')
            ? GoogleCloudDialogflowCxV3FlowImportStrategy.fromJson(
                json_['flowImportStrategy']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        flowUri: json_['flowUri'] as core.String?,
        importOption: json_['importOption'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final flowContent = this.flowContent;
    final flowImportStrategy = this.flowImportStrategy;
    final flowUri = this.flowUri;
    final importOption = this.importOption;
    return {
      'flowContent': ?flowContent,
      'flowImportStrategy': ?flowImportStrategy,
      'flowUri': ?flowUri,
      'importOption': ?importOption,
    };
  }
}

class GoogleCloudDialogflowCxV3ImportIntentsRequest {
  GoogleCloudDialogflowCxV3InlineSource? intentsContent;
  core.String? intentsUri;

  ///
  /// Possible string values are:
  /// - "MERGE_OPTION_UNSPECIFIED"
  /// - "REJECT"
  /// - "REPLACE"
  /// - "MERGE"
  /// - "RENAME"
  /// - "REPORT_CONFLICT"
  /// - "KEEP"
  core.String? mergeOption;

  GoogleCloudDialogflowCxV3ImportIntentsRequest({
    this.intentsContent,
    this.intentsUri,
    this.mergeOption,
  });

  GoogleCloudDialogflowCxV3ImportIntentsRequest.fromJson(core.Map json_)
    : this(
        intentsContent: json_.containsKey('intentsContent')
            ? GoogleCloudDialogflowCxV3InlineSource.fromJson(
                json_['intentsContent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        intentsUri: json_['intentsUri'] as core.String?,
        mergeOption: json_['mergeOption'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final intentsContent = this.intentsContent;
    final intentsUri = this.intentsUri;
    final mergeOption = this.mergeOption;
    return {
      'intentsContent': ?intentsContent,
      'intentsUri': ?intentsUri,
      'mergeOption': ?mergeOption,
    };
  }
}

class GoogleCloudDialogflowCxV3ImportPlaybookRequest {
  GoogleCloudDialogflowCxV3PlaybookImportStrategy? importStrategy;
  core.String? playbookContent;
  core.List<core.int> get playbookContentAsBytes =>
      convert.base64.decode(playbookContent!);

  set playbookContentAsBytes(core.List<core.int> bytes_) {
    playbookContent = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  core.String? playbookUri;

  GoogleCloudDialogflowCxV3ImportPlaybookRequest({
    this.importStrategy,
    this.playbookContent,
    this.playbookUri,
  });

  GoogleCloudDialogflowCxV3ImportPlaybookRequest.fromJson(core.Map json_)
    : this(
        importStrategy: json_.containsKey('importStrategy')
            ? GoogleCloudDialogflowCxV3PlaybookImportStrategy.fromJson(
                json_['importStrategy'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        playbookContent: json_['playbookContent'] as core.String?,
        playbookUri: json_['playbookUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final importStrategy = this.importStrategy;
    final playbookContent = this.playbookContent;
    final playbookUri = this.playbookUri;
    return {
      'importStrategy': ?importStrategy,
      'playbookContent': ?playbookContent,
      'playbookUri': ?playbookUri,
    };
  }
}

class GoogleCloudDialogflowCxV3ImportTestCasesRequest {
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  core.String? gcsUri;

  GoogleCloudDialogflowCxV3ImportTestCasesRequest({this.content, this.gcsUri});

  GoogleCloudDialogflowCxV3ImportTestCasesRequest.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        gcsUri: json_['gcsUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final gcsUri = this.gcsUri;
    return {'content': ?content, 'gcsUri': ?gcsUri};
  }
}

class GoogleCloudDialogflowCxV3InlineSchema {
  GoogleCloudDialogflowCxV3TypeSchema? items;

  ///
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED"
  /// - "STRING"
  /// - "NUMBER"
  /// - "BOOLEAN"
  /// - "ARRAY"
  core.String? type;

  GoogleCloudDialogflowCxV3InlineSchema({this.items, this.type});

  GoogleCloudDialogflowCxV3InlineSchema.fromJson(core.Map json_)
    : this(
        items: json_.containsKey('items')
            ? GoogleCloudDialogflowCxV3TypeSchema.fromJson(
                json_['items'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final items = this.items;
    final type = this.type;
    return {'items': ?items, 'type': ?type};
  }
}

class GoogleCloudDialogflowCxV3InlineSource {
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  GoogleCloudDialogflowCxV3InlineSource({this.content});

  GoogleCloudDialogflowCxV3InlineSource.fromJson(core.Map json_)
    : this(content: json_['content'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    return {'content': ?content};
  }
}

class GoogleCloudDialogflowCxV3InputAudioConfig {
  ///
  /// Possible string values are:
  /// - "AUDIO_ENCODING_UNSPECIFIED"
  /// - "AUDIO_ENCODING_LINEAR_16"
  /// - "AUDIO_ENCODING_FLAC"
  /// - "AUDIO_ENCODING_MULAW"
  /// - "AUDIO_ENCODING_AMR"
  /// - "AUDIO_ENCODING_AMR_WB"
  /// - "AUDIO_ENCODING_OGG_OPUS"
  /// - "AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE"
  /// - "AUDIO_ENCODING_ALAW"
  core.String? audioEncoding;
  GoogleCloudDialogflowCxV3BargeInConfig? bargeInConfig;
  core.bool? enableWordInfo;
  core.String? model;

  ///
  /// Possible string values are:
  /// - "SPEECH_MODEL_VARIANT_UNSPECIFIED"
  /// - "USE_BEST_AVAILABLE"
  /// - "USE_STANDARD"
  /// - "USE_ENHANCED"
  core.String? modelVariant;
  core.bool? optOutConformerModelMigration;
  core.List<core.String>? phraseHints;
  core.int? sampleRateHertz;
  core.bool? singleUtterance;

  GoogleCloudDialogflowCxV3InputAudioConfig({
    this.audioEncoding,
    this.bargeInConfig,
    this.enableWordInfo,
    this.model,
    this.modelVariant,
    this.optOutConformerModelMigration,
    this.phraseHints,
    this.sampleRateHertz,
    this.singleUtterance,
  });

  GoogleCloudDialogflowCxV3InputAudioConfig.fromJson(core.Map json_)
    : this(
        audioEncoding: json_['audioEncoding'] as core.String?,
        bargeInConfig: json_.containsKey('bargeInConfig')
            ? GoogleCloudDialogflowCxV3BargeInConfig.fromJson(
                json_['bargeInConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        enableWordInfo: json_['enableWordInfo'] as core.bool?,
        model: json_['model'] as core.String?,
        modelVariant: json_['modelVariant'] as core.String?,
        optOutConformerModelMigration:
            json_['optOutConformerModelMigration'] as core.bool?,
        phraseHints: (json_['phraseHints'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        sampleRateHertz: json_['sampleRateHertz'] as core.int?,
        singleUtterance: json_['singleUtterance'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audioEncoding = this.audioEncoding;
    final bargeInConfig = this.bargeInConfig;
    final enableWordInfo = this.enableWordInfo;
    final model = this.model;
    final modelVariant = this.modelVariant;
    final optOutConformerModelMigration = this.optOutConformerModelMigration;
    final phraseHints = this.phraseHints;
    final sampleRateHertz = this.sampleRateHertz;
    final singleUtterance = this.singleUtterance;
    return {
      'audioEncoding': ?audioEncoding,
      'bargeInConfig': ?bargeInConfig,
      'enableWordInfo': ?enableWordInfo,
      'model': ?model,
      'modelVariant': ?modelVariant,
      'optOutConformerModelMigration': ?optOutConformerModelMigration,
      'phraseHints': ?phraseHints,
      'sampleRateHertz': ?sampleRateHertz,
      'singleUtterance': ?singleUtterance,
    };
  }
}

class GoogleCloudDialogflowCxV3Intent {
  core.String? description;
  core.String? displayName;
  core.bool? isFallback;
  core.Map<core.String, core.String>? labels;
  core.String? name;
  core.List<GoogleCloudDialogflowCxV3IntentParameter>? parameters;
  core.int? priority;
  core.List<GoogleCloudDialogflowCxV3IntentTrainingPhrase>? trainingPhrases;

  GoogleCloudDialogflowCxV3Intent({
    this.description,
    this.displayName,
    this.isFallback,
    this.labels,
    this.name,
    this.parameters,
    this.priority,
    this.trainingPhrases,
  });

  GoogleCloudDialogflowCxV3Intent.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        isFallback: json_['isFallback'] as core.bool?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        parameters: (json_['parameters'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3IntentParameter.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        priority: json_['priority'] as core.int?,
        trainingPhrases: (json_['trainingPhrases'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3IntentTrainingPhrase.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final displayName = this.displayName;
    final isFallback = this.isFallback;
    final labels = this.labels;
    final name = this.name;
    final parameters = this.parameters;
    final priority = this.priority;
    final trainingPhrases = this.trainingPhrases;
    return {
      'description': ?description,
      'displayName': ?displayName,
      'isFallback': ?isFallback,
      'labels': ?labels,
      'name': ?name,
      'parameters': ?parameters,
      'priority': ?priority,
      'trainingPhrases': ?trainingPhrases,
    };
  }
}

class GoogleCloudDialogflowCxV3IntentCoverage {
  core.double? coverageScore;
  core.List<GoogleCloudDialogflowCxV3IntentCoverageIntent>? intents;

  GoogleCloudDialogflowCxV3IntentCoverage({this.coverageScore, this.intents});

  GoogleCloudDialogflowCxV3IntentCoverage.fromJson(core.Map json_)
    : this(
        coverageScore: (json_['coverageScore'] as core.num?)?.toDouble(),
        intents: (json_['intents'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3IntentCoverageIntent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final coverageScore = this.coverageScore;
    final intents = this.intents;
    return {'coverageScore': ?coverageScore, 'intents': ?intents};
  }
}

class GoogleCloudDialogflowCxV3IntentCoverageIntent {
  core.bool? covered;
  core.String? intent;

  GoogleCloudDialogflowCxV3IntentCoverageIntent({this.covered, this.intent});

  GoogleCloudDialogflowCxV3IntentCoverageIntent.fromJson(core.Map json_)
    : this(
        covered: json_['covered'] as core.bool?,
        intent: json_['intent'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final covered = this.covered;
    final intent = this.intent;
    return {'covered': ?covered, 'intent': ?intent};
  }
}

class GoogleCloudDialogflowCxV3IntentInput {
  core.String? intent;

  GoogleCloudDialogflowCxV3IntentInput({this.intent});

  GoogleCloudDialogflowCxV3IntentInput.fromJson(core.Map json_)
    : this(intent: json_['intent'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final intent = this.intent;
    return {'intent': ?intent};
  }
}

class GoogleCloudDialogflowCxV3IntentParameter {
  core.String? entityType;
  core.String? id;
  core.bool? isList;
  core.bool? redact;

  GoogleCloudDialogflowCxV3IntentParameter({
    this.entityType,
    this.id,
    this.isList,
    this.redact,
  });

  GoogleCloudDialogflowCxV3IntentParameter.fromJson(core.Map json_)
    : this(
        entityType: json_['entityType'] as core.String?,
        id: json_['id'] as core.String?,
        isList: json_['isList'] as core.bool?,
        redact: json_['redact'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final entityType = this.entityType;
    final id = this.id;
    final isList = this.isList;
    final redact = this.redact;
    return {
      'entityType': ?entityType,
      'id': ?id,
      'isList': ?isList,
      'redact': ?redact,
    };
  }
}

class GoogleCloudDialogflowCxV3IntentTrainingPhrase {
  core.String? id;
  core.List<GoogleCloudDialogflowCxV3IntentTrainingPhrasePart>? parts;
  core.int? repeatCount;

  GoogleCloudDialogflowCxV3IntentTrainingPhrase({
    this.id,
    this.parts,
    this.repeatCount,
  });

  GoogleCloudDialogflowCxV3IntentTrainingPhrase.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        parts: (json_['parts'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3IntentTrainingPhrasePart.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        repeatCount: json_['repeatCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    final parts = this.parts;
    final repeatCount = this.repeatCount;
    return {'id': ?id, 'parts': ?parts, 'repeatCount': ?repeatCount};
  }
}

class GoogleCloudDialogflowCxV3IntentTrainingPhrasePart {
  core.String? parameterId;
  core.String? text;

  GoogleCloudDialogflowCxV3IntentTrainingPhrasePart({
    this.parameterId,
    this.text,
  });

  GoogleCloudDialogflowCxV3IntentTrainingPhrasePart.fromJson(core.Map json_)
    : this(
        parameterId: json_['parameterId'] as core.String?,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final parameterId = this.parameterId;
    final text = this.text;
    return {'parameterId': ?parameterId, 'text': ?text};
  }
}

class GoogleCloudDialogflowCxV3KnowledgeConnectorSettings {
  core.List<GoogleCloudDialogflowCxV3DataStoreConnection>? dataStoreConnections;
  core.bool? enabled;
  core.String? targetFlow;
  core.String? targetPage;
  GoogleCloudDialogflowCxV3Fulfillment? triggerFulfillment;

  GoogleCloudDialogflowCxV3KnowledgeConnectorSettings({
    this.dataStoreConnections,
    this.enabled,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  GoogleCloudDialogflowCxV3KnowledgeConnectorSettings.fromJson(core.Map json_)
    : this(
        dataStoreConnections: (json_['dataStoreConnections'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3DataStoreConnection.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        enabled: json_['enabled'] as core.bool?,
        targetFlow: json_['targetFlow'] as core.String?,
        targetPage: json_['targetPage'] as core.String?,
        triggerFulfillment: json_.containsKey('triggerFulfillment')
            ? GoogleCloudDialogflowCxV3Fulfillment.fromJson(
                json_['triggerFulfillment']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataStoreConnections = this.dataStoreConnections;
    final enabled = this.enabled;
    final targetFlow = this.targetFlow;
    final targetPage = this.targetPage;
    final triggerFulfillment = this.triggerFulfillment;
    return {
      'dataStoreConnections': ?dataStoreConnections,
      'enabled': ?enabled,
      'targetFlow': ?targetFlow,
      'targetPage': ?targetPage,
      'triggerFulfillment': ?triggerFulfillment,
    };
  }
}

class GoogleCloudDialogflowCxV3ListAgentsResponse {
  core.List<GoogleCloudDialogflowCxV3Agent>? agents;
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListAgentsResponse({
    this.agents,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3ListAgentsResponse.fromJson(core.Map json_)
    : this(
        agents: (json_['agents'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3Agent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agents = this.agents;
    final nextPageToken = this.nextPageToken;
    return {'agents': ?agents, 'nextPageToken': ?nextPageToken};
  }
}

class GoogleCloudDialogflowCxV3ListChangelogsResponse {
  core.List<GoogleCloudDialogflowCxV3Changelog>? changelogs;
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListChangelogsResponse({
    this.changelogs,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3ListChangelogsResponse.fromJson(core.Map json_)
    : this(
        changelogs: (json_['changelogs'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3Changelog.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final changelogs = this.changelogs;
    final nextPageToken = this.nextPageToken;
    return {'changelogs': ?changelogs, 'nextPageToken': ?nextPageToken};
  }
}

class GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse {
  core.List<GoogleCloudDialogflowCxV3ContinuousTestResult>?
  continuousTestResults;
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse({
    this.continuousTestResults,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse.fromJson(
    core.Map json_,
  ) : this(
        continuousTestResults: (json_['continuousTestResults'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3ContinuousTestResult.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final continuousTestResults = this.continuousTestResults;
    final nextPageToken = this.nextPageToken;
    return {
      'continuousTestResults': ?continuousTestResults,
      'nextPageToken': ?nextPageToken,
    };
  }
}

class GoogleCloudDialogflowCxV3ListDeploymentsResponse {
  core.List<GoogleCloudDialogflowCxV3Deployment>? deployments;
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListDeploymentsResponse({
    this.deployments,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3ListDeploymentsResponse.fromJson(core.Map json_)
    : this(
        deployments: (json_['deployments'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3Deployment.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deployments = this.deployments;
    final nextPageToken = this.nextPageToken;
    return {'deployments': ?deployments, 'nextPageToken': ?nextPageToken};
  }
}

class GoogleCloudDialogflowCxV3ListEntityTypesResponse {
  core.List<GoogleCloudDialogflowCxV3EntityType>? entityTypes;
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListEntityTypesResponse({
    this.entityTypes,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3ListEntityTypesResponse.fromJson(core.Map json_)
    : this(
        entityTypes: (json_['entityTypes'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3EntityType.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final entityTypes = this.entityTypes;
    final nextPageToken = this.nextPageToken;
    return {'entityTypes': ?entityTypes, 'nextPageToken': ?nextPageToken};
  }
}

class GoogleCloudDialogflowCxV3ListEnvironmentsResponse {
  core.List<GoogleCloudDialogflowCxV3Environment>? environments;
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListEnvironmentsResponse({
    this.environments,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3ListEnvironmentsResponse.fromJson(core.Map json_)
    : this(
        environments: (json_['environments'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3Environment.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final environments = this.environments;
    final nextPageToken = this.nextPageToken;
    return {'environments': ?environments, 'nextPageToken': ?nextPageToken};
  }
}

class GoogleCloudDialogflowCxV3ListExamplesResponse {
  core.List<GoogleCloudDialogflowCxV3Example>? examples;
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListExamplesResponse({
    this.examples,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3ListExamplesResponse.fromJson(core.Map json_)
    : this(
        examples: (json_['examples'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3Example.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final examples = this.examples;
    final nextPageToken = this.nextPageToken;
    return {'examples': ?examples, 'nextPageToken': ?nextPageToken};
  }
}

class GoogleCloudDialogflowCxV3ListExperimentsResponse {
  core.List<GoogleCloudDialogflowCxV3Experiment>? experiments;
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListExperimentsResponse({
    this.experiments,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3ListExperimentsResponse.fromJson(core.Map json_)
    : this(
        experiments: (json_['experiments'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3Experiment.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final experiments = this.experiments;
    final nextPageToken = this.nextPageToken;
    return {'experiments': ?experiments, 'nextPageToken': ?nextPageToken};
  }
}

class GoogleCloudDialogflowCxV3ListFlowsResponse {
  core.List<GoogleCloudDialogflowCxV3Flow>? flows;
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListFlowsResponse({this.flows, this.nextPageToken});

  GoogleCloudDialogflowCxV3ListFlowsResponse.fromJson(core.Map json_)
    : this(
        flows: (json_['flows'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3Flow.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final flows = this.flows;
    final nextPageToken = this.nextPageToken;
    return {'flows': ?flows, 'nextPageToken': ?nextPageToken};
  }
}

class GoogleCloudDialogflowCxV3ListGeneratorsResponse {
  core.List<GoogleCloudDialogflowCxV3Generator>? generators;
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListGeneratorsResponse({
    this.generators,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3ListGeneratorsResponse.fromJson(core.Map json_)
    : this(
        generators: (json_['generators'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3Generator.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final generators = this.generators;
    final nextPageToken = this.nextPageToken;
    return {'generators': ?generators, 'nextPageToken': ?nextPageToken};
  }
}

class GoogleCloudDialogflowCxV3ListIntentsResponse {
  core.List<GoogleCloudDialogflowCxV3Intent>? intents;
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListIntentsResponse({
    this.intents,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3ListIntentsResponse.fromJson(core.Map json_)
    : this(
        intents: (json_['intents'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3Intent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final intents = this.intents;
    final nextPageToken = this.nextPageToken;
    return {'intents': ?intents, 'nextPageToken': ?nextPageToken};
  }
}

class GoogleCloudDialogflowCxV3ListPagesResponse {
  core.String? nextPageToken;
  core.List<GoogleCloudDialogflowCxV3Page>? pages;

  GoogleCloudDialogflowCxV3ListPagesResponse({this.nextPageToken, this.pages});

  GoogleCloudDialogflowCxV3ListPagesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        pages: (json_['pages'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3Page.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final pages = this.pages;
    return {'nextPageToken': ?nextPageToken, 'pages': ?pages};
  }
}

class GoogleCloudDialogflowCxV3ListPlaybookVersionsResponse {
  core.String? nextPageToken;
  core.List<GoogleCloudDialogflowCxV3PlaybookVersion>? playbookVersions;

  GoogleCloudDialogflowCxV3ListPlaybookVersionsResponse({
    this.nextPageToken,
    this.playbookVersions,
  });

  GoogleCloudDialogflowCxV3ListPlaybookVersionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        playbookVersions: (json_['playbookVersions'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3PlaybookVersion.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final playbookVersions = this.playbookVersions;
    return {
      'nextPageToken': ?nextPageToken,
      'playbookVersions': ?playbookVersions,
    };
  }
}

class GoogleCloudDialogflowCxV3ListPlaybooksResponse {
  core.String? nextPageToken;
  core.List<GoogleCloudDialogflowCxV3Playbook>? playbooks;

  GoogleCloudDialogflowCxV3ListPlaybooksResponse({
    this.nextPageToken,
    this.playbooks,
  });

  GoogleCloudDialogflowCxV3ListPlaybooksResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        playbooks: (json_['playbooks'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3Playbook.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final playbooks = this.playbooks;
    return {'nextPageToken': ?nextPageToken, 'playbooks': ?playbooks};
  }
}

class GoogleCloudDialogflowCxV3ListSecuritySettingsResponse {
  core.String? nextPageToken;
  core.List<GoogleCloudDialogflowCxV3SecuritySettings>? securitySettings;

  GoogleCloudDialogflowCxV3ListSecuritySettingsResponse({
    this.nextPageToken,
    this.securitySettings,
  });

  GoogleCloudDialogflowCxV3ListSecuritySettingsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        securitySettings: (json_['securitySettings'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3SecuritySettings.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final securitySettings = this.securitySettings;
    return {
      'nextPageToken': ?nextPageToken,
      'securitySettings': ?securitySettings,
    };
  }
}

class GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse {
  core.String? nextPageToken;
  core.List<GoogleCloudDialogflowCxV3SessionEntityType>? sessionEntityTypes;

  GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse({
    this.nextPageToken,
    this.sessionEntityTypes,
  });

  GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sessionEntityTypes: (json_['sessionEntityTypes'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final sessionEntityTypes = this.sessionEntityTypes;
    return {
      'nextPageToken': ?nextPageToken,
      'sessionEntityTypes': ?sessionEntityTypes,
    };
  }
}

class GoogleCloudDialogflowCxV3ListTestCaseResultsResponse {
  core.String? nextPageToken;
  core.List<GoogleCloudDialogflowCxV3TestCaseResult>? testCaseResults;

  GoogleCloudDialogflowCxV3ListTestCaseResultsResponse({
    this.nextPageToken,
    this.testCaseResults,
  });

  GoogleCloudDialogflowCxV3ListTestCaseResultsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        testCaseResults: (json_['testCaseResults'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3TestCaseResult.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final testCaseResults = this.testCaseResults;
    return {
      'nextPageToken': ?nextPageToken,
      'testCaseResults': ?testCaseResults,
    };
  }
}

class GoogleCloudDialogflowCxV3ListTestCasesResponse {
  core.String? nextPageToken;
  core.List<GoogleCloudDialogflowCxV3TestCase>? testCases;

  GoogleCloudDialogflowCxV3ListTestCasesResponse({
    this.nextPageToken,
    this.testCases,
  });

  GoogleCloudDialogflowCxV3ListTestCasesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        testCases: (json_['testCases'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3TestCase.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final testCases = this.testCases;
    return {'nextPageToken': ?nextPageToken, 'testCases': ?testCases};
  }
}

class GoogleCloudDialogflowCxV3ListToolVersionsResponse {
  core.String? nextPageToken;
  core.List<GoogleCloudDialogflowCxV3ToolVersion>? toolVersions;

  GoogleCloudDialogflowCxV3ListToolVersionsResponse({
    this.nextPageToken,
    this.toolVersions,
  });

  GoogleCloudDialogflowCxV3ListToolVersionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        toolVersions: (json_['toolVersions'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3ToolVersion.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final toolVersions = this.toolVersions;
    return {'nextPageToken': ?nextPageToken, 'toolVersions': ?toolVersions};
  }
}

class GoogleCloudDialogflowCxV3ListToolsResponse {
  core.String? nextPageToken;
  core.List<GoogleCloudDialogflowCxV3Tool>? tools;

  GoogleCloudDialogflowCxV3ListToolsResponse({this.nextPageToken, this.tools});

  GoogleCloudDialogflowCxV3ListToolsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        tools: (json_['tools'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3Tool.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final tools = this.tools;
    return {'nextPageToken': ?nextPageToken, 'tools': ?tools};
  }
}

class GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse {
  core.String? nextPageToken;
  core.List<GoogleCloudDialogflowCxV3TransitionRouteGroup>?
  transitionRouteGroups;

  GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse({
    this.nextPageToken,
    this.transitionRouteGroups,
  });

  GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        transitionRouteGroups: (json_['transitionRouteGroups'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final transitionRouteGroups = this.transitionRouteGroups;
    return {
      'nextPageToken': ?nextPageToken,
      'transitionRouteGroups': ?transitionRouteGroups,
    };
  }
}

class GoogleCloudDialogflowCxV3ListVersionsResponse {
  core.String? nextPageToken;
  core.List<GoogleCloudDialogflowCxV3Version>? versions;

  GoogleCloudDialogflowCxV3ListVersionsResponse({
    this.nextPageToken,
    this.versions,
  });

  GoogleCloudDialogflowCxV3ListVersionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        versions: (json_['versions'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3Version.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final versions = this.versions;
    return {'nextPageToken': ?nextPageToken, 'versions': ?versions};
  }
}

class GoogleCloudDialogflowCxV3ListWebhooksResponse {
  core.String? nextPageToken;
  core.List<GoogleCloudDialogflowCxV3Webhook>? webhooks;

  GoogleCloudDialogflowCxV3ListWebhooksResponse({
    this.nextPageToken,
    this.webhooks,
  });

  GoogleCloudDialogflowCxV3ListWebhooksResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        webhooks: (json_['webhooks'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3Webhook.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final webhooks = this.webhooks;
    return {'nextPageToken': ?nextPageToken, 'webhooks': ?webhooks};
  }
}

class GoogleCloudDialogflowCxV3LlmModelSettings {
  core.String? model;
  core.String? promptText;

  GoogleCloudDialogflowCxV3LlmModelSettings({this.model, this.promptText});

  GoogleCloudDialogflowCxV3LlmModelSettings.fromJson(core.Map json_)
    : this(
        model: json_['model'] as core.String?,
        promptText: json_['promptText'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final model = this.model;
    final promptText = this.promptText;
    return {'model': ?model, 'promptText': ?promptText};
  }
}

class GoogleCloudDialogflowCxV3LoadVersionRequest {
  core.bool? allowOverrideAgentResources;

  GoogleCloudDialogflowCxV3LoadVersionRequest({
    this.allowOverrideAgentResources,
  });

  GoogleCloudDialogflowCxV3LoadVersionRequest.fromJson(core.Map json_)
    : this(
        allowOverrideAgentResources:
            json_['allowOverrideAgentResources'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowOverrideAgentResources = this.allowOverrideAgentResources;
    return {'allowOverrideAgentResources': ?allowOverrideAgentResources};
  }
}

class GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse {
  core.List<GoogleCloudDialogflowCxV3Environment>? environments;
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse({
    this.environments,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse.fromJson(
    core.Map json_,
  ) : this(
        environments: (json_['environments'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3Environment.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final environments = this.environments;
    final nextPageToken = this.nextPageToken;
    return {'environments': ?environments, 'nextPageToken': ?nextPageToken};
  }
}

class GoogleCloudDialogflowCxV3Match {
  core.double? confidence;
  core.String? event;
  GoogleCloudDialogflowCxV3Intent? intent;

  ///
  /// Possible string values are:
  /// - "MATCH_TYPE_UNSPECIFIED"
  /// - "INTENT"
  /// - "DIRECT_INTENT"
  /// - "PARAMETER_FILLING"
  /// - "NO_MATCH"
  /// - "NO_INPUT"
  /// - "EVENT"
  /// - "KNOWLEDGE_CONNECTOR"
  /// - "PLAYBOOK"
  core.String? matchType;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;
  core.String? resolvedInput;

  GoogleCloudDialogflowCxV3Match({
    this.confidence,
    this.event,
    this.intent,
    this.matchType,
    this.parameters,
    this.resolvedInput,
  });

  GoogleCloudDialogflowCxV3Match.fromJson(core.Map json_)
    : this(
        confidence: (json_['confidence'] as core.num?)?.toDouble(),
        event: json_['event'] as core.String?,
        intent: json_.containsKey('intent')
            ? GoogleCloudDialogflowCxV3Intent.fromJson(
                json_['intent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        matchType: json_['matchType'] as core.String?,
        parameters: json_.containsKey('parameters')
            ? json_['parameters'] as core.Map<core.String, core.dynamic>
            : null,
        resolvedInput: json_['resolvedInput'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final confidence = this.confidence;
    final event = this.event;
    final intent = this.intent;
    final matchType = this.matchType;
    final parameters = this.parameters;
    final resolvedInput = this.resolvedInput;
    return {
      'confidence': ?confidence,
      'event': ?event,
      'intent': ?intent,
      'matchType': ?matchType,
      'parameters': ?parameters,
      'resolvedInput': ?resolvedInput,
    };
  }
}

class GoogleCloudDialogflowCxV3MatchIntentRequest {
  core.bool? persistParameterChanges;
  GoogleCloudDialogflowCxV3QueryInput? queryInput;
  GoogleCloudDialogflowCxV3QueryParameters? queryParams;

  GoogleCloudDialogflowCxV3MatchIntentRequest({
    this.persistParameterChanges,
    this.queryInput,
    this.queryParams,
  });

  GoogleCloudDialogflowCxV3MatchIntentRequest.fromJson(core.Map json_)
    : this(
        persistParameterChanges: json_['persistParameterChanges'] as core.bool?,
        queryInput: json_.containsKey('queryInput')
            ? GoogleCloudDialogflowCxV3QueryInput.fromJson(
                json_['queryInput'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        queryParams: json_.containsKey('queryParams')
            ? GoogleCloudDialogflowCxV3QueryParameters.fromJson(
                json_['queryParams'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final persistParameterChanges = this.persistParameterChanges;
    final queryInput = this.queryInput;
    final queryParams = this.queryParams;
    return {
      'persistParameterChanges': ?persistParameterChanges,
      'queryInput': ?queryInput,
      'queryParams': ?queryParams,
    };
  }
}

class GoogleCloudDialogflowCxV3MatchIntentResponse {
  GoogleCloudDialogflowCxV3Page? currentPage;
  core.List<GoogleCloudDialogflowCxV3Match>? matches;
  core.String? text;
  core.String? transcript;
  core.String? triggerEvent;
  core.String? triggerIntent;

  GoogleCloudDialogflowCxV3MatchIntentResponse({
    this.currentPage,
    this.matches,
    this.text,
    this.transcript,
    this.triggerEvent,
    this.triggerIntent,
  });

  GoogleCloudDialogflowCxV3MatchIntentResponse.fromJson(core.Map json_)
    : this(
        currentPage: json_.containsKey('currentPage')
            ? GoogleCloudDialogflowCxV3Page.fromJson(
                json_['currentPage'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        matches: (json_['matches'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3Match.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        text: json_['text'] as core.String?,
        transcript: json_['transcript'] as core.String?,
        triggerEvent: json_['triggerEvent'] as core.String?,
        triggerIntent: json_['triggerIntent'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final currentPage = this.currentPage;
    final matches = this.matches;
    final text = this.text;
    final transcript = this.transcript;
    final triggerEvent = this.triggerEvent;
    final triggerIntent = this.triggerIntent;
    return {
      'currentPage': ?currentPage,
      'matches': ?matches,
      'text': ?text,
      'transcript': ?transcript,
      'triggerEvent': ?triggerEvent,
      'triggerIntent': ?triggerIntent,
    };
  }
}

class GoogleCloudDialogflowCxV3NluSettings {
  core.double? classificationThreshold;

  ///
  /// Possible string values are:
  /// - "MODEL_TRAINING_MODE_UNSPECIFIED"
  /// - "MODEL_TRAINING_MODE_AUTOMATIC"
  /// - "MODEL_TRAINING_MODE_MANUAL"
  core.String? modelTrainingMode;

  ///
  /// Possible string values are:
  /// - "MODEL_TYPE_UNSPECIFIED"
  /// - "MODEL_TYPE_STANDARD"
  /// - "MODEL_TYPE_ADVANCED"
  core.String? modelType;

  GoogleCloudDialogflowCxV3NluSettings({
    this.classificationThreshold,
    this.modelTrainingMode,
    this.modelType,
  });

  GoogleCloudDialogflowCxV3NluSettings.fromJson(core.Map json_)
    : this(
        classificationThreshold: (json_['classificationThreshold'] as core.num?)
            ?.toDouble(),
        modelTrainingMode: json_['modelTrainingMode'] as core.String?,
        modelType: json_['modelType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final classificationThreshold = this.classificationThreshold;
    final modelTrainingMode = this.modelTrainingMode;
    final modelType = this.modelType;
    return {
      'classificationThreshold': ?classificationThreshold,
      'modelTrainingMode': ?modelTrainingMode,
      'modelType': ?modelType,
    };
  }
}

class GoogleCloudDialogflowCxV3OutputAudioConfig {
  ///
  /// Possible string values are:
  /// - "OUTPUT_AUDIO_ENCODING_UNSPECIFIED"
  /// - "OUTPUT_AUDIO_ENCODING_LINEAR_16"
  /// - "OUTPUT_AUDIO_ENCODING_MP3"
  /// - "OUTPUT_AUDIO_ENCODING_MP3_64_KBPS"
  /// - "OUTPUT_AUDIO_ENCODING_OGG_OPUS"
  /// - "OUTPUT_AUDIO_ENCODING_MULAW"
  /// - "OUTPUT_AUDIO_ENCODING_ALAW"
  core.String? audioEncoding;
  core.int? sampleRateHertz;
  GoogleCloudDialogflowCxV3SynthesizeSpeechConfig? synthesizeSpeechConfig;

  GoogleCloudDialogflowCxV3OutputAudioConfig({
    this.audioEncoding,
    this.sampleRateHertz,
    this.synthesizeSpeechConfig,
  });

  GoogleCloudDialogflowCxV3OutputAudioConfig.fromJson(core.Map json_)
    : this(
        audioEncoding: json_['audioEncoding'] as core.String?,
        sampleRateHertz: json_['sampleRateHertz'] as core.int?,
        synthesizeSpeechConfig: json_.containsKey('synthesizeSpeechConfig')
            ? GoogleCloudDialogflowCxV3SynthesizeSpeechConfig.fromJson(
                json_['synthesizeSpeechConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audioEncoding = this.audioEncoding;
    final sampleRateHertz = this.sampleRateHertz;
    final synthesizeSpeechConfig = this.synthesizeSpeechConfig;
    return {
      'audioEncoding': ?audioEncoding,
      'sampleRateHertz': ?sampleRateHertz,
      'synthesizeSpeechConfig': ?synthesizeSpeechConfig,
    };
  }
}

class GoogleCloudDialogflowCxV3Page {
  GoogleCloudDialogflowCxV3AdvancedSettings? advancedSettings;
  core.String? description;
  core.String? displayName;
  GoogleCloudDialogflowCxV3Fulfillment? entryFulfillment;
  core.List<GoogleCloudDialogflowCxV3EventHandler>? eventHandlers;
  GoogleCloudDialogflowCxV3Form? form;
  GoogleCloudDialogflowCxV3KnowledgeConnectorSettings?
  knowledgeConnectorSettings;
  core.String? name;
  core.List<core.String>? transitionRouteGroups;
  core.List<GoogleCloudDialogflowCxV3TransitionRoute>? transitionRoutes;

  GoogleCloudDialogflowCxV3Page({
    this.advancedSettings,
    this.description,
    this.displayName,
    this.entryFulfillment,
    this.eventHandlers,
    this.form,
    this.knowledgeConnectorSettings,
    this.name,
    this.transitionRouteGroups,
    this.transitionRoutes,
  });

  GoogleCloudDialogflowCxV3Page.fromJson(core.Map json_)
    : this(
        advancedSettings: json_.containsKey('advancedSettings')
            ? GoogleCloudDialogflowCxV3AdvancedSettings.fromJson(
                json_['advancedSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        entryFulfillment: json_.containsKey('entryFulfillment')
            ? GoogleCloudDialogflowCxV3Fulfillment.fromJson(
                json_['entryFulfillment']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        eventHandlers: (json_['eventHandlers'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3EventHandler.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        form: json_.containsKey('form')
            ? GoogleCloudDialogflowCxV3Form.fromJson(
                json_['form'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        knowledgeConnectorSettings:
            json_.containsKey('knowledgeConnectorSettings')
            ? GoogleCloudDialogflowCxV3KnowledgeConnectorSettings.fromJson(
                json_['knowledgeConnectorSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        transitionRouteGroups: (json_['transitionRouteGroups'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        transitionRoutes: (json_['transitionRoutes'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3TransitionRoute.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final advancedSettings = this.advancedSettings;
    final description = this.description;
    final displayName = this.displayName;
    final entryFulfillment = this.entryFulfillment;
    final eventHandlers = this.eventHandlers;
    final form = this.form;
    final knowledgeConnectorSettings = this.knowledgeConnectorSettings;
    final name = this.name;
    final transitionRouteGroups = this.transitionRouteGroups;
    final transitionRoutes = this.transitionRoutes;
    return {
      'advancedSettings': ?advancedSettings,
      'description': ?description,
      'displayName': ?displayName,
      'entryFulfillment': ?entryFulfillment,
      'eventHandlers': ?eventHandlers,
      'form': ?form,
      'knowledgeConnectorSettings': ?knowledgeConnectorSettings,
      'name': ?name,
      'transitionRouteGroups': ?transitionRouteGroups,
      'transitionRoutes': ?transitionRoutes,
    };
  }
}

class GoogleCloudDialogflowCxV3ParameterDefinition {
  core.String? description;
  core.String? name;

  ///
  /// Possible string values are:
  /// - "PARAMETER_TYPE_UNSPECIFIED"
  /// - "STRING"
  /// - "NUMBER"
  /// - "BOOLEAN"
  /// - "NULL"
  /// - "OBJECT"
  /// - "LIST"
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? type;
  GoogleCloudDialogflowCxV3TypeSchema? typeSchema;

  GoogleCloudDialogflowCxV3ParameterDefinition({
    this.description,
    this.name,
    this.type,
    this.typeSchema,
  });

  GoogleCloudDialogflowCxV3ParameterDefinition.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
        typeSchema: json_.containsKey('typeSchema')
            ? GoogleCloudDialogflowCxV3TypeSchema.fromJson(
                json_['typeSchema'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final name = this.name;
    final type = this.type;
    final typeSchema = this.typeSchema;
    return {
      'description': ?description,
      'name': ?name,
      'type': ?type,
      'typeSchema': ?typeSchema,
    };
  }
}

typedef GoogleCloudDialogflowCxV3Phrase = $Shared02;

class GoogleCloudDialogflowCxV3Playbook {
  GoogleCloudDialogflowCxV3CodeBlock? codeBlock;
  core.String? createTime;
  core.String? displayName;
  core.String? goal;
  core.List<GoogleCloudDialogflowCxV3Handler>? handlers;
  core.List<core.String>? inlineActions;
  core.List<GoogleCloudDialogflowCxV3ParameterDefinition>?
  inputParameterDefinitions;
  GoogleCloudDialogflowCxV3PlaybookInstruction? instruction;
  GoogleCloudDialogflowCxV3LlmModelSettings? llmModelSettings;
  core.String? name;
  core.List<GoogleCloudDialogflowCxV3ParameterDefinition>?
  outputParameterDefinitions;

  ///
  /// Possible string values are:
  /// - "PLAYBOOK_TYPE_UNSPECIFIED"
  /// - "TASK"
  /// - "ROUTINE"
  core.String? playbookType;
  core.List<core.String>? referencedFlows;
  core.List<core.String>? referencedPlaybooks;
  core.List<core.String>? referencedTools;
  core.String? tokenCount;
  core.String? updateTime;

  GoogleCloudDialogflowCxV3Playbook({
    this.codeBlock,
    this.createTime,
    this.displayName,
    this.goal,
    this.handlers,
    this.inlineActions,
    this.inputParameterDefinitions,
    this.instruction,
    this.llmModelSettings,
    this.name,
    this.outputParameterDefinitions,
    this.playbookType,
    this.referencedFlows,
    this.referencedPlaybooks,
    this.referencedTools,
    this.tokenCount,
    this.updateTime,
  });

  GoogleCloudDialogflowCxV3Playbook.fromJson(core.Map json_)
    : this(
        codeBlock: json_.containsKey('codeBlock')
            ? GoogleCloudDialogflowCxV3CodeBlock.fromJson(
                json_['codeBlock'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        goal: json_['goal'] as core.String?,
        handlers: (json_['handlers'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3Handler.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        inlineActions: (json_['inlineActions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        inputParameterDefinitions:
            (json_['inputParameterDefinitions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3ParameterDefinition.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        instruction: json_.containsKey('instruction')
            ? GoogleCloudDialogflowCxV3PlaybookInstruction.fromJson(
                json_['instruction'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        llmModelSettings: json_.containsKey('llmModelSettings')
            ? GoogleCloudDialogflowCxV3LlmModelSettings.fromJson(
                json_['llmModelSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        outputParameterDefinitions:
            (json_['outputParameterDefinitions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3ParameterDefinition.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        playbookType: json_['playbookType'] as core.String?,
        referencedFlows: (json_['referencedFlows'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        referencedPlaybooks: (json_['referencedPlaybooks'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        referencedTools: (json_['referencedTools'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        tokenCount: json_['tokenCount'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final codeBlock = this.codeBlock;
    final createTime = this.createTime;
    final displayName = this.displayName;
    final goal = this.goal;
    final handlers = this.handlers;
    final inlineActions = this.inlineActions;
    final inputParameterDefinitions = this.inputParameterDefinitions;
    final instruction = this.instruction;
    final llmModelSettings = this.llmModelSettings;
    final name = this.name;
    final outputParameterDefinitions = this.outputParameterDefinitions;
    final playbookType = this.playbookType;
    final referencedFlows = this.referencedFlows;
    final referencedPlaybooks = this.referencedPlaybooks;
    final referencedTools = this.referencedTools;
    final tokenCount = this.tokenCount;
    final updateTime = this.updateTime;
    return {
      'codeBlock': ?codeBlock,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'goal': ?goal,
      'handlers': ?handlers,
      'inlineActions': ?inlineActions,
      'inputParameterDefinitions': ?inputParameterDefinitions,
      'instruction': ?instruction,
      'llmModelSettings': ?llmModelSettings,
      'name': ?name,
      'outputParameterDefinitions': ?outputParameterDefinitions,
      'playbookType': ?playbookType,
      'referencedFlows': ?referencedFlows,
      'referencedPlaybooks': ?referencedPlaybooks,
      'referencedTools': ?referencedTools,
      'tokenCount': ?tokenCount,
      'updateTime': ?updateTime,
    };
  }
}

class GoogleCloudDialogflowCxV3PlaybookImportStrategy {
  ///
  /// Possible string values are:
  /// - "IMPORT_STRATEGY_UNSPECIFIED"
  /// - "IMPORT_STRATEGY_CREATE_NEW"
  /// - "IMPORT_STRATEGY_REPLACE"
  /// - "IMPORT_STRATEGY_KEEP"
  /// - "IMPORT_STRATEGY_MERGE"
  /// - "IMPORT_STRATEGY_THROW_ERROR"
  core.String? mainPlaybookImportStrategy;

  ///
  /// Possible string values are:
  /// - "IMPORT_STRATEGY_UNSPECIFIED"
  /// - "IMPORT_STRATEGY_CREATE_NEW"
  /// - "IMPORT_STRATEGY_REPLACE"
  /// - "IMPORT_STRATEGY_KEEP"
  /// - "IMPORT_STRATEGY_MERGE"
  /// - "IMPORT_STRATEGY_THROW_ERROR"
  core.String? nestedResourceImportStrategy;

  ///
  /// Possible string values are:
  /// - "IMPORT_STRATEGY_UNSPECIFIED"
  /// - "IMPORT_STRATEGY_CREATE_NEW"
  /// - "IMPORT_STRATEGY_REPLACE"
  /// - "IMPORT_STRATEGY_KEEP"
  /// - "IMPORT_STRATEGY_MERGE"
  /// - "IMPORT_STRATEGY_THROW_ERROR"
  core.String? toolImportStrategy;

  GoogleCloudDialogflowCxV3PlaybookImportStrategy({
    this.mainPlaybookImportStrategy,
    this.nestedResourceImportStrategy,
    this.toolImportStrategy,
  });

  GoogleCloudDialogflowCxV3PlaybookImportStrategy.fromJson(core.Map json_)
    : this(
        mainPlaybookImportStrategy:
            json_['mainPlaybookImportStrategy'] as core.String?,
        nestedResourceImportStrategy:
            json_['nestedResourceImportStrategy'] as core.String?,
        toolImportStrategy: json_['toolImportStrategy'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final mainPlaybookImportStrategy = this.mainPlaybookImportStrategy;
    final nestedResourceImportStrategy = this.nestedResourceImportStrategy;
    final toolImportStrategy = this.toolImportStrategy;
    return {
      'mainPlaybookImportStrategy': ?mainPlaybookImportStrategy,
      'nestedResourceImportStrategy': ?nestedResourceImportStrategy,
      'toolImportStrategy': ?toolImportStrategy,
    };
  }
}

class GoogleCloudDialogflowCxV3PlaybookInput {
  core.String? precedingConversationSummary;

  GoogleCloudDialogflowCxV3PlaybookInput({this.precedingConversationSummary});

  GoogleCloudDialogflowCxV3PlaybookInput.fromJson(core.Map json_)
    : this(
        precedingConversationSummary:
            json_['precedingConversationSummary'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final precedingConversationSummary = this.precedingConversationSummary;
    return {'precedingConversationSummary': ?precedingConversationSummary};
  }
}

class GoogleCloudDialogflowCxV3PlaybookInstruction {
  core.String? guidelines;
  core.List<GoogleCloudDialogflowCxV3PlaybookStep>? steps;

  GoogleCloudDialogflowCxV3PlaybookInstruction({this.guidelines, this.steps});

  GoogleCloudDialogflowCxV3PlaybookInstruction.fromJson(core.Map json_)
    : this(
        guidelines: json_['guidelines'] as core.String?,
        steps: (json_['steps'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3PlaybookStep.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final guidelines = this.guidelines;
    final steps = this.steps;
    return {'guidelines': ?guidelines, 'steps': ?steps};
  }
}

class GoogleCloudDialogflowCxV3PlaybookInvocation {
  core.String? displayName;
  core.String? playbook;
  GoogleCloudDialogflowCxV3PlaybookInput? playbookInput;
  GoogleCloudDialogflowCxV3PlaybookOutput? playbookOutput;

  ///
  /// Possible string values are:
  /// - "OUTPUT_STATE_UNSPECIFIED"
  /// - "OUTPUT_STATE_OK"
  /// - "OUTPUT_STATE_CANCELLED"
  /// - "OUTPUT_STATE_FAILED"
  /// - "OUTPUT_STATE_ESCALATED"
  /// - "OUTPUT_STATE_PENDING"
  core.String? playbookState;

  GoogleCloudDialogflowCxV3PlaybookInvocation({
    this.displayName,
    this.playbook,
    this.playbookInput,
    this.playbookOutput,
    this.playbookState,
  });

  GoogleCloudDialogflowCxV3PlaybookInvocation.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        playbook: json_['playbook'] as core.String?,
        playbookInput: json_.containsKey('playbookInput')
            ? GoogleCloudDialogflowCxV3PlaybookInput.fromJson(
                json_['playbookInput'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        playbookOutput: json_.containsKey('playbookOutput')
            ? GoogleCloudDialogflowCxV3PlaybookOutput.fromJson(
                json_['playbookOutput'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        playbookState: json_['playbookState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final playbook = this.playbook;
    final playbookInput = this.playbookInput;
    final playbookOutput = this.playbookOutput;
    final playbookState = this.playbookState;
    return {
      'displayName': ?displayName,
      'playbook': ?playbook,
      'playbookInput': ?playbookInput,
      'playbookOutput': ?playbookOutput,
      'playbookState': ?playbookState,
    };
  }
}

class GoogleCloudDialogflowCxV3PlaybookOutput {
  core.String? executionSummary;

  GoogleCloudDialogflowCxV3PlaybookOutput({this.executionSummary});

  GoogleCloudDialogflowCxV3PlaybookOutput.fromJson(core.Map json_)
    : this(executionSummary: json_['executionSummary'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final executionSummary = this.executionSummary;
    return {'executionSummary': ?executionSummary};
  }
}

class GoogleCloudDialogflowCxV3PlaybookStep {
  core.List<GoogleCloudDialogflowCxV3PlaybookStep>? steps;
  core.String? text;

  GoogleCloudDialogflowCxV3PlaybookStep({this.steps, this.text});

  GoogleCloudDialogflowCxV3PlaybookStep.fromJson(core.Map json_)
    : this(
        steps: (json_['steps'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3PlaybookStep.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final steps = this.steps;
    final text = this.text;
    return {'steps': ?steps, 'text': ?text};
  }
}

class GoogleCloudDialogflowCxV3PlaybookTransition {
  core.String? displayName;
  core.String? playbook;

  GoogleCloudDialogflowCxV3PlaybookTransition({
    this.displayName,
    this.playbook,
  });

  GoogleCloudDialogflowCxV3PlaybookTransition.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        playbook: json_['playbook'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final playbook = this.playbook;
    return {'displayName': ?displayName, 'playbook': ?playbook};
  }
}

class GoogleCloudDialogflowCxV3PlaybookVersion {
  core.String? description;
  core.List<GoogleCloudDialogflowCxV3Example>? examples;
  core.String? name;
  GoogleCloudDialogflowCxV3Playbook? playbook;
  core.String? updateTime;

  GoogleCloudDialogflowCxV3PlaybookVersion({
    this.description,
    this.examples,
    this.name,
    this.playbook,
    this.updateTime,
  });

  GoogleCloudDialogflowCxV3PlaybookVersion.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        examples: (json_['examples'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3Example.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        name: json_['name'] as core.String?,
        playbook: json_.containsKey('playbook')
            ? GoogleCloudDialogflowCxV3Playbook.fromJson(
                json_['playbook'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final examples = this.examples;
    final name = this.name;
    final playbook = this.playbook;
    final updateTime = this.updateTime;
    return {
      'description': ?description,
      'examples': ?examples,
      'name': ?name,
      'playbook': ?playbook,
      'updateTime': ?updateTime,
    };
  }
}

class GoogleCloudDialogflowCxV3QueryInput {
  GoogleCloudDialogflowCxV3AudioInput? audio;
  GoogleCloudDialogflowCxV3DtmfInput? dtmf;
  GoogleCloudDialogflowCxV3EventInput? event;
  GoogleCloudDialogflowCxV3IntentInput? intent;
  core.String? languageCode;
  GoogleCloudDialogflowCxV3TextInput? text;
  GoogleCloudDialogflowCxV3ToolCallResult? toolCallResult;

  GoogleCloudDialogflowCxV3QueryInput({
    this.audio,
    this.dtmf,
    this.event,
    this.intent,
    this.languageCode,
    this.text,
    this.toolCallResult,
  });

  GoogleCloudDialogflowCxV3QueryInput.fromJson(core.Map json_)
    : this(
        audio: json_.containsKey('audio')
            ? GoogleCloudDialogflowCxV3AudioInput.fromJson(
                json_['audio'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dtmf: json_.containsKey('dtmf')
            ? GoogleCloudDialogflowCxV3DtmfInput.fromJson(
                json_['dtmf'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        event: json_.containsKey('event')
            ? GoogleCloudDialogflowCxV3EventInput.fromJson(
                json_['event'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        intent: json_.containsKey('intent')
            ? GoogleCloudDialogflowCxV3IntentInput.fromJson(
                json_['intent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        languageCode: json_['languageCode'] as core.String?,
        text: json_.containsKey('text')
            ? GoogleCloudDialogflowCxV3TextInput.fromJson(
                json_['text'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        toolCallResult: json_.containsKey('toolCallResult')
            ? GoogleCloudDialogflowCxV3ToolCallResult.fromJson(
                json_['toolCallResult'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audio = this.audio;
    final dtmf = this.dtmf;
    final event = this.event;
    final intent = this.intent;
    final languageCode = this.languageCode;
    final text = this.text;
    final toolCallResult = this.toolCallResult;
    return {
      'audio': ?audio,
      'dtmf': ?dtmf,
      'event': ?event,
      'intent': ?intent,
      'languageCode': ?languageCode,
      'text': ?text,
      'toolCallResult': ?toolCallResult,
    };
  }
}

class GoogleCloudDialogflowCxV3QueryParameters {
  core.bool? analyzeQueryTextSentiment;
  core.String? channel;
  core.String? currentPage;
  core.String? currentPlaybook;
  core.bool? disableWebhook;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? endUserMetadata;
  core.List<core.String>? flowVersions;
  GoogleTypeLatLng? geoLocation;
  GoogleCloudDialogflowCxV3LlmModelSettings? llmModelSettings;
  core.String? parameterScope;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? payload;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? populateDataStoreConnectionSignals;
  GoogleCloudDialogflowCxV3SearchConfig? searchConfig;
  core.List<GoogleCloudDialogflowCxV3SessionEntityType>? sessionEntityTypes;
  core.String? sessionTtl;
  core.String? timeZone;
  core.Map<core.String, core.String>? webhookHeaders;

  GoogleCloudDialogflowCxV3QueryParameters({
    this.analyzeQueryTextSentiment,
    this.channel,
    this.currentPage,
    this.currentPlaybook,
    this.disableWebhook,
    this.endUserMetadata,
    this.flowVersions,
    this.geoLocation,
    this.llmModelSettings,
    this.parameterScope,
    this.parameters,
    this.payload,
    this.populateDataStoreConnectionSignals,
    this.searchConfig,
    this.sessionEntityTypes,
    this.sessionTtl,
    this.timeZone,
    this.webhookHeaders,
  });

  GoogleCloudDialogflowCxV3QueryParameters.fromJson(core.Map json_)
    : this(
        analyzeQueryTextSentiment:
            json_['analyzeQueryTextSentiment'] as core.bool?,
        channel: json_['channel'] as core.String?,
        currentPage: json_['currentPage'] as core.String?,
        currentPlaybook: json_['currentPlaybook'] as core.String?,
        disableWebhook: json_['disableWebhook'] as core.bool?,
        endUserMetadata: json_.containsKey('endUserMetadata')
            ? json_['endUserMetadata'] as core.Map<core.String, core.dynamic>
            : null,
        flowVersions: (json_['flowVersions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        geoLocation: json_.containsKey('geoLocation')
            ? GoogleTypeLatLng.fromJson(
                json_['geoLocation'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        llmModelSettings: json_.containsKey('llmModelSettings')
            ? GoogleCloudDialogflowCxV3LlmModelSettings.fromJson(
                json_['llmModelSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        parameterScope: json_['parameterScope'] as core.String?,
        parameters: json_.containsKey('parameters')
            ? json_['parameters'] as core.Map<core.String, core.dynamic>
            : null,
        payload: json_.containsKey('payload')
            ? json_['payload'] as core.Map<core.String, core.dynamic>
            : null,
        populateDataStoreConnectionSignals:
            json_['populateDataStoreConnectionSignals'] as core.bool?,
        searchConfig: json_.containsKey('searchConfig')
            ? GoogleCloudDialogflowCxV3SearchConfig.fromJson(
                json_['searchConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sessionEntityTypes: (json_['sessionEntityTypes'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        sessionTtl: json_['sessionTtl'] as core.String?,
        timeZone: json_['timeZone'] as core.String?,
        webhookHeaders:
            (json_['webhookHeaders'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final analyzeQueryTextSentiment = this.analyzeQueryTextSentiment;
    final channel = this.channel;
    final currentPage = this.currentPage;
    final currentPlaybook = this.currentPlaybook;
    final disableWebhook = this.disableWebhook;
    final endUserMetadata = this.endUserMetadata;
    final flowVersions = this.flowVersions;
    final geoLocation = this.geoLocation;
    final llmModelSettings = this.llmModelSettings;
    final parameterScope = this.parameterScope;
    final parameters = this.parameters;
    final payload = this.payload;
    final populateDataStoreConnectionSignals =
        this.populateDataStoreConnectionSignals;
    final searchConfig = this.searchConfig;
    final sessionEntityTypes = this.sessionEntityTypes;
    final sessionTtl = this.sessionTtl;
    final timeZone = this.timeZone;
    final webhookHeaders = this.webhookHeaders;
    return {
      'analyzeQueryTextSentiment': ?analyzeQueryTextSentiment,
      'channel': ?channel,
      'currentPage': ?currentPage,
      'currentPlaybook': ?currentPlaybook,
      'disableWebhook': ?disableWebhook,
      'endUserMetadata': ?endUserMetadata,
      'flowVersions': ?flowVersions,
      'geoLocation': ?geoLocation,
      'llmModelSettings': ?llmModelSettings,
      'parameterScope': ?parameterScope,
      'parameters': ?parameters,
      'payload': ?payload,
      'populateDataStoreConnectionSignals': ?populateDataStoreConnectionSignals,
      'searchConfig': ?searchConfig,
      'sessionEntityTypes': ?sessionEntityTypes,
      'sessionTtl': ?sessionTtl,
      'timeZone': ?timeZone,
      'webhookHeaders': ?webhookHeaders,
    };
  }
}

class GoogleCloudDialogflowCxV3QueryResult {
  GoogleCloudDialogflowCxV3AdvancedSettings? advancedSettings;
  core.bool? allowAnswerFeedback;
  GoogleCloudDialogflowCxV3Flow? currentFlow;
  GoogleCloudDialogflowCxV3Page? currentPage;
  GoogleCloudDialogflowCxV3DataStoreConnectionSignals?
  dataStoreConnectionSignals;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? diagnosticInfo;
  GoogleCloudDialogflowCxV3DtmfInput? dtmf;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDialogflowCxV3Intent? intent;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.double? intentDetectionConfidence;
  core.String? languageCode;
  GoogleCloudDialogflowCxV3Match? match;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;
  core.List<GoogleCloudDialogflowCxV3ResponseMessage>? responseMessages;
  GoogleCloudDialogflowCxV3SentimentAnalysisResult? sentimentAnalysisResult;
  core.String? text;
  core.String? transcript;
  core.String? triggerEvent;
  core.String? triggerIntent;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? webhookPayloads;
  core.List<GoogleRpcStatus>? webhookStatuses;

  GoogleCloudDialogflowCxV3QueryResult({
    this.advancedSettings,
    this.allowAnswerFeedback,
    this.currentFlow,
    this.currentPage,
    this.dataStoreConnectionSignals,
    this.diagnosticInfo,
    this.dtmf,
    this.intent,
    this.intentDetectionConfidence,
    this.languageCode,
    this.match,
    this.parameters,
    this.responseMessages,
    this.sentimentAnalysisResult,
    this.text,
    this.transcript,
    this.triggerEvent,
    this.triggerIntent,
    this.webhookPayloads,
    this.webhookStatuses,
  });

  GoogleCloudDialogflowCxV3QueryResult.fromJson(core.Map json_)
    : this(
        advancedSettings: json_.containsKey('advancedSettings')
            ? GoogleCloudDialogflowCxV3AdvancedSettings.fromJson(
                json_['advancedSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        allowAnswerFeedback: json_['allowAnswerFeedback'] as core.bool?,
        currentFlow: json_.containsKey('currentFlow')
            ? GoogleCloudDialogflowCxV3Flow.fromJson(
                json_['currentFlow'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        currentPage: json_.containsKey('currentPage')
            ? GoogleCloudDialogflowCxV3Page.fromJson(
                json_['currentPage'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataStoreConnectionSignals:
            json_.containsKey('dataStoreConnectionSignals')
            ? GoogleCloudDialogflowCxV3DataStoreConnectionSignals.fromJson(
                json_['dataStoreConnectionSignals']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        diagnosticInfo: json_.containsKey('diagnosticInfo')
            ? json_['diagnosticInfo'] as core.Map<core.String, core.dynamic>
            : null,
        dtmf: json_.containsKey('dtmf')
            ? GoogleCloudDialogflowCxV3DtmfInput.fromJson(
                json_['dtmf'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        intent: json_.containsKey('intent')
            ? GoogleCloudDialogflowCxV3Intent.fromJson(
                json_['intent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        intentDetectionConfidence:
            (json_['intentDetectionConfidence'] as core.num?)?.toDouble(),
        languageCode: json_['languageCode'] as core.String?,
        match: json_.containsKey('match')
            ? GoogleCloudDialogflowCxV3Match.fromJson(
                json_['match'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        parameters: json_.containsKey('parameters')
            ? json_['parameters'] as core.Map<core.String, core.dynamic>
            : null,
        responseMessages: (json_['responseMessages'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3ResponseMessage.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        sentimentAnalysisResult: json_.containsKey('sentimentAnalysisResult')
            ? GoogleCloudDialogflowCxV3SentimentAnalysisResult.fromJson(
                json_['sentimentAnalysisResult']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        text: json_['text'] as core.String?,
        transcript: json_['transcript'] as core.String?,
        triggerEvent: json_['triggerEvent'] as core.String?,
        triggerIntent: json_['triggerIntent'] as core.String?,
        webhookPayloads: (json_['webhookPayloads'] as core.List?)
            ?.map((value) => value as core.Map<core.String, core.dynamic>)
            .toList(),
        webhookStatuses: (json_['webhookStatuses'] as core.List?)
            ?.map(
              (value) => GoogleRpcStatus.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final advancedSettings = this.advancedSettings;
    final allowAnswerFeedback = this.allowAnswerFeedback;
    final currentFlow = this.currentFlow;
    final currentPage = this.currentPage;
    final dataStoreConnectionSignals = this.dataStoreConnectionSignals;
    final diagnosticInfo = this.diagnosticInfo;
    final dtmf = this.dtmf;
    final intent = this.intent;
    final intentDetectionConfidence = this.intentDetectionConfidence;
    final languageCode = this.languageCode;
    final match = this.match;
    final parameters = this.parameters;
    final responseMessages = this.responseMessages;
    final sentimentAnalysisResult = this.sentimentAnalysisResult;
    final text = this.text;
    final transcript = this.transcript;
    final triggerEvent = this.triggerEvent;
    final triggerIntent = this.triggerIntent;
    final webhookPayloads = this.webhookPayloads;
    final webhookStatuses = this.webhookStatuses;
    return {
      'advancedSettings': ?advancedSettings,
      'allowAnswerFeedback': ?allowAnswerFeedback,
      'currentFlow': ?currentFlow,
      'currentPage': ?currentPage,
      'dataStoreConnectionSignals': ?dataStoreConnectionSignals,
      'diagnosticInfo': ?diagnosticInfo,
      'dtmf': ?dtmf,
      'intent': ?intent,
      'intentDetectionConfidence': ?intentDetectionConfidence,
      'languageCode': ?languageCode,
      'match': ?match,
      'parameters': ?parameters,
      'responseMessages': ?responseMessages,
      'sentimentAnalysisResult': ?sentimentAnalysisResult,
      'text': ?text,
      'transcript': ?transcript,
      'triggerEvent': ?triggerEvent,
      'triggerIntent': ?triggerIntent,
      'webhookPayloads': ?webhookPayloads,
      'webhookStatuses': ?webhookStatuses,
    };
  }
}

class GoogleCloudDialogflowCxV3ResourceName {
  core.String? displayName;
  core.String? name;

  GoogleCloudDialogflowCxV3ResourceName({this.displayName, this.name});

  GoogleCloudDialogflowCxV3ResourceName.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final name = this.name;
    return {'displayName': ?displayName, 'name': ?name};
  }
}

class GoogleCloudDialogflowCxV3ResponseMessage {
  core.String? channel;
  GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess?
  conversationSuccess;
  GoogleCloudDialogflowCxV3ResponseMessageEndInteraction? endInteraction;
  GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard? knowledgeInfoCard;
  GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff? liveAgentHandoff;
  GoogleCloudDialogflowCxV3ResponseMessageMixedAudio? mixedAudio;
  GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText? outputAudioText;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? payload;
  GoogleCloudDialogflowCxV3ResponseMessagePlayAudio? playAudio;

  ///
  /// Possible string values are:
  /// - "RESPONSE_TYPE_UNSPECIFIED"
  /// - "ENTRY_PROMPT"
  /// - "PARAMETER_PROMPT"
  /// - "HANDLER_PROMPT"
  core.String? responseType;
  GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall?
  telephonyTransferCall;
  GoogleCloudDialogflowCxV3ResponseMessageText? text;
  GoogleCloudDialogflowCxV3ToolCall? toolCall;

  GoogleCloudDialogflowCxV3ResponseMessage({
    this.channel,
    this.conversationSuccess,
    this.endInteraction,
    this.knowledgeInfoCard,
    this.liveAgentHandoff,
    this.mixedAudio,
    this.outputAudioText,
    this.payload,
    this.playAudio,
    this.responseType,
    this.telephonyTransferCall,
    this.text,
    this.toolCall,
  });

  GoogleCloudDialogflowCxV3ResponseMessage.fromJson(core.Map json_)
    : this(
        channel: json_['channel'] as core.String?,
        conversationSuccess: json_.containsKey('conversationSuccess')
            ? GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess.fromJson(
                json_['conversationSuccess']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        endInteraction: json_.containsKey('endInteraction')
            ? GoogleCloudDialogflowCxV3ResponseMessageEndInteraction.fromJson(
                json_['endInteraction'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        knowledgeInfoCard: json_.containsKey('knowledgeInfoCard')
            ? GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard.fromJson(
                json_['knowledgeInfoCard']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        liveAgentHandoff: json_.containsKey('liveAgentHandoff')
            ? GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff.fromJson(
                json_['liveAgentHandoff']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        mixedAudio: json_.containsKey('mixedAudio')
            ? GoogleCloudDialogflowCxV3ResponseMessageMixedAudio.fromJson(
                json_['mixedAudio'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        outputAudioText: json_.containsKey('outputAudioText')
            ? GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText.fromJson(
                json_['outputAudioText'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        payload: json_.containsKey('payload')
            ? json_['payload'] as core.Map<core.String, core.dynamic>
            : null,
        playAudio: json_.containsKey('playAudio')
            ? GoogleCloudDialogflowCxV3ResponseMessagePlayAudio.fromJson(
                json_['playAudio'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        responseType: json_['responseType'] as core.String?,
        telephonyTransferCall: json_.containsKey('telephonyTransferCall')
            ? GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall.fromJson(
                json_['telephonyTransferCall']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        text: json_.containsKey('text')
            ? GoogleCloudDialogflowCxV3ResponseMessageText.fromJson(
                json_['text'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        toolCall: json_.containsKey('toolCall')
            ? GoogleCloudDialogflowCxV3ToolCall.fromJson(
                json_['toolCall'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final channel = this.channel;
    final conversationSuccess = this.conversationSuccess;
    final endInteraction = this.endInteraction;
    final knowledgeInfoCard = this.knowledgeInfoCard;
    final liveAgentHandoff = this.liveAgentHandoff;
    final mixedAudio = this.mixedAudio;
    final outputAudioText = this.outputAudioText;
    final payload = this.payload;
    final playAudio = this.playAudio;
    final responseType = this.responseType;
    final telephonyTransferCall = this.telephonyTransferCall;
    final text = this.text;
    final toolCall = this.toolCall;
    return {
      'channel': ?channel,
      'conversationSuccess': ?conversationSuccess,
      'endInteraction': ?endInteraction,
      'knowledgeInfoCard': ?knowledgeInfoCard,
      'liveAgentHandoff': ?liveAgentHandoff,
      'mixedAudio': ?mixedAudio,
      'outputAudioText': ?outputAudioText,
      'payload': ?payload,
      'playAudio': ?playAudio,
      'responseType': ?responseType,
      'telephonyTransferCall': ?telephonyTransferCall,
      'text': ?text,
      'toolCall': ?toolCall,
    };
  }
}

typedef GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess = $Shared21;
typedef GoogleCloudDialogflowCxV3ResponseMessageEndInteraction = $Empty;
typedef GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard = $Empty;
typedef GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff = $Shared21;

class GoogleCloudDialogflowCxV3ResponseMessageMixedAudio {
  core.List<GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment>?
  segments;

  GoogleCloudDialogflowCxV3ResponseMessageMixedAudio({this.segments});

  GoogleCloudDialogflowCxV3ResponseMessageMixedAudio.fromJson(core.Map json_)
    : this(
        segments: (json_['segments'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final segments = this.segments;
    return {'segments': ?segments};
  }
}

class GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment {
  core.bool? allowPlaybackInterruption;
  core.String? audio;
  core.List<core.int> get audioAsBytes => convert.base64.decode(audio!);

  set audioAsBytes(core.List<core.int> bytes_) {
    audio = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  core.String? uri;

  GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment({
    this.allowPlaybackInterruption,
    this.audio,
    this.uri,
  });

  GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment.fromJson(
    core.Map json_,
  ) : this(
        allowPlaybackInterruption:
            json_['allowPlaybackInterruption'] as core.bool?,
        audio: json_['audio'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowPlaybackInterruption = this.allowPlaybackInterruption;
    final audio = this.audio;
    final uri = this.uri;
    return {
      'allowPlaybackInterruption': ?allowPlaybackInterruption,
      'audio': ?audio,
      'uri': ?uri,
    };
  }
}

class GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText {
  core.bool? allowPlaybackInterruption;
  core.String? ssml;
  core.String? text;

  GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText({
    this.allowPlaybackInterruption,
    this.ssml,
    this.text,
  });

  GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText.fromJson(
    core.Map json_,
  ) : this(
        allowPlaybackInterruption:
            json_['allowPlaybackInterruption'] as core.bool?,
        ssml: json_['ssml'] as core.String?,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowPlaybackInterruption = this.allowPlaybackInterruption;
    final ssml = this.ssml;
    final text = this.text;
    return {
      'allowPlaybackInterruption': ?allowPlaybackInterruption,
      'ssml': ?ssml,
      'text': ?text,
    };
  }
}

class GoogleCloudDialogflowCxV3ResponseMessagePlayAudio {
  core.bool? allowPlaybackInterruption;
  core.String? audioUri;

  GoogleCloudDialogflowCxV3ResponseMessagePlayAudio({
    this.allowPlaybackInterruption,
    this.audioUri,
  });

  GoogleCloudDialogflowCxV3ResponseMessagePlayAudio.fromJson(core.Map json_)
    : this(
        allowPlaybackInterruption:
            json_['allowPlaybackInterruption'] as core.bool?,
        audioUri: json_['audioUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowPlaybackInterruption = this.allowPlaybackInterruption;
    final audioUri = this.audioUri;
    return {
      'allowPlaybackInterruption': ?allowPlaybackInterruption,
      'audioUri': ?audioUri,
    };
  }
}

class GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall {
  core.String? phoneNumber;

  GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall({
    this.phoneNumber,
  });

  GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall.fromJson(
    core.Map json_,
  ) : this(phoneNumber: json_['phoneNumber'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final phoneNumber = this.phoneNumber;
    return {'phoneNumber': ?phoneNumber};
  }
}

class GoogleCloudDialogflowCxV3ResponseMessageText {
  core.bool? allowPlaybackInterruption;
  core.List<core.String>? text;

  GoogleCloudDialogflowCxV3ResponseMessageText({
    this.allowPlaybackInterruption,
    this.text,
  });

  GoogleCloudDialogflowCxV3ResponseMessageText.fromJson(core.Map json_)
    : this(
        allowPlaybackInterruption:
            json_['allowPlaybackInterruption'] as core.bool?,
        text: (json_['text'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowPlaybackInterruption = this.allowPlaybackInterruption;
    final text = this.text;
    return {
      'allowPlaybackInterruption': ?allowPlaybackInterruption,
      'text': ?text,
    };
  }
}

class GoogleCloudDialogflowCxV3RestoreAgentRequest {
  core.String? agentContent;
  core.List<core.int> get agentContentAsBytes =>
      convert.base64.decode(agentContent!);

  set agentContentAsBytes(core.List<core.int> bytes_) {
    agentContent = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  core.String? agentUri;
  GoogleCloudDialogflowCxV3RestoreAgentRequestGitSource? gitSource;

  ///
  /// Possible string values are:
  /// - "RESTORE_OPTION_UNSPECIFIED"
  /// - "KEEP"
  /// - "FALLBACK"
  core.String? restoreOption;

  GoogleCloudDialogflowCxV3RestoreAgentRequest({
    this.agentContent,
    this.agentUri,
    this.gitSource,
    this.restoreOption,
  });

  GoogleCloudDialogflowCxV3RestoreAgentRequest.fromJson(core.Map json_)
    : this(
        agentContent: json_['agentContent'] as core.String?,
        agentUri: json_['agentUri'] as core.String?,
        gitSource: json_.containsKey('gitSource')
            ? GoogleCloudDialogflowCxV3RestoreAgentRequestGitSource.fromJson(
                json_['gitSource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        restoreOption: json_['restoreOption'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentContent = this.agentContent;
    final agentUri = this.agentUri;
    final gitSource = this.gitSource;
    final restoreOption = this.restoreOption;
    return {
      'agentContent': ?agentContent,
      'agentUri': ?agentUri,
      'gitSource': ?gitSource,
      'restoreOption': ?restoreOption,
    };
  }
}

class GoogleCloudDialogflowCxV3RestoreAgentRequestGitSource {
  core.String? trackingBranch;

  GoogleCloudDialogflowCxV3RestoreAgentRequestGitSource({this.trackingBranch});

  GoogleCloudDialogflowCxV3RestoreAgentRequestGitSource.fromJson(core.Map json_)
    : this(trackingBranch: json_['trackingBranch'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final trackingBranch = this.trackingBranch;
    return {'trackingBranch': ?trackingBranch};
  }
}

typedef GoogleCloudDialogflowCxV3RestorePlaybookVersionRequest = $Empty;

class GoogleCloudDialogflowCxV3RestorePlaybookVersionResponse {
  GoogleCloudDialogflowCxV3Playbook? playbook;

  GoogleCloudDialogflowCxV3RestorePlaybookVersionResponse({this.playbook});

  GoogleCloudDialogflowCxV3RestorePlaybookVersionResponse.fromJson(
    core.Map json_,
  ) : this(
        playbook: json_.containsKey('playbook')
            ? GoogleCloudDialogflowCxV3Playbook.fromJson(
                json_['playbook'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final playbook = this.playbook;
    return {'playbook': ?playbook};
  }
}

typedef GoogleCloudDialogflowCxV3RestoreToolVersionRequest = $Empty;

class GoogleCloudDialogflowCxV3RestoreToolVersionResponse {
  GoogleCloudDialogflowCxV3Tool? tool;

  GoogleCloudDialogflowCxV3RestoreToolVersionResponse({this.tool});

  GoogleCloudDialogflowCxV3RestoreToolVersionResponse.fromJson(core.Map json_)
    : this(
        tool: json_.containsKey('tool')
            ? GoogleCloudDialogflowCxV3Tool.fromJson(
                json_['tool'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final tool = this.tool;
    return {'tool': ?tool};
  }
}

class GoogleCloudDialogflowCxV3RolloutConfig {
  core.String? failureCondition;
  core.String? rolloutCondition;
  core.List<GoogleCloudDialogflowCxV3RolloutConfigRolloutStep>? rolloutSteps;

  GoogleCloudDialogflowCxV3RolloutConfig({
    this.failureCondition,
    this.rolloutCondition,
    this.rolloutSteps,
  });

  GoogleCloudDialogflowCxV3RolloutConfig.fromJson(core.Map json_)
    : this(
        failureCondition: json_['failureCondition'] as core.String?,
        rolloutCondition: json_['rolloutCondition'] as core.String?,
        rolloutSteps: (json_['rolloutSteps'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3RolloutConfigRolloutStep.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final failureCondition = this.failureCondition;
    final rolloutCondition = this.rolloutCondition;
    final rolloutSteps = this.rolloutSteps;
    return {
      'failureCondition': ?failureCondition,
      'rolloutCondition': ?rolloutCondition,
      'rolloutSteps': ?rolloutSteps,
    };
  }
}

class GoogleCloudDialogflowCxV3RolloutConfigRolloutStep {
  core.String? displayName;
  core.String? minDuration;
  core.int? trafficPercent;

  GoogleCloudDialogflowCxV3RolloutConfigRolloutStep({
    this.displayName,
    this.minDuration,
    this.trafficPercent,
  });

  GoogleCloudDialogflowCxV3RolloutConfigRolloutStep.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        minDuration: json_['minDuration'] as core.String?,
        trafficPercent: json_['trafficPercent'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final minDuration = this.minDuration;
    final trafficPercent = this.trafficPercent;
    return {
      'displayName': ?displayName,
      'minDuration': ?minDuration,
      'trafficPercent': ?trafficPercent,
    };
  }
}

class GoogleCloudDialogflowCxV3RolloutState {
  core.String? startTime;
  core.String? step;
  core.int? stepIndex;

  GoogleCloudDialogflowCxV3RolloutState({
    this.startTime,
    this.step,
    this.stepIndex,
  });

  GoogleCloudDialogflowCxV3RolloutState.fromJson(core.Map json_)
    : this(
        startTime: json_['startTime'] as core.String?,
        step: json_['step'] as core.String?,
        stepIndex: json_['stepIndex'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final startTime = this.startTime;
    final step = this.step;
    final stepIndex = this.stepIndex;
    return {'startTime': ?startTime, 'step': ?step, 'stepIndex': ?stepIndex};
  }
}

typedef GoogleCloudDialogflowCxV3RunContinuousTestRequest = $Empty;

class GoogleCloudDialogflowCxV3RunTestCaseRequest {
  core.String? environment;

  GoogleCloudDialogflowCxV3RunTestCaseRequest({this.environment});

  GoogleCloudDialogflowCxV3RunTestCaseRequest.fromJson(core.Map json_)
    : this(environment: json_['environment'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final environment = this.environment;
    return {'environment': ?environment};
  }
}

class GoogleCloudDialogflowCxV3SafetySettings {
  core.List<GoogleCloudDialogflowCxV3SafetySettingsPhrase>? bannedPhrases;

  ///
  /// Possible string values are:
  /// - "PHRASE_MATCH_STRATEGY_UNSPECIFIED"
  /// - "PARTIAL_MATCH"
  /// - "WORD_MATCH"
  core.String? defaultBannedPhraseMatchStrategy;
  GoogleCloudDialogflowCxV3SafetySettingsRaiSettings? defaultRaiSettings;
  GoogleCloudDialogflowCxV3SafetySettingsPromptSecuritySettings?
  promptSecuritySettings;
  GoogleCloudDialogflowCxV3SafetySettingsRaiSettings? raiSettings;

  GoogleCloudDialogflowCxV3SafetySettings({
    this.bannedPhrases,
    this.defaultBannedPhraseMatchStrategy,
    this.defaultRaiSettings,
    this.promptSecuritySettings,
    this.raiSettings,
  });

  GoogleCloudDialogflowCxV3SafetySettings.fromJson(core.Map json_)
    : this(
        bannedPhrases: (json_['bannedPhrases'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3SafetySettingsPhrase.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        defaultBannedPhraseMatchStrategy:
            json_['defaultBannedPhraseMatchStrategy'] as core.String?,
        defaultRaiSettings: json_.containsKey('defaultRaiSettings')
            ? GoogleCloudDialogflowCxV3SafetySettingsRaiSettings.fromJson(
                json_['defaultRaiSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        promptSecuritySettings: json_.containsKey('promptSecuritySettings')
            ? GoogleCloudDialogflowCxV3SafetySettingsPromptSecuritySettings.fromJson(
                json_['promptSecuritySettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        raiSettings: json_.containsKey('raiSettings')
            ? GoogleCloudDialogflowCxV3SafetySettingsRaiSettings.fromJson(
                json_['raiSettings'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bannedPhrases = this.bannedPhrases;
    final defaultBannedPhraseMatchStrategy =
        this.defaultBannedPhraseMatchStrategy;
    final defaultRaiSettings = this.defaultRaiSettings;
    final promptSecuritySettings = this.promptSecuritySettings;
    final raiSettings = this.raiSettings;
    return {
      'bannedPhrases': ?bannedPhrases,
      'defaultBannedPhraseMatchStrategy': ?defaultBannedPhraseMatchStrategy,
      'defaultRaiSettings': ?defaultRaiSettings,
      'promptSecuritySettings': ?promptSecuritySettings,
      'raiSettings': ?raiSettings,
    };
  }
}

typedef GoogleCloudDialogflowCxV3SafetySettingsPhrase = $Shared19;

class GoogleCloudDialogflowCxV3SafetySettingsPromptSecuritySettings {
  core.bool? enablePromptSecurity;

  GoogleCloudDialogflowCxV3SafetySettingsPromptSecuritySettings({
    this.enablePromptSecurity,
  });

  GoogleCloudDialogflowCxV3SafetySettingsPromptSecuritySettings.fromJson(
    core.Map json_,
  ) : this(enablePromptSecurity: json_['enablePromptSecurity'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final enablePromptSecurity = this.enablePromptSecurity;
    return {'enablePromptSecurity': ?enablePromptSecurity};
  }
}

class GoogleCloudDialogflowCxV3SafetySettingsRaiSettings {
  core.List<GoogleCloudDialogflowCxV3SafetySettingsRaiSettingsCategoryFilter>?
  categoryFilters;

  GoogleCloudDialogflowCxV3SafetySettingsRaiSettings({this.categoryFilters});

  GoogleCloudDialogflowCxV3SafetySettingsRaiSettings.fromJson(core.Map json_)
    : this(
        categoryFilters: (json_['categoryFilters'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3SafetySettingsRaiSettingsCategoryFilter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final categoryFilters = this.categoryFilters;
    return {'categoryFilters': ?categoryFilters};
  }
}

class GoogleCloudDialogflowCxV3SafetySettingsRaiSettingsCategoryFilter {
  ///
  /// Possible string values are:
  /// - "SAFETY_CATEGORY_UNSPECIFIED"
  /// - "DANGEROUS_CONTENT"
  /// - "HATE_SPEECH"
  /// - "HARASSMENT"
  /// - "SEXUALLY_EXPLICIT_CONTENT"
  core.String? category;

  ///
  /// Possible string values are:
  /// - "SAFETY_FILTER_LEVEL_UNSPECIFIED"
  /// - "BLOCK_NONE"
  /// - "BLOCK_FEW"
  /// - "BLOCK_SOME"
  /// - "BLOCK_MOST"
  core.String? filterLevel;

  GoogleCloudDialogflowCxV3SafetySettingsRaiSettingsCategoryFilter({
    this.category,
    this.filterLevel,
  });

  GoogleCloudDialogflowCxV3SafetySettingsRaiSettingsCategoryFilter.fromJson(
    core.Map json_,
  ) : this(
        category: json_['category'] as core.String?,
        filterLevel: json_['filterLevel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final category = this.category;
    final filterLevel = this.filterLevel;
    return {'category': ?category, 'filterLevel': ?filterLevel};
  }
}

class GoogleCloudDialogflowCxV3SearchConfig {
  core.List<GoogleCloudDialogflowCxV3BoostSpecs>? boostSpecs;
  core.List<GoogleCloudDialogflowCxV3FilterSpecs>? filterSpecs;

  GoogleCloudDialogflowCxV3SearchConfig({this.boostSpecs, this.filterSpecs});

  GoogleCloudDialogflowCxV3SearchConfig.fromJson(core.Map json_)
    : this(
        boostSpecs: (json_['boostSpecs'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3BoostSpecs.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        filterSpecs: (json_['filterSpecs'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3FilterSpecs.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final boostSpecs = this.boostSpecs;
    final filterSpecs = this.filterSpecs;
    return {'boostSpecs': ?boostSpecs, 'filterSpecs': ?filterSpecs};
  }
}

class GoogleCloudDialogflowCxV3SecuritySettings {
  GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings?
  audioExportSettings;
  core.String? deidentifyTemplate;
  core.String? displayName;
  GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings?
  insightsExportSettings;
  core.String? inspectTemplate;
  core.String? name;
  core.List<core.String>? purgeDataTypes;

  ///
  /// Possible string values are:
  /// - "REDACTION_SCOPE_UNSPECIFIED"
  /// - "REDACT_DISK_STORAGE"
  core.String? redactionScope;

  ///
  /// Possible string values are:
  /// - "REDACTION_STRATEGY_UNSPECIFIED"
  /// - "REDACT_WITH_SERVICE"
  core.String? redactionStrategy;

  ///
  /// Possible string values are:
  /// - "RETENTION_STRATEGY_UNSPECIFIED"
  /// - "REMOVE_AFTER_CONVERSATION"
  core.String? retentionStrategy;
  core.int? retentionWindowDays;

  GoogleCloudDialogflowCxV3SecuritySettings({
    this.audioExportSettings,
    this.deidentifyTemplate,
    this.displayName,
    this.insightsExportSettings,
    this.inspectTemplate,
    this.name,
    this.purgeDataTypes,
    this.redactionScope,
    this.redactionStrategy,
    this.retentionStrategy,
    this.retentionWindowDays,
  });

  GoogleCloudDialogflowCxV3SecuritySettings.fromJson(core.Map json_)
    : this(
        audioExportSettings: json_.containsKey('audioExportSettings')
            ? GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings.fromJson(
                json_['audioExportSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deidentifyTemplate: json_['deidentifyTemplate'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        insightsExportSettings: json_.containsKey('insightsExportSettings')
            ? GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings.fromJson(
                json_['insightsExportSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        inspectTemplate: json_['inspectTemplate'] as core.String?,
        name: json_['name'] as core.String?,
        purgeDataTypes: (json_['purgeDataTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        redactionScope: json_['redactionScope'] as core.String?,
        redactionStrategy: json_['redactionStrategy'] as core.String?,
        retentionStrategy: json_['retentionStrategy'] as core.String?,
        retentionWindowDays: json_['retentionWindowDays'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audioExportSettings = this.audioExportSettings;
    final deidentifyTemplate = this.deidentifyTemplate;
    final displayName = this.displayName;
    final insightsExportSettings = this.insightsExportSettings;
    final inspectTemplate = this.inspectTemplate;
    final name = this.name;
    final purgeDataTypes = this.purgeDataTypes;
    final redactionScope = this.redactionScope;
    final redactionStrategy = this.redactionStrategy;
    final retentionStrategy = this.retentionStrategy;
    final retentionWindowDays = this.retentionWindowDays;
    return {
      'audioExportSettings': ?audioExportSettings,
      'deidentifyTemplate': ?deidentifyTemplate,
      'displayName': ?displayName,
      'insightsExportSettings': ?insightsExportSettings,
      'inspectTemplate': ?inspectTemplate,
      'name': ?name,
      'purgeDataTypes': ?purgeDataTypes,
      'redactionScope': ?redactionScope,
      'redactionStrategy': ?redactionStrategy,
      'retentionStrategy': ?retentionStrategy,
      'retentionWindowDays': ?retentionWindowDays,
    };
  }
}

class GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings {
  core.String? audioExportPattern;

  ///
  /// Possible string values are:
  /// - "AUDIO_FORMAT_UNSPECIFIED"
  /// - "MULAW"
  /// - "MP3"
  /// - "OGG"
  core.String? audioFormat;
  core.bool? enableAudioRedaction;
  core.String? gcsBucket;
  core.bool? storeTtsAudio;

  GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings({
    this.audioExportPattern,
    this.audioFormat,
    this.enableAudioRedaction,
    this.gcsBucket,
    this.storeTtsAudio,
  });

  GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings.fromJson(
    core.Map json_,
  ) : this(
        audioExportPattern: json_['audioExportPattern'] as core.String?,
        audioFormat: json_['audioFormat'] as core.String?,
        enableAudioRedaction: json_['enableAudioRedaction'] as core.bool?,
        gcsBucket: json_['gcsBucket'] as core.String?,
        storeTtsAudio: json_['storeTtsAudio'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audioExportPattern = this.audioExportPattern;
    final audioFormat = this.audioFormat;
    final enableAudioRedaction = this.enableAudioRedaction;
    final gcsBucket = this.gcsBucket;
    final storeTtsAudio = this.storeTtsAudio;
    return {
      'audioExportPattern': ?audioExportPattern,
      'audioFormat': ?audioFormat,
      'enableAudioRedaction': ?enableAudioRedaction,
      'gcsBucket': ?gcsBucket,
      'storeTtsAudio': ?storeTtsAudio,
    };
  }
}

class GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings {
  core.bool? enableInsightsExport;

  GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings({
    this.enableInsightsExport,
  });

  GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings.fromJson(
    core.Map json_,
  ) : this(enableInsightsExport: json_['enableInsightsExport'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final enableInsightsExport = this.enableInsightsExport;
    return {'enableInsightsExport': ?enableInsightsExport};
  }
}

typedef GoogleCloudDialogflowCxV3SentimentAnalysisResult = $Shared18;

class GoogleCloudDialogflowCxV3SessionEntityType {
  core.List<GoogleCloudDialogflowCxV3EntityTypeEntity>? entities;

  ///
  /// Possible string values are:
  /// - "ENTITY_OVERRIDE_MODE_UNSPECIFIED"
  /// - "ENTITY_OVERRIDE_MODE_OVERRIDE"
  /// - "ENTITY_OVERRIDE_MODE_SUPPLEMENT"
  core.String? entityOverrideMode;
  core.String? name;

  GoogleCloudDialogflowCxV3SessionEntityType({
    this.entities,
    this.entityOverrideMode,
    this.name,
  });

  GoogleCloudDialogflowCxV3SessionEntityType.fromJson(core.Map json_)
    : this(
        entities: (json_['entities'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3EntityTypeEntity.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        entityOverrideMode: json_['entityOverrideMode'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final entities = this.entities;
    final entityOverrideMode = this.entityOverrideMode;
    final name = this.name;
    return {
      'entities': ?entities,
      'entityOverrideMode': ?entityOverrideMode,
      'name': ?name,
    };
  }
}

class GoogleCloudDialogflowCxV3SpeechToTextSettings {
  core.bool? enableSpeechAdaptation;

  GoogleCloudDialogflowCxV3SpeechToTextSettings({this.enableSpeechAdaptation});

  GoogleCloudDialogflowCxV3SpeechToTextSettings.fromJson(core.Map json_)
    : this(
        enableSpeechAdaptation: json_['enableSpeechAdaptation'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enableSpeechAdaptation = this.enableSpeechAdaptation;
    return {'enableSpeechAdaptation': ?enableSpeechAdaptation};
  }
}

typedef GoogleCloudDialogflowCxV3StartExperimentRequest = $Empty;
typedef GoogleCloudDialogflowCxV3StopExperimentRequest = $Empty;

class GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest {
  GoogleCloudDialogflowCxV3AnswerFeedback? answerFeedback;
  core.String? responseId;
  core.String? updateMask;

  GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest({
    this.answerFeedback,
    this.responseId,
    this.updateMask,
  });

  GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest.fromJson(core.Map json_)
    : this(
        answerFeedback: json_.containsKey('answerFeedback')
            ? GoogleCloudDialogflowCxV3AnswerFeedback.fromJson(
                json_['answerFeedback'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        responseId: json_['responseId'] as core.String?,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answerFeedback = this.answerFeedback;
    final responseId = this.responseId;
    final updateMask = this.updateMask;
    return {
      'answerFeedback': ?answerFeedback,
      'responseId': ?responseId,
      'updateMask': ?updateMask,
    };
  }
}

class GoogleCloudDialogflowCxV3SynthesizeSpeechConfig {
  core.List<core.String>? effectsProfileId;
  core.double? pitch;
  core.double? speakingRate;
  GoogleCloudDialogflowCxV3VoiceSelectionParams? voice;
  core.double? volumeGainDb;

  GoogleCloudDialogflowCxV3SynthesizeSpeechConfig({
    this.effectsProfileId,
    this.pitch,
    this.speakingRate,
    this.voice,
    this.volumeGainDb,
  });

  GoogleCloudDialogflowCxV3SynthesizeSpeechConfig.fromJson(core.Map json_)
    : this(
        effectsProfileId: (json_['effectsProfileId'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        pitch: (json_['pitch'] as core.num?)?.toDouble(),
        speakingRate: (json_['speakingRate'] as core.num?)?.toDouble(),
        voice: json_.containsKey('voice')
            ? GoogleCloudDialogflowCxV3VoiceSelectionParams.fromJson(
                json_['voice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        volumeGainDb: (json_['volumeGainDb'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final effectsProfileId = this.effectsProfileId;
    final pitch = this.pitch;
    final speakingRate = this.speakingRate;
    final voice = this.voice;
    final volumeGainDb = this.volumeGainDb;
    return {
      'effectsProfileId': ?effectsProfileId,
      'pitch': ?pitch,
      'speakingRate': ?speakingRate,
      'voice': ?voice,
      'volumeGainDb': ?volumeGainDb,
    };
  }
}

class GoogleCloudDialogflowCxV3TestCase {
  core.String? creationTime;
  core.String? displayName;
  GoogleCloudDialogflowCxV3TestCaseResult? lastTestResult;
  core.String? name;
  core.String? notes;
  core.List<core.String>? tags;
  core.List<GoogleCloudDialogflowCxV3ConversationTurn>?
  testCaseConversationTurns;
  GoogleCloudDialogflowCxV3TestConfig? testConfig;

  GoogleCloudDialogflowCxV3TestCase({
    this.creationTime,
    this.displayName,
    this.lastTestResult,
    this.name,
    this.notes,
    this.tags,
    this.testCaseConversationTurns,
    this.testConfig,
  });

  GoogleCloudDialogflowCxV3TestCase.fromJson(core.Map json_)
    : this(
        creationTime: json_['creationTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        lastTestResult: json_.containsKey('lastTestResult')
            ? GoogleCloudDialogflowCxV3TestCaseResult.fromJson(
                json_['lastTestResult'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        notes: json_['notes'] as core.String?,
        tags: (json_['tags'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        testCaseConversationTurns:
            (json_['testCaseConversationTurns'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3ConversationTurn.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        testConfig: json_.containsKey('testConfig')
            ? GoogleCloudDialogflowCxV3TestConfig.fromJson(
                json_['testConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final creationTime = this.creationTime;
    final displayName = this.displayName;
    final lastTestResult = this.lastTestResult;
    final name = this.name;
    final notes = this.notes;
    final tags = this.tags;
    final testCaseConversationTurns = this.testCaseConversationTurns;
    final testConfig = this.testConfig;
    return {
      'creationTime': ?creationTime,
      'displayName': ?displayName,
      'lastTestResult': ?lastTestResult,
      'name': ?name,
      'notes': ?notes,
      'tags': ?tags,
      'testCaseConversationTurns': ?testCaseConversationTurns,
      'testConfig': ?testConfig,
    };
  }
}

class GoogleCloudDialogflowCxV3TestCaseResult {
  core.List<GoogleCloudDialogflowCxV3ConversationTurn>? conversationTurns;
  core.String? environment;
  core.String? name;

  ///
  /// Possible string values are:
  /// - "TEST_RESULT_UNSPECIFIED"
  /// - "PASSED"
  /// - "FAILED"
  core.String? testResult;
  core.String? testTime;

  GoogleCloudDialogflowCxV3TestCaseResult({
    this.conversationTurns,
    this.environment,
    this.name,
    this.testResult,
    this.testTime,
  });

  GoogleCloudDialogflowCxV3TestCaseResult.fromJson(core.Map json_)
    : this(
        conversationTurns: (json_['conversationTurns'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3ConversationTurn.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        environment: json_['environment'] as core.String?,
        name: json_['name'] as core.String?,
        testResult: json_['testResult'] as core.String?,
        testTime: json_['testTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conversationTurns = this.conversationTurns;
    final environment = this.environment;
    final name = this.name;
    final testResult = this.testResult;
    final testTime = this.testTime;
    return {
      'conversationTurns': ?conversationTurns,
      'environment': ?environment,
      'name': ?name,
      'testResult': ?testResult,
      'testTime': ?testTime,
    };
  }
}

class GoogleCloudDialogflowCxV3TestConfig {
  core.String? flow;
  core.String? page;
  core.List<core.String>? trackingParameters;

  GoogleCloudDialogflowCxV3TestConfig({
    this.flow,
    this.page,
    this.trackingParameters,
  });

  GoogleCloudDialogflowCxV3TestConfig.fromJson(core.Map json_)
    : this(
        flow: json_['flow'] as core.String?,
        page: json_['page'] as core.String?,
        trackingParameters: (json_['trackingParameters'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final flow = this.flow;
    final page = this.page;
    final trackingParameters = this.trackingParameters;
    return {
      'flow': ?flow,
      'page': ?page,
      'trackingParameters': ?trackingParameters,
    };
  }
}

class GoogleCloudDialogflowCxV3TestRunDifference {
  core.String? description;

  ///
  /// Possible string values are:
  /// - "DIFF_TYPE_UNSPECIFIED"
  /// - "INTENT"
  /// - "PAGE"
  /// - "PARAMETERS"
  /// - "UTTERANCE"
  /// - "FLOW"
  core.String? type;

  GoogleCloudDialogflowCxV3TestRunDifference({this.description, this.type});

  GoogleCloudDialogflowCxV3TestRunDifference.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final type = this.type;
    return {'description': ?description, 'type': ?type};
  }
}

typedef GoogleCloudDialogflowCxV3TextInput = $Shared02;

class GoogleCloudDialogflowCxV3TextToSpeechSettings {
  core.Map<core.String, GoogleCloudDialogflowCxV3SynthesizeSpeechConfig>?
  synthesizeSpeechConfigs;

  GoogleCloudDialogflowCxV3TextToSpeechSettings({this.synthesizeSpeechConfigs});

  GoogleCloudDialogflowCxV3TextToSpeechSettings.fromJson(core.Map json_)
    : this(
        synthesizeSpeechConfigs:
            (json_['synthesizeSpeechConfigs']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    GoogleCloudDialogflowCxV3SynthesizeSpeechConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final synthesizeSpeechConfigs = this.synthesizeSpeechConfigs;
    return {'synthesizeSpeechConfigs': ?synthesizeSpeechConfigs};
  }
}

class GoogleCloudDialogflowCxV3Tool {
  GoogleCloudDialogflowCxV3ToolDataStoreTool? dataStoreSpec;
  core.String? description;
  core.String? displayName;
  GoogleCloudDialogflowCxV3ToolFunctionTool? functionSpec;
  core.String? name;
  GoogleCloudDialogflowCxV3ToolOpenApiTool? openApiSpec;

  ///
  /// Possible string values are:
  /// - "TOOL_TYPE_UNSPECIFIED"
  /// - "CUSTOMIZED_TOOL"
  /// - "BUILTIN_TOOL"
  core.String? toolType;

  GoogleCloudDialogflowCxV3Tool({
    this.dataStoreSpec,
    this.description,
    this.displayName,
    this.functionSpec,
    this.name,
    this.openApiSpec,
    this.toolType,
  });

  GoogleCloudDialogflowCxV3Tool.fromJson(core.Map json_)
    : this(
        dataStoreSpec: json_.containsKey('dataStoreSpec')
            ? GoogleCloudDialogflowCxV3ToolDataStoreTool.fromJson(
                json_['dataStoreSpec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        functionSpec: json_.containsKey('functionSpec')
            ? GoogleCloudDialogflowCxV3ToolFunctionTool.fromJson(
                json_['functionSpec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        openApiSpec: json_.containsKey('openApiSpec')
            ? GoogleCloudDialogflowCxV3ToolOpenApiTool.fromJson(
                json_['openApiSpec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        toolType: json_['toolType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataStoreSpec = this.dataStoreSpec;
    final description = this.description;
    final displayName = this.displayName;
    final functionSpec = this.functionSpec;
    final name = this.name;
    final openApiSpec = this.openApiSpec;
    final toolType = this.toolType;
    return {
      'dataStoreSpec': ?dataStoreSpec,
      'description': ?description,
      'displayName': ?displayName,
      'functionSpec': ?functionSpec,
      'name': ?name,
      'openApiSpec': ?openApiSpec,
      'toolType': ?toolType,
    };
  }
}

class GoogleCloudDialogflowCxV3ToolAuthentication {
  GoogleCloudDialogflowCxV3ToolAuthenticationApiKeyConfig? apiKeyConfig;
  GoogleCloudDialogflowCxV3ToolAuthenticationBearerTokenConfig?
  bearerTokenConfig;
  GoogleCloudDialogflowCxV3ToolAuthenticationOAuthConfig? oauthConfig;
  GoogleCloudDialogflowCxV3ToolAuthenticationServiceAccountAuthConfig?
  serviceAccountAuthConfig;
  GoogleCloudDialogflowCxV3ToolAuthenticationServiceAgentAuthConfig?
  serviceAgentAuthConfig;

  GoogleCloudDialogflowCxV3ToolAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAccountAuthConfig,
    this.serviceAgentAuthConfig,
  });

  GoogleCloudDialogflowCxV3ToolAuthentication.fromJson(core.Map json_)
    : this(
        apiKeyConfig: json_.containsKey('apiKeyConfig')
            ? GoogleCloudDialogflowCxV3ToolAuthenticationApiKeyConfig.fromJson(
                json_['apiKeyConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        bearerTokenConfig: json_.containsKey('bearerTokenConfig')
            ? GoogleCloudDialogflowCxV3ToolAuthenticationBearerTokenConfig.fromJson(
                json_['bearerTokenConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        oauthConfig: json_.containsKey('oauthConfig')
            ? GoogleCloudDialogflowCxV3ToolAuthenticationOAuthConfig.fromJson(
                json_['oauthConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        serviceAccountAuthConfig: json_.containsKey('serviceAccountAuthConfig')
            ? GoogleCloudDialogflowCxV3ToolAuthenticationServiceAccountAuthConfig.fromJson(
                json_['serviceAccountAuthConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        serviceAgentAuthConfig: json_.containsKey('serviceAgentAuthConfig')
            ? GoogleCloudDialogflowCxV3ToolAuthenticationServiceAgentAuthConfig.fromJson(
                json_['serviceAgentAuthConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apiKeyConfig = this.apiKeyConfig;
    final bearerTokenConfig = this.bearerTokenConfig;
    final oauthConfig = this.oauthConfig;
    final serviceAccountAuthConfig = this.serviceAccountAuthConfig;
    final serviceAgentAuthConfig = this.serviceAgentAuthConfig;
    return {
      'apiKeyConfig': ?apiKeyConfig,
      'bearerTokenConfig': ?bearerTokenConfig,
      'oauthConfig': ?oauthConfig,
      'serviceAccountAuthConfig': ?serviceAccountAuthConfig,
      'serviceAgentAuthConfig': ?serviceAgentAuthConfig,
    };
  }
}

typedef GoogleCloudDialogflowCxV3ToolAuthenticationApiKeyConfig =
    $ToolAuthenticationApiKeyConfig;
typedef GoogleCloudDialogflowCxV3ToolAuthenticationBearerTokenConfig =
    $ToolAuthenticationBearerTokenConfig;
typedef GoogleCloudDialogflowCxV3ToolAuthenticationOAuthConfig =
    $ToolAuthenticationOAuthConfig;
typedef GoogleCloudDialogflowCxV3ToolAuthenticationServiceAccountAuthConfig =
    $ServiceAccountAuthConfig;
typedef GoogleCloudDialogflowCxV3ToolAuthenticationServiceAgentAuthConfig =
    $ToolAuthenticationServiceAgentAuthConfig;

class GoogleCloudDialogflowCxV3ToolCall {
  core.String? action;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? inputParameters;
  core.String? tool;

  GoogleCloudDialogflowCxV3ToolCall({
    this.action,
    this.inputParameters,
    this.tool,
  });

  GoogleCloudDialogflowCxV3ToolCall.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        inputParameters: json_.containsKey('inputParameters')
            ? json_['inputParameters'] as core.Map<core.String, core.dynamic>
            : null,
        tool: json_['tool'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final action = this.action;
    final inputParameters = this.inputParameters;
    final tool = this.tool;
    return {
      'action': ?action,
      'inputParameters': ?inputParameters,
      'tool': ?tool,
    };
  }
}

class GoogleCloudDialogflowCxV3ToolCallResult {
  core.String? action;
  GoogleCloudDialogflowCxV3ToolCallResultError? error;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? outputParameters;
  core.String? tool;

  GoogleCloudDialogflowCxV3ToolCallResult({
    this.action,
    this.error,
    this.outputParameters,
    this.tool,
  });

  GoogleCloudDialogflowCxV3ToolCallResult.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        error: json_.containsKey('error')
            ? GoogleCloudDialogflowCxV3ToolCallResultError.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        outputParameters: json_.containsKey('outputParameters')
            ? json_['outputParameters'] as core.Map<core.String, core.dynamic>
            : null,
        tool: json_['tool'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final action = this.action;
    final error = this.error;
    final outputParameters = this.outputParameters;
    final tool = this.tool;
    return {
      'action': ?action,
      'error': ?error,
      'outputParameters': ?outputParameters,
      'tool': ?tool,
    };
  }
}

typedef GoogleCloudDialogflowCxV3ToolCallResultError = $ToolCallResultError;

class GoogleCloudDialogflowCxV3ToolDataStoreTool {
  core.List<GoogleCloudDialogflowCxV3DataStoreConnection>? dataStoreConnections;
  GoogleCloudDialogflowCxV3ToolDataStoreToolFallbackPrompt? fallbackPrompt;

  GoogleCloudDialogflowCxV3ToolDataStoreTool({
    this.dataStoreConnections,
    this.fallbackPrompt,
  });

  GoogleCloudDialogflowCxV3ToolDataStoreTool.fromJson(core.Map json_)
    : this(
        dataStoreConnections: (json_['dataStoreConnections'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3DataStoreConnection.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        fallbackPrompt: json_.containsKey('fallbackPrompt')
            ? GoogleCloudDialogflowCxV3ToolDataStoreToolFallbackPrompt.fromJson(
                json_['fallbackPrompt'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataStoreConnections = this.dataStoreConnections;
    final fallbackPrompt = this.fallbackPrompt;
    return {
      'dataStoreConnections': ?dataStoreConnections,
      'fallbackPrompt': ?fallbackPrompt,
    };
  }
}

typedef GoogleCloudDialogflowCxV3ToolDataStoreToolFallbackPrompt = $Empty;

class GoogleCloudDialogflowCxV3ToolFunctionTool {
  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? inputSchema;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? outputSchema;

  GoogleCloudDialogflowCxV3ToolFunctionTool({
    this.inputSchema,
    this.outputSchema,
  });

  GoogleCloudDialogflowCxV3ToolFunctionTool.fromJson(core.Map json_)
    : this(
        inputSchema: json_.containsKey('inputSchema')
            ? json_['inputSchema'] as core.Map<core.String, core.dynamic>
            : null,
        outputSchema: json_.containsKey('outputSchema')
            ? json_['outputSchema'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final inputSchema = this.inputSchema;
    final outputSchema = this.outputSchema;
    return {'inputSchema': ?inputSchema, 'outputSchema': ?outputSchema};
  }
}

class GoogleCloudDialogflowCxV3ToolOpenApiTool {
  GoogleCloudDialogflowCxV3ToolAuthentication? authentication;
  GoogleCloudDialogflowCxV3ToolServiceDirectoryConfig? serviceDirectoryConfig;
  core.String? textSchema;
  GoogleCloudDialogflowCxV3ToolTLSConfig? tlsConfig;

  GoogleCloudDialogflowCxV3ToolOpenApiTool({
    this.authentication,
    this.serviceDirectoryConfig,
    this.textSchema,
    this.tlsConfig,
  });

  GoogleCloudDialogflowCxV3ToolOpenApiTool.fromJson(core.Map json_)
    : this(
        authentication: json_.containsKey('authentication')
            ? GoogleCloudDialogflowCxV3ToolAuthentication.fromJson(
                json_['authentication'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        serviceDirectoryConfig: json_.containsKey('serviceDirectoryConfig')
            ? GoogleCloudDialogflowCxV3ToolServiceDirectoryConfig.fromJson(
                json_['serviceDirectoryConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        textSchema: json_['textSchema'] as core.String?,
        tlsConfig: json_.containsKey('tlsConfig')
            ? GoogleCloudDialogflowCxV3ToolTLSConfig.fromJson(
                json_['tlsConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authentication = this.authentication;
    final serviceDirectoryConfig = this.serviceDirectoryConfig;
    final textSchema = this.textSchema;
    final tlsConfig = this.tlsConfig;
    return {
      'authentication': ?authentication,
      'serviceDirectoryConfig': ?serviceDirectoryConfig,
      'textSchema': ?textSchema,
      'tlsConfig': ?tlsConfig,
    };
  }
}

typedef GoogleCloudDialogflowCxV3ToolServiceDirectoryConfig =
    $ToolServiceDirectoryConfig;

class GoogleCloudDialogflowCxV3ToolTLSConfig {
  core.List<GoogleCloudDialogflowCxV3ToolTLSConfigCACert>? caCerts;

  GoogleCloudDialogflowCxV3ToolTLSConfig({this.caCerts});

  GoogleCloudDialogflowCxV3ToolTLSConfig.fromJson(core.Map json_)
    : this(
        caCerts: (json_['caCerts'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3ToolTLSConfigCACert.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final caCerts = this.caCerts;
    return {'caCerts': ?caCerts};
  }
}

typedef GoogleCloudDialogflowCxV3ToolTLSConfigCACert = $ToolTLSConfigCACert;

class GoogleCloudDialogflowCxV3ToolUse {
  core.String? action;
  core.String? displayName;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? inputActionParameters;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? outputActionParameters;
  core.String? tool;

  GoogleCloudDialogflowCxV3ToolUse({
    this.action,
    this.displayName,
    this.inputActionParameters,
    this.outputActionParameters,
    this.tool,
  });

  GoogleCloudDialogflowCxV3ToolUse.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        inputActionParameters: json_.containsKey('inputActionParameters')
            ? json_['inputActionParameters']
                  as core.Map<core.String, core.dynamic>
            : null,
        outputActionParameters: json_.containsKey('outputActionParameters')
            ? json_['outputActionParameters']
                  as core.Map<core.String, core.dynamic>
            : null,
        tool: json_['tool'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final action = this.action;
    final displayName = this.displayName;
    final inputActionParameters = this.inputActionParameters;
    final outputActionParameters = this.outputActionParameters;
    final tool = this.tool;
    return {
      'action': ?action,
      'displayName': ?displayName,
      'inputActionParameters': ?inputActionParameters,
      'outputActionParameters': ?outputActionParameters,
      'tool': ?tool,
    };
  }
}

class GoogleCloudDialogflowCxV3ToolVersion {
  core.String? createTime;
  core.String? displayName;
  core.String? name;
  GoogleCloudDialogflowCxV3Tool? tool;
  core.String? updateTime;

  GoogleCloudDialogflowCxV3ToolVersion({
    this.createTime,
    this.displayName,
    this.name,
    this.tool,
    this.updateTime,
  });

  GoogleCloudDialogflowCxV3ToolVersion.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        tool: json_.containsKey('tool')
            ? GoogleCloudDialogflowCxV3Tool.fromJson(
                json_['tool'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final displayName = this.displayName;
    final name = this.name;
    final tool = this.tool;
    final updateTime = this.updateTime;
    return {
      'createTime': ?createTime,
      'displayName': ?displayName,
      'name': ?name,
      'tool': ?tool,
      'updateTime': ?updateTime,
    };
  }
}

typedef GoogleCloudDialogflowCxV3TrainFlowRequest = $Empty;

class GoogleCloudDialogflowCxV3TransitionCoverage {
  core.double? coverageScore;
  core.List<GoogleCloudDialogflowCxV3TransitionCoverageTransition>? transitions;

  GoogleCloudDialogflowCxV3TransitionCoverage({
    this.coverageScore,
    this.transitions,
  });

  GoogleCloudDialogflowCxV3TransitionCoverage.fromJson(core.Map json_)
    : this(
        coverageScore: (json_['coverageScore'] as core.num?)?.toDouble(),
        transitions: (json_['transitions'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3TransitionCoverageTransition.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final coverageScore = this.coverageScore;
    final transitions = this.transitions;
    return {'coverageScore': ?coverageScore, 'transitions': ?transitions};
  }
}

class GoogleCloudDialogflowCxV3TransitionCoverageTransition {
  core.bool? covered;
  GoogleCloudDialogflowCxV3EventHandler? eventHandler;
  core.int? index;
  GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode? source;
  GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode? target;
  GoogleCloudDialogflowCxV3TransitionRoute? transitionRoute;

  GoogleCloudDialogflowCxV3TransitionCoverageTransition({
    this.covered,
    this.eventHandler,
    this.index,
    this.source,
    this.target,
    this.transitionRoute,
  });

  GoogleCloudDialogflowCxV3TransitionCoverageTransition.fromJson(core.Map json_)
    : this(
        covered: json_['covered'] as core.bool?,
        eventHandler: json_.containsKey('eventHandler')
            ? GoogleCloudDialogflowCxV3EventHandler.fromJson(
                json_['eventHandler'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        index: json_['index'] as core.int?,
        source: json_.containsKey('source')
            ? GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode.fromJson(
                json_['source'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        target: json_.containsKey('target')
            ? GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode.fromJson(
                json_['target'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        transitionRoute: json_.containsKey('transitionRoute')
            ? GoogleCloudDialogflowCxV3TransitionRoute.fromJson(
                json_['transitionRoute'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final covered = this.covered;
    final eventHandler = this.eventHandler;
    final index = this.index;
    final source = this.source;
    final target = this.target;
    final transitionRoute = this.transitionRoute;
    return {
      'covered': ?covered,
      'eventHandler': ?eventHandler,
      'index': ?index,
      'source': ?source,
      'target': ?target,
      'transitionRoute': ?transitionRoute,
    };
  }
}

class GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode {
  GoogleCloudDialogflowCxV3Flow? flow;
  GoogleCloudDialogflowCxV3Page? page;

  GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode({
    this.flow,
    this.page,
  });

  GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode.fromJson(
    core.Map json_,
  ) : this(
        flow: json_.containsKey('flow')
            ? GoogleCloudDialogflowCxV3Flow.fromJson(
                json_['flow'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        page: json_.containsKey('page')
            ? GoogleCloudDialogflowCxV3Page.fromJson(
                json_['page'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final flow = this.flow;
    final page = this.page;
    return {'flow': ?flow, 'page': ?page};
  }
}

class GoogleCloudDialogflowCxV3TransitionRoute {
  core.String? condition;
  core.String? description;
  core.String? intent;
  core.String? name;
  core.String? targetFlow;
  core.String? targetPage;
  GoogleCloudDialogflowCxV3Fulfillment? triggerFulfillment;

  GoogleCloudDialogflowCxV3TransitionRoute({
    this.condition,
    this.description,
    this.intent,
    this.name,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  GoogleCloudDialogflowCxV3TransitionRoute.fromJson(core.Map json_)
    : this(
        condition: json_['condition'] as core.String?,
        description: json_['description'] as core.String?,
        intent: json_['intent'] as core.String?,
        name: json_['name'] as core.String?,
        targetFlow: json_['targetFlow'] as core.String?,
        targetPage: json_['targetPage'] as core.String?,
        triggerFulfillment: json_.containsKey('triggerFulfillment')
            ? GoogleCloudDialogflowCxV3Fulfillment.fromJson(
                json_['triggerFulfillment']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final condition = this.condition;
    final description = this.description;
    final intent = this.intent;
    final name = this.name;
    final targetFlow = this.targetFlow;
    final targetPage = this.targetPage;
    final triggerFulfillment = this.triggerFulfillment;
    return {
      'condition': ?condition,
      'description': ?description,
      'intent': ?intent,
      'name': ?name,
      'targetFlow': ?targetFlow,
      'targetPage': ?targetPage,
      'triggerFulfillment': ?triggerFulfillment,
    };
  }
}

class GoogleCloudDialogflowCxV3TransitionRouteGroup {
  core.String? displayName;
  core.String? name;
  core.List<GoogleCloudDialogflowCxV3TransitionRoute>? transitionRoutes;

  GoogleCloudDialogflowCxV3TransitionRouteGroup({
    this.displayName,
    this.name,
    this.transitionRoutes,
  });

  GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        transitionRoutes: (json_['transitionRoutes'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3TransitionRoute.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final name = this.name;
    final transitionRoutes = this.transitionRoutes;
    return {
      'displayName': ?displayName,
      'name': ?name,
      'transitionRoutes': ?transitionRoutes,
    };
  }
}

class GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage {
  core.double? coverageScore;
  core.List<GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage>?
  coverages;

  GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage({
    this.coverageScore,
    this.coverages,
  });

  GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage.fromJson(core.Map json_)
    : this(
        coverageScore: (json_['coverageScore'] as core.num?)?.toDouble(),
        coverages: (json_['coverages'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final coverageScore = this.coverageScore;
    final coverages = this.coverages;
    return {'coverageScore': ?coverageScore, 'coverages': ?coverages};
  }
}

class GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage {
  core.double? coverageScore;
  GoogleCloudDialogflowCxV3TransitionRouteGroup? routeGroup;
  core.List<
    GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition
  >?
  transitions;

  GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage({
    this.coverageScore,
    this.routeGroup,
    this.transitions,
  });

  GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage.fromJson(
    core.Map json_,
  ) : this(
        coverageScore: (json_['coverageScore'] as core.num?)?.toDouble(),
        routeGroup: json_.containsKey('routeGroup')
            ? GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
                json_['routeGroup'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        transitions: (json_['transitions'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final coverageScore = this.coverageScore;
    final routeGroup = this.routeGroup;
    final transitions = this.transitions;
    return {
      'coverageScore': ?coverageScore,
      'routeGroup': ?routeGroup,
      'transitions': ?transitions,
    };
  }
}

class GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition {
  core.bool? covered;
  GoogleCloudDialogflowCxV3TransitionRoute? transitionRoute;

  GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition({
    this.covered,
    this.transitionRoute,
  });

  GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition.fromJson(
    core.Map json_,
  ) : this(
        covered: json_['covered'] as core.bool?,
        transitionRoute: json_.containsKey('transitionRoute')
            ? GoogleCloudDialogflowCxV3TransitionRoute.fromJson(
                json_['transitionRoute'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final covered = this.covered;
    final transitionRoute = this.transitionRoute;
    return {'covered': ?covered, 'transitionRoute': ?transitionRoute};
  }
}

class GoogleCloudDialogflowCxV3TypeSchema {
  GoogleCloudDialogflowCxV3InlineSchema? inlineSchema;
  GoogleCloudDialogflowCxV3TypeSchemaSchemaReference? schemaReference;

  GoogleCloudDialogflowCxV3TypeSchema({
    this.inlineSchema,
    this.schemaReference,
  });

  GoogleCloudDialogflowCxV3TypeSchema.fromJson(core.Map json_)
    : this(
        inlineSchema: json_.containsKey('inlineSchema')
            ? GoogleCloudDialogflowCxV3InlineSchema.fromJson(
                json_['inlineSchema'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        schemaReference: json_.containsKey('schemaReference')
            ? GoogleCloudDialogflowCxV3TypeSchemaSchemaReference.fromJson(
                json_['schemaReference'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final inlineSchema = this.inlineSchema;
    final schemaReference = this.schemaReference;
    return {'inlineSchema': ?inlineSchema, 'schemaReference': ?schemaReference};
  }
}

class GoogleCloudDialogflowCxV3TypeSchemaSchemaReference {
  core.String? schema;
  core.String? tool;

  GoogleCloudDialogflowCxV3TypeSchemaSchemaReference({this.schema, this.tool});

  GoogleCloudDialogflowCxV3TypeSchemaSchemaReference.fromJson(core.Map json_)
    : this(
        schema: json_['schema'] as core.String?,
        tool: json_['tool'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final schema = this.schema;
    final tool = this.tool;
    return {'schema': ?schema, 'tool': ?tool};
  }
}

typedef GoogleCloudDialogflowCxV3UserUtterance = $Shared02;
typedef GoogleCloudDialogflowCxV3ValidateAgentRequest = $Shared07;
typedef GoogleCloudDialogflowCxV3ValidateFlowRequest = $Shared07;

class GoogleCloudDialogflowCxV3ValidationMessage {
  core.String? detail;
  core.List<GoogleCloudDialogflowCxV3ResourceName>? resourceNames;

  ///
  /// Possible string values are:
  /// - "RESOURCE_TYPE_UNSPECIFIED"
  /// - "AGENT"
  /// - "INTENT"
  /// - "INTENT_TRAINING_PHRASE"
  /// - "INTENT_PARAMETER"
  /// - "INTENTS"
  /// - "INTENT_TRAINING_PHRASES"
  /// - "ENTITY_TYPE"
  /// - "ENTITY_TYPES"
  /// - "WEBHOOK"
  /// - "FLOW"
  /// - "PAGE"
  /// - "PAGES"
  /// - "TRANSITION_ROUTE_GROUP"
  /// - "AGENT_TRANSITION_ROUTE_GROUP"
  core.String? resourceType;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<core.String>? resources;

  ///
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED"
  /// - "INFO"
  /// - "WARNING"
  /// - "ERROR"
  core.String? severity;

  GoogleCloudDialogflowCxV3ValidationMessage({
    this.detail,
    this.resourceNames,
    this.resourceType,
    this.resources,
    this.severity,
  });

  GoogleCloudDialogflowCxV3ValidationMessage.fromJson(core.Map json_)
    : this(
        detail: json_['detail'] as core.String?,
        resourceNames: (json_['resourceNames'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowCxV3ResourceName.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        resourceType: json_['resourceType'] as core.String?,
        resources: (json_['resources'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final detail = this.detail;
    final resourceNames = this.resourceNames;
    final resourceType = this.resourceType;
    final resources = this.resources;
    final severity = this.severity;
    return {
      'detail': ?detail,
      'resourceNames': ?resourceNames,
      'resourceType': ?resourceType,
      'resources': ?resources,
      'severity': ?severity,
    };
  }
}

class GoogleCloudDialogflowCxV3VariantsHistory {
  core.String? updateTime;
  GoogleCloudDialogflowCxV3VersionVariants? versionVariants;

  GoogleCloudDialogflowCxV3VariantsHistory({
    this.updateTime,
    this.versionVariants,
  });

  GoogleCloudDialogflowCxV3VariantsHistory.fromJson(core.Map json_)
    : this(
        updateTime: json_['updateTime'] as core.String?,
        versionVariants: json_.containsKey('versionVariants')
            ? GoogleCloudDialogflowCxV3VersionVariants.fromJson(
                json_['versionVariants'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final updateTime = this.updateTime;
    final versionVariants = this.versionVariants;
    return {'updateTime': ?updateTime, 'versionVariants': ?versionVariants};
  }
}

class GoogleCloudDialogflowCxV3Version {
  core.String? createTime;
  core.String? description;
  core.String? displayName;
  core.String? name;
  GoogleCloudDialogflowCxV3NluSettings? nluSettings;

  ///
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "RUNNING"
  /// - "SUCCEEDED"
  /// - "FAILED"
  core.String? state;

  GoogleCloudDialogflowCxV3Version({
    this.createTime,
    this.description,
    this.displayName,
    this.name,
    this.nluSettings,
    this.state,
  });

  GoogleCloudDialogflowCxV3Version.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        nluSettings: json_.containsKey('nluSettings')
            ? GoogleCloudDialogflowCxV3NluSettings.fromJson(
                json_['nluSettings'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final description = this.description;
    final displayName = this.displayName;
    final name = this.name;
    final nluSettings = this.nluSettings;
    final state = this.state;
    return {
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'nluSettings': ?nluSettings,
      'state': ?state,
    };
  }
}

class GoogleCloudDialogflowCxV3VersionVariants {
  core.List<GoogleCloudDialogflowCxV3VersionVariantsVariant>? variants;

  GoogleCloudDialogflowCxV3VersionVariants({this.variants});

  GoogleCloudDialogflowCxV3VersionVariants.fromJson(core.Map json_)
    : this(
        variants: (json_['variants'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowCxV3VersionVariantsVariant.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final variants = this.variants;
    return {'variants': ?variants};
  }
}

class GoogleCloudDialogflowCxV3VersionVariantsVariant {
  core.bool? isControlGroup;
  core.double? trafficAllocation;
  core.String? version;

  GoogleCloudDialogflowCxV3VersionVariantsVariant({
    this.isControlGroup,
    this.trafficAllocation,
    this.version,
  });

  GoogleCloudDialogflowCxV3VersionVariantsVariant.fromJson(core.Map json_)
    : this(
        isControlGroup: json_['isControlGroup'] as core.bool?,
        trafficAllocation: (json_['trafficAllocation'] as core.num?)
            ?.toDouble(),
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final isControlGroup = this.isControlGroup;
    final trafficAllocation = this.trafficAllocation;
    final version = this.version;
    return {
      'isControlGroup': ?isControlGroup,
      'trafficAllocation': ?trafficAllocation,
      'version': ?version,
    };
  }
}

typedef GoogleCloudDialogflowCxV3VoiceSelectionParams = $VoiceSelectionParams;

class GoogleCloudDialogflowCxV3Webhook {
  core.bool? disabled;
  core.String? displayName;
  GoogleCloudDialogflowCxV3WebhookGenericWebService? genericWebService;
  core.String? name;
  GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig? serviceDirectory;
  core.String? timeout;

  GoogleCloudDialogflowCxV3Webhook({
    this.disabled,
    this.displayName,
    this.genericWebService,
    this.name,
    this.serviceDirectory,
    this.timeout,
  });

  GoogleCloudDialogflowCxV3Webhook.fromJson(core.Map json_)
    : this(
        disabled: json_['disabled'] as core.bool?,
        displayName: json_['displayName'] as core.String?,
        genericWebService: json_.containsKey('genericWebService')
            ? GoogleCloudDialogflowCxV3WebhookGenericWebService.fromJson(
                json_['genericWebService']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        serviceDirectory: json_.containsKey('serviceDirectory')
            ? GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig.fromJson(
                json_['serviceDirectory']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        timeout: json_['timeout'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final disabled = this.disabled;
    final displayName = this.displayName;
    final genericWebService = this.genericWebService;
    final name = this.name;
    final serviceDirectory = this.serviceDirectory;
    final timeout = this.timeout;
    return {
      'disabled': ?disabled,
      'displayName': ?displayName,
      'genericWebService': ?genericWebService,
      'name': ?name,
      'serviceDirectory': ?serviceDirectory,
      'timeout': ?timeout,
    };
  }
}

class GoogleCloudDialogflowCxV3WebhookGenericWebService {
  core.List<core.String>? allowedCaCerts;

  ///
  /// Possible string values are:
  /// - "HTTP_METHOD_UNSPECIFIED"
  /// - "POST"
  /// - "GET"
  /// - "HEAD"
  /// - "PUT"
  /// - "DELETE"
  /// - "PATCH"
  /// - "OPTIONS"
  core.String? httpMethod;
  GoogleCloudDialogflowCxV3WebhookGenericWebServiceOAuthConfig? oauthConfig;
  core.Map<core.String, core.String>? parameterMapping;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? password;
  core.String? requestBody;
  core.Map<core.String, core.String>? requestHeaders;
  core.String? secretVersionForUsernamePassword;
  core.Map<
    core.String,
    GoogleCloudDialogflowCxV3WebhookGenericWebServiceSecretVersionHeaderValue
  >?
  secretVersionsForRequestHeaders;
  GoogleCloudDialogflowCxV3WebhookGenericWebServiceServiceAccountAuthConfig?
  serviceAccountAuthConfig;

  ///
  /// Possible string values are:
  /// - "SERVICE_AGENT_AUTH_UNSPECIFIED"
  /// - "NONE"
  /// - "ID_TOKEN"
  /// - "ACCESS_TOKEN"
  core.String? serviceAgentAuth;
  core.String? uri;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? username;

  ///
  /// Possible string values are:
  /// - "WEBHOOK_TYPE_UNSPECIFIED"
  /// - "STANDARD"
  /// - "FLEXIBLE"
  core.String? webhookType;

  GoogleCloudDialogflowCxV3WebhookGenericWebService({
    this.allowedCaCerts,
    this.httpMethod,
    this.oauthConfig,
    this.parameterMapping,
    this.password,
    this.requestBody,
    this.requestHeaders,
    this.secretVersionForUsernamePassword,
    this.secretVersionsForRequestHeaders,
    this.serviceAccountAuthConfig,
    this.serviceAgentAuth,
    this.uri,
    this.username,
    this.webhookType,
  });

  GoogleCloudDialogflowCxV3WebhookGenericWebService.fromJson(core.Map json_)
    : this(
        allowedCaCerts: (json_['allowedCaCerts'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        httpMethod: json_['httpMethod'] as core.String?,
        oauthConfig: json_.containsKey('oauthConfig')
            ? GoogleCloudDialogflowCxV3WebhookGenericWebServiceOAuthConfig.fromJson(
                json_['oauthConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        parameterMapping:
            (json_['parameterMapping'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        password: json_['password'] as core.String?,
        requestBody: json_['requestBody'] as core.String?,
        requestHeaders:
            (json_['requestHeaders'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        secretVersionForUsernamePassword:
            json_['secretVersionForUsernamePassword'] as core.String?,
        secretVersionsForRequestHeaders:
            (json_['secretVersionsForRequestHeaders']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    GoogleCloudDialogflowCxV3WebhookGenericWebServiceSecretVersionHeaderValue.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        serviceAccountAuthConfig: json_.containsKey('serviceAccountAuthConfig')
            ? GoogleCloudDialogflowCxV3WebhookGenericWebServiceServiceAccountAuthConfig.fromJson(
                json_['serviceAccountAuthConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        serviceAgentAuth: json_['serviceAgentAuth'] as core.String?,
        uri: json_['uri'] as core.String?,
        username: json_['username'] as core.String?,
        webhookType: json_['webhookType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowedCaCerts = this.allowedCaCerts;
    final httpMethod = this.httpMethod;
    final oauthConfig = this.oauthConfig;
    final parameterMapping = this.parameterMapping;
    final password = this.password;
    final requestBody = this.requestBody;
    final requestHeaders = this.requestHeaders;
    final secretVersionForUsernamePassword =
        this.secretVersionForUsernamePassword;
    final secretVersionsForRequestHeaders =
        this.secretVersionsForRequestHeaders;
    final serviceAccountAuthConfig = this.serviceAccountAuthConfig;
    final serviceAgentAuth = this.serviceAgentAuth;
    final uri = this.uri;
    final username = this.username;
    final webhookType = this.webhookType;
    return {
      'allowedCaCerts': ?allowedCaCerts,
      'httpMethod': ?httpMethod,
      'oauthConfig': ?oauthConfig,
      'parameterMapping': ?parameterMapping,
      'password': ?password,
      'requestBody': ?requestBody,
      'requestHeaders': ?requestHeaders,
      'secretVersionForUsernamePassword': ?secretVersionForUsernamePassword,
      'secretVersionsForRequestHeaders': ?secretVersionsForRequestHeaders,
      'serviceAccountAuthConfig': ?serviceAccountAuthConfig,
      'serviceAgentAuth': ?serviceAgentAuth,
      'uri': ?uri,
      'username': ?username,
      'webhookType': ?webhookType,
    };
  }
}

class GoogleCloudDialogflowCxV3WebhookGenericWebServiceOAuthConfig {
  core.String? clientId;
  core.String? clientSecret;
  core.List<core.String>? scopes;
  core.String? secretVersionForClientSecret;
  core.String? tokenEndpoint;

  GoogleCloudDialogflowCxV3WebhookGenericWebServiceOAuthConfig({
    this.clientId,
    this.clientSecret,
    this.scopes,
    this.secretVersionForClientSecret,
    this.tokenEndpoint,
  });

  GoogleCloudDialogflowCxV3WebhookGenericWebServiceOAuthConfig.fromJson(
    core.Map json_,
  ) : this(
        clientId: json_['clientId'] as core.String?,
        clientSecret: json_['clientSecret'] as core.String?,
        scopes: (json_['scopes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        secretVersionForClientSecret:
            json_['secretVersionForClientSecret'] as core.String?,
        tokenEndpoint: json_['tokenEndpoint'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clientId = this.clientId;
    final clientSecret = this.clientSecret;
    final scopes = this.scopes;
    final secretVersionForClientSecret = this.secretVersionForClientSecret;
    final tokenEndpoint = this.tokenEndpoint;
    return {
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'scopes': ?scopes,
      'secretVersionForClientSecret': ?secretVersionForClientSecret,
      'tokenEndpoint': ?tokenEndpoint,
    };
  }
}

class GoogleCloudDialogflowCxV3WebhookGenericWebServiceSecretVersionHeaderValue {
  core.String? secretVersion;

  GoogleCloudDialogflowCxV3WebhookGenericWebServiceSecretVersionHeaderValue({
    this.secretVersion,
  });

  GoogleCloudDialogflowCxV3WebhookGenericWebServiceSecretVersionHeaderValue.fromJson(
    core.Map json_,
  ) : this(secretVersion: json_['secretVersion'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final secretVersion = this.secretVersion;
    return {'secretVersion': ?secretVersion};
  }
}

typedef GoogleCloudDialogflowCxV3WebhookGenericWebServiceServiceAccountAuthConfig =
    $ServiceAccountAuthConfig;

class GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig {
  GoogleCloudDialogflowCxV3WebhookGenericWebService? genericWebService;
  core.String? service;

  GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig({
    this.genericWebService,
    this.service,
  });

  GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig.fromJson(
    core.Map json_,
  ) : this(
        genericWebService: json_.containsKey('genericWebService')
            ? GoogleCloudDialogflowCxV3WebhookGenericWebService.fromJson(
                json_['genericWebService']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        service: json_['service'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final genericWebService = this.genericWebService;
    final service = this.service;
    return {'genericWebService': ?genericWebService, 'service': ?service};
  }
}

class GoogleCloudLocationListLocationsResponse {
  core.List<GoogleCloudLocationLocation>? locations;
  core.String? nextPageToken;

  GoogleCloudLocationListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  GoogleCloudLocationListLocationsResponse.fromJson(core.Map json_)
    : this(
        locations: (json_['locations'] as core.List?)
            ?.map(
              (value) => GoogleCloudLocationLocation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final locations = this.locations;
    final nextPageToken = this.nextPageToken;
    return {'locations': ?locations, 'nextPageToken': ?nextPageToken};
  }
}

typedef GoogleCloudLocationLocation = $GoogleCloudLocationLocation;

class GoogleLongrunningListOperationsResponse {
  core.String? nextPageToken;
  core.List<GoogleLongrunningOperation>? operations;
  core.List<core.String>? unreachable;

  GoogleLongrunningListOperationsResponse({
    this.nextPageToken,
    this.operations,
    this.unreachable,
  });

  GoogleLongrunningListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations: (json_['operations'] as core.List?)
            ?.map(
              (value) => GoogleLongrunningOperation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final operations = this.operations;
    final unreachable = this.unreachable;
    return {
      'nextPageToken': ?nextPageToken,
      'operations': ?operations,
      'unreachable': ?unreachable,
    };
  }
}

class GoogleLongrunningOperation {
  core.bool? done;
  GoogleRpcStatus? error;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;
  core.String? name;

  ///
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
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        name: json_['name'] as core.String?,
        response: json_.containsKey('response')
            ? json_['response'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final done = this.done;
    final error = this.error;
    final metadata = this.metadata;
    final name = this.name;
    final response = this.response;
    return {
      'done': ?done,
      'error': ?error,
      'metadata': ?metadata,
      'name': ?name,
      'response': ?response,
    };
  }
}

typedef GoogleProtobufEmpty = $Empty;
typedef GoogleRpcStatus = $GoogleRpcStatus;
typedef GoogleTypeLatLng = $GoogleTypeLatLng;
